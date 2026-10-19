// ===== 34fe50 FileSystemWin32::_createHandle(char const*,char const*,bool,bool) =====
FileSystemWin32::_FileHandle *__fastcall FileSystemWin32::_createHandle(
        FileSystemWin32 *this,
        const char *a2,
        const char *a3,
        int a4,
        bool a5)
{
  int v8; // r10
  FileSystemWin32::_FileHandle *v9; // r5
  int v11; // r3
  bool v12; // zf

  if ( *a2 != 46 )
    goto LABEL_2;
  v11 = a2[1];
  v12 = v11 == 47;
  if ( v11 != 47 )
    v12 = v11 == 92;
  if ( v12 )
    v8 = 2;
  else
LABEL_2:
    v8 = 0;
  v9 = (FileSystemWin32::_FileHandle *)operator new(0x10u, 0);
  FileSystemWin32::_FileHandle::_FileHandle(v9, &a2[v8], a3, a4, a5);
  if ( *((_DWORD *)v9 + 1) )
    return v9;
  (*(void (__fastcall **)(FileSystemWin32::_FileHandle *))(*(_DWORD *)v9 + 4))(v9);
  return nullptr;
}


// ===== 34fee4 FileSystemWin32::openSavefile(char const*,bool) =====
FileSystemWin32::_FileHandle *__fastcall FileSystemWin32::openSavefile(FileSystemWin32 *this, Savegame *a2, int a3)
{
  Savegame::FlushJobs((int)a2, (const char *)a2);
  return FileSystemWin32::_createHandle(this, (const char *)this + 1084, (const char *)a2, a3, 0);
}


// ===== 34ff28 FileSystemWin32::openResource(char const*) =====
FileSystemWin32::_FileHandle *__fastcall FileSystemWin32::openResource(FileSystemWin32 *this, const char *a2)
{
  FileSystemWin32::_FileHandle *Handle; // r12

  Handle = FileSystemWin32::_createHandle(this, (const char *)this + 564, a2, 0, 0);
  if ( !Handle )
    return FileSystemWin32::_createHandle(this, (const char *)this + 824, a2, 0, 0);
  return Handle;
}


// ===== 34ff84 FileSystemWin32::openTraceFile(char const*) =====
FileSystemWin32::_FileHandle *__fastcall FileSystemWin32::openTraceFile(FileSystemWin32 *this, const char *a2)
{
  return FileSystemWin32::_createHandle(this, (const char *)this + 1084, a2, 1, 1);
}


// ===== 34ffb0 FileSystemWin32::openFile(char const*,bool,bool) =====
FileSystemWin32::_FileHandle *__fastcall FileSystemWin32::openFile(
        FileSystemWin32 *this,
        const char *a2,
        int a3,
        bool a4)
{
  FileSystemWin32::_FileHandle *result; // r0

  if ( !Application::IsUsingUncompiledData((Application *)&Singleton<Application>::s_inst, a2) )
    return FileSystemWin32::_createHandle(this, (const char *)this + 44, a2, a3, a4);
  result = FileSystemWin32::_createHandle(this, "Q:\\", a2, 0, 0);
  if ( !result )
    return FileSystemWin32::_createHandle(this, (const char *)this + 44, a2, a3, a4);
  return result;
}


// ===== 35003c FileSystemWin32::_FileHandle::_FileHandle(char const*,char const*,bool,bool) =====
FileSystemWin32::_FileHandle *__fastcall FileSystemWin32::_FileHandle::_FileHandle(
        FileSystemWin32::_FileHandle *this,
        const char *a2,
        const char *a3,
        int a4,
        bool a5)
{
  int v5; // r12
  glitch::io::CFile *v9; // r3
  glitch::io::CFile *v10; // r0
  glitch::io::CFile *v11; // r0
  int v12; // r3
  bool v13; // zf
  FileSystemWin32::_FileHandle *result; // r0
  glitch::io::CFile *v15; // r3
  glitch::io::CFile *v16; // r0
  glitch::io::CFile *v17; // r3
  glitch::io::CFile *v18; // r0
  glitch::io::CFile *v19; // [sp+4h] [bp-114h] BYREF
  glitch::io::CFile *v20; // [sp+8h] [bp-110h] BYREF
  glitch::io::CFile *v21; // [sp+Ch] [bp-10Ch] BYREF
  char v22[260]; // [sp+10h] [bp-108h] BYREF
  int v23; // [sp+114h] [bp-4h]

  v5 = _stack_chk_guard;
  *(_DWORD *)this = off_95CC58;
  *((_DWORD *)this + 2) = 0;
  v23 = v5;
  LC_API_STRCPY_0(v22, a2);
  LC_API_STRCAT_0(v22, a3);
  if ( LC_API_STRSTR_0(a3, ".savegame") )
    sprintf(v22, "%s%s", (const char *)RES_PATH, a3);
  if ( byte_99F7D4 )
    ToLowerCase(v22, nullptr, (const char *)0xFFFFFFFF);
  if ( a4 )
  {
    if ( a5 )
    {
      glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v21, v22, "a+b");
      v9 = v21;
      if ( v21 )
        ++*(_DWORD *)v21;
      v10 = *((glitch::io::CFile **)this + 2);
      *((_DWORD *)this + 2) = v9;
      if ( v10 )
        glitch::ISharedObject<glitch::io::CFile>::drop(v10);
      v11 = v21;
      if ( !v21 )
        goto LABEL_13;
    }
    else
    {
      glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v20, v22, "w+b");
      v15 = v20;
      if ( v20 )
        ++*(_DWORD *)v20;
      v16 = *((glitch::io::CFile **)this + 2);
      *((_DWORD *)this + 2) = v15;
      if ( v16 )
        glitch::ISharedObject<glitch::io::CFile>::drop(v16);
      v11 = v20;
      if ( !v20 )
        goto LABEL_13;
    }
    glitch::ISharedObject<glitch::io::CFile>::drop(v11);
LABEL_13:
    *((_BYTE *)this + 13) = 1;
    *((_BYTE *)this + 12) = 1;
    goto LABEL_14;
  }
  glitch::io::CFileSystem::open((glitch::io::CFileSystem *)&v19, v22, "rb");
  v17 = v19;
  if ( v19 )
    ++*(_DWORD *)v19;
  v18 = *((glitch::io::CFile **)this + 2);
  *((_DWORD *)this + 2) = v17;
  if ( v18 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v18);
  if ( v19 )
    glitch::ISharedObject<glitch::io::CFile>::drop(v19);
  *((_BYTE *)this + 12) = 1;
  *((_BYTE *)this + 13) = 0;
LABEL_14:
  v12 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 1) = 0;
  v13 = v12 == 0;
  if ( v12 )
    v12 = *(_DWORD *)(v12 + 4);
  result = this;
  if ( !v13 )
    *((_DWORD *)this + 1) = v12;
  return result;
}


// ===== 350274 std::vector<std::string,std::allocator<std::string>>::_M_insert_overflow_aux(std::string *,std::string const&,std::__false_type const&,uint,bool) [clone] =====
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


// ===== 35041c FileSystemWin32::getFilesMatching(char const*,char const*,std::vector<std::string,std::allocator<std::string>> &) =====
int __fastcall FileSystemWin32::getFilesMatching(int a1, char *a2, char *a3, std::string **a4)
{
  DIR *v6; // r7
  struct dirent *v7; // r0
  unsigned int v8; // r3
  char *v9; // r0
  char v11[100]; // [sp+28h] [bp-94h] BYREF
  std::string v12; // [sp+8Ch] [bp-30h] BYREF
  std::string v13; // [sp+A4h] [bp-18h] BYREF
  std::string v14; // [sp+BCh] [bp+0h] BYREF
  std::string v15; // [sp+D4h] [bp+18h] BYREF

  std::string::string(&v15, a3);
  std::string::string(&v14, a2);
  v6 = opendir(a2);
  if ( v6 )
  {
    while ( 1 )
    {
      v7 = readdir(v6);
      if ( !v7 )
      {
        closedir(v6);
        goto LABEL_13;
      }
      LC_API_STRCPY_0(v11, &v7->d_name[8]);
      std::string::string(&v13, v11);
      v12._M_finish = (char *)&v12;
      v12._M_start_of_storage._M_data = (char *)&v12;
      std::string::_M_range_initialize(&v12, v13._M_start_of_storage._M_data, v13._M_finish);
      v8 = v15._M_finish - v15._M_start_of_storage._M_data;
      if ( v12._M_finish == v12._M_start_of_storage._M_data )
        break;
      if ( v8 <= v12._M_finish - v12._M_start_of_storage._M_data )
      {
        v9 = std::search<char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>>(
               v12._M_start_of_storage._M_data,
               v12._M_finish,
               v15._M_start_of_storage._M_data,
               v15._M_finish);
        if ( v9 != v12._M_finish && v9 - v12._M_start_of_storage._M_data != -1 )
          goto LABEL_4;
      }
LABEL_5:
      std::string::~string(&v12);
      std::string::~string(&v13);
    }
    if ( v8 )
      goto LABEL_5;
LABEL_4:
    std::vector<std::string>::push_back(a4, &v13);
    goto LABEL_5;
  }
LABEL_13:
  std::string::~string(&v14);
  std::string::~string(&v15);
  return 16556;
}


// ===== 3505a0 FileSystemWin32::getFiles(char const*,std::vector<std::string,std::allocator<std::string>> &) =====
void __fastcall FileSystemWin32::getFiles(int a1, char *a2, std::string **a3)
{
  DIR *v4; // r7
  struct dirent *v5; // r0
  char v6[100]; // [sp+10h] [bp-94h] BYREF
  std::string v7; // [sp+74h] [bp-30h] BYREF
  std::string v8; // [sp+8Ch] [bp-18h] BYREF
  std::string v9; // [sp+A4h] [bp+0h] BYREF

  std::string::string(&v9, a2);
  v4 = opendir((const char *)RES_PATH);
  if ( v4 )
  {
    while ( 1 )
    {
      v5 = readdir(v4);
      if ( !v5 )
        break;
      LC_API_STRCPY_0(v6, &v5->d_name[8]);
      std::string::string(&v8, v6);
      v7._M_finish = (char *)&v7;
      v7._M_start_of_storage._M_data = (char *)&v7;
      std::string::_M_range_initialize(&v7, v8._M_start_of_storage._M_data, v8._M_finish);
      std::vector<std::string>::push_back(a3, &v8);
      std::string::~string(&v7);
      std::string::~string(&v8);
    }
    closedir(v4);
  }
  std::string::~string(&v9);
}


// ===== 3506a4 glitch::collada::CColladaFactory::createMaterialRenderer(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SEffect *,glitch::collada::CRootSceneNode *) =====
int glitch::collada::CColladaFactory::createMaterialRenderer()
{
  return 0;
}


// ===== 3506ac ColladaFactory::~ColladaFactory() =====
void __fastcall ColladaFactory::~ColladaFactory(ColladaFactory *this)
{
  *(_DWORD *)this = off_95CC98;
  glitch::collada::CColladaFactory::~CColladaFactory(this);
}


// ===== 3506e0 ColladaFactory::createMaterial(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SMaterial *,glitch::collada::CRootSceneNode *) =====
int __fastcall ColladaFactory::createMaterial(int a1, int a2, int a3, int a4, int a5, char *a6)
{
  glitch::collada::CColladaFactory::createMaterial(a1, a2, a3, a4, a5, a6);
  return a1;
}


// ===== 35070c ColladaFactory::createAnimator(glitch::collada::CColladaDatabase const&,glitch::collada::SLibraryAnimationClips *) =====
int __fastcall ColladaFactory::createAnimator(int a1, int a2, int a3)
{
  int v5; // r4

  v5 = operator new(156, 0);
  Animator::Animator(v5, a2, a3);
  return v5;
}


// ===== 35073c ColladaFactory::createSkin(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController *,glitch::collada::CRootSceneNode *) =====
int __fastcall ColladaFactory::createSkin(int a1, int a2, int a3, int a4, int a5, glitch::collada::CRootSceneNode *a6)
{
  glitch::collada::CColladaFactory::createSkin(a1, a2, a3, a4, a5, a6);
  return a1;
}


// ===== 350768 ColladaFactory::createMorph(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SController *,glitch::collada::CRootSceneNode *) =====
int __fastcall ColladaFactory::createMorph(int a1, int a2, int a3, int a4, int a5, glitch::collada::CRootSceneNode *a6)
{
  glitch::collada::CColladaFactory::createMorph(a1, a2, a3, a4, a5, a6);
  return a1;
}


// ===== 350794 ColladaFactory::createGeometry(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SGeometry *) =====
int *__fastcall ColladaFactory::createGeometry(int *a1, int a2, int a3, int a4, int a5)
{
  glitch::collada::CColladaFactory::createGeometry(a1, a2, a3, a4, a5);
  return a1;
}


// ===== 3507b8 ColladaFactory::createParticleSystem(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SEmitter *,glitch::res::vector<glitch::res::String> *,glitch::collada::CRootSceneNode *) =====
// attributes: thunk
int ColladaFactory::createParticleSystem()
{
  return glitch::collada::CColladaFactory::createParticleSystem();
}


// ===== 3507bc ColladaFactory::createBillboard(glitch::collada::CColladaDatabase const&,glitch::collada::SNode *) =====
_DWORD *ColladaFactory::createBillboard()
{
  _DWORD *v0; // r0
  _DWORD *v1; // r4

  v0 = (_DWORD *)operator new(352, 0);
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


// ===== 350854 ColladaFactory::createModularSkinNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::collada::IMesh> const&,void *) =====
int __fastcall ColladaFactory::createModularSkinNode(int a1, int a2, int a3)
{
  int v4; // r4

  v4 = operator new(396, 0);
  ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(v4, a3);
  return v4;
}


// ===== 35087c ColladaFactory::createSkinNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::collada::IMesh> const&,void *) =====
int __fastcall ColladaFactory::createSkinNode(int a1, int a2, int a3)
{
  int v4; // r4

  v4 = operator new(396, 0);
  SkinnedMeshSceneNode::SkinnedMeshSceneNode(v4, a3);
  return v4;
}


// ===== 3508a4 ColladaFactory::createMeshNode(glitch::collada::CColladaDatabase const&,boost::intrusive_ptr<glitch::collada::IMesh> const&,void *) =====
int __fastcall ColladaFactory::createMeshNode(int a1, int a2, int a3)
{
  int v4; // r4

  v4 = operator new(324, 0);
  MeshSceneNode::MeshSceneNode(v4, a3);
  return v4;
}


// ===== 3508cc ColladaFactory::createScene(glitch::collada::CColladaDatabase const&) =====
RootSceneNode *__fastcall ColladaFactory::createScene(
        ColladaFactory *this,
        const glitch::collada::CColladaDatabase *a2)
{
  RootSceneNode *v3; // r4

  v3 = (RootSceneNode *)operator new(532, 0);
  RootSceneNode::RootSceneNode(v3, a2);
  return v3;
}


// ===== 3508f4 `global constructor keyed to'.._.._sources_Core_Irrlicht_ColladaFactory.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_ColladaFactory.cpp()
{
  int result; // r0

  dword_9A1ED4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1ED0 = 1056964608;
  ColladaFactory::s_factory = (int)off_95CC98;
  byte_9A1EDC = 0;
  result = _aeabi_atexit((int)&ColladaFactory::s_factory, (int)ColladaFactory::~ColladaFactory, (int)&_dso_handle);
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


// ===== 350a10 ColladaFactory::~ColladaFactory() =====
void __fastcall ColladaFactory::~ColladaFactory(ColladaFactory *this)
{
  *(_DWORD *)this = off_95CC98;
  glitch::collada::CColladaFactory::~CColladaFactory(this);
  CustomFree(this);
}


// ===== 350a4c IrrFactory::~IrrFactory() =====
void __fastcall IrrFactory::~IrrFactory(IrrFactory *this)
{
  *(_DWORD *)this = off_95CD20;
  glitch::CIrrFactory::~CIrrFactory(this);
}


// ===== 350a80 IrrFactory::createSceneManager(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::io::IFileSystem> const&,glitch::gui::ICursorControl *,glitch::gui::IGUIEnvironment *) =====
int __fastcall IrrFactory::createSceneManager(int a1, int a2, glitch::IReferenceCounted **a3, int a4, int a5)
{
  glitch::IReferenceCounted *v5; // r2
  int v6; // r6
  int v8; // r4
  glitch::IReferenceCounted *v10; // [sp+Ch] [bp-4h] BYREF

  v5 = *a3;
  v6 = a4;
  v10 = v5;
  if ( v5 )
    a4 = *((_DWORD *)v5 + 1);
  if ( v5 )
    *((_DWORD *)v5 + 1) = a4 + 1;
  v8 = operator new(0x494u, 0);
  SceneManager::SceneManager(v8, a2, &v10, v6, a5);
  if ( v10 )
    glitch::IReferenceCounted::drop(v10);
  return v8;
}


// ===== 350aec IrrFactory::createFileSystem(void) =====
IrrFactory *__fastcall IrrFactory::createFileSystem(IrrFactory *this)
{
  FileSystemWin32 *v2; // r5
  int v3; // r3
  IrrFactory *result; // r0

  v2 = (FileSystemWin32 *)operator new(0x540u, 0);
  FileSystemWin32::FileSystemWin32(v2);
  *(_DWORD *)this = v2;
  if ( v2 )
    v3 = *((_DWORD *)v2 + 1);
  result = this;
  if ( v2 )
    *((_DWORD *)v2 + 1) = v3 + 1;
  return result;
}


// ===== 350b24 `global constructor keyed to'.._.._sources_Core_Irrlicht_IrrFactory.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_IrrFactory.cpp()
{
  int result; // r0

  dword_9A1EE8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1EE4 = 1056964608;
  glitch::CIrrFactory::CIrrFactory((glitch::CIrrFactory *)&IrrFactory::s_factory);
  IrrFactory::s_factory = (int)off_95CD20;
  result = _aeabi_atexit((int)&IrrFactory::s_factory, (int)IrrFactory::~IrrFactory, (int)&_dso_handle);
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


// ===== 350c40 IrrFactory::~IrrFactory() =====
void __fastcall IrrFactory::~IrrFactory(IrrFactory *this)
{
  *(_DWORD *)this = off_95CD20;
  glitch::CIrrFactory::~CIrrFactory(this);
  CustomFree(this);
}


// ===== 350c7c glitch::io::IAttributeExchangingObject::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::io::IAttributeExchangingObject::serializeAttributes()
{
  ;
}


// ===== 350c80 glitch::io::IAttributeExchangingObject::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::io::IAttributeExchangingObject::deserializeAttributes()
{
  ;
}


// ===== 350c84 glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject() =====
void __fastcall glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject(
        glitch::io::IAttributeExchangingObject *this)
{
  ;
}


// ===== 350c88 `virtual thunk to'glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject() =====
void __fastcall `virtual thunk to'glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject(
        glitch::io::IAttributeExchangingObject *this)
{
  glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject((glitch::io::IAttributeExchangingObject *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 350c98 glitch::scene::CSceneManager::SDefaultNodeEntry::SDefaultNodeEntry(glitch::scene::ISceneNode *,boost::intrusive_ptr<glitch::video::CMaterial>,void *,int) =====
_DWORD *__fastcall glitch::scene::CSceneManager::SDefaultNodeEntry::SDefaultNodeEntry(
        _DWORD *result,
        int a2,
        _DWORD **a3,
        int a4,
        int a5)
{
  _DWORD *v5; // r3
  _DWORD *v6; // r4

  *result = a2;
  result[1] = a4;
  v5 = *a3;
  v6 = result;
  result[2] = *a3;
  if ( v5 )
    ++*v5;
  if ( a5 == 0x7FFFFFFF )
  {
    result[3] = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)*result + 216))(*result);
    return v6;
  }
  else
  {
    result[3] = a5;
  }
  return result;
}


// ===== 350cf4 glitch::scene::CSceneManager::SDistanceNodeEntry::SDistanceNodeEntry(glitch::scene::ISceneNode *,glitch::core::vector3d<float> const&,void *) =====
double *__fastcall glitch::scene::CSceneManager::SDistanceNodeEntry::SDistanceNodeEntry(
        double *a1,
        int a2,
        float *a3,
        int a4)
{
  float *v6; // r5
  float v7; // r8
  float v8; // r7
  float v9; // r6
  int v10; // r3
  float *v11; // r0
  float v12; // r9
  float v13; // r10
  float v14; // r0

  *(_DWORD *)a1 = a2;
  *((_DWORD *)a1 + 1) = a4;
  v6 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)a2 + 56))(a2);
  v7 = v6[12] - *a3;
  v8 = v6[13] - a3[1];
  v9 = v6[14] - a3[2];
  v10 = *(_DWORD *)a1;
  a1[1] = (float)((float)((float)(v7 * v7) + (float)(v8 * v8)) + (float)(v9 * v9));
  v11 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v10 + 48))(v10);
  v12 = v11[3] - *v11;
  v13 = v11[4] - v11[1];
  v14 = v11[5] - v11[2];
  a1[1] = (float)((float)((float)(v7 * v7) + (float)(v8 * v8)) + (float)(v9 * v9))
        + (float)((float)((float)(v12 * v12) + (float)(v13 * v13)) + (float)(v14 * v14)) * -0.5;
  return a1;
}


// ===== 350e5c SceneManager::SearchByType(glitch::scene::ISceneNode *,std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> &,glitch::scene::E_SCENE_NODE_TYPE) =====
int __fastcall SceneManager::SearchByType(int result, int a2, int a3, int a4)
{
  if ( a2 )
    return (*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)result + 32))(result, a4, a3, a2);
  return result;
}


// ===== 350e80 SceneManager::DisableFog(glitch::scene::ISceneNode *) =====
int __fastcall SceneManager::DisableFog(int result)
{
  *(_BYTE *)(result + 1074) = 0;
  return result;
}


// ===== 350e8c SceneManager::DBG_PrintNode(glitch::scene::ISceneNode *,bool,uint) =====
SceneManager *__fastcall SceneManager::DBG_PrintNode(SceneManager *result, int a2, int a3, int a4)
{
  SceneManager *v4; // r6
  _DWORD *v5; // r4
  _DWORD *v6; // r5
  unsigned int v7; // r7
  glitch::scene::ISceneNode *v8; // r1

  v4 = result;
  if ( a2 )
  {
    if ( a3 )
    {
      v6 = (_DWORD *)(a2 + 244);
      v5 = *(_DWORD **)(a2 + 244);
      if ( v5 != (_DWORD *)(a2 + 244) )
      {
        v7 = a4 + 1;
        do
        {
          if ( v5 )
            v8 = (glitch::scene::ISceneNode *)(v5 - 1);
          else
            v8 = nullptr;
          result = (SceneManager *)SceneManager::DBG_PrintNode(v4, v8, 1, v7);
          v5 = (_DWORD *)*v5;
        }
        while ( v6 != v5 );
      }
    }
  }
  return result;
}


// ===== 350ee0 SceneManager::ForceRegister(void) =====
int __fastcall SceneManager::ForceRegister(int this)
{
  *(_BYTE *)(this + 1096) = 1;
  *(_BYTE *)(this + 649) = 1;
  return this;
}


// ===== 350ef0 SceneManager::setSceneNodeCustomRenderPass(E_SCENE_NODE_CUSTOM_RENDER_PASS) =====
int __fastcall SceneManager::setSceneNodeCustomRenderPass(int a1, int a2)
{
  int result; // r0

  result = *(_DWORD *)(a1 + 1160);
  *(_DWORD *)(a1 + 1160) = a2;
  return result;
}


// ===== 350f00 glitch::core::heapsink<glitch::scene::CSceneManager::SDistanceNodeEntry>(glitch::scene::CSceneManager::SDistanceNodeEntry *,int,int) =====
int __fastcall glitch::core::heapsink<glitch::scene::CSceneManager::SDistanceNodeEntry>(int result, int a2, int a3)
{
  int v3; // r7
  int v4; // r10
  int v6; // r8
  double *v7; // r4
  double *v8; // r5
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r11
  int v13; // r12
  int v14; // r6
  int v15; // r5
  double v16; // [sp+0h] [bp-Ch]

  v3 = 2 * a2;
  v4 = a2;
  v6 = result;
  if ( a3 > 2 * a2 )
  {
    while ( 1 )
    {
      v14 = v3 + 1;
      v7 = (double *)(v6 + 16 * v3);
      v15 = v6 + 16 * (v3 + 1);
      if ( a3 > v3 + 1 )
      {
        v16 = v7[1];
        if ( v16 < *(double *)(v15 + 8) )
        {
          v16 = *(double *)(v15 + 8);
          v7 = (double *)(v6 + 16 * (v3 + 1));
          goto LABEL_5;
        }
      }
      else
      {
        v7 = (double *)(v6 + 16 * v3);
        v16 = v7[1];
      }
      v14 = v3;
LABEL_5:
      v8 = (double *)(v6 + 16 * v4);
      result = v8[1] < v16;
      v3 = 2 * v14;
      if ( v8[1] < v16 )
      {
        result = *(_DWORD *)v8;
        v9 = *((_DWORD *)v8 + 1);
        v10 = *((_DWORD *)v8 + 2);
        v11 = *((_DWORD *)v8 + 3);
        v12 = *(_DWORD *)v7;
        v13 = *((_DWORD *)v7 + 1);
        *(_DWORD *)v7 = *(_DWORD *)v8;
        *((_DWORD *)v7 + 1) = v9;
        *((_DWORD *)v7 + 2) = v10;
        *((_DWORD *)v7 + 3) = v11;
        *((_DWORD *)v8 + 1) = v13;
        v8[1] = v16;
        *(_DWORD *)(v6 + 16 * v4) = v12;
        v4 = v14;
        if ( v3 < a3 )
          continue;
      }
      return result;
    }
  }
  return result;
}


// ===== 350fc0 glitch::core::heapsort<glitch::scene::CSceneManager::SDistanceNodeEntry>(glitch::scene::CSceneManager::SDistanceNodeEntry *,int) =====
int __fastcall glitch::core::heapsort<glitch::scene::CSceneManager::SDistanceNodeEntry>(int result, int a2)
{
  int v2; // r5
  int v3; // r6
  int v4; // r4
  int v5; // r7
  int v6; // r8
  int v7; // r10
  int *v8; // r5
  int v9; // r12
  int v10; // lr
  int v11; // r1
  int v12; // r2
  int v13; // r3
  __int64 v14; // r8

  v2 = a2 - 1;
  v3 = a2;
  v4 = result;
  v5 = result - 16;
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      result = glitch::core::heapsink<glitch::scene::CSceneManager::SDistanceNodeEntry>(v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = (int *)(v4 + 16 * v2 + 8);
    do
    {
      v9 = *(_DWORD *)v4;
      v10 = *(_DWORD *)(v4 + 4);
      v11 = *(v8 - 1);
      v12 = *v8;
      v13 = v8[1];
      v14 = *(_QWORD *)(v4 + 8);
      *(_DWORD *)v4 = *(v8 - 2);
      *(_DWORD *)(v4 + 4) = v11;
      *(_DWORD *)(v4 + 8) = v12;
      *(_DWORD *)(v4 + 12) = v13;
      *(_QWORD *)v8 = v14;
      *(v8 - 2) = v9;
      *(v8 - 1) = v10;
      result = glitch::core::heapsink<glitch::scene::CSceneManager::SDistanceNodeEntry>(v5, 1, v3--);
      v8 -= 4;
    }
    while ( v3 );
  }
  return result;
}


// ===== 35104c glitch::core::heapsink<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::CSceneManager::SRenderDataSortNodeEntry *,int,int) =====
int __fastcall glitch::core::heapsink<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
        int result,
        int a2,
        int a3)
{
  int i; // r3
  unsigned int v4; // r6
  unsigned int v5; // r7
  int *v6; // r12
  int v7; // r5
  int v8; // r7
  int v9; // r4

  for ( i = 2 * a2; i < a3; a2 = v9 )
  {
    v9 = i + 1;
    v6 = (int *)(result + 8 * i);
    if ( a3 > i + 1 )
    {
      v4 = v6[1];
      v5 = *(_DWORD *)(result + 8 * (i + 1) + 4);
      if ( v4 < v5 )
      {
        v6 = (int *)(result + 8 * (i + 1));
        v7 = result + 8 * a2;
        v4 = v6[1];
        i = 2 * v9;
        if ( *(_DWORD *)(v7 + 4) >= v5 )
          return result;
        goto LABEL_5;
      }
    }
    else
    {
      v6 = (int *)(result + 8 * i);
      v4 = v6[1];
    }
    v7 = result + 8 * a2;
    v9 = i;
    i *= 2;
    if ( *(_DWORD *)(v7 + 4) >= v4 )
      return result;
LABEL_5:
    v8 = *v6;
    *v6 = *(_DWORD *)(result + 8 * a2);
    v6[1] = *(_DWORD *)(v7 + 4);
    *(_DWORD *)(v7 + 4) = v4;
    *(_DWORD *)(result + 8 * a2) = v8;
  }
  return result;
}


// ===== 3510f0 glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::CSceneManager::SRenderDataSortNodeEntry *,int) =====
int __fastcall glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(int result, int a2)
{
  int v2; // r4
  int v3; // r6
  int *v4; // r5
  int v5; // r8
  int v6; // r7
  int v7; // r10
  int *v8; // r4
  int v9; // r3
  int v10; // r1

  v2 = a2 - 1;
  v3 = a2;
  v4 = (int *)result;
  v5 = result - 8;
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      result = glitch::core::heapsink<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = &v4[2 * v2];
    do
    {
      v9 = *v4;
      v10 = v4[1];
      *v4 = *v8;
      v4[1] = v8[1];
      v8[1] = v10;
      *v8 = v9;
      v8 -= 2;
      result = glitch::core::heapsink<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(v5, 1, v3--);
    }
    while ( v3 );
  }
  return result;
}


// ===== 351178 std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::CSceneManager::SUnsortedNodeEntry*,uint,glitch::scene::CSceneManager::SUnsortedNodeEntry const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *result,
        int a2,
        unsigned int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r12
  unsigned int v7; // r6
  int v8; // r2
  int v9; // r7
  int v10; // r4
  unsigned int v11; // r2
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r8
  int v15; // r1
  int v16; // r0
  int v17; // r1
  int v18; // r4
  int j; // r2
  _DWORD *v20; // r1
  unsigned int v21; // r4
  int v22; // r10
  unsigned int v23; // r4
  int i; // r1
  bool v25; // cc
  int v26; // r6
  int v27; // r1
  int v28; // r0
  _DWORD *v29; // r1

  v4 = result;
  if ( (unsigned int)a4 >= *result )
  {
    v7 = result[1];
    if ( (unsigned int)a4 < v7 )
      return (_DWORD *)std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
  }
  else
  {
    v7 = result[1];
  }
  v8 = (int)(v7 - a2) >> 3;
  v9 = v8;
  if ( a3 >= v8 )
  {
    v21 = a3 - v8;
    v22 = (int)(8 * v21) >> 3;
    v23 = v7 + 8 * v21;
    if ( v22 > 0 )
    {
      for ( i = 0; i != v22; ++i )
      {
        result = (_DWORD *)(v7 + 8 * i);
        *result = *a4;
        result[1] = a4[1];
      }
    }
    v25 = v8 <= 0;
    if ( v8 <= 0 )
      v8 = v23 + 8 * v8;
    v4[1] = v23;
    if ( v25 )
    {
      v4[1] = v8;
    }
    else
    {
      v26 = 0;
      do
      {
        --v8;
        *(_DWORD *)(v23 + v26) = *(_DWORD *)(a2 + v26);
        v27 = v23 + v26;
        v28 = *(_DWORD *)(a2 + v26 + 4);
        v26 += 8;
        *(_DWORD *)(v27 + 4) = v28;
      }
      while ( v8 );
      v4[1] += 8 * v9;
      do
      {
        v29 = (_DWORD *)(a2 + 8 * v8);
        *v29 = *a4;
        result = (_DWORD *)a4[1];
        ++v8;
        v29[1] = result;
      }
      while ( v9 != v8 );
    }
  }
  else
  {
    v10 = 8 * a3;
    v11 = v7 - v10;
    v12 = v10 >> 3;
    if ( v10 >> 3 > 0 )
    {
      v14 = 0;
      do
      {
        --v12;
        *(_DWORD *)(v7 + v14) = *(_DWORD *)(v11 + v14);
        v15 = v7 + v14;
        v16 = *(_DWORD *)(v11 + v14 + 4);
        v14 += 8;
        *(_DWORD *)(v15 + 4) = v16;
      }
      while ( v12 );
      v13 = v4[1];
    }
    else
    {
      v13 = v7;
    }
    v17 = (int)(v11 - a2) >> 3;
    result = (_DWORD *)(v13 + v10);
    v4[1] = result;
    if ( v17 > 0 )
    {
      do
      {
        --v17;
        *(_DWORD *)(v7 - 8) = *(_DWORD *)(v11 - 8);
        result = *(_DWORD **)(v11 - 4);
        v11 -= 8;
        *(_DWORD *)(v7 - 4) = result;
        v7 -= 8;
      }
      while ( v17 );
    }
    v18 = v10 >> 3;
    if ( v18 > 0 )
    {
      for ( j = 0; j != v18; ++j )
      {
        v20 = (_DWORD *)(a2 + 8 * j);
        *v20 = *a4;
        result = (_DWORD *)a4[1];
        v20[1] = result;
      }
    }
  }
  return result;
}


// ===== 351338 std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::CSceneManager::SDistanceNodeEntry*,uint,glitch::scene::CSceneManager::SDistanceNodeEntry const&,std::__false_type const&) =====
unsigned int __fastcall std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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
  _DWORD v57[5]; // [sp+10h] [bp-1Ch] BYREF
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
      return std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
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


// ===== 35150c std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*,uint,glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *result,
        int a2,
        unsigned int a3,
        _DWORD *a4)
{
  _DWORD *v4; // r12
  unsigned int v7; // r6
  int v8; // r2
  int v9; // r7
  int v10; // r4
  unsigned int v11; // r2
  int v12; // r7
  unsigned int v13; // r0
  int v14; // r8
  int v15; // r1
  int v16; // r0
  int v17; // r1
  int v18; // r4
  int j; // r2
  _DWORD *v20; // r1
  unsigned int v21; // r4
  int v22; // r10
  unsigned int v23; // r4
  int i; // r1
  bool v25; // cc
  int v26; // r6
  int v27; // r1
  int v28; // r0
  _DWORD *v29; // r1

  v4 = result;
  if ( (unsigned int)a4 >= *result )
  {
    v7 = result[1];
    if ( (unsigned int)a4 < v7 )
      return (_DWORD *)std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(result);
  }
  else
  {
    v7 = result[1];
  }
  v8 = (int)(v7 - a2) >> 3;
  v9 = v8;
  if ( a3 >= v8 )
  {
    v21 = a3 - v8;
    v22 = (int)(8 * v21) >> 3;
    v23 = v7 + 8 * v21;
    if ( v22 > 0 )
    {
      for ( i = 0; i != v22; ++i )
      {
        result = (_DWORD *)(v7 + 8 * i);
        *result = *a4;
        result[1] = a4[1];
      }
    }
    v25 = v8 <= 0;
    if ( v8 <= 0 )
      v8 = v23 + 8 * v8;
    v4[1] = v23;
    if ( v25 )
    {
      v4[1] = v8;
    }
    else
    {
      v26 = 0;
      do
      {
        --v8;
        *(_DWORD *)(v23 + v26) = *(_DWORD *)(a2 + v26);
        v27 = v23 + v26;
        v28 = *(_DWORD *)(a2 + v26 + 4);
        v26 += 8;
        *(_DWORD *)(v27 + 4) = v28;
      }
      while ( v8 );
      v4[1] += 8 * v9;
      do
      {
        v29 = (_DWORD *)(a2 + 8 * v8);
        *v29 = *a4;
        result = (_DWORD *)a4[1];
        ++v8;
        v29[1] = result;
      }
      while ( v9 != v8 );
    }
  }
  else
  {
    v10 = 8 * a3;
    v11 = v7 - v10;
    v12 = v10 >> 3;
    if ( v10 >> 3 > 0 )
    {
      v14 = 0;
      do
      {
        --v12;
        *(_DWORD *)(v7 + v14) = *(_DWORD *)(v11 + v14);
        v15 = v7 + v14;
        v16 = *(_DWORD *)(v11 + v14 + 4);
        v14 += 8;
        *(_DWORD *)(v15 + 4) = v16;
      }
      while ( v12 );
      v13 = v4[1];
    }
    else
    {
      v13 = v7;
    }
    v17 = (int)(v11 - a2) >> 3;
    result = (_DWORD *)(v13 + v10);
    v4[1] = result;
    if ( v17 > 0 )
    {
      do
      {
        --v17;
        *(_DWORD *)(v7 - 8) = *(_DWORD *)(v11 - 8);
        result = *(_DWORD **)(v11 - 4);
        v11 -= 8;
        *(_DWORD *)(v7 - 4) = result;
        v7 -= 8;
      }
      while ( v17 );
    }
    v18 = v10 >> 3;
    if ( v18 > 0 )
    {
      for ( j = 0; j != v18; ++j )
      {
        v20 = (_DWORD *)(a2 + 8 * j);
        *v20 = *a4;
        result = (_DWORD *)a4[1];
        v20[1] = result;
      }
    }
  }
  return result;
}


// ===== 3516cc glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject() =====
void __fastcall glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject(
        glitch::io::IAttributeExchangingObject *this)
{
  *(_DWORD *)this = off_95CD44;
  *((_DWORD *)this + 1) = off_95B720;
  CustomFree(this);
}


// ===== 351710 `virtual thunk to'glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject() =====
void __fastcall `virtual thunk to'glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject(
        glitch::io::IAttributeExchangingObject *this)
{
  glitch::io::IAttributeExchangingObject::~IAttributeExchangingObject((glitch::io::IAttributeExchangingObject *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 351720 std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 351780 std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 3517e0 std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 351840 std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 3518c0 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 351920 std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::SDistanceNodeEntry*,glitch::scene::CSceneManager::SDistanceNodeEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
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
      * std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 351a64 std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::SDistanceNodeEntry*,uint,glitch::scene::CSceneManager::SDistanceNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        unsigned int *a1,
        int a2,
        unsigned int a3,
        unsigned int *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (int)(a1[2] - a1[1]) >> 4 )
      std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 351ab8 std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::CSceneManager::SDistanceNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        unsigned int *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 4;
  if ( a2 >= v5 )
  {
    std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (unsigned int *)a1,
      *(_DWORD *)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 16 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 351afc std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::SUnsortedNodeEntry*,glitch::scene::CSceneManager::SUnsortedNodeEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        unsigned __int8 a6)
{
  int v9; // r10
  size_t v10; // r8
  _DWORD *v11; // r0
  char *v12; // r12
  _DWORD *v13; // r9
  int v14; // lr
  _DWORD *v15; // lr
  int v16; // r1
  int v17; // r0
  _DWORD *v18; // r3
  int v19; // r2
  int v20; // r0
  _DWORD *v21; // r5
  int i; // r3
  _DWORD *v23; // r2
  char *v24; // r0
  int v25; // r12
  int v26; // r1
  char *v27; // r3
  int v28; // r2
  _DWORD *v29; // r8

  v9 = a6;
  v10 = 2
      * std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
          a1,
          a5);
  v11 = GlitchAlloc(v10 * 4, 0);
  v12 = (char *)*a1;
  v13 = v11;
  v14 = (a2 - *a1) >> 3;
  if ( v14 > 0 )
  {
    v16 = (a2 - *a1) >> 3;
    v17 = 0;
    do
    {
      --v16;
      v13[v17] = *(_DWORD *)&v12[v17 * 4];
      v18 = &v13[v17];
      v19 = *(_DWORD *)&v12[v17 * 4 + 4];
      v17 += 2;
      v18[1] = v19;
    }
    while ( v16 );
    v15 = &v13[2 * v14];
  }
  else
  {
    v15 = v11;
  }
  if ( a5 == 1 )
  {
    v21 = v15 + 2;
    *v15 = *a3;
    v15[1] = a3[1];
  }
  else
  {
    v20 = (int)(8 * a5) >> 3;
    v21 = &v15[2 * a5];
    if ( v20 > 0 )
    {
      for ( i = 0; i != v20; ++i )
      {
        v23 = &v15[2 * i];
        *v23 = *a3;
        v23[1] = a3[1];
      }
    }
  }
  if ( a6 )
  {
    v24 = (char *)a1[1];
  }
  else
  {
    v24 = (char *)a1[1];
    v25 = (int)&v24[-a2] >> 3;
    if ( v25 > 0 )
    {
      v26 = (int)&v24[-a2] >> 3;
      do
      {
        --v26;
        *(_DWORD *)((char *)v21 + v9) = *(_DWORD *)(a2 + v9);
        v27 = (char *)v21 + v9;
        v28 = *(_DWORD *)(a2 + v9 + 4);
        v9 += 8;
        *((_DWORD *)v27 + 1) = v28;
      }
      while ( v26 );
      v24 = (char *)a1[1];
      v21 += 2 * v25;
    }
  }
  v29 = &v13[v10];
  if ( (char *)*a1 != v24 )
    v24 += 8 * ~((unsigned int)&v24[-*a1 - 8] >> 3);
  GlitchFree(v24);
  a1[1] = v21;
  a1[2] = v29;
  *a1 = v13;
}


// ===== 351c48 std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::SUnsortedNodeEntry*,uint,glitch::scene::CSceneManager::SUnsortedNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        int a2,
        unsigned int a3,
        _DWORD *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (a1[2] - a1[1]) >> 3 )
      std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 351c9c std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*,glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        unsigned int a5,
        unsigned __int8 a6)
{
  int v9; // r10
  size_t v10; // r8
  _DWORD *v11; // r0
  char *v12; // r12
  _DWORD *v13; // r9
  int v14; // lr
  _DWORD *v15; // lr
  int v16; // r1
  int v17; // r0
  _DWORD *v18; // r3
  int v19; // r2
  int v20; // r0
  _DWORD *v21; // r5
  int i; // r3
  _DWORD *v23; // r2
  char *v24; // r0
  int v25; // r12
  int v26; // r1
  char *v27; // r3
  int v28; // r2
  _DWORD *v29; // r8

  v9 = a6;
  v10 = 2
      * std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
          a1,
          a5);
  v11 = GlitchAlloc(v10 * 4, 0);
  v12 = (char *)*a1;
  v13 = v11;
  v14 = (a2 - *a1) >> 3;
  if ( v14 > 0 )
  {
    v16 = (a2 - *a1) >> 3;
    v17 = 0;
    do
    {
      --v16;
      v13[v17] = *(_DWORD *)&v12[v17 * 4];
      v18 = &v13[v17];
      v19 = *(_DWORD *)&v12[v17 * 4 + 4];
      v17 += 2;
      v18[1] = v19;
    }
    while ( v16 );
    v15 = &v13[2 * v14];
  }
  else
  {
    v15 = v11;
  }
  if ( a5 == 1 )
  {
    v21 = v15 + 2;
    *v15 = *a3;
    v15[1] = a3[1];
  }
  else
  {
    v20 = (int)(8 * a5) >> 3;
    v21 = &v15[2 * a5];
    if ( v20 > 0 )
    {
      for ( i = 0; i != v20; ++i )
      {
        v23 = &v15[2 * i];
        *v23 = *a3;
        v23[1] = a3[1];
      }
    }
  }
  if ( a6 )
  {
    v24 = (char *)a1[1];
  }
  else
  {
    v24 = (char *)a1[1];
    v25 = (int)&v24[-a2] >> 3;
    if ( v25 > 0 )
    {
      v26 = (int)&v24[-a2] >> 3;
      do
      {
        --v26;
        *(_DWORD *)((char *)v21 + v9) = *(_DWORD *)(a2 + v9);
        v27 = (char *)v21 + v9;
        v28 = *(_DWORD *)(a2 + v9 + 4);
        v9 += 8;
        *((_DWORD *)v27 + 1) = v28;
      }
      while ( v26 );
      v24 = (char *)a1[1];
      v21 += 2 * v25;
    }
  }
  v29 = &v13[v10];
  if ( (char *)*a1 != v24 )
    v24 += 8 * ~((unsigned int)&v24[-*a1 - 8] >> 3);
  GlitchFree(v24);
  a1[1] = v21;
  a1[2] = v29;
  *a1 = v13;
}


// ===== 351de8 std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::SRenderDataSortNodeEntry*,uint,glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        _DWORD *a1,
        int a2,
        unsigned int a3,
        _DWORD *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (a1[2] - a1[1]) >> 3 )
      std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 351e3c boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr() =====
glitch::video::CMaterial **__fastcall boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(
        glitch::video::CMaterial **result)
{
  glitch::video::CMaterial *v1; // r4
  glitch::video::CMaterial **v2; // r5

  v1 = *result;
  v2 = result;
  if ( *result )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CMaterial::~CMaterial(v1);
      CustomFree(v1);
      return v2;
    }
  }
  return result;
}


// ===== 351e84 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::SDefaultNodeEntry*,glitch::scene::CSceneManager::SDefaultNodeEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        glitch::video::CMaterial ***a1,
        char *a2,
        glitch::video::CMaterial **a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  glitch::video::CMaterial **v10; // r0
  glitch::video::CMaterial **v11; // r3
  glitch::video::CMaterial **v12; // r9
  int v13; // r12
  glitch::video::CMaterial **v14; // r3
  int v15; // r0
  glitch::video::CMaterial **v16; // r2
  glitch::video::CMaterial *v17; // r1
  glitch::video::CMaterial *v18; // r1
  int v19; // r1
  glitch::video::CMaterial **v20; // r5
  glitch::video::CMaterial *v21; // r2
  glitch::video::CMaterial **v22; // r6
  int v23; // r12
  int v24; // r1
  glitch::video::CMaterial **v25; // r3
  glitch::video::CMaterial *v26; // r2
  glitch::video::CMaterial *v27; // r2
  glitch::video::CMaterial **v28; // r4
  glitch::video::CMaterial **v29; // r0
  glitch::video::CMaterial *v30; // r2

  v9 = 4
     * std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = (glitch::video::CMaterial **)GlitchAlloc(v9 * 4, 0);
  v11 = *a1;
  v12 = v10;
  v13 = (a2 - (char *)*a1) >> 4;
  if ( v13 > 0 )
  {
    v15 = (a2 - (char *)*a1) >> 4;
    v16 = v12;
    do
    {
      *v16 = *v11;
      v16[1] = v11[1];
      v17 = v11[2];
      v16[2] = v17;
      if ( v17 )
        ++*(_DWORD *)v17;
      v18 = v11[3];
      --v15;
      v11 += 4;
      v16[3] = v18;
      v16 += 4;
    }
    while ( v15 );
    v14 = &v12[4 * v13];
  }
  else
  {
    v14 = v10;
  }
  if ( a5 == 1 )
  {
    v20 = v14 + 4;
    *v14 = *a3;
    v14[1] = a3[1];
    v30 = a3[2];
    v14[2] = v30;
    if ( v30 )
      ++*(_DWORD *)v30;
    v14[3] = a3[3];
  }
  else
  {
    v19 = (int)(16 * a5) >> 4;
    v20 = &v14[4 * a5];
    if ( v19 > 0 )
    {
      while ( 1 )
      {
        *v14 = *a3;
        v14[1] = a3[1];
        v21 = a3[2];
        v14[2] = v21;
        if ( v21 )
          ++*(_DWORD *)v21;
        --v19;
        v14[3] = a3[3];
        if ( !v19 )
          break;
        v14 += 4;
      }
    }
  }
  if ( a6 )
  {
    v22 = a1[1];
  }
  else
  {
    v22 = a1[1];
    v23 = ((char *)v22 - a2) >> 4;
    if ( v23 > 0 )
    {
      v24 = ((char *)v22 - a2) >> 4;
      v25 = v20;
      do
      {
        *v25 = *(glitch::video::CMaterial **)a2;
        v25[1] = *((glitch::video::CMaterial **)a2 + 1);
        v26 = *((glitch::video::CMaterial **)a2 + 2);
        v25[2] = v26;
        if ( v26 )
          ++*(_DWORD *)v26;
        v27 = *((glitch::video::CMaterial **)a2 + 3);
        --v24;
        a2 += 16;
        v25[3] = v27;
        v25 += 4;
      }
      while ( v24 );
      v22 = a1[1];
      v20 += 4 * v23;
    }
  }
  v28 = *a1;
  if ( *a1 == v22 )
  {
    v29 = v22;
  }
  else
  {
    do
    {
      v22 -= 4;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v22 + 2);
    }
    while ( v28 != v22 );
    v29 = *a1;
  }
  GlitchFree(v29);
  a1[1] = v20;
  a1[2] = &v12[v9];
  *a1 = v12;
}


// ===== 352058 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CSceneManager::SDefaultNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        int a2)
{
  _DWORD *v2; // r3
  _DWORD *v4; // r1
  _BYTE v5[4]; // [sp+Ch] [bp-4h] BYREF

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (glitch::video::CMaterial ***)a1,
      *(char **)(a1 + 4),
      (glitch::video::CMaterial **)a2,
      (int)v5,
      1u,
      1);
  }
  else
  {
    *v2 = *(_DWORD *)a2;
    v2[1] = *(_DWORD *)(a2 + 4);
    v4 = *(_DWORD **)(a2 + 8);
    v2[2] = v4;
    if ( v4 )
      ++*v4;
    v2[3] = *(_DWORD *)(a2 + 12);
    *(_DWORD *)(a1 + 4) += 16;
  }
}


// ===== 3520d4 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
glitch::video::CMaterial ***__fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
        glitch::video::CMaterial ***a1)
{
  glitch::video::CMaterial **v1; // r4
  glitch::video::CMaterial **v2; // r5

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 4;
    boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v1 + 2);
  }
  if ( *a1 )
    GlitchFree(*a1);
  return a1;
}


// ===== 352118 std::vector<LightBase *,glitch::core::SAllocator<LightBase *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<LightBase * const*>(uint &,LightBase * const*,LightBase * const*) =====
void *__fastcall std::vector<LightBase *,glitch::core::SAllocator<LightBase *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<LightBase * const*>(
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


// ===== 352154 SceneManager::DBG_DrawCircle(Point2D<float> const&,float,float,glitch::video::SColor const&) =====
float __fastcall SceneManager::DBG_DrawCircle(int a1, float *a2, float a3, float a4, unsigned __int8 *a5)
{
  int v6; // r7
  float v7; // r9
  float v8; // r11
  int v10; // r8
  float v11; // r10
  float v12; // r1
  float v13; // r0
  int v14; // r3
  int v15; // r2
  int v16; // r1
  float result; // r0
  float x; // [sp+0h] [bp-2Ch]
  float v19; // [sp+4h] [bp-28h]
  float v20[3]; // [sp+10h] [bp-1Ch] BYREF
  float v21[4]; // [sp+1Ch] [bp-10h] BYREF

  v19 = 0.0;
  v6 = *(_DWORD *)(a1 + 20);
  v7 = 0.38268;
  v8 = 0.92388;
  v21[2] = a3;
  v20[2] = a3;
  v10 = 0;
  v11 = 0.0;
  v12 = 1.0;
  while ( 1 )
  {
    v21[0] = *a2 + (float)(a4 * v12);
    v21[1] = a2[1] + (float)(a4 * v19);
    v11 = v11 + 0.3927;
    v20[0] = *a2 + (float)(a4 * v8);
    v14 = a5[2];
    v15 = a5[3];
    v16 = *a5 | (a5[1] << 8);
    v20[1] = a2[1] + (float)(a4 * v7);
    ++v10;
    (*(void (__fastcall **)(int, float *, float *, int))(*(_DWORD *)v6 + 28))(
      v6,
      v21,
      v20,
      v16 | (v14 << 16) | (v15 << 24));
    result = v11;
    if ( v10 == 16 )
      break;
    x = cosf(v11 + 0.3927);
    v13 = sinf(v11 + 0.3927);
    v19 = v7;
    v12 = v8;
    v7 = v13;
    v8 = x;
  }
  return result;
}


// ===== 3522b8 boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr() =====
glitch::video::CMaterialRenderer **__fastcall boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(
        glitch::video::CMaterialRenderer **a1)
{
  glitch::video::CMaterialRenderer *v1; // r4

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CMaterialRenderer::~CMaterialRenderer(v1);
      CustomFree(v1);
    }
  }
  return a1;
}


// ===== 3522f8 SceneManager::UpdateFog(float,float,Point3D<float> const&) =====
int __fastcall SceneManager::UpdateFog(int result, int a2, int a3)
{
  int v3; // r3
  _DWORD v4[3]; // [sp+0h] [bp-Ch] BYREF

  if ( *(_BYTE *)(result + 1074) )
  {
    v3 = *(_DWORD *)(result + 20);
    v4[1] = a3;
    v4[0] = a2;
    return ((int (__fastcall *)(_DWORD, _DWORD, _DWORD, _DWORD *))glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>)(
             *(_DWORD *)(v3 + 228),
             (unsigned __int16)(*(_WORD *)(v3 + 250) + 2),
             0,
             v4);
  }
  return result;
}


// ===== 35233c SceneManager::EnableFog(float,float,Point3D<float> const&,glitch::scene::ISceneNode *) =====
int __fastcall SceneManager::EnableFog(int a1, int a2, int a3, float *a4)
{
  int v4; // r4
  char v6; // r7
  char v7; // r6
  _DWORD v9[2]; // [sp+4h] [bp-10h] BYREF
  _BYTE v10[8]; // [sp+Ch] [bp-8h] BYREF

  v4 = *(_DWORD *)(a1 + 20);
  v9[1] = a3;
  v9[0] = a2;
  *(_BYTE *)(a1 + 1074) = 1;
  glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::core::vector2d<float>>(
    *(_DWORD *)(v4 + 228),
    (unsigned __int16)(*(_WORD *)(v4 + 250) + 2),
    0,
    v9);
  v6 = (unsigned int)a4[1];
  v7 = (unsigned int)a4[2];
  v10[0] = (unsigned int)*a4;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = 0;
  return glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
           *(_DWORD *)(v4 + 228),
           *(unsigned __int16 *)(v4 + 250),
           0,
           v10);
}


// ===== 3523c4 SceneManager::SetCustomFog(boost::intrusive_ptr<glitch::video::CMaterial> &,glitch::core::vector3d<float>,glitch::core::vector3d<float>,glitch::core::vector3d<float>) =====
int __fastcall SceneManager::SetCustomFog(int a1, _DWORD *a2, int a3, int a4, int a5)
{
  int ParameterID; // r10
  int v9; // r6
  int result; // r0
  int v11; // r5

  ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                  *(glitch::video::CMaterialRenderer **)(*a2 + 4),
                  (glitch::core::detail::SSharedStringHeapEntry::SData *)"fogDirectionMask",
                  0);
  v9 = glitch::video::CMaterialRenderer::getParameterID(
         *(glitch::video::CMaterialRenderer **)(*a2 + 4),
         (glitch::core::detail::SSharedStringHeapEntry::SData *)"fogCameraMask",
         0);
  result = glitch::video::CMaterialRenderer::getParameterID(
             *(glitch::video::CMaterialRenderer **)(*a2 + 4),
             (glitch::core::detail::SSharedStringHeapEntry::SData *)"fogCameraOffset",
             0);
  v11 = result;
  if ( ParameterID != 0xFFFF )
    result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
               *a2,
               ParameterID,
               0,
               a3);
  if ( v9 != 0xFFFF )
    result = glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
               *a2,
               v9,
               0,
               a4);
  if ( v11 != 0xFFFF )
    return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
             *a2,
             v11,
             0,
             a5);
  return result;
}


// ===== 3524a0 SceneManager::AddNodeToMap(glitch::scene::ISceneNode *) =====
int __fastcall SceneManager::AddNodeToMap(SceneManager *this, glitch::scene::ISceneNode *a2)
{
  void (__fastcall *v4)(glitch::scene::ISceneNode *, _DWORD *); // r7
  glitch::scene::CEmptySceneNode *v6; // r7
  int v7; // r3
  _DWORD v8[4]; // [sp+4h] [bp-10h] BYREF

  if ( !*((_DWORD *)this + 163) )
  {
    v6 = (glitch::scene::CEmptySceneNode *)operator new(336, 0);
    glitch::scene::CEmptySceneNode::CEmptySceneNode(v6, -1);
    v7 = *((_DWORD *)this + 1);
    *((_DWORD *)this + 163) = v6;
    (*(void (__fastcall **)(int, glitch::scene::CEmptySceneNode *))(*(_DWORD *)v7 + 92))(v7, v6);
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)this + 163)
                                                                + *(_DWORD *)(**((_DWORD **)this + 163) - 12)));
    (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 163) + 72))(*((_DWORD *)this + 163), 0);
  }
  ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
  if ( glitch::scene::ISceneNode::getParent(a2) )
  {
    v4 = *(void (__fastcall **)(glitch::scene::ISceneNode *, _DWORD *))(*(_DWORD *)a2 + 164);
    glitch::scene::ISceneNode::getAbsolutePosition(v8, a2);
    v4(a2, v8);
    (*(void (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 104))(a2);
  }
  OptimizeStatic(a2);
  (*(void (__fastcall **)(_DWORD, glitch::scene::ISceneNode *))(**((_DWORD **)this + 163) + 92))(
    *((_DWORD *)this + 163),
    a2);
  return glitch::IReferenceCounted::drop((glitch::scene::ISceneNode *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12)));
}


// ===== 3525b4 SceneManager::SetMaterialTexture(boost::intrusive_ptr<glitch::video::CMaterial>,boost::intrusive_ptr<glitch::video::CMaterial>) =====
glitch::IReferenceCounted *__fastcall SceneManager::SetMaterialTexture(int a1, _DWORD *a2, _DWORD *a3)
{
  int ParameterID; // r8
  glitch::IReferenceCounted *result; // r0
  bool v7; // zf
  glitch::IReferenceCounted *v8; // r5
  glitch::IReferenceCounted *v9; // [sp+4h] [bp-8h] BYREF

  ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                  *(glitch::video::CMaterialRenderer **)(*a3 + 4),
                  (glitch::core::detail::SSharedStringHeapEntry::SData *)"Diffuse",
                  0);
  result = (glitch::IReferenceCounted *)glitch::video::CMaterialRenderer::getParameterID(
                                          *(glitch::video::CMaterialRenderer **)(*a2 + 4),
                                          (glitch::core::detail::SSharedStringHeapEntry::SData *)"Diffuse",
                                          0);
  v7 = result == (glitch::IReferenceCounted *)((char *)&elf_hash_bucket[16328] + 3);
  if ( result != (glitch::IReferenceCounted *)((char *)&elf_hash_bucket[16328] + 3) )
    v7 = ParameterID == 0xFFFF;
  v8 = result;
  if ( !v7 )
  {
    v9 = nullptr;
    result = (glitch::IReferenceCounted *)glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                                            *a3,
                                            ParameterID,
                                            0,
                                            &v9);
    if ( v9 )
    {
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        *a2,
        v8,
        0,
        &v9);
      result = v9;
      if ( v9 )
        return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v9);
    }
  }
  return result;
}


// ===== 352668 SceneManager::SetShadowProjectionMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::vector3d<float>,float,float) =====
glitch::video::CMaterialRenderer **__fastcall SceneManager::SetShadowProjectionMaterialEffects(
        int a1,
        _DWORD *a2,
        float *a3,
        float a4,
        float a5)
{
  int v6; // r1
  const char **v7; // r3
  int v9; // r5
  const char *v10; // r0
  int ParameterID; // r10
  int v13; // r6
  int v14; // r5
  float v15[2]; // [sp+4h] [bp-10h] BYREF
  const char **v16; // [sp+Ch] [bp-8h] BYREF

  v6 = *a2;
  v15[0] = a4;
  v7 = *(const char ***)(v6 + 4);
  v16 = v7;
  if ( v7 )
  {
    ++*v7;
    v7 = v16;
  }
  if ( !LC_API_STRNCMP_0(v7[2], "GL_ShadowProjection", 0x13u) )
  {
    v9 = *a2;
    v10 = *(const char **)(*a2 + 28);
    if ( v10 )
      v10 += 4;
    if ( !LC_API_STRNCMP_0(v10, "SH_", 3u) )
    {
      ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                      *(glitch::video::CMaterialRenderer **)(v9 + 4),
                      (glitch::core::detail::SSharedStringHeapEntry::SData *)"Object_Color",
                      0);
      v13 = glitch::video::CMaterialRenderer::getParameterID(
              *(glitch::video::CMaterialRenderer **)(*a2 + 4),
              (glitch::core::detail::SSharedStringHeapEntry::SData *)"Object_Alpha",
              0);
      v14 = glitch::video::CMaterialRenderer::getParameterID(
              *(glitch::video::CMaterialRenderer **)(*a2 + 4),
              (glitch::core::detail::SSharedStringHeapEntry::SData *)"Shadow_Alpha",
              0);
      if ( ParameterID != 0xFFFF && *a3 > -0.5 )
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
          *a2,
          ParameterID,
          0,
          a3);
      if ( v13 != 0xFFFF && v15[0] > -0.5 )
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
          *a2,
          v13,
          0,
          v15);
      if ( v14 != 0xFFFF && a5 > -0.5 )
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
          *a2,
          v14,
          0,
          &a5);
    }
  }
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr((glitch::video::CMaterialRenderer **)&v16);
}


// ===== 3527fc SceneManager::SetMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::vector3d<float>,float,float) =====
glitch::video::CMaterialRenderer **__fastcall SceneManager::SetMaterialEffects(
        int a1,
        _DWORD *a2,
        float *a3,
        float a4,
        float a5)
{
  int v6; // r1
  glitch::video::CMaterialRenderer *v7; // r3
  const char *v9; // r5
  int v11; // r6
  const char *v12; // r5
  int ParameterID; // r8
  int v14; // r6
  int v15; // r5
  float v16[2]; // [sp+4h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v17; // [sp+Ch] [bp-4h] BYREF

  v6 = *a2;
  v16[0] = a4;
  v7 = *(glitch::video::CMaterialRenderer **)(v6 + 4);
  v17 = v7;
  if ( v7 )
  {
    ++*(_DWORD *)v7;
    v7 = v17;
  }
  v9 = *((const char **)v7 + 2);
  if ( !LC_API_STRNCMP_0(v9, "GL_Diffuse", 0xAu)
    || !LC_API_STRNCMP_0(v9, "GL_ColorEffects", 0xFu)
    || !LC_API_STRNCMP_0(v9, "GL_Xray", 7u) )
  {
    v11 = *a2;
    v12 = *(const char **)(*a2 + 28);
    if ( v12 )
      v12 += 4;
    if ( (int)LC_API_STRLEN_0(v12) > 2
      && (!LC_API_STRNCMP_0(v12, "GL_", 3u) || !LC_API_STRNCMP_0(v12, "CE_", 3u) || !LC_API_STRNCMP_0(v12, "XR_", 3u)) )
    {
      ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                      *(glitch::video::CMaterialRenderer **)(v11 + 4),
                      (glitch::core::detail::SSharedStringHeapEntry::SData *)"Object_Color",
                      0);
      v14 = glitch::video::CMaterialRenderer::getParameterID(
              *(glitch::video::CMaterialRenderer **)(*a2 + 4),
              (glitch::core::detail::SSharedStringHeapEntry::SData *)"Object_Saturation",
              0);
      v15 = glitch::video::CMaterialRenderer::getParameterID(
              *(glitch::video::CMaterialRenderer **)(*a2 + 4),
              (glitch::core::detail::SSharedStringHeapEntry::SData *)"Object_Alpha",
              0);
      if ( ParameterID != 0xFFFF && *a3 > -0.5 )
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<glitch::core::vector3d<float>>(
          *a2,
          ParameterID,
          0,
          a3);
      if ( v14 != 0xFFFF && v16[0] > -0.5 )
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
          *a2,
          v14,
          0,
          v16);
      if ( v15 != 0xFFFF && a5 > -0.5 )
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
          *a2,
          v15,
          0,
          &a5);
    }
  }
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v17);
}


// ===== 352a2c SceneManager::ChangeTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,char const*) =====
int __fastcall SceneManager::ChangeTechnique(int a1, int a2, glitch::core::detail::SSharedStringHeapEntry::SData *a3)
{
  int TechniqueID; // r0
  int v5; // r4
  glitch::video::CMaterialRenderer *v7; // [sp+4h] [bp-4h] BYREF

  v7 = *(glitch::video::CMaterialRenderer **)(*(_DWORD *)a2 + 4);
  if ( v7 )
    ++*(_DWORD *)v7;
  if ( !a3
    || (TechniqueID = glitch::video::CMaterialRenderer::getTechniqueID(v7, a3), TechniqueID == 255)
    || *(unsigned __int8 *)(*(_DWORD *)a2 + 8) == TechniqueID )
  {
    v5 = 0;
  }
  else
  {
    *(_BYTE *)(*(_DWORD *)a2 + 8) = TechniqueID;
    v5 = 1;
  }
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v7);
  return v5;
}


// ===== 352aa4 SceneManager::SearchByName(glitch::scene::ISceneNode *,void (*)(glitch::scene::ISceneNode *),std::string const&,bool) =====
_DWORD *__fastcall SceneManager::SearchByName(
        _DWORD *this,
        glitch::scene::ISceneNode *a2,
        void (*a3)(glitch::scene::ISceneNode *),
        const std::string *a4,
        bool a5)
{
  bool v5; // zf
  SceneManager *v8; // r10
  const char *v10; // r0
  _DWORD *v11; // r4
  _DWORD *v12; // r5
  glitch::scene::ISceneNode *v13; // r1
  const char *v14; // r0

  v5 = a3 == nullptr;
  if ( a3 )
    v5 = a2 == nullptr;
  v8 = (SceneManager *)this;
  if ( !v5 )
  {
    if ( a5 )
    {
      v14 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
      if ( LC_API_STRNCMP_0(v14, a4->_M_start_of_storage._M_data, a4->_M_finish - a4->_M_start_of_storage._M_data) )
        goto LABEL_6;
    }
    else
    {
      v10 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
      if ( LC_API_STRCMP_0(v10, a4->_M_start_of_storage._M_data) )
        goto LABEL_6;
    }
    a3(a2);
LABEL_6:
    this = (_DWORD *)glitch::scene::ISceneNode::getChildren(a2);
    v12 = this + 1;
    v11 = (_DWORD *)*(this + 1);
    if ( v11 != this + 1 )
    {
      do
      {
        if ( v11 )
          v13 = (glitch::scene::ISceneNode *)(v11 - 1);
        else
          v13 = nullptr;
        this = (_DWORD *)SceneManager::SearchByName(v8, v13, a3, a4, a5);
        v11 = (_DWORD *)*v11;
      }
      while ( v12 != v11 );
    }
  }
  return this;
}


// ===== 352b74 SceneManager::SearchByName(glitch::scene::ISceneNode *,std::string const&,bool) =====
glitch::scene::ISceneNode *__fastcall SceneManager::SearchByName(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        const std::string *a3,
        _BOOL4 a4)
{
  glitch::scene::ISceneNode *v4; // r4
  bool v7; // r7
  const char *v8; // r0
  _DWORD *v9; // r4
  _DWORD *v10; // r6
  glitch::scene::ISceneNode *v11; // r1
  int v12; // r0
  const char *v13; // r0

  v4 = a2;
  v7 = a4;
  if ( a2 )
  {
    if ( a4 )
    {
      v13 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
      if ( !LC_API_STRNCMP_0(v13, a3->_M_start_of_storage._M_data, a3->_M_finish - a3->_M_start_of_storage._M_data) )
        return v4;
    }
    else
    {
      v8 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
      if ( !LC_API_STRCMP_0(v8, a3->_M_start_of_storage._M_data) )
        return v4;
    }
    v10 = (_DWORD *)(glitch::scene::ISceneNode::getChildren(v4) + 4);
    v9 = (_DWORD *)*v10;
    if ( (_DWORD *)*v10 == v10 )
    {
      return nullptr;
    }
    else
    {
      do
      {
        if ( v9 )
          v11 = (glitch::scene::ISceneNode *)(v9 - 1);
        else
          v11 = nullptr;
        v12 = SceneManager::SearchByName(this, v11, a3, v7);
        v9 = (_DWORD *)*v9;
      }
      while ( v10 != v9 && !v12 );
      return (glitch::scene::ISceneNode *)v12;
    }
  }
  return v4;
}


// ===== 352c3c SceneManager::SceneManager(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::io::IFileSystem>,glitch::gui::ICursorControl *,glitch::gui::IGUIEnvironment *) =====
int __fastcall SceneManager::SceneManager(int a1, int a2)
{
  *(_DWORD *)(a1 + 1164) = off_95B720;
  *(_DWORD *)a1 = off_95CF34;
  *(_DWORD *)(a1 + 1168) = 1;
  *(int *)((char *)&elf_hash_bucket[236] + a1) = (int)off_95CF54;
  glitch::scene::CSceneManager::CSceneManager(a1, off_95CE4C, a2);
  *(_DWORD *)(a1 + 652) = 0;
  *(_BYTE *)(a1 + 656) = 0;
  *(_DWORD *)a1 = off_95CD94;
  *(_DWORD *)(a1 + 1164) = off_95CE38;
  LightSetManager::LightSetManager((LightSetManager *)(a1 + 660));
  *(_DWORD *)(a1 + 1092) = 4;
  *(_DWORD *)(a1 + 1116) = 0;
  *(_DWORD *)(a1 + 1120) = 1065353216;
  *(_DWORD *)(a1 + 1156) = 0;
  *(_DWORD *)(a1 + 1080) = 0;
  *(_BYTE *)(a1 + 1084) = 0;
  *(_DWORD *)(a1 + 1088) = 0;
  *(_BYTE *)(a1 + 1096) = 0;
  *(_DWORD *)(a1 + 1100) = 0;
  *(_DWORD *)(a1 + 1104) = 0;
  *(_DWORD *)(a1 + 1108) = 0;
  *(_DWORD *)(a1 + 1112) = 0;
  *(_DWORD *)(a1 + 1124) = 0;
  *(_DWORD *)(a1 + 1128) = 0;
  *(_DWORD *)(a1 + 1132) = 0;
  *(_DWORD *)(a1 + 1136) = 0;
  *(_DWORD *)(a1 + 1140) = 0;
  *(_DWORD *)(a1 + 1144) = 0;
  *(_DWORD *)(a1 + 1148) = 0;
  *(_DWORD *)(a1 + 1152) = 0;
  return a1;
}


// ===== 352d4c SceneManager::SceneManager(glitch::video::IVideoDriver *,boost::intrusive_ptr<glitch::io::IFileSystem>,glitch::gui::ICursorControl *,glitch::gui::IGUIEnvironment *) =====
int __fastcall SceneManager::SceneManager(int a1, int *a2, int a3)
{
  int v5; // r3

  glitch::scene::CSceneManager::CSceneManager(a1, a2 + 1, a3);
  v5 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v5 - 28)) = a2[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  *(_DWORD *)(a1 + 652) = 0;
  *(_BYTE *)(a1 + 656) = 0;
  LightSetManager::LightSetManager((LightSetManager *)(a1 + 660));
  *(_DWORD *)(a1 + 1092) = 4;
  *(_DWORD *)(a1 + 1116) = 0;
  *(_DWORD *)(a1 + 1120) = 1065353216;
  *(_DWORD *)(a1 + 1156) = 0;
  *(_DWORD *)(a1 + 1080) = 0;
  *(_BYTE *)(a1 + 1084) = 0;
  *(_DWORD *)(a1 + 1088) = 0;
  *(_BYTE *)(a1 + 1096) = 0;
  *(_DWORD *)(a1 + 1100) = 0;
  *(_DWORD *)(a1 + 1104) = 0;
  *(_DWORD *)(a1 + 1108) = 0;
  *(_DWORD *)(a1 + 1112) = 0;
  *(_DWORD *)(a1 + 1124) = 0;
  *(_DWORD *)(a1 + 1128) = 0;
  *(_DWORD *)(a1 + 1132) = 0;
  *(_DWORD *)(a1 + 1136) = 0;
  *(_DWORD *)(a1 + 1140) = 0;
  *(_DWORD *)(a1 + 1144) = 0;
  *(_DWORD *)(a1 + 1148) = 0;
  *(_DWORD *)(a1 + 1152) = 0;
  return a1;
}


// ===== 352e14 `global constructor keyed to'.._.._sources_Core_Irrlicht_SceneManager.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_SceneManager.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A1EF8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1EF4 = 1056964608;
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


// ===== 352ef0 std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::CSceneManager::SUnsortedNodeEntry const&) [clone] =====
void __fastcall std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int *a1,
        _DWORD *a2)
{
  int v2; // r4
  int v3; // r5

  v2 = *a1;
  v3 = a1[1];
  if ( (v3 - *a1) >> 3 )
  {
    if ( v3 != v2 )
      a1[1] = v2;
  }
  else
  {
    std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      a1[1],
      0,
      a2);
  }
}


// ===== 352f24 std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find(char const*,uint) [clone] =====
size_t __fastcall std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find(
        int a1,
        char *a2)
{
  size_t result; // r0
  int v5; // r12
  int v6; // r5
  char *v7; // r0

  result = LC_API_STRLEN_0(a2);
  v5 = *(_DWORD *)(a1 + 16);
  v6 = *(_DWORD *)(a1 + 20);
  if ( v5 != v6 )
  {
    if ( result <= v5 - v6 )
    {
      v7 = std::search<char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>>(
             *(char **)(a1 + 20),
             *(char **)(a1 + 16),
             a2,
             &a2[result]);
      if ( v7 != *(char **)(a1 + 16) )
        return (size_t)&v7[-*(_DWORD *)(a1 + 20)];
    }
    return -1;
  }
  if ( result )
    return -1;
  return result;
}


// ===== 352fa8 SceneManager::AutoLoadNormalMap(boost::intrusive_ptr<glitch::video::CMaterial>) =====
glitch::IReferenceCounted *__fastcall SceneManager::AutoLoadNormalMap(int a1, _DWORD *a2)
{
  int v2; // r8
  int v4; // r6
  glitch::IReferenceCounted *result; // r0
  int ParameterID; // r10
  bool v7; // zf
  glitch::IReferenceCounted *v8; // r8
  signed int v9; // r3
  unsigned int v10; // r12
  int v11; // r2
  unsigned int v12; // r11
  unsigned int v13; // r11
  const char *v14; // r2
  char *v15; // r3
  char *v16; // r11
  char *v17; // r3
  const char *v18; // r1
  const char *v19; // r2
  glitch::IReferenceCounted *v20; // r3
  glitch::IReferenceCounted *v21; // r0
  _BOOL4 v22; // r3
  char *v23; // r12
  char *v24; // r12
  signed int v25; // r0
  size_t v26; // r0
  signed int v27; // [sp+8h] [bp-64h]
  signed int v28; // [sp+8h] [bp-64h]
  unsigned int v29; // [sp+Ch] [bp-60h]
  _BYTE *v30; // [sp+Ch] [bp-60h]
  int v31; // [sp+10h] [bp-5Ch]
  char *v32; // [sp+18h] [bp-54h]
  size_t v33; // [sp+20h] [bp-4Ch]
  _BOOL4 v34; // [sp+24h] [bp-48h]
  glitch::IReferenceCounted *v35; // [sp+28h] [bp-44h] BYREF
  glitch::IReferenceCounted *v36; // [sp+2Ch] [bp-40h] BYREF
  glitch::IReferenceCounted *v37; // [sp+30h] [bp-3Ch] BYREF
  _DWORD v38[4]; // [sp+34h] [bp-38h] BYREF
  const char *v39; // [sp+44h] [bp-28h]
  void *p; // [sp+48h] [bp-24h]
  _DWORD v41[4]; // [sp+4Ch] [bp-20h] BYREF
  _BYTE *v42; // [sp+5Ch] [bp-10h]
  void *v43; // [sp+60h] [bp-Ch]

  v2 = *a2;
  v4 = *(_DWORD *)(*a2 + 28);
  if ( v4 )
    v4 += 4;
  if ( !LC_API_STRNCMP_0((const char *)v4, "GL_", 3u)
    || (result = (glitch::IReferenceCounted *)LC_API_STRLEN_0((const char *)v4), (unsigned int)result > 5)
    && *(_BYTE *)v4 == 68
    && *(_BYTE *)(v4 + 1) == 86 )
  {
    ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                    *(glitch::video::CMaterialRenderer **)(v2 + 4),
                    (glitch::core::detail::SSharedStringHeapEntry::SData *)"Diffuse",
                    0);
    result = (glitch::IReferenceCounted *)glitch::video::CMaterialRenderer::getParameterID(
                                            *(glitch::video::CMaterialRenderer **)(*a2 + 4),
                                            (glitch::core::detail::SSharedStringHeapEntry::SData *)"Normal",
                                            0);
    v7 = result == (glitch::IReferenceCounted *)((char *)&elf_hash_bucket[16328] + 3);
    if ( result != (glitch::IReferenceCounted *)((char *)&elf_hash_bucket[16328] + 3) )
      v7 = ParameterID == 0xFFFF;
    v8 = result;
    if ( !v7 )
    {
      v37 = nullptr;
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        *a2,
        result,
        0,
        &v37);
      if ( v37 )
        return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v37);
      v36 = nullptr;
      glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
        *a2,
        ParameterID,
        0,
        &v36);
      if ( !v36 )
        goto LABEL_53;
      v42 = v41;
      v43 = v41;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v41,
        *((_BYTE **)v36 + 7),
        *((_BYTE **)v36 + 6));
      v39 = (const char *)v38;
      p = v38;
      std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
        v38,
        v43,
        v42);
      v9 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find(
             (int)v38,
             "_diffuse.tga");
      if ( v9 < 0 )
      {
        v25 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find(
                (int)v38,
                "_dif.tga");
        v9 = v25;
        if ( v25 < 0 )
        {
          v26 = std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::find(
                  (int)v38,
                  ".tga");
          v10 = 4;
          v9 = v26;
        }
        else
        {
          v10 = 8;
        }
      }
      else
      {
        v10 = 12;
      }
      v11 = v39 - (_BYTE *)p;
      if ( v9 > (unsigned int)(v39 - (_BYTE *)p) )
      {
        v31 = v39 - (_BYTE *)p;
        v28 = v9;
        v29 = v10;
        __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
        v10 = v29;
        v9 = v28;
        v11 = v31;
      }
      v12 = v11 - v9;
      if ( v11 - v9 >= v10 )
        v12 = v10;
      if ( -2 - v11 + v12 <= 0xA )
      {
        v27 = v9;
        __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
        v9 = v27;
      }
      v13 = v12 + v9;
      v14 = "_autonm.tga";
      v15 = (char *)p + v9;
      if ( p > "_autonm.tga" )
        v14 = nullptr;
      v16 = (char *)p + v13;
      v32 = v15;
      if ( p <= "_autonm.tga" )
        v34 = v39 > v14;
      else
        v34 = (_BOOL4)v14;
      v33 = v16 - v15;
      if ( v16 - v15 <= 10 )
      {
        if ( !v34 )
          goto LABEL_64;
        v22 = v15 >= "";
        if ( v16 <= "_autonm.tga" )
          v22 = 1;
        if ( v22 )
        {
LABEL_64:
          v24 = &aAutonmTga[v33];
          if ( v33 )
          {
            memcpy(v32, "_autonm.tga", v33);
            v24 = &aAutonmTga[v33];
          }
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
            v38,
            v16,
            v24,
            "",
            v34);
          v19 = (const char *)p;
          goto LABEL_33;
        }
        if ( v32 > "_autonm.tga" )
        {
          v30 = p;
          std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
            v38,
            v16,
            &aAutonmTga[v33],
            "",
            1);
          v19 = (const char *)p;
          if ( v33 )
          {
            memmove((char *)p + v32 - v30, (char *)p + "_autonm.tga" - v30, v33);
            v19 = (const char *)p;
          }
          goto LABEL_33;
        }
        v23 = &aAutonmTga[v33];
        if ( v33 )
        {
          memcpy(v32, "_autonm.tga", v33);
          v23 = &aAutonmTga[v33];
        }
        std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
          v38,
          v16,
          v23,
          "",
          1);
      }
      else
      {
        memcpy(v15, "_autonm.tga", 0xBu);
        v17 = v32 + 11;
        if ( v16 != v32 + 11 )
        {
          v18 = v39;
          if ( v39 + 1 != v16 )
          {
            memmove(v32 + 11, v16, v39 + 1 - v16);
            v18 = v39;
            v17 = v32 + 11;
          }
          v19 = (const char *)p;
          v39 = &v18[v17 - v16];
          goto LABEL_33;
        }
      }
      v19 = (const char *)p;
LABEL_33:
      glitch::video::CTextureManager::getTexture(
        (glitch::video::CTextureManager *)&v35,
        *(const char **)(*(_DWORD *)(dword_99F73C + 16) + 224),
        v19);
      v20 = v35;
      if ( v35 )
        ++*((_DWORD *)v35 + 1);
      v21 = v37;
      v37 = v20;
      if ( v21 )
        glitch::IReferenceCounted::drop(v21);
      if ( v35 )
        glitch::IReferenceCounted::drop(v35);
      if ( v37 )
      {
        if ( LC_API_STRNCMP_0((const char *)v4, "GL_", 3u) )
        {
          if ( LC_API_STRLEN_0((const char *)v4) > 5 && *(_BYTE *)v4 == 68 && *(_BYTE *)(v4 + 1) == 86 )
            *(_BYTE *)(v4 + 4) = 78;
        }
        else
        {
          *(_BYTE *)(v4 + 7) = 78;
        }
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
          *a2,
          v8,
          0,
          &v37);
      }
      if ( p != v38 && p )
        GlitchFree(p);
      if ( v43 != v41 && v43 )
        GlitchFree(v43);
      if ( v36 )
        glitch::IReferenceCounted::drop(v36);
LABEL_53:
      result = v37;
      if ( v37 )
        return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v37);
    }
  }
  return result;
}


// ===== 35359c std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::CSceneManager::SRenderDataSortNodeEntry const&) [clone] =====
void __fastcall std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int *a1,
        _DWORD *a2)
{
  int v2; // r4
  int v3; // r5

  v2 = *a1;
  v3 = a1[1];
  if ( (v3 - *a1) >> 3 )
  {
    if ( v3 != v2 )
      a1[1] = v2;
  }
  else
  {
    std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      a1[1],
      0,
      a2);
  }
}


// ===== 3535d0 SceneManager::SearchByType(glitch::scene::ISceneNode *,void (*)(glitch::scene::ISceneNode *),glitch::scene::E_SCENE_NODE_TYPE) =====
void __fastcall SceneManager::SearchByType(int a1, int a2, void (__fastcall *a3)(int), int a4)
{
  bool v5; // zf
  int *v6; // r5
  int *v7; // r6
  int v8; // t1
  int *v9; // [sp+4h] [bp-Ch] BYREF
  int *v10; // [sp+8h] [bp-8h]
  int v11; // [sp+Ch] [bp-4h]

  v5 = a3 == nullptr;
  if ( a3 )
    v5 = a2 == 0;
  if ( !v5 )
  {
    v11 = 0;
    v9 = nullptr;
    v10 = nullptr;
    (*(void (__fastcall **)(int, int, int **, int))(*(_DWORD *)a1 + 32))(a1, a4, &v9, a2);
    v6 = v9;
    v7 = v10;
    if ( v9 != v10 )
    {
      do
      {
        v8 = *v6++;
        a3(v8);
      }
      while ( v7 != v6 );
      v7 = v9;
    }
    if ( v7 )
      GlitchFree(v7);
  }
}


// ===== 35364c glitch::video::CMaterial::getHashCode(void) =====
int __fastcall glitch::video::CMaterial::getHashCode(glitch::video::CMaterial *this)
{
  int Technique; // r4

  Technique = glitch::video::CMaterial::getTechnique(this);
  if ( ((*((_DWORD *)this + 4) >> Technique) & 1) != 0 )
    glitch::video::CMaterial::updateHashCode(this, Technique);
  return *(_DWORD *)(*((_DWORD *)this + 6) + 4 * Technique);
}


// ===== 353684 glitch::video::CMaterial::equals(uchar,glitch::video::CMaterial const&,uchar) =====
int __fastcall glitch::video::CMaterial::equals(
        glitch::video::CMaterial *this,
        int a2,
        const glitch::video::CMaterial *a3,
        int a4)
{
  int v8; // r8
  int v10; // r2
  int v11; // r3
  int v12; // r9
  int v13; // r8
  int v14; // r10
  int v15; // r11
  _DWORD *v16; // r1
  _DWORD *v17; // r0

  if ( ((*((_DWORD *)this + 4) >> a2) & 1) != 0 )
    glitch::video::CMaterial::updateHashCode(this, a2);
  v8 = *(_DWORD *)(*((_DWORD *)this + 6) + 4 * a2);
  if ( ((*((_DWORD *)a3 + 4) >> a4) & 1) != 0 )
    glitch::video::CMaterial::updateHashCode(a3, a4);
  if ( v8 != *(_DWORD *)(*((_DWORD *)a3 + 6) + 4 * a4) )
    return 0;
  v10 = *(_DWORD *)(*((_DWORD *)this + 1) + 24) + 12 * a2;
  v11 = *(_DWORD *)(*((_DWORD *)a3 + 1) + 24) + 12 * a4;
  v12 = *(unsigned __int8 *)(v10 + 4);
  if ( *(unsigned __int8 *)(v11 + 4) != v12 )
    return 0;
  if ( *(_BYTE *)(v10 + 4) )
  {
    v13 = *(_DWORD *)(v10 + 8);
    v14 = *(_DWORD *)(v11 + 8);
    if ( *(_DWORD *)(v13 + 32) == *(_DWORD *)(v14 + 32) )
    {
      v15 = 52;
      v16 = *(_DWORD **)(v11 + 8);
      v17 = *(_DWORD **)(v10 + 8);
      do
      {
        if ( memcmp(v17, v16, 0x20u) )
          break;
        v17 = (_DWORD *)(v13 + v15);
        v16 = (_DWORD *)(v14 + v15);
        if ( v15 == 52 * (unsigned __int8)(v12 - 1) + 52 )
          return glitch::video::CMaterial::areParametersEqual(this, a2, v12, a3, a4);
        v15 += 52;
      }
      while ( v17[8] == v16[8] );
    }
    return 0;
  }
  return glitch::video::CMaterial::areParametersEqual(this, a2, v12, a3, a4);
}


// ===== 3537b0 glitch::video::CMaterial::operator==(glitch::video::CMaterial const&) =====
int __fastcall glitch::video::CMaterial::operator==(glitch::video::CMaterial *a1, glitch::video::CMaterial *a2)
{
  int Technique; // r5
  int v5; // r0

  Technique = glitch::video::CMaterial::getTechnique(a1);
  v5 = glitch::video::CMaterial::getTechnique(a2);
  return glitch::video::CMaterial::equals(a1, Technique, a2, v5);
}


// ===== 3537e4 glitch::video::CMaterial::operator<(glitch::video::CMaterial const&) =====
int __fastcall glitch::video::CMaterial::operator<(glitch::video::CMaterial *a1, glitch::video::CMaterial *a2)
{
  int Technique; // r6
  int v5; // r4
  unsigned int v6; // r8
  unsigned int v7; // r3
  bool v8; // cf
  unsigned int v10; // r2
  unsigned int v11; // r3

  Technique = glitch::video::CMaterial::getTechnique(a1);
  v5 = glitch::video::CMaterial::getTechnique(a2);
  if ( ((*((_DWORD *)a1 + 4) >> Technique) & 1) != 0 )
    glitch::video::CMaterial::updateHashCode(a1, Technique);
  v6 = *(_DWORD *)(*((_DWORD *)a1 + 6) + 4 * Technique);
  if ( ((*((_DWORD *)a2 + 4) >> v5) & 1) != 0 )
    glitch::video::CMaterial::updateHashCode(a2, v5);
  v7 = *(_DWORD *)(*((_DWORD *)a2 + 6) + 4 * v5);
  v8 = v6 >= v7;
  if ( v6 == v7 )
  {
    v10 = *(unsigned __int8 *)(*(_DWORD *)(*((_DWORD *)a1 + 1) + 24) + 12 * Technique + 4);
    v11 = *(unsigned __int8 *)(*(_DWORD *)(*((_DWORD *)a2 + 1) + 24) + 12 * v5 + 4);
    v8 = v10 >= v11;
    if ( v10 == v11 )
      return glitch::video::CMaterial::compare(a1, Technique, v10, a2, v5);
  }
  return !v8;
}


// ===== 3538ac glitch::scene::CSceneManager::STransparentNodeEntry::operator<(glitch::scene::CSceneManager::STransparentNodeEntry const&) =====
int __fastcall glitch::scene::CSceneManager::STransparentNodeEntry::operator<(float *a1, float *a2, int a3)
{
  int v5; // r2
  int v6; // r3
  int v7; // r5
  glitch::video::CMaterial *v9; // r0
  glitch::video::CMaterial *v10; // r1
  int v11; // r5
  glitch::video::CMaterial *v12; // [sp+4h] [bp-8h] BYREF

  v12 = *((glitch::video::CMaterial **)a2 + 2);
  if ( v12 )
    a3 = *(_DWORD *)v12;
  if ( v12 )
    *(_DWORD *)v12 = a3 + 1;
  v5 = *((_DWORD *)a1 + 3);
  v6 = *((_DWORD *)a2 + 3);
  if ( v5 > v6 )
    goto LABEL_15;
  if ( v5 != v6 )
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }
  if ( a1[4] > a2[4] )
  {
LABEL_15:
    v7 = 1;
    goto LABEL_8;
  }
  if ( a1[4] != a2[4] )
    goto LABEL_7;
  v9 = *((glitch::video::CMaterial **)a1 + 2);
  if ( !v9 )
  {
    v10 = v12;
    if ( !v12 )
    {
      v7 = *(_DWORD *)a1 < *(_DWORD *)a2;
      goto LABEL_8;
    }
    goto LABEL_17;
  }
  v10 = v12;
  if ( !v12 )
  {
LABEL_17:
    v7 = v9 < v10;
    goto LABEL_8;
  }
  if ( glitch::video::CMaterial::operator==(v9, v12) )
  {
    v11 = (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)a1 + 32))(*(_DWORD *)a1, *((_DWORD *)a1 + 1));
    v7 = v11 < (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)a2 + 32))(*(_DWORD *)a2, *((_DWORD *)a2 + 1));
  }
  else
  {
    v7 = glitch::video::CMaterial::operator<(*((glitch::video::CMaterial **)a1 + 2), v12);
  }
LABEL_8:
  boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v12);
  return v7;
}


// ===== 3539e8 glitch::scene::CSceneManager::SDefaultNodeEntry::operator<(glitch::scene::CSceneManager::SDefaultNodeEntry const&) =====
int __fastcall glitch::scene::CSceneManager::SDefaultNodeEntry::operator<(_DWORD *a1, _DWORD *a2, int a3)
{
  int v5; // r2
  int v6; // r3
  int v7; // r5
  glitch::video::CMaterial *v9; // r0
  glitch::video::CMaterial *v10; // r5
  int HashCode; // r5
  int v12; // r5
  glitch::video::CMaterial *v13; // [sp+4h] [bp-4h] BYREF

  v13 = (glitch::video::CMaterial *)a2[2];
  if ( v13 )
    a3 = *(_DWORD *)v13;
  if ( v13 )
    *(_DWORD *)v13 = a3 + 1;
  v5 = a1[3];
  v6 = a2[3];
  if ( v5 > v6 )
  {
    v7 = 1;
    goto LABEL_10;
  }
  if ( v5 != v6 )
  {
    v7 = 0;
    goto LABEL_10;
  }
  v9 = (glitch::video::CMaterial *)a1[2];
  if ( !v9 )
  {
    v10 = v13;
    if ( !v13 )
    {
      v7 = *a1 < *a2;
      goto LABEL_10;
    }
    goto LABEL_15;
  }
  v10 = v13;
  if ( !v13 )
  {
LABEL_15:
    v7 = v9 < v10;
    goto LABEL_10;
  }
  HashCode = glitch::video::CMaterial::getHashCode(v9);
  if ( HashCode == glitch::video::CMaterial::getHashCode(v13) )
  {
    v12 = (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)*a1 + 32))(*a1, a1[1]);
    v7 = v12 < (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)*a2 + 32))(*a2, a2[1]);
  }
  else
  {
    v7 = glitch::video::CMaterial::operator<((glitch::video::CMaterial *)a1[2], v13);
  }
LABEL_10:
  boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v13);
  return v7;
}


// ===== 353afc SceneManager::registerSkinnedMesh(SkinnedMeshSceneNodeEx *) =====
void __fastcall SceneManager::registerSkinnedMesh(int a1, int a2)
{
  char *v2; // r8
  unsigned int v5; // r3
  unsigned int v6; // r7
  size_t v7; // r7
  char *v8; // r0
  _BYTE *v9; // r1
  char *v10; // r6
  size_t v11; // r8
  char *v12; // r8

  v2 = *(char **)(a1 + 1152);
  if ( v2 == *(char **)(a1 + 1156) )
  {
    v5 = (int)&v2[-*(_DWORD *)(a1 + 1148)] >> 2;
    if ( v5 )
      v6 = 2 * v5;
    else
      v6 = 1;
    if ( v6 > 0x3FFFFFFF || v5 > v6 )
      v7 = -4;
    else
      v7 = 4 * v6;
    v8 = (char *)GlitchAlloc(v7, 0);
    v9 = *(_BYTE **)(a1 + 1148);
    v10 = v8;
    v11 = v2 - v9;
    if ( v11 )
      v12 = (char *)memmove(v8, v9, v11) + v11;
    else
      v12 = v8;
    *(_DWORD *)v12 = a2;
    GlitchFree(*(void **)(a1 + 1148));
    *(_DWORD *)(a1 + 1156) = &v10[v7];
    *(_DWORD *)(a1 + 1152) = v12 + 4;
    *(_DWORD *)(a1 + 1148) = v10;
  }
  else
  {
    *(_DWORD *)v2 = a2;
    *(_DWORD *)(a1 + 1152) += 4;
  }
}


// ===== 353bac SceneManager::_RegisterAutomacticLights(void) =====
void __fastcall SceneManager::_RegisterAutomacticLights(SceneManager *this)
{
  int v1; // r3
  int v2; // r6
  int v3; // r3
  int v5; // r6
  int v6; // r5
  _DWORD *v7; // r9
  int v8; // r1
  double v9; // r2
  int v10; // r3
  int v11; // r12
  int v12; // r3
  int v13; // [sp+8h] [bp-1Ch] BYREF
  int v14; // [sp+Ch] [bp-18h]
  double v15; // [sp+10h] [bp-14h]
  _BYTE v16[8]; // [sp+1Ch] [bp-8h] BYREF

  v1 = *((_DWORD *)this + 18);
  v2 = *((_DWORD *)this + 266);
  if ( v1 != *((_DWORD *)this + 19) )
    *((_DWORD *)this + 19) = v1;
  v3 = *((_DWORD *)this + 265);
  v5 = (v2 - v3) >> 2;
  if ( v5 > 0 )
  {
    v6 = 0;
    v7 = (_DWORD *)((char *)this + 72);
    while ( 1 )
    {
      v10 = *(_DWORD *)(*(_DWORD *)(v3 + 4 * v6) + 288);
      v14 = 0;
      v13 = v10;
      v11 = *((_DWORD *)this + 19);
      v12 = *((_DWORD *)this + 20);
      v15 = (double)v6;
      if ( v11 == v12 )
      {
        ++v6;
        std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          v7,
          v11,
          &v13,
          (int)v16,
          1u,
          1);
        if ( v6 == v5 )
          return;
      }
      else
      {
        v8 = v14;
        v9 = v15;
        *(_DWORD *)v11 = v13;
        *(_DWORD *)(v11 + 4) = v8;
        *(double *)(v11 + 8) = v9;
        ++v6;
        *((_DWORD *)this + 19) += 16;
        if ( v6 == v5 )
          return;
      }
      v3 = *((_DWORD *)this + 265);
    }
  }
}


// ===== 353c7c glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS,std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>> &,bool,bool) [clone] =====
void __fastcall glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
        _DWORD *a1,
        int a2,
        int *a3,
        int a4)
{
  char *v4; // r1
  char *v6; // r0
  int v9; // r6
  int v10; // r0
  int v11; // r2
  int v12; // r1
  int v13; // r3
  int v14; // r8
  int v15; // r1
  int v16; // r0
  int v17; // r2
  _DWORD *v18; // r2
  int v19; // r6
  int v20; // r12
  int v21; // r0
  int v22; // r1
  int v23; // [sp+Ch] [bp-18h] BYREF
  int v24; // [sp+10h] [bp-14h]
  _DWORD v25[2]; // [sp+14h] [bp-10h] BYREF
  char v26[8]; // [sp+1Ch] [bp-8h] BYREF

  a1[93] = a2;
  v4 = (char *)a3[1];
  v6 = (char *)a3[2];
  v9 = (int)&v4[-*a3] >> 3;
  v23 = 0;
  v24 = 0;
  if ( v4 == v6 )
  {
    std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a3,
      (int)v4,
      &v23,
      (int)v26,
      1u,
      1u);
  }
  else
  {
    *(_DWORD *)v4 = 0;
    *((_DWORD *)v4 + 1) = v24;
    a3[1] += 8;
  }
  v10 = a1[43];
  v11 = *(_DWORD *)(*a3 + 4);
  v12 = a1[44];
  v13 = *(_DWORD *)*a3;
  v14 = 0;
  a1[39] = a1[42];
  a1[40] = v10;
  a1[41] = v12;
  a1[43] = v11;
  a1[42] = v13;
  a1[44] = 0;
  if ( v9 )
  {
    while ( 1 )
    {
      ++v14;
      v15 = a1[43];
      v16 = *(_DWORD *)(*a3 + 8 * v14 + 4);
      v17 = a1[44];
      a1[42] = *(_DWORD *)(*a3 + 8 * v14);
      a1[43] = v16;
      a1[41] = v17;
      a1[39] = v13;
      a1[40] = v15;
      a1[44] = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v13 + 28))(v13);
      if ( v9 == v14 )
        break;
      v13 = a1[42];
    }
    v13 = a1[42];
  }
  v18 = (_DWORD *)a3[1];
  v19 = a1[43];
  v20 = a1[44];
  v21 = *(v18 - 2);
  v22 = *(v18 - 1);
  a1[39] = v13;
  a1[40] = v19;
  a1[41] = v20;
  a1[42] = v21;
  a1[43] = v22;
  a1[44] = 0;
  if ( a4 )
  {
    v25[1] = 0;
    v25[0] = 0;
    std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      a3,
      v25);
  }
  else
  {
    a3[1] -= 8;
  }
}


// ===== 353dec SceneManager::renderCustomList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(E_SCENE_NODE_CUSTOM_RENDER_PASS,std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>> &) =====
void __fastcall SceneManager::renderCustomList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
        _DWORD *a1,
        int a2,
        int *a3)
{
  char *v3; // r1
  char *v4; // r6
  char *v6; // r2
  int v8; // r6
  int v9; // r0
  int v10; // r2
  int v11; // r1
  int v12; // r3
  int v13; // r7
  int v14; // r1
  int v15; // r0
  int v16; // r2
  _DWORD *v17; // r2
  int v18; // lr
  int v19; // r12
  int v20; // r0
  _DWORD v21[2]; // [sp+Ch] [bp-14h] BYREF
  int v22; // [sp+14h] [bp-Ch] BYREF
  int v23; // [sp+18h] [bp-8h]
  char v24[4]; // [sp+1Ch] [bp-4h] BYREF

  if ( a2 <= 8 )
    a1[93] = a2;
  else
    a1[93] = 9;
  a1[290] = a2;
  v3 = (char *)a3[1];
  v4 = (char *)*a3;
  v6 = (char *)a3[2];
  v8 = (v3 - v4) >> 3;
  v22 = 0;
  v23 = 0;
  if ( v3 == v6 )
  {
    std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a3,
      (int)v3,
      &v22,
      (int)v24,
      1u,
      1u);
  }
  else
  {
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 1) = v23;
    a3[1] += 8;
  }
  v9 = a1[43];
  v10 = *(_DWORD *)(*a3 + 4);
  v11 = a1[44];
  v12 = *(_DWORD *)*a3;
  v13 = 0;
  a1[39] = a1[42];
  a1[40] = v9;
  a1[41] = v11;
  a1[43] = v10;
  a1[42] = v12;
  a1[44] = 0;
  if ( v8 )
  {
    while ( 1 )
    {
      ++v13;
      v14 = a1[43];
      v15 = *(_DWORD *)(*a3 + 8 * v13 + 4);
      v16 = a1[44];
      a1[42] = *(_DWORD *)(*a3 + 8 * v13);
      a1[43] = v15;
      a1[41] = v16;
      a1[39] = v12;
      a1[40] = v14;
      a1[44] = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v12 + 28))(v12);
      if ( v13 == v8 )
        break;
      v12 = a1[42];
    }
    v12 = a1[42];
  }
  v17 = (_DWORD *)a3[1];
  v18 = a1[43];
  v19 = a1[44];
  v20 = *(v17 - 2);
  a1[43] = *(v17 - 1);
  a1[42] = v20;
  a1[39] = v12;
  a1[40] = v18;
  a1[41] = v19;
  a1[44] = 0;
  v21[1] = 0;
  v21[0] = 0;
  std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    a3,
    v21);
}


// ===== 353f50 glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(glitch::scene::E_SCENE_NODE_RENDER_PASS,std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>> &,bool,bool) [clone] =====
void __fastcall glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
        _DWORD *a1,
        int a2,
        int *a3,
        int a4)
{
  char *v4; // r1
  char *v6; // r0
  int v9; // r6
  int v10; // r0
  int v11; // r2
  int v12; // r1
  int v13; // r3
  int v14; // r8
  int v15; // r1
  int v16; // r0
  int v17; // r2
  _DWORD *v18; // r2
  int v19; // r6
  int v20; // r12
  int v21; // r0
  int v22; // r1
  int v23; // [sp+Ch] [bp-18h] BYREF
  int v24; // [sp+10h] [bp-14h]
  _DWORD v25[2]; // [sp+14h] [bp-10h] BYREF
  char v26[8]; // [sp+1Ch] [bp-8h] BYREF

  a1[93] = a2;
  v4 = (char *)a3[1];
  v6 = (char *)a3[2];
  v9 = (int)&v4[-*a3] >> 3;
  v23 = 0;
  v24 = 0;
  if ( v4 == v6 )
  {
    std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a3,
      (int)v4,
      &v23,
      (int)v26,
      1u,
      1u);
  }
  else
  {
    *(_DWORD *)v4 = 0;
    *((_DWORD *)v4 + 1) = v24;
    a3[1] += 8;
  }
  v10 = a1[43];
  v11 = *(_DWORD *)(*a3 + 4);
  v12 = a1[44];
  v13 = *(_DWORD *)*a3;
  v14 = 0;
  a1[39] = a1[42];
  a1[40] = v10;
  a1[41] = v12;
  a1[43] = v11;
  a1[42] = v13;
  a1[44] = 0;
  if ( v9 )
  {
    while ( 1 )
    {
      ++v14;
      v15 = a1[43];
      v16 = *(_DWORD *)(*a3 + 8 * v14 + 4);
      v17 = a1[44];
      a1[42] = *(_DWORD *)(*a3 + 8 * v14);
      a1[43] = v16;
      a1[41] = v17;
      a1[39] = v13;
      a1[40] = v15;
      a1[44] = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v13 + 28))(v13);
      if ( v9 == v14 )
        break;
      v13 = a1[42];
    }
    v13 = a1[42];
  }
  v18 = (_DWORD *)a3[1];
  v19 = a1[43];
  v20 = a1[44];
  v21 = *(v18 - 2);
  v22 = *(v18 - 1);
  a1[39] = v13;
  a1[40] = v19;
  a1[41] = v20;
  a1[42] = v21;
  a1[43] = v22;
  a1[44] = 0;
  if ( a4 )
  {
    v25[1] = 0;
    v25[0] = 0;
    std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      a3,
      v25);
  }
  else
  {
    a3[1] -= 8;
  }
}


// ===== 3540c0 std::vector<LightBase *,glitch::core::SAllocator<LightBase *,(glitch::memory::E_MEMORY_HINT)0>>::operator=(std::vector<LightBase *,glitch::core::SAllocator<LightBase *,(glitch::memory::E_MEMORY_HINT)0>> const&) =====
int __fastcall std::vector<LightBase *,glitch::core::SAllocator<LightBase *,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
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
  _BYTE *v12; // r1
  char *v13; // r7
  int v14; // r3
  int v15; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v4 = *(_BYTE **)a2;
    v5 = *(_BYTE **)(a2 + 4);
    v6 = *(_BYTE **)a1;
    v7 = (signed int)&v5[-*(_DWORD *)a2];
    v8 = v7 >> 2;
    if ( v7 >> 2 > (unsigned int)((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 2) )
    {
      v15 = (int)&v5[-*(_DWORD *)a2] >> 2;
      v13 = (char *)std::vector<LightBase *,glitch::core::SAllocator<LightBase *,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_and_copy<LightBase * const*>(
                      a1,
                      &v15,
                      v4,
                      v5);
      GlitchFree(*(void **)a1);
      v14 = v15;
      *(_DWORD *)a1 = v13;
      *(_DWORD *)(a1 + 8) = &v13[4 * v14];
      *(_DWORD *)(a1 + 4) = &v13[4 * v8];
      return a1;
    }
    v9 = *(_BYTE **)(a1 + 4);
    v10 = (v9 - v6) >> 2;
    if ( v8 > v10 )
    {
      v12 = &v4[4 * v10];
      if ( v12 != v4 )
      {
        memmove(v6, v4, v12 - v4);
        v9 = *(_BYTE **)(a1 + 4);
        v6 = *(_BYTE **)a1;
        v5 = *(_BYTE **)(a2 + 4);
        v12 = (_BYTE *)(*(_DWORD *)a2 + ((unsigned int)&v9[-*(_DWORD *)a1] & 0xFFFFFFFC));
      }
      if ( v12 != v5 )
      {
        memcpy(v9, v12, v5 - v12);
        *(_DWORD *)(a1 + 4) = *(_DWORD *)a1 + 4 * v8;
        return a1;
      }
    }
    else if ( v7 )
    {
      memmove(v6, v4, v7);
      *(_DWORD *)(a1 + 4) = *(_DWORD *)a1 + 4 * v8;
      return a1;
    }
    *(_DWORD *)(a1 + 4) = &v6[4 * v8];
  }
  return a1;
}


// ===== 3541d4 LightSetManager::operator=(LightSetManager const&) =====
int __fastcall LightSetManager::operator=(int a1, int a2)
{
  int v2; // r7
  int v5; // r10
  int i; // r8
  std::string *v7; // r0
  bool v8; // zf
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r9
  int v13; // r7
  void **v14; // r8
  _DWORD *v15; // r2
  _DWORD *v16; // r3
  _DWORD *v17; // r1
  int v18; // r7
  void **v19; // r8
  _DWORD *v20; // r2
  _DWORD *v21; // r3
  _DWORD *v22; // r1
  int j; // r3
  int v24; // r1
  int v25; // r2
  _DWORD *v26; // r3
  _DWORD *v27; // r2
  int v28; // r1

  v2 = a2 + 4;
  *(_DWORD *)a1 = *(_DWORD *)a2;
  v5 = a1 + 4;
  for ( i = 0; i != 96; i += 24 )
  {
    v7 = (std::string *)(v5 + i);
    v8 = v5 + i == v2;
    if ( !v8 )
      std::string::_M_assign(v7, *(const char **)(v2 + 20), *(const char **)(v2 + 16));
    v2 += 24;
  }
  v9 = *(_DWORD *)(a2 + 104);
  v10 = *(_DWORD *)(a2 + 108);
  v11 = *(_DWORD *)(a2 + 112);
  *(_DWORD *)(a1 + 100) = *(_DWORD *)(a2 + 100);
  *(_DWORD *)(a1 + 104) = v9;
  *(_DWORD *)(a1 + 108) = v10;
  *(_DWORD *)(a1 + 112) = v11;
  v12 = 0;
  *(_DWORD *)(a1 + 116) = *(_DWORD *)(a2 + 116);
  do
  {
    v13 = 0;
    v14 = (void **)(a1 + 120 + v12);
    do
    {
      v15 = *(_DWORD **)(a2 + 120 + v12 + v13);
      v13 += 4;
      if ( v15 )
        ++*v15;
      v16 = *v14;
      *v14++ = v15;
      if ( v16 )
      {
        v8 = (*v16)-- == 1;
        if ( v8 )
        {
          if ( !*((_BYTE *)v16 + 84) )
          {
            v17 = (_DWORD *)v16[20];
            *v17 = glitch::memory::Matrix4Pool;
            glitch::memory::Matrix4Pool = (int)v17;
          }
          v16[20] = 0;
          CustomFree(v16);
        }
      }
    }
    while ( v13 != 20 );
    v12 += 20;
  }
  while ( v12 != 80 );
  v18 = 0;
  v19 = (void **)(a1 + 200);
  do
  {
    v20 = *(_DWORD **)(a2 + 200 + v18);
    v18 += 4;
    if ( v20 )
      ++*v20;
    v21 = *v19;
    *v19++ = v20;
    if ( v21 )
    {
      v8 = (*v21)-- == 1;
      if ( v8 )
      {
        if ( !*((_BYTE *)v21 + 84) )
        {
          v22 = (_DWORD *)v21[20];
          *v22 = glitch::memory::Matrix4Pool;
          glitch::memory::Matrix4Pool = (int)v22;
        }
        v21[20] = 0;
        CustomFree(v21);
      }
    }
  }
  while ( v18 != 20 );
  for ( j = 0; j != 64; j += 8 )
  {
    v24 = *(_DWORD *)(a2 + 220 + j + 4);
    v25 = a1 + 220 + j;
    *(_DWORD *)(v25 + 4) = v24;
  }
  v26 = (_DWORD *)(a1 + 284);
  v27 = (_DWORD *)(a2 + 284);
  do
  {
    v26[1] = v27[1];
    v26[2] = v27[2];
    v26[3] = v27[3];
    v28 = v27[4];
    v27 += 5;
    v26[4] = v28;
    v26 += 5;
  }
  while ( v26 != (_DWORD *)(a1 + 364) );
  *(_DWORD *)(a1 + 364) = *(_DWORD *)(a2 + 364);
  *(_DWORD *)(a1 + 368) = *(_DWORD *)(a2 + 368);
  *(_DWORD *)(a1 + 372) = *(_DWORD *)(a2 + 372);
  *(_DWORD *)(a1 + 376) = *(_DWORD *)(a2 + 376);
  *(_DWORD *)(a1 + 380) = *(_DWORD *)(a2 + 380);
  *(_DWORD *)(a1 + 384) = *(_DWORD *)(a2 + 384);
  *(_DWORD *)(a1 + 388) = *(_DWORD *)(a2 + 388);
  *(_DWORD *)(a1 + 392) = *(_DWORD *)(a2 + 392);
  *(_DWORD *)(a1 + 396) = *(_DWORD *)(a2 + 396);
  std::vector<LightBase *,glitch::core::SAllocator<LightBase *,(glitch::memory::E_MEMORY_HINT)0>>::operator=(
    a1 + 400,
    a2 + 400);
  *(_BYTE *)(a1 + 412) = *(_BYTE *)(a2 + 412);
  *(_BYTE *)(a1 + 413) = *(_BYTE *)(a2 + 413);
  *(_BYTE *)(a1 + 414) = *(_BYTE *)(a2 + 414);
  *(_DWORD *)(a1 + 416) = *(_DWORD *)(a2 + 416);
  return a1;
}


// ===== 354468 SceneManager::clear(void) =====
int __fastcall SceneManager::clear(SceneManager *this)
{
  int v1; // r2
  int v2; // r3
  int v3; // r7
  int v5; // r6
  _DWORD *v6; // r3
  int v7; // r6
  glitch::video::CMaterialRendererManager *v8; // r5
  glitch::video::CTextureManager *v9; // r5
  int result; // r0
  _DWORD *v11; // r3
  _BYTE v12[424]; // [sp+4h] [bp-1A8h] BYREF

  v1 = *((_DWORD *)this + 276);
  v2 = *((_DWORD *)this + 275);
  v3 = (v1 - v2) >> 2;
  if ( v3 )
  {
    v5 = 0;
    while ( 1 )
    {
      v6 = *(_DWORD **)(v2 + 4 * v5++);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 12)));
      if ( v5 == v3 )
        break;
      v2 = *((_DWORD *)this + 275);
    }
    v2 = *((_DWORD *)this + 275);
    v1 = *((_DWORD *)this + 276);
  }
  if ( v2 != v1 )
    *((_DWORD *)this + 276) = v2;
  glitch::scene::CSceneManager::clear(this);
  LightSetManager::LightSetManager((LightSetManager *)v12);
  LightSetManager::operator=((int)this + 660, (int)v12);
  LightSetManager::~LightSetManager((LightSetManager *)v12);
  v7 = *((_DWORD *)this + 5);
  glitch::collada::CResFileManager::unloadAll((glitch::collada::CResFileManager *)glitch::collada::CResFileManager::Inst);
  v8 = *(glitch::video::CMaterialRendererManager **)(v7 + 220);
  glitch::video::CMaterialRendererManager::clearUnusedInstances(v8);
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(v8);
  v9 = *(glitch::video::CTextureManager **)(v7 + 224);
  glitch::video::CTextureManager::clearPlaceHolders(v9);
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(
    v9,
    0);
  result = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v7 + 216) + 12))(*(_DWORD *)(v7 + 216));
  v11 = *((_DWORD **)this + 270);
  if ( v11 )
  {
    result = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v11 + *(_DWORD *)(*v11 - 12)));
    *((_DWORD *)this + 270) = 0;
  }
  *((_DWORD *)this + 163) = 0;
  return result;
}


// ===== 354588 SceneManager::DBG_WireFrame(bool,glitch::scene::ISceneNode *) =====
void __fastcall SceneManager::DBG_WireFrame(SceneManager *this, int a2, glitch::scene::ISceneNode *a3)
{
  glitch::scene::ISceneNode *v3; // r5
  _DWORD *v6; // r3
  void *v7; // r0
  int v8; // r6
  int v9; // r10
  int i; // r5
  unsigned int v11; // r3
  unsigned int v12; // r3
  glitch::video::CMaterialRenderer *v13; // r7
  unsigned __int8 Technique; // r0
  glitch::video::CMaterial *v15; // r7
  glitch::video::CMaterial *v17; // r0
  glitch::video::CMaterialRenderer *v18; // r7
  int *v19; // lr
  int v20; // r7
  int v21; // r0
  unsigned int v22; // r1
  int v23; // r2
  int v24; // r3
  int v25; // r1
  int v26; // r2
  int v27; // r3
  int v28; // [sp+0h] [bp-2Ch]
  int v29; // [sp+4h] [bp-28h]
  int v30; // [sp+Ch] [bp-20h] BYREF
  unsigned int v31; // [sp+10h] [bp-1Ch]
  int v32; // [sp+14h] [bp-18h]
  int v33; // [sp+18h] [bp-14h]
  int v34; // [sp+1Ch] [bp-10h]
  int v35; // [sp+20h] [bp-Ch]
  int v36; // [sp+24h] [bp-8h]
  int v37; // [sp+28h] [bp-4h]
  void *p; // [sp+2Ch] [bp+0h] BYREF
  int v39; // [sp+30h] [bp+4h]
  int v40; // [sp+34h] [bp+8h]
  glitch::video::CMaterialRenderer *v41; // [sp+38h] [bp+Ch] BYREF
  glitch::video::CMaterial *v42; // [sp+3Ch] [bp+10h] BYREF

  v3 = a3;
  if ( !a3 )
    v3 = *((glitch::scene::ISceneNode **)this + 1);
  p = nullptr;
  v39 = 0;
  v40 = 0;
  SceneManager::SearchByType((int)this, (int)v3, (int)&p, 1835360612);
  SceneManager::SearchByType((int)this, (int)v3, (int)&p, 1936023908);
  SceneManager::SearchByType((int)this, (int)v3, (int)&p, 1298489700);
  v6 = p;
  v7 = p;
  v29 = (v39 - (int)p) >> 2;
  if ( v29 )
  {
    v28 = 0;
    while ( 1 )
    {
      v8 = v6[v28];
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 136))(v8);
      if ( v9 )
      {
        for ( i = 0; i != v9; ++i )
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v8 + 132))(&v42, v8, i);
          v17 = v42;
          v41 = *((glitch::video::CMaterialRenderer **)v42 + 1);
          v18 = v41;
          if ( v41 )
          {
            ++*(_DWORD *)v41;
            v17 = v42;
            v18 = v41;
          }
          v19 = *(int **)(*((_DWORD *)v18 + 6) + 12 * glitch::video::CMaterial::getTechnique(v17) + 8);
          v20 = 0x4000;
          v21 = *v19;
          v22 = v19[1];
          v23 = v19[2];
          v24 = v19[3];
          v19 += 4;
          v30 = v21;
          v31 = v22;
          v32 = v23;
          v33 = v24;
          v25 = v19[1];
          v26 = v19[2];
          v27 = v19[3];
          v34 = *v19;
          v35 = v25;
          v36 = v26;
          v37 = v27;
          if ( a2 )
          {
            v11 = v31 & 0xFFFFCFFF | 0x1000;
          }
          else
          {
            v20 = 0;
            v11 = v31 & 0xFFFFCFFF;
          }
          v12 = v11 & 0xFFFF3FFF | v20;
          v13 = v41;
          v31 = v12;
          Technique = glitch::video::CMaterial::getTechnique(v42);
          glitch::video::CMaterialRenderer::setRenderState(
            v13,
            Technique,
            0,
            (const glitch::video::detail::renderpass::SRenderState *)&v30);
          boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v41);
          v15 = v42;
          if ( v42 )
          {
            if ( (*(_DWORD *)v42)-- == 1 )
            {
              glitch::video::CMaterial::~CMaterial(v15);
              CustomFree(v15);
            }
          }
        }
      }
      if ( ++v28 == v29 )
        break;
      v6 = p;
    }
    v7 = p;
  }
  if ( v7 )
    GlitchFree(v7);
}


// ===== 35477c SceneManager::SetMaskXray(glitch::scene::ISceneNode *,bool) =====
void __fastcall SceneManager::SetMaskXray(SceneManager *this, glitch::scene::ISceneNode *a2, bool a3)
{
  glitch::scene::ISceneNode *v3; // r4
  int v4; // r11
  _DWORD *v6; // r3
  void *v7; // r0
  int v8; // r6
  int v9; // r8
  int i; // r4
  glitch::video::CMaterial *v11; // r2
  glitch::video::CMaterialRenderer *v12; // r3
  int v13; // r3
  int v14; // r2
  int v15; // r3
  int v16; // r2
  int v17; // r3
  int v18; // r2
  int v19; // r3
  unsigned int v20; // r2
  glitch::video::CMaterial *v21; // r3
  glitch::video::CMaterial *p; // [sp+0h] [bp-24h]
  int v24; // [sp+4h] [bp-20h]
  void *v25; // [sp+Ch] [bp-18h] BYREF
  int v26; // [sp+10h] [bp-14h]
  int v27; // [sp+14h] [bp-10h]
  glitch::video::CMaterialRenderer *v28; // [sp+18h] [bp-Ch] BYREF
  glitch::video::CMaterial *v29; // [sp+1Ch] [bp-8h] BYREF

  v3 = a2;
  if ( !a2 )
    v3 = *((glitch::scene::ISceneNode **)this + 1);
  v4 = 0;
  v25 = nullptr;
  v26 = 0;
  v27 = 0;
  SceneManager::SearchByType((int)this, (int)v3, (int)&v25, 1835360612);
  SceneManager::SearchByType((int)this, (int)v3, (int)&v25, 1936023908);
  SceneManager::SearchByType((int)this, (int)v3, (int)&v25, 1298489700);
  v6 = v25;
  v7 = v25;
  v24 = (v26 - (int)v25) >> 2;
  if ( v24 )
  {
    while ( 1 )
    {
      v8 = v6[v4];
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 136))(v8);
      if ( v9 > 0 )
      {
        for ( i = 0; i != v9; ++i )
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v8 + 132))(&v29, v8, i);
          v11 = v29;
          v12 = *((glitch::video::CMaterialRenderer **)v29 + 1);
          v28 = v12;
          if ( v12 )
          {
            ++*(_DWORD *)v12;
            v12 = v28;
            v11 = v29;
          }
          v13 = *(_DWORD *)(*((_DWORD *)v12 + 6) + 12 * *((unsigned __int8 *)v11 + 8) + 8);
          v14 = *(_DWORD *)(v13 + 4);
          *(_DWORD *)(v13 + 4) = v14 | 0x8000000;
          if ( (v14 & 0x8000000) == 0 )
            *(_BYTE *)(v13 + 48) = 1;
          v15 = *(_DWORD *)(*((_DWORD *)v28 + 6) + 12 * *((unsigned __int8 *)v29 + 8) + 8);
          v16 = *(_DWORD *)(v15 + 4) | 7;
          if ( (*(_DWORD *)(v15 + 4) & 7) != 7 )
            *(_BYTE *)(v15 + 48) = 1;
          *(_DWORD *)(v15 + 4) = v16;
          v17 = *(_DWORD *)(*((_DWORD *)v28 + 6) + 12 * *((unsigned __int8 *)v29 + 8) + 8);
          v18 = *(_DWORD *)v17 | 0xFF00;
          if ( (unsigned __int8)BYTE1(*(_DWORD *)v17) != 255 )
            *(_BYTE *)(v17 + 48) = 1;
          *(_DWORD *)v17 = v18;
          v19 = *(_DWORD *)(*((_DWORD *)v28 + 6) + 12 * *((unsigned __int8 *)v29 + 8) + 8);
          v20 = *(_DWORD *)(v19 + 4);
          *(_DWORD *)(v19 + 4) = v20 & 0xFFFFF1FF | 0x400;
          if ( ((v20 >> 9) & 7) != 2 )
            *(_BYTE *)(v19 + 48) = 1;
          boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v28);
          v21 = v29;
          if ( v29 )
          {
            if ( (*(_DWORD *)v29)-- == 1 )
            {
              p = v21;
              glitch::video::CMaterial::~CMaterial(v21);
              CustomFree(p);
            }
          }
        }
      }
      if ( ++v4 == v24 )
        break;
      v6 = v25;
    }
    v7 = v25;
  }
  if ( v7 )
    GlitchFree(v7);
}


// ===== 3549a0 SceneManager::UpdateLightSet(int,std::vector<bool,std::allocator<bool>> &,glitch::scene::ISceneNode *) =====
void __fastcall SceneManager::UpdateLightSet(int a1, int a2, int a3, int a4)
{
  int v4; // r5
  _DWORD *v8; // r3
  void *v9; // r0
  int v10; // r9
  int v11; // r5
  int v12; // r7
  int v13; // r4
  int v14; // lr
  glitch::video::CMaterial *v15; // r3
  glitch::video::CMaterial *p; // [sp+4h] [bp-28h]
  int v18; // [sp+8h] [bp-24h]
  int v19; // [sp+Ch] [bp-20h]
  void *v20; // [sp+14h] [bp-18h] BYREF
  int v21; // [sp+18h] [bp-14h]
  int v22; // [sp+1Ch] [bp-10h]
  int *v23; // [sp+20h] [bp-Ch] BYREF
  glitch::video::CMaterial *v24[2]; // [sp+24h] [bp-8h] BYREF

  v4 = a4;
  if ( !a4 )
    v4 = *(_DWORD *)(a1 + 4);
  v20 = nullptr;
  v21 = 0;
  v22 = 0;
  SceneManager::SearchByType(a1, v4, &v20, 1835360612);
  SceneManager::SearchByType(a1, v4, &v20, 1936023908);
  SceneManager::SearchByType(a1, v4, &v20, 1298489700);
  v8 = v20;
  v9 = v20;
  v19 = (v21 - (int)v20) >> 2;
  if ( v19 )
  {
    v10 = a1 + 660;
    v18 = 0;
    while ( 1 )
    {
      v11 = v8[v18];
      v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 136))(v11);
      if ( v12 > 0 )
      {
        v13 = 0;
        do
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v11 + 132))(v24, v11, v13);
          v23 = *((int **)v24[0] + 1);
          if ( v23 )
            v14 = *v23;
          ++v13;
          if ( v23 )
            *v23 = v14 + 1;
          LightSetManager::ApplySettings(v10, a2, v24, a3);
          boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v23);
          v15 = v24[0];
          if ( v24[0] )
          {
            if ( (*(_DWORD *)v24[0])-- == 1 )
            {
              p = v15;
              glitch::video::CMaterial::~CMaterial(v15);
              CustomFree(p);
            }
          }
        }
        while ( v12 != v13 );
      }
      if ( ++v18 == v19 )
        break;
      v8 = v20;
    }
    v9 = v20;
  }
  if ( v9 )
    GlitchFree(v9);
}


// ===== 354b2c SceneManager::AutoLoadNormalMap(glitch::scene::ISceneNode *) =====
void __fastcall SceneManager::AutoLoadNormalMap(SceneManager *this, glitch::scene::ISceneNode *a2)
{
  glitch::scene::ISceneNode *v2; // r4
  int v3; // r9
  _DWORD *v5; // r3
  void *v6; // r0
  int v7; // r11
  int v8; // r5
  int v9; // r6
  int v10; // r4
  int v11; // r2
  glitch::video::CMaterial *v12; // r3
  bool v13; // zf
  glitch::video::CMaterial *v14; // r3
  glitch::video::CMaterial *p; // [sp+4h] [bp-20h]
  glitch::video::CMaterial *pa; // [sp+4h] [bp-20h]
  void *v17; // [sp+Ch] [bp-18h] BYREF
  int v18; // [sp+10h] [bp-14h]
  int v19; // [sp+14h] [bp-10h]
  glitch::video::CMaterial *v20; // [sp+18h] [bp-Ch] BYREF
  glitch::video::CMaterial *v21; // [sp+1Ch] [bp-8h] BYREF

  v2 = a2;
  if ( !a2 )
    v2 = *((glitch::scene::ISceneNode **)this + 1);
  v3 = 0;
  v17 = nullptr;
  v18 = 0;
  v19 = 0;
  SceneManager::SearchByType((int)this, (int)v2, (int)&v17, 1835360612);
  SceneManager::SearchByType((int)this, (int)v2, (int)&v17, 1936023908);
  SceneManager::SearchByType((int)this, (int)v2, (int)&v17, 1298489700);
  v5 = v17;
  v6 = v17;
  v7 = (v18 - (int)v17) >> 2;
  if ( v7 )
  {
    while ( 1 )
    {
      v8 = v5[v3];
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 136))(v8);
      if ( v9 > 0 )
      {
        v10 = 0;
        do
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v8 + 132))(&v21, v8, v10);
          v20 = v21;
          if ( v21 )
            v11 = *(_DWORD *)v21;
          ++v10;
          if ( v21 )
            *(_DWORD *)v21 = v11 + 1;
          SceneManager::AutoLoadNormalMap((int)this, &v20);
          v12 = v20;
          if ( v20 )
          {
            v13 = (*(_DWORD *)v20)-- == 1;
            if ( v13 )
            {
              p = v12;
              glitch::video::CMaterial::~CMaterial(v12);
              CustomFree(p);
            }
          }
          v14 = v21;
          if ( v21 )
          {
            v13 = (*(_DWORD *)v21)-- == 1;
            if ( v13 )
            {
              pa = v14;
              glitch::video::CMaterial::~CMaterial(v14);
              CustomFree(pa);
            }
          }
        }
        while ( v9 != v10 );
      }
      if ( ++v3 == v7 )
        break;
      v5 = v17;
    }
    v6 = v17;
  }
  if ( v6 )
    GlitchFree(v6);
}


// ===== 354cb8 SceneManager::SetMaterialEffects(glitch::scene::ISceneNode *,glitch::core::vector3d<float>,float,float) =====
void __fastcall SceneManager::SetMaterialEffects(int a1, int a2, float *a3, float a4, float a5)
{
  int v5; // r6
  _DWORD *v9; // r3
  void *v10; // r0
  int v11; // r6
  int v12; // r0
  int v13; // r4
  int v14; // r8
  float v15; // r7
  float v16; // lr
  glitch::video::CMaterial *v17; // r7
  bool v18; // zf
  glitch::video::CMaterial *v19; // r7
  int v20; // [sp+10h] [bp-14h]
  int v21; // [sp+14h] [bp-10h]
  float v22[3]; // [sp+18h] [bp-Ch] BYREF
  void *p; // [sp+24h] [bp+0h] BYREF
  int v24; // [sp+28h] [bp+4h]
  int v25; // [sp+2Ch] [bp+8h]
  glitch::video::CMaterial *v26; // [sp+30h] [bp+Ch] BYREF
  glitch::video::CMaterial *v27; // [sp+34h] [bp+10h] BYREF

  v5 = a2;
  if ( !a2 )
    v5 = *(_DWORD *)(a1 + 4);
  p = nullptr;
  v24 = 0;
  v25 = 0;
  SceneManager::SearchByType(a1, v5, (int)&p, 1835360612);
  SceneManager::SearchByType(a1, v5, (int)&p, 1936023908);
  SceneManager::SearchByType(a1, v5, (int)&p, 1298489700);
  v9 = p;
  v10 = p;
  v21 = (v24 - (int)p) >> 2;
  if ( v21 )
  {
    v20 = 0;
    while ( 1 )
    {
      v11 = v9[v20];
      v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 136))(v11);
      if ( v12 > 0 )
      {
        v13 = 0;
        v14 = v12;
        do
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v11 + 132))(&v27, v11, v13);
          v26 = v27;
          if ( v27 )
            ++*(_DWORD *)v27;
          v15 = *a3;
          v16 = a3[1];
          v22[2] = a3[2];
          v22[0] = v15;
          v22[1] = v16;
          SceneManager::SetMaterialEffects(a1, &v26, v22, a4, a5);
          v17 = v26;
          ++v13;
          if ( v26 )
          {
            v18 = (*(_DWORD *)v26)-- == 1;
            if ( v18 )
            {
              glitch::video::CMaterial::~CMaterial(v17);
              CustomFree(v17);
            }
          }
          v19 = v27;
          if ( v27 )
          {
            v18 = (*(_DWORD *)v27)-- == 1;
            if ( v18 )
            {
              glitch::video::CMaterial::~CMaterial(v19);
              CustomFree(v19);
            }
          }
        }
        while ( v14 != v13 );
      }
      if ( ++v20 == v21 )
        break;
      v9 = p;
    }
    v10 = p;
  }
  if ( v10 )
    GlitchFree(v10);
}


// ===== 354e8c glitch::scene::CSceneManager::STransparentNodeEntry::STransparentNodeEntry(glitch::scene::ISceneNode *,glitch::core::vector3d<float> const&,boost::intrusive_ptr<glitch::video::CMaterial>,void *,glitch::core::vector3d<float> const*,int) =====
float *__fastcall glitch::scene::CSceneManager::STransparentNodeEntry::STransparentNodeEntry(
        float *a1,
        int a2,
        float *a3,
        glitch::video::CMaterial **a4,
        int a5,
        float *a6,
        int a7)
{
  glitch::video::CMaterial *v7; // r3
  float *v8; // r4
  glitch::video::CMaterial *v10; // r3
  int v11; // r1
  float v12; // r8
  float v13; // r1
  float v14; // r7
  float v15; // r0
  float *v17; // r0
  glitch::video::CMaterial *v18; // [sp+4h] [bp-4h] BYREF

  v7 = *a4;
  v8 = a1;
  v18 = v7;
  if ( v7 )
    a1 = *(float **)v7;
  if ( v7 )
    *(_DWORD *)v7 = (char *)a1 + 1;
  v10 = v18;
  *(_DWORD *)v8 = a2;
  v11 = a5;
  *((_DWORD *)v8 + 1) = a5;
  *((_DWORD *)v8 + 2) = v10;
  if ( v10 )
  {
    v11 = *(_DWORD *)v10 + 1;
    *(_DWORD *)v10 = v11;
  }
  if ( a7 == 0x7FFFFFFF )
    *((_DWORD *)v8 + 3) = (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)v8 + 216))(*(_DWORD *)v8, v11);
  else
    *((_DWORD *)v8 + 3) = a7;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
  if ( a6 )
  {
    v12 = *a6 - *a3;
    v13 = a3[2];
    v14 = a6[1] - a3[1];
    v15 = a6[2];
  }
  else
  {
    v17 = (float *)(*(int (__fastcall **)(_DWORD))(**(_DWORD **)v8 + 56))(*(_DWORD *)v8);
    v12 = v17[12] - *a3;
    v13 = a3[2];
    v14 = v17[13] - a3[1];
    v15 = v17[14];
  }
  v8[4] = (float)((float)((float)(v12 * v12) + (float)(v14 * v14)) + (float)((float)(v15 - v13) * (float)(v15 - v13)))
        + COERCE_FLOAT((*(int (__fastcall **)(_DWORD))(**(_DWORD **)v8 + 208))(*(_DWORD *)v8));
  return v8;
}


// ===== 355000 SceneManager::GetMaterial(glitch::scene::ISceneNode *,std::string const&,bool) =====
SceneManager *__fastcall SceneManager::GetMaterial(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        const std::string *a3,
        int a4,
        char a5)
{
  int v8; // r11
  _DWORD *v9; // r3
  void *v10; // r0
  int v11; // r7
  int v12; // r10
  int v13; // r6
  glitch::video::CMaterial *v14; // r5
  const char *v15; // r0
  int v17; // r0
  const char *v18; // r0
  int v21; // [sp+4h] [bp-18h]
  void *p; // [sp+8h] [bp-14h] BYREF
  int v23; // [sp+Ch] [bp-10h]
  int v24; // [sp+10h] [bp-Ch]
  glitch::video::CMaterial *v25[2]; // [sp+14h] [bp-8h] BYREF

  if ( !a3 )
  {
LABEL_27:
    *(_DWORD *)this = 0;
    return this;
  }
  v8 = 0;
  p = nullptr;
  v23 = 0;
  v24 = 0;
  SceneManager::SearchByType((int)a2, (int)a3, (int)&p, 1835360612);
  SceneManager::SearchByType((int)a2, (int)a3, (int)&p, 1936023908);
  SceneManager::SearchByType((int)a2, (int)a3, (int)&p, 1298489700);
  v9 = p;
  v10 = p;
  v21 = (v23 - (int)p) >> 2;
  if ( !v21 )
  {
LABEL_25:
    if ( v10 )
      GlitchFree(v10);
    goto LABEL_27;
  }
  while ( 1 )
  {
    v11 = v9[v8];
    v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 136))(v11);
    if ( v12 > 0 )
      break;
LABEL_21:
    if ( ++v8 == v21 )
    {
      v10 = p;
      goto LABEL_25;
    }
    v9 = p;
  }
  v13 = 0;
  while ( 1 )
  {
    (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v11 + 132))(v25, v11, v13);
    if ( a5 )
      break;
    v14 = v25[0];
    v17 = *((_DWORD *)v25[0] + 7);
    if ( v17 )
      v18 = (const char *)(v17 + 4);
    else
      v18 = nullptr;
    if ( !LC_API_STRCMP_0(v18, *(const char **)(a4 + 20)) )
    {
      *(_DWORD *)this = v14;
      ++*(_DWORD *)v14;
      goto LABEL_18;
    }
LABEL_8:
    if ( (*(_DWORD *)v14)-- == 1 )
    {
      glitch::video::CMaterial::~CMaterial(v14);
      CustomFree(v14);
    }
    if ( v12 == ++v13 )
      goto LABEL_21;
  }
  v14 = v25[0];
  v15 = *((const char **)v25[0] + 7);
  if ( v15 )
    v15 += 4;
  if ( LC_API_STRNCMP_0(v15, *(const char **)(a4 + 20), *(_DWORD *)(a4 + 16) - *(_DWORD *)(a4 + 20)) )
    goto LABEL_8;
  *(_DWORD *)this = v14;
  ++*(_DWORD *)v14;
LABEL_18:
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v25);
  if ( p )
    GlitchFree(p);
  return this;
}


// ===== 3551e4 SceneManager::ChangeCommonTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool,bool) =====
glitch::video::CMaterialRenderer **__fastcall SceneManager::ChangeCommonTechnique(
        int a1,
        glitch::video::CMaterial **a2,
        int a3,
        int a4)
{
  glitch::video::CMaterial *v4; // r2
  glitch::video::CMaterialRenderer *v6; // r6
  const char *v9; // r6
  glitch::video::CMaterial *v10; // r3
  glitch::video::CMaterial *v11; // r3
  glitch::video::CMaterial *v13; // r3
  glitch::video::CMaterial *v14; // r3
  glitch::video::CMaterial *v15; // r3
  glitch::video::CMaterial *v16; // r3
  glitch::video::CMaterial *v17; // [sp+4h] [bp-20h] BYREF
  glitch::video::CMaterial *v18; // [sp+8h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v19; // [sp+Ch] [bp-18h] BYREF
  glitch::video::CMaterial *v20; // [sp+10h] [bp-14h] BYREF
  glitch::video::CMaterial *v21; // [sp+14h] [bp-10h] BYREF
  glitch::video::CMaterial *v22; // [sp+18h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v23; // [sp+1Ch] [bp-8h] BYREF

  v4 = *a2;
  v23 = *((glitch::video::CMaterialRenderer **)*a2 + 1);
  v6 = v23;
  if ( v23 )
  {
    ++*(_DWORD *)v23;
    v4 = *a2;
    v6 = v23;
  }
  v9 = *(const char **)(*((_DWORD *)v6 + 6) + 12 * glitch::video::CMaterial::getTechnique(v4));
  if ( v9 )
    v9 += 4;
  if ( a4 && *(_BYTE *)(a1 + 1074) )
  {
    if ( LC_API_STRCMP_0(v9, "default") )
    {
      if ( LC_API_STRCMP_0(v9, "lighting") )
      {
        if ( !LC_API_STRCMP_0(v9, "DiffSpec_VCAmbient") )
        {
          v14 = *a2;
          v20 = v14;
          if ( v14 )
            ++*(_DWORD *)v14;
          SceneManager::ChangeTechnique(
            a1,
            (int)&v20,
            (glitch::core::detail::SSharedStringHeapEntry::SData *)"DiffSpec_VCAmbientFog");
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v20);
        }
      }
      else
      {
        v15 = *a2;
        v21 = v15;
        if ( v15 )
          ++*(_DWORD *)v15;
        SceneManager::ChangeTechnique(
          a1,
          (int)&v21,
          (glitch::core::detail::SSharedStringHeapEntry::SData *)"fog & lighting");
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v21);
      }
    }
    else
    {
      v10 = *a2;
      v22 = v10;
      if ( v10 )
        ++*(_DWORD *)v10;
      SceneManager::ChangeTechnique(a1, (int)&v22, (glitch::core::detail::SSharedStringHeapEntry::SData *)"fog");
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v22);
    }
  }
  else if ( LC_API_STRCMP_0(v9, "fog") )
  {
    if ( LC_API_STRCMP_0(v9, "fog & lighting") )
    {
      if ( !LC_API_STRCMP_0(v9, "DiffSpec_VCAmbientFog") )
      {
        v13 = *a2;
        v17 = v13;
        if ( v13 )
          ++*(_DWORD *)v13;
        SceneManager::ChangeTechnique(
          a1,
          (int)&v17,
          (glitch::core::detail::SSharedStringHeapEntry::SData *)"DiffSpec_VCAmbient");
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v17);
      }
    }
    else
    {
      v16 = *a2;
      v18 = v16;
      if ( v16 )
        ++*(_DWORD *)v16;
      SceneManager::ChangeTechnique(
        a1,
        (int)&v18,
        (glitch::core::detail::SSharedStringHeapEntry::SData *)"fog & lighting");
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
    }
  }
  else
  {
    v11 = *a2;
    v19 = v11;
    if ( v11 )
      ++*(_DWORD *)v11;
    SceneManager::ChangeTechnique(a1, (int)&v19, (glitch::core::detail::SSharedStringHeapEntry::SData *)"default");
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v19);
  }
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v23);
}


// ===== 355484 SceneManager::ResetCommonTechniqueToDefault(glitch::scene::ISceneNode *,bool,bool,bool) =====
void __fastcall SceneManager::ResetCommonTechniqueToDefault(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        int a3,
        int a4,
        bool a5)
{
  glitch::scene::ISceneNode *v5; // r5
  _DWORD *v6; // r3
  void *v7; // r0
  int v8; // r5
  int v9; // r0
  int v10; // r4
  int v11; // r10
  glitch::video::CMaterialRenderer *v12; // r3
  const char *v13; // r6
  glitch::video::CMaterial *v14; // r6
  bool v15; // zf
  glitch::video::CMaterial *v16; // r6
  int v20; // [sp+20h] [bp-2Ch]
  int v21; // [sp+2Ch] [bp-20h]
  void *p; // [sp+30h] [bp-1Ch] BYREF
  int v23; // [sp+34h] [bp-18h]
  int v24; // [sp+38h] [bp-14h]
  glitch::video::CMaterial *v25; // [sp+3Ch] [bp-10h] BYREF
  glitch::video::CMaterialRenderer *v26; // [sp+40h] [bp-Ch] BYREF
  glitch::video::CMaterial *v27; // [sp+44h] [bp-8h] BYREF

  v5 = a2;
  if ( !a2 )
    v5 = *((glitch::scene::ISceneNode **)this + 1);
  p = nullptr;
  v23 = 0;
  v24 = 0;
  SceneManager::SearchByType((int)this, (int)v5, (int)&p, 1835360612);
  SceneManager::SearchByType((int)this, (int)v5, (int)&p, 1936023908);
  SceneManager::SearchByType((int)this, (int)v5, (int)&p, 1298489700);
  v6 = p;
  v7 = p;
  v21 = (v23 - (int)p) >> 2;
  if ( v21 )
  {
    v20 = 0;
    while ( 1 )
    {
      v8 = v6[v20];
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 136))(v8);
      if ( v9 > 0 )
      {
        v10 = 0;
        v11 = v9;
        do
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v8 + 132))(&v27, v8, v10);
          v26 = *((glitch::video::CMaterialRenderer **)v27 + 1);
          v12 = v26;
          if ( v26 )
          {
            ++*(_DWORD *)v26;
            v12 = v26;
          }
          v13 = *((const char **)v12 + 2);
          if ( LC_API_STRNCMP_0(v13, "GL_Diffuse", 0xAu)
            && LC_API_STRNCMP_0(v13, "GL_Blend3Map", 0xCu)
            && LC_API_STRNCMP_0(v13, "GL_ColorEffects", 0xFu)
            && LC_API_STRNCMP_0(v13, "GL_Decal", 8u) )
          {
            v25 = v27;
            if ( v27 )
              ++*(_DWORD *)v27;
            SceneManager::ChangeCommonTechnique((int)this, &v25, a3, a4);
            v14 = v25;
            if ( v25 )
            {
              v15 = (*(_DWORD *)v25)-- == 1;
              if ( v15 )
              {
                glitch::video::CMaterial::~CMaterial(v14);
                CustomFree(v14);
              }
            }
          }
          boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v26);
          v16 = v27;
          if ( v27 )
          {
            v15 = (*(_DWORD *)v27)-- == 1;
            if ( v15 )
            {
              glitch::video::CMaterial::~CMaterial(v16);
              CustomFree(v16);
            }
          }
          ++v10;
        }
        while ( v11 != v10 );
      }
      if ( ++v20 == v21 )
        break;
      v6 = p;
    }
    v7 = p;
  }
  if ( v7 )
    GlitchFree(v7);
}


// ===== 355704 SceneManager::ChangeCustomXrayTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool,bool) =====
glitch::video::CMaterialRenderer **__fastcall SceneManager::ChangeCustomXrayTechnique(
        int a1,
        glitch::video::CMaterial **a2,
        int a3,
        int a4)
{
  glitch::video::CMaterial *v5; // r4
  glitch::video::CMaterialRenderer *v8; // r3
  const char *v10; // r10
  glitch::video::CMaterial *v12; // [sp+4h] [bp-90h] BYREF
  glitch::video::CMaterialRenderer *v13; // [sp+8h] [bp-8Ch] BYREF
  char s[64]; // [sp+Ch] [bp-88h] BYREF
  char v15[32]; // [sp+4Ch] [bp-48h] BYREF
  char v16[32]; // [sp+6Ch] [bp-28h] BYREF

  v5 = *a2;
  v8 = *((glitch::video::CMaterialRenderer **)*a2 + 1);
  v13 = v8;
  if ( v8 )
  {
    ++*(_DWORD *)v8;
    v5 = *a2;
  }
  v10 = *((const char **)v5 + 7);
  if ( v10 )
    v10 += 4;
  if ( LC_API_STRNCMP_0(v10, "XR_", 3u) )
    return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v13);
  s[0] = 0;
  if ( !LC_API_STRNCMP_0(v10, "XR_XRAY", 7u) )
  {
    v16[0] = 0;
    v15[0] = 0;
    if ( a4 && *(_BYTE *)(a1 + 1074) )
      strcpy(v16, "_fog");
    if ( a3 )
      sprintf(s, "XR_mask_xray_alpha%s", v15);
    else
      sprintf(s, "XR_draw_xray_alpha%s%s", v15, v16);
    v5 = *a2;
  }
  v12 = v5;
  if ( v5 )
    ++*(_DWORD *)v5;
  SceneManager::ChangeTechnique(a1, (int)&v12, (glitch::core::detail::SSharedStringHeapEntry::SData *)s);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v12);
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v13);
}


// ===== 355890 SceneManager::ChangeCustomShadowProjectionTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool) =====
glitch::video::CMaterialRenderer **__fastcall SceneManager::ChangeCustomShadowProjectionTechnique(
        int a1,
        glitch::video::CMaterial **a2,
        int a3)
{
  glitch::video::CMaterial *v3; // r10
  const char *v7; // r8
  glitch::video::CMaterial *v9; // [sp+4h] [bp-8Ch] BYREF
  glitch::video::CMaterialRenderer *v10; // [sp+8h] [bp-88h] BYREF
  char s[64]; // [sp+Ch] [bp-84h] BYREF
  char v12[32]; // [sp+4Ch] [bp-44h] BYREF
  int v13[8]; // [sp+6Ch] [bp-24h] BYREF

  v3 = *a2;
  v10 = *((glitch::video::CMaterialRenderer **)*a2 + 1);
  if ( v10 )
  {
    ++*(_DWORD *)v10;
    v3 = *a2;
  }
  v7 = *((const char **)v3 + 7);
  if ( v7 )
    v7 += 4;
  if ( LC_API_STRNCMP_0(v7, "SH_", 3u) )
    return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v10);
  s[0] = 0;
  if ( !LC_API_STRNCMP_0(v7, "SH_SHADOW", 9u) )
  {
    v12[0] = 0;
    LOBYTE(v13[0]) = 0;
    if ( a3 && *(_BYTE *)(a1 + 1074) )
      v13[0] = 6768223;
    sprintf(s, "SH_Draw_Shadow%s%s", v12, (const char *)v13);
    v3 = *a2;
  }
  v9 = v3;
  if ( v3 )
    ++*(_DWORD *)v3;
  SceneManager::ChangeTechnique(a1, (int)&v9, (glitch::core::detail::SSharedStringHeapEntry::SData *)s);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v9);
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v10);
}


// ===== 3559e8 SceneManager::ResetCustomShadowProjectionTechniqueToDefault(glitch::scene::ISceneNode *,bool,bool) =====
void __fastcall SceneManager::ResetCustomShadowProjectionTechniqueToDefault(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        int a3,
        bool a4)
{
  glitch::scene::ISceneNode *v4; // r5
  _DWORD *v6; // r3
  void *v7; // r0
  int v8; // r5
  int v9; // r6
  int i; // r4
  glitch::video::CMaterialRenderer *v11; // r3
  glitch::video::CMaterial *v12; // r3
  bool v13; // zf
  glitch::video::CMaterial *v14; // r3
  glitch::video::CMaterial *p; // [sp+4h] [bp-30h]
  glitch::video::CMaterial *pa; // [sp+4h] [bp-30h]
  int v18; // [sp+10h] [bp-24h]
  int v19; // [sp+14h] [bp-20h]
  void *v20; // [sp+18h] [bp-1Ch] BYREF
  int v21; // [sp+1Ch] [bp-18h]
  int v22; // [sp+20h] [bp-14h]
  glitch::video::CMaterial *v23; // [sp+24h] [bp-10h] BYREF
  glitch::video::CMaterialRenderer *v24; // [sp+28h] [bp-Ch] BYREF
  glitch::video::CMaterial *v25; // [sp+2Ch] [bp-8h] BYREF

  v4 = a2;
  if ( !a2 )
    v4 = *((glitch::scene::ISceneNode **)this + 1);
  v20 = nullptr;
  v21 = 0;
  v22 = 0;
  SceneManager::SearchByType((int)this, (int)v4, (int)&v20, 1835360612);
  SceneManager::SearchByType((int)this, (int)v4, (int)&v20, 1936023908);
  SceneManager::SearchByType((int)this, (int)v4, (int)&v20, 1298489700);
  v6 = v20;
  v7 = v20;
  v19 = (v21 - (int)v20) >> 2;
  if ( v19 )
  {
    v18 = 0;
    while ( 1 )
    {
      v8 = v6[v18];
      v9 = (*(int (__fastcall **)(int))(*(_DWORD *)v8 + 136))(v8);
      if ( v9 > 0 )
      {
        for ( i = 0; i != v9; ++i )
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v8 + 132))(&v25, v8, i);
          v24 = *((glitch::video::CMaterialRenderer **)v25 + 1);
          v11 = v24;
          if ( v24 )
          {
            ++*(_DWORD *)v24;
            v11 = v24;
          }
          if ( LC_API_STRNCMP_0(*((const char **)v11 + 2), "GL_ShadowProjection", 0x13u) )
          {
            v23 = v25;
            if ( v25 )
              ++*(_DWORD *)v25;
            SceneManager::ChangeCustomShadowProjectionTechnique((int)this, &v23, a3);
            v12 = v23;
            if ( v23 )
            {
              v13 = (*(_DWORD *)v23)-- == 1;
              if ( v13 )
              {
                p = v12;
                glitch::video::CMaterial::~CMaterial(v12);
                CustomFree(p);
              }
            }
          }
          boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v24);
          v14 = v25;
          if ( v25 )
          {
            v13 = (*(_DWORD *)v25)-- == 1;
            if ( v13 )
            {
              pa = v14;
              glitch::video::CMaterial::~CMaterial(v14);
              CustomFree(pa);
            }
          }
        }
      }
      if ( ++v18 == v19 )
        break;
      v6 = v20;
    }
    v7 = v20;
  }
  if ( v7 )
    GlitchFree(v7);
}


// ===== 355bf0 SceneManager::ChangeCustomTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool,SceneManager::EForceBool,bool,bool,bool) =====
glitch::video::CMaterialRenderer **__fastcall SceneManager::ChangeCustomTechnique(
        _BYTE *a1,
        glitch::video::CMaterial **a2,
        int a3,
        int a4,
        unsigned int a5,
        unsigned __int8 a6,
        char a7)
{
  glitch::video::CMaterial *v8; // r5
  int v9; // r2
  int v11; // r8
  signed int v12; // r10
  const char *v14; // r5
  bool v15; // zf
  glitch::video::CMaterial *v18; // [sp+2Ch] [bp-130h] BYREF
  glitch::video::CMaterialRenderer *v19; // [sp+30h] [bp-12Ch] BYREF
  char s[64]; // [sp+34h] [bp-128h] BYREF
  char v21[32]; // [sp+74h] [bp-E8h] BYREF
  char v22[32]; // [sp+94h] [bp-C8h] BYREF
  char v23[32]; // [sp+B4h] [bp-A8h] BYREF
  char v24[32]; // [sp+D4h] [bp-88h] BYREF
  char v25[12]; // [sp+F4h] [bp-68h] BYREF
  char v26[32]; // [sp+114h] [bp-48h] BYREF
  char v27[32]; // [sp+134h] [bp-28h] BYREF

  v8 = *a2;
  v9 = a6;
  v19 = *((glitch::video::CMaterialRenderer **)*a2 + 1);
  if ( v19 )
    v9 = *(_DWORD *)v19;
  if ( v19 )
  {
    *(_DWORD *)v19 = v9 + 1;
    v8 = *a2;
  }
  v11 = *((_DWORD *)v8 + 7);
  if ( v11 )
    v11 += 4;
  v12 = LC_API_STRLEN_0((const char *)v11);
  if ( v12 <= 2 )
    return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
  s[0] = 0;
  if ( !LC_API_STRNCMP_0((const char *)v11, "CE_", 3u) )
  {
    v27[0] = 0;
    if ( a7 && a1[1074] )
      strcpy(v27, "_fog");
    if ( LC_API_STRNCMP_0((const char *)v11, "CE_SHADOW", 9u) )
    {
      if ( !LC_API_STRNCMP_0((const char *)v11, "CE_GLOW", 7u) )
      {
        sprintf(s, "CE_translucent_additive%s", v27);
        v8 = *a2;
      }
    }
    else
    {
      sprintf(s, "CE_shadow%s", v27);
      v8 = *a2;
    }
    goto LABEL_13;
  }
  if ( !LC_API_STRNCMP_0((const char *)v11, "FX_", 3u) )
  {
    v27[0] = 0;
    if ( a7 && a1[1074] )
      strcpy(v27, "_fog");
    if ( LC_API_STRNCMP_0((const char *)v11, "NoBlend_VC", 9u) )
    {
      if ( !LC_API_STRNCMP_0((const char *)v11, "FX_BLEND", 7u) )
      {
        sprintf(s, "Additif_VC%s", v27);
        v8 = *a2;
      }
    }
    else
    {
      sprintf(s, "NoBlend_VC%s", v27);
      v8 = *a2;
    }
    goto LABEL_13;
  }
  if ( !LC_API_STRNCMP_0((const char *)v11, "GL_", 3u) )
  {
    if ( v12 > 7 )
    {
      strcpy(v24, "----");
      strcpy(v27, "----");
      strcpy(v26, "----");
      strcpy(v21, "----");
      strcpy(v22, "----");
      strcpy(v23, "----");
      strcpy(v25, "----");
      v14 = *((const char **)v19 + 2);
      if ( LC_API_STRNCMP_0(v14, "GL_Diffuse_L4_VC", 0x10u) )
      {
        if ( LC_API_STRNCMP_0(v14, "GL_Diffuse_L1_VC", 0x10u) )
        {
          if ( LC_API_STRNCMP_0(v14, "GL_Diffuse_L4", 0xDu) )
          {
            if ( LC_API_STRNCMP_0(v14, "GL_Diffuse_L1", 0xDu) )
              return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
            strcpy(v27, "L1");
          }
          else
          {
            strcpy(v27, "L4");
          }
        }
        else
        {
          *(_WORD *)v27 = 12620;
          strcpy(v26, "Vc");
          v27[2] = 0;
        }
      }
      else
      {
        strcpy(v27, "L4");
        strcpy(v26, "Vc");
      }
      if ( __PAIR64__(*(char *)(v11 + 5), a5) == 0x4100000000LL || a5 == 2 )
        strcpy(v21, "Al");
      if ( *(_BYTE *)(v11 + 6) == 83 && a6 && a1[1073] )
        strcpy(v22, "Sp");
      if ( *(_BYTE *)(v11 + 7) == 78 )
        strcpy(v23, "Nm");
      if ( a7 && a1[1074] )
        strcpy(v25, "Fg");
      if ( a3 && a1[1072] )
      {
        if ( *(_BYTE *)(v11 + 3) == 85 )
          sprintf(s, "L0_%s_%s_%s_%s_%s_%s", v26, v21, v22, v23, v24, v25);
        else
          sprintf(s, "%s_%s_%s_%s_%s_%s_%s", v27, v26, v21, v22, v23, v24, v25);
        v8 = *a2;
      }
      else
      {
        if ( a4 )
          sprintf(s, "Unlit_Texture_%s_%s_%s", v21, v25, v24);
        else
          sprintf(s, "Unlit_Color_%s_%s_%s", v21, v25, v24);
        v8 = *a2;
      }
      goto LABEL_13;
    }
    return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
  }
  if ( !LC_API_STRNCMP_0((const char *)v11, "DC_DECAL", 8u) || !LC_API_STRNCMP_0((const char *)v11, "DC_DECSP", 8u) )
  {
    v24[0] = 0;
    if ( !LC_API_STRNCMP_0((const char *)v11, "DC_DECSP", 8u) && a6 && a1[1073] )
      strcpy(v24, "_Spec");
    v25[0] = 0;
    if ( a7 && a1[1074] )
      strcpy(v25, "_Fog");
    if ( a3 && a1[1072] )
    {
      sprintf(s, "Decal%s%s", v24, v25);
      v8 = *a2;
    }
    else
    {
      sprintf(s, "Decal_Unlit%s", v25);
      v8 = *a2;
    }
    goto LABEL_13;
  }
  if ( LC_API_STRLEN_0((const char *)v11) > 5 )
  {
    v21[0] = 0;
    v25[0] = 0;
    v24[0] = 0;
    v23[0] = 0;
    v22[0] = 0;
    if ( *(_BYTE *)v11 == 68 && *(_BYTE *)(v11 + 1) == 86 )
    {
      if ( *(_BYTE *)(v11 + 2) == 65 )
      {
        v15 = a5 == 0;
        if ( a5 )
          v15 = a5 == 2;
        if ( v15 && a5 != 1 )
          strcpy(v24, "_Alpha");
      }
      if ( *(_BYTE *)(v11 + 3) == 83 && a6 && a1[1073] )
        strcpy(v23, "_Spec");
      if ( *(_BYTE *)(v11 + 4) == 78 )
        strcpy(v23, "_NM");
      if ( a7 && a1[1074] )
        strcpy(v22, "_Fog");
      if ( a3 && a1[1072] )
      {
        sprintf(s, "Diffuse_VC%s%s%s%s%s", v25, v24, v23, v22, v21);
        v8 = *a2;
      }
      else
      {
        if ( a4 )
          sprintf(s, "Unlit_Texture%s%s%s", v24, v22, v21);
        else
          sprintf(s, "Unlit_Color%s%s%s", v24, v22, v21);
        v8 = *a2;
      }
      goto LABEL_13;
    }
    return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
  }
LABEL_13:
  v18 = v8;
  if ( v8 )
    ++*(_DWORD *)v8;
  SceneManager::ChangeTechnique((int)a1, (int)&v18, (glitch::core::detail::SSharedStringHeapEntry::SData *)s);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
}


// ===== 356434 SceneManager::ResetCustomTechniqueToDefault(glitch::scene::ISceneNode *,bool,bool,SceneManager::EForceBool,bool,bool,bool) =====
void __fastcall SceneManager::ResetCustomTechniqueToDefault(
        int a1,
        int a2,
        int a3,
        int a4,
        unsigned int a5,
        unsigned __int8 a6,
        char a7)
{
  int v7; // r5
  _DWORD *v8; // r3
  void *v9; // r0
  int v10; // r5
  int v11; // r0
  int v12; // r4
  int v13; // r10
  glitch::video::CMaterial *v14; // r6
  bool v15; // zf
  glitch::video::CMaterial *v16; // r6
  glitch::video::CMaterialRenderer *v17; // r3
  const char *v18; // r6
  int v22; // [sp+30h] [bp-2Ch]
  int v23; // [sp+3Ch] [bp-20h]
  void *p; // [sp+40h] [bp-1Ch] BYREF
  int v25; // [sp+44h] [bp-18h]
  int v26; // [sp+48h] [bp-14h]
  glitch::video::CMaterial *v27; // [sp+4Ch] [bp-10h] BYREF
  glitch::video::CMaterialRenderer *v28; // [sp+50h] [bp-Ch] BYREF
  glitch::video::CMaterial *v29; // [sp+54h] [bp-8h] BYREF

  v7 = a2;
  if ( !a2 )
    v7 = *(_DWORD *)(a1 + 4);
  p = nullptr;
  v25 = 0;
  v26 = 0;
  SceneManager::SearchByType(a1, v7, (int)&p, 1835360612);
  SceneManager::SearchByType(a1, v7, (int)&p, 1936023908);
  SceneManager::SearchByType(a1, v7, (int)&p, 1298489700);
  v8 = p;
  v9 = p;
  v23 = (v25 - (int)p) >> 2;
  if ( v23 )
  {
    v22 = 0;
    while ( 1 )
    {
      v10 = v8[v22];
      v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 136))(v10);
      if ( v11 > 0 )
      {
        v12 = 0;
        v13 = v11;
        do
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v10 + 132))(&v29, v10, v12);
          v28 = *((glitch::video::CMaterialRenderer **)v29 + 1);
          v17 = v28;
          if ( v28 )
          {
            ++*(_DWORD *)v28;
            v17 = v28;
          }
          v18 = *((const char **)v17 + 2);
          if ( !LC_API_STRNCMP_0(v18, "GL_Diffuse", 0xAu)
            || !LC_API_STRNCMP_0(v18, "GL_Blend3Map", 0xCu)
            || !LC_API_STRNCMP_0(v18, "GL_ColorEffects", 0xFu)
            || !LC_API_STRNCMP_0(v18, "GL_Decal", 8u) )
          {
            v27 = v29;
            if ( v29 )
              ++*(_DWORD *)v29;
            SceneManager::ChangeCustomTechnique((_BYTE *)a1, &v27, a3, a4, a5, a6, a7);
            v14 = v27;
            if ( v27 )
            {
              v15 = (*(_DWORD *)v27)-- == 1;
              if ( v15 )
              {
                glitch::video::CMaterial::~CMaterial(v14);
                CustomFree(v14);
              }
            }
          }
          boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v28);
          v16 = v29;
          if ( v29 )
          {
            v15 = (*(_DWORD *)v29)-- == 1;
            if ( v15 )
            {
              glitch::video::CMaterial::~CMaterial(v16);
              CustomFree(v16);
            }
          }
          ++v12;
        }
        while ( v13 != v12 );
      }
      if ( ++v22 == v23 )
        break;
      v8 = p;
    }
    v9 = p;
  }
  if ( v9 )
    GlitchFree(v9);
}


// ===== 3566ec SceneManager::ChangeTechnique(glitch::scene::ISceneNode *,char const*,char const*,int) =====
int __fastcall SceneManager::ChangeTechnique(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        glitch::core::detail::SSharedStringHeapEntry::SData *a3,
        const char *a4,
        unsigned int a5)
{
  int v8; // r5
  const char *v10; // r0
  int TechniqueID; // r0
  glitch::video::CMaterialRenderer *v12; // [sp+8h] [bp-8h] BYREF
  glitch::video::CMaterial *v13; // [sp+Ch] [bp-4h] BYREF

  if ( !a2 || !(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 136))(a2) )
    return 0;
  if ( a5 >= (*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 136))(a2) )
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
        "matId < node->getMaterialCount()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\SceneManager.cpp",
        212);
    }
  }
  (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::scene::ISceneNode *, unsigned int))(*(_DWORD *)a2 + 132))(
    &v13,
    a2,
    a5);
  v12 = *((glitch::video::CMaterialRenderer **)v13 + 1);
  if ( v12 )
    ++*(_DWORD *)v12;
  if ( a4 )
  {
    v10 = *(const char **)(*((_DWORD *)v12 + 6) + 12 * glitch::video::CMaterial::getTechnique(v13));
    if ( v10 )
      v10 += 4;
    if ( LC_API_STRCMP_0(v10, a4) )
      goto LABEL_19;
  }
  if ( !a3 || (TechniqueID = glitch::video::CMaterialRenderer::getTechniqueID(v12, a3), TechniqueID == 255) )
  {
LABEL_19:
    v8 = 0;
  }
  else
  {
    v8 = 1;
    *((_BYTE *)v13 + 8) = TechniqueID;
  }
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v12);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
  return v8;
}


// ===== 356878 SceneManager::~SceneManager() =====
void __fastcall SceneManager::~SceneManager(SceneManager *this, int *a2)
{
  int v2; // r3
  void *v4; // r0
  void *v5; // r0
  size_t v6; // r1

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  v4 = *((void **)this + 287);
  if ( v4 )
    GlitchFree(v4);
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 284);
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 281);
  v5 = *((void **)this + 275);
  if ( v5 )
  {
    v6 = (*((_DWORD *)this + 277) - (_DWORD)v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  LightSetManager::~LightSetManager((SceneManager *)((char *)this + 660));
  glitch::scene::CSceneManager::~CSceneManager(this);
}


// ===== 35691c std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::scene::CSceneManager::STransparentNodeEntry*,glitch::scene::CSceneManager::STransparentNodeEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        glitch::video::CMaterial ***a1,
        glitch::video::CMaterial **a2,
        glitch::video::CMaterial **a3,
        int a4,
        unsigned int a5,
        char a6)
{
  size_t v9; // r8
  glitch::video::CMaterial **v10; // r0
  glitch::video::CMaterial **v11; // r3
  glitch::video::CMaterial **v12; // r9
  int v13; // r2
  int v14; // r12
  glitch::video::CMaterial **v15; // r3
  int v16; // r0
  glitch::video::CMaterial **v17; // r2
  glitch::video::CMaterial *v18; // r1
  glitch::video::CMaterial *v19; // r1
  glitch::video::CMaterial **v20; // r5
  int v21; // r1
  glitch::video::CMaterial *v22; // r2
  glitch::video::CMaterial **v23; // r6
  glitch::video::CMaterial **v24; // r4
  glitch::video::CMaterial **v25; // r0
  int v26; // r3
  int v27; // r0
  int v28; // r1
  glitch::video::CMaterial **v29; // r3
  glitch::video::CMaterial *v30; // r2
  glitch::video::CMaterial *v31; // r2
  glitch::video::CMaterial *v32; // r2

  v9 = 5
     * std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
         a1,
         a5);
  v10 = (glitch::video::CMaterial **)GlitchAlloc(v9 * 4, 0);
  v11 = *a1;
  v12 = v10;
  v13 = a2 - *a1;
  v14 = -858993459 * v13;
  if ( -858993459 * v13 > 0 )
  {
    v16 = -858993459 * v13;
    v17 = v12;
    do
    {
      *v17 = *v11;
      v17[1] = v11[1];
      v18 = v11[2];
      v17[2] = v18;
      if ( v18 )
        ++*(_DWORD *)v18;
      --v16;
      v17[3] = v11[3];
      v19 = v11[4];
      v11 += 5;
      v17[4] = v19;
      v17 += 5;
    }
    while ( v16 );
    v15 = &v12[5 * v14];
  }
  else
  {
    v15 = v10;
  }
  if ( a5 == 1 )
  {
    v20 = v15 + 5;
    *v15 = *a3;
    v15[1] = a3[1];
    v32 = a3[2];
    v15[2] = v32;
    if ( v32 )
      ++*(_DWORD *)v32;
    v15[3] = a3[3];
    v15[4] = a3[4];
    if ( a6 )
      goto LABEL_16;
  }
  else
  {
    v20 = &v15[5 * a5];
    v21 = -858993459 * ((int)(20 * a5) >> 2);
    if ( v21 > 0 )
    {
      while ( 1 )
      {
        *v15 = *a3;
        v15[1] = a3[1];
        v22 = a3[2];
        v15[2] = v22;
        if ( v22 )
          ++*(_DWORD *)v22;
        --v21;
        v15[3] = a3[3];
        v15[4] = a3[4];
        if ( !v21 )
          break;
        v15 += 5;
      }
    }
    if ( a6 )
      goto LABEL_16;
  }
  v23 = a1[1];
  v26 = v23 - a2;
  v27 = -858993459 * v26;
  if ( -858993459 * v26 > 0 )
  {
    v28 = -858993459 * v26;
    v29 = v20;
    do
    {
      *v29 = *a2;
      v29[1] = a2[1];
      v30 = a2[2];
      v29[2] = v30;
      if ( v30 )
        ++*(_DWORD *)v30;
      --v28;
      v29[3] = a2[3];
      v31 = a2[4];
      a2 += 5;
      v29[4] = v31;
      v29 += 5;
    }
    while ( v28 );
    v20 += 5 * v27;
LABEL_16:
    v23 = a1[1];
  }
  v24 = *a1;
  if ( *a1 == v23 )
  {
    v25 = v23;
  }
  else
  {
    do
    {
      v23 -= 5;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v23 + 2);
    }
    while ( v24 != v23 );
    v25 = *a1;
  }
  GlitchFree(v25);
  a1[1] = v20;
  a1[2] = &v12[v9];
  *a1 = v12;
}


// ===== 356b68 std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(glitch::scene::CSceneManager::STransparentNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        int a1,
        int a2)
{
  _DWORD *v2; // r3
  _DWORD *v4; // r1
  _BYTE v5[4]; // [sp+Ch] [bp-4h] BYREF

  v2 = *(_DWORD **)(a1 + 4);
  if ( v2 == *(_DWORD **)(a1 + 8) )
  {
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (glitch::video::CMaterial ***)a1,
      *(glitch::video::CMaterial ***)(a1 + 4),
      (glitch::video::CMaterial **)a2,
      (int)v5,
      1u,
      1);
  }
  else
  {
    *v2 = *(_DWORD *)a2;
    v2[1] = *(_DWORD *)(a2 + 4);
    v4 = *(_DWORD **)(a2 + 8);
    v2[2] = v4;
    if ( v4 )
      ++*v4;
    v2[3] = *(_DWORD *)(a2 + 12);
    v2[4] = *(_DWORD *)(a2 + 16);
    *(_DWORD *)(a1 + 4) += 20;
  }
}


// ===== 356bec SceneManager::~SceneManager() =====
void __fastcall SceneManager::~SceneManager(SceneManager *this)
{
  void *v2; // r0
  void *v3; // r0
  size_t v4; // r1

  v2 = *((void **)this + 287);
  *(_DWORD *)this = off_95CD94;
  *((_DWORD *)this + 291) = off_95CE38;
  if ( v2 )
    GlitchFree(v2);
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 284);
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((glitch::video::CMaterial ***)this + 281);
  v3 = *((void **)this + 275);
  if ( v3 )
  {
    v4 = (*((_DWORD *)this + 277) - (_DWORD)v3) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  LightSetManager::~LightSetManager((SceneManager *)((char *)this + 660));
  glitch::scene::CSceneManager::~CSceneManager(this);
}


// ===== 356c9c SceneManager::~SceneManager() =====
void __fastcall SceneManager::~SceneManager(SceneManager *this)
{
  SceneManager::~SceneManager(this);
  CustomFree(this);
}


// ===== 356cb8 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CSceneManager::SDefaultNodeEntry*,glitch::scene::CSceneManager::SDefaultNodeEntry*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        char *a3)
{
  char *v3; // r4
  int v5; // r9
  char *v6; // r6
  char *v8; // r7
  int v9; // r7
  _DWORD *v10; // r4
  glitch::video::CMaterial *v11; // r2
  glitch::video::CMaterial *v12; // r3
  int v13; // r3
  char *v14; // r6
  glitch::video::CMaterial **v15; // r0
  glitch::video::CMaterial *v17; // [sp+4h] [bp-4h] BYREF

  v3 = *(char **)(a1 + 4);
  v5 = (v3 - a3) >> 4;
  v6 = a3;
  if ( v5 > 0 )
  {
    v9 = (v3 - a3) >> 4;
    v10 = a2;
    do
    {
      *v10 = *(_DWORD *)v6;
      v10[1] = *((_DWORD *)v6 + 1);
      v11 = *((glitch::video::CMaterial **)v6 + 2);
      v17 = v11;
      if ( v11 )
      {
        ++*(_DWORD *)v11;
        v11 = v17;
      }
      v12 = (glitch::video::CMaterial *)v10[2];
      v10[2] = v11;
      v17 = v12;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v17);
      v13 = *((_DWORD *)v6 + 3);
      --v9;
      v6 += 16;
      v10[3] = v13;
      v10 += 4;
    }
    while ( v9 );
    v3 = *(char **)(a1 + 4);
    v8 = (char *)&a2[4 * v5];
  }
  else
  {
    v8 = (char *)a2;
  }
  if ( v8 != v3 )
  {
    v14 = v8;
    do
    {
      v15 = (glitch::video::CMaterial **)(v14 + 8);
      v14 += 16;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v15);
    }
    while ( v14 != v3 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 356d80 glitch::core::heapsink<glitch::scene::CSceneManager::STransparentNodeEntry>(glitch::scene::CSceneManager::STransparentNodeEntry *,int,int) =====
glitch::video::CMaterial **__fastcall glitch::core::heapsink<glitch::scene::CSceneManager::STransparentNodeEntry>(
        glitch::video::CMaterial **result,
        int a2,
        int a3)
{
  int v3; // r7
  int v4; // r4
  glitch::video::CMaterial **v6; // r8
  int v7; // r6
  glitch::video::CMaterial **v8; // r5
  int v9; // r4
  glitch::video::CMaterial **v10; // r7
  glitch::video::CMaterial *v11; // r2
  glitch::video::CMaterial *v12; // r1
  glitch::video::CMaterial *v13; // r3
  glitch::video::CMaterial *v14; // r2
  glitch::video::CMaterial *v15; // r3
  glitch::video::CMaterial *v16; // r3
  glitch::video::CMaterial *v17; // r2
  glitch::video::CMaterial *v18; // r3
  glitch::video::CMaterial *v19; // r2
  float v21; // [sp+14h] [bp-20h]
  glitch::video::CMaterial *v22; // [sp+18h] [bp-1Ch]
  glitch::video::CMaterial *v23; // [sp+1Ch] [bp-18h] BYREF
  glitch::video::CMaterial *v24; // [sp+20h] [bp-14h]
  glitch::video::CMaterial *v25; // [sp+24h] [bp-10h]
  glitch::video::CMaterial *v26; // [sp+28h] [bp-Ch] BYREF
  glitch::video::CMaterial **v27; // [sp+2Ch] [bp-8h] BYREF

  v3 = 2 * a2;
  v4 = a2;
  v6 = result;
  if ( a3 > 2 * a2 )
  {
    while ( 1 )
    {
      v7 = v3 + 1;
      if ( a3 <= v3 + 1 )
        break;
      v8 = &v6[5 * v3];
      if ( !glitch::scene::CSceneManager::STransparentNodeEntry::operator<((float *)v8, (float *)&v6[5 * v7], a3) )
        goto LABEL_5;
      v8 = &v6[5 * v7];
LABEL_6:
      v9 = 5 * v4;
      v10 = &v6[v9];
      result = (glitch::video::CMaterial **)glitch::scene::CSceneManager::STransparentNodeEntry::operator<(
                                              (float *)&v6[v9],
                                              (float *)v8,
                                              a3);
      if ( result )
      {
        v22 = v8[1];
        v21 = *(float *)v8;
        v23 = v8[2];
        if ( v23 )
          ++*(_DWORD *)v23;
        v11 = v8[4];
        v12 = v8[3];
        *v8 = v6[v9];
        v13 = v10[1];
        v25 = v11;
        v24 = v12;
        v8[1] = v13;
        v27 = (glitch::video::CMaterial **)v10[2];
        if ( v27 )
          v14 = *v27;
        else
          v14 = nullptr;
        if ( v27 )
        {
          *v27 = (glitch::video::CMaterial *)((char *)v14 + 1);
          v14 = (glitch::video::CMaterial *)v27;
        }
        v15 = v8[2];
        v8[2] = v14;
        v27 = (glitch::video::CMaterial **)v15;
        boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr((glitch::video::CMaterial **)&v27);
        v16 = v23;
        v8[3] = v10[3];
        v8[4] = v10[4];
        *(float *)&v6[v9] = v21;
        v10[1] = v22;
        v26 = v16;
        v17 = v16 ? *(glitch::video::CMaterial **)v16 : nullptr;
        v4 = v7;
        if ( v16 )
        {
          *(_DWORD *)v16 = (char *)v17 + 1;
          v17 = v26;
        }
        v18 = v10[2];
        v10[2] = v17;
        v26 = v18;
        boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v26);
        v19 = v24;
        v10[4] = v25;
        v10[3] = v19;
        v3 = 2 * v7;
        result = boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v23);
        if ( 2 * v7 < a3 )
          continue;
      }
      return result;
    }
    v8 = &v6[5 * v3];
LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }
  return result;
}


// ===== 356f08 glitch::core::heapsort<glitch::scene::CSceneManager::STransparentNodeEntry>(glitch::scene::CSceneManager::STransparentNodeEntry *,int) =====
glitch::video::CMaterial **__fastcall glitch::core::heapsort<glitch::scene::CSceneManager::STransparentNodeEntry>(
        glitch::video::CMaterial **result,
        int a2)
{
  int v2; // r4
  int v3; // r6
  glitch::video::CMaterial **v4; // r5
  glitch::video::CMaterial **v5; // r7
  int v6; // r8
  int v7; // r10
  glitch::video::CMaterial **v8; // r4
  glitch::video::CMaterial *v9; // r3
  glitch::video::CMaterial *v10; // r2
  glitch::video::CMaterial *v11; // r3
  glitch::video::CMaterial *v12; // r2
  glitch::video::CMaterial *v13; // [sp+4h] [bp-1Ch]
  glitch::video::CMaterial *v14; // [sp+8h] [bp-18h]
  glitch::video::CMaterial *v15; // [sp+Ch] [bp-14h] BYREF
  glitch::video::CMaterial *v16; // [sp+10h] [bp-10h]
  glitch::video::CMaterial *v17; // [sp+14h] [bp-Ch]
  glitch::video::CMaterial *v18; // [sp+18h] [bp-8h] BYREF
  glitch::video::CMaterial *v19; // [sp+1Ch] [bp-4h] BYREF

  v2 = a2 - 1;
  v3 = a2;
  v4 = result;
  v5 = result - 5;
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      result = glitch::core::heapsink<glitch::scene::CSceneManager::STransparentNodeEntry>(v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = &v4[5 * v2 + 4];
    do
    {
      v13 = *v4;
      v14 = v4[1];
      v15 = v4[2];
      if ( v15 )
        ++*(_DWORD *)v15;
      v9 = v4[4];
      v16 = v4[3];
      v17 = v9;
      *v4 = *(v8 - 4);
      v4[1] = *(v8 - 3);
      v10 = *(v8 - 2);
      v19 = v10;
      if ( v10 )
      {
        ++*(_DWORD *)v10;
        v10 = v19;
      }
      v11 = v4[2];
      v4[2] = v10;
      v19 = v11;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v19);
      v4[3] = *(v8 - 1);
      v4[4] = *v8;
      *(v8 - 4) = v13;
      *(v8 - 3) = v14;
      v12 = v15;
      v18 = v15;
      if ( v15 )
      {
        ++*(_DWORD *)v15;
        v12 = v18;
      }
      v18 = *(v8 - 2);
      *(v8 - 2) = v12;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v18);
      *(v8 - 1) = v16;
      *v8 = v17;
      v8 -= 5;
      glitch::core::heapsink<glitch::scene::CSceneManager::STransparentNodeEntry>(v5, 1, v3);
      result = boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v15);
      --v3;
    }
    while ( v3 );
  }
  return result;
}


// ===== 35705c std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::scene::CSceneManager::STransparentNodeEntry*,glitch::scene::CSceneManager::STransparentNodeEntry*,std::__false_type const&) =====
_DWORD *__fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        _DWORD *a2,
        _DWORD *a3)
{
  _DWORD *v3; // r4
  int v5; // r3
  _DWORD *v6; // r6
  int v8; // r9
  _DWORD *v9; // r7
  int v10; // r7
  _DWORD *v11; // r4
  glitch::video::CMaterial *v12; // r2
  glitch::video::CMaterial *v13; // r3
  int v14; // r3
  _DWORD *v15; // r6
  glitch::video::CMaterial **v16; // r0
  glitch::video::CMaterial *v18; // [sp+4h] [bp-4h] BYREF

  v3 = *(_DWORD **)(a1 + 4);
  v5 = v3 - a3;
  v6 = a3;
  v8 = -858993459 * v5;
  if ( -858993459 * v5 > 0 )
  {
    v10 = -858993459 * v5;
    v11 = a2;
    do
    {
      *v11 = *v6;
      v11[1] = v6[1];
      v12 = (glitch::video::CMaterial *)v6[2];
      v18 = v12;
      if ( v12 )
      {
        ++*(_DWORD *)v12;
        v12 = v18;
      }
      v13 = (glitch::video::CMaterial *)v11[2];
      v11[2] = v12;
      v18 = v13;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v18);
      --v10;
      v11[3] = v6[3];
      v14 = v6[4];
      v6 += 5;
      v11[4] = v14;
      v11 += 5;
    }
    while ( v10 );
    v9 = &a2[5 * v8];
    v3 = *(_DWORD **)(a1 + 4);
  }
  else
  {
    v9 = a2;
  }
  if ( v9 != v3 )
  {
    v15 = v9;
    do
    {
      v16 = (glitch::video::CMaterial **)(v15 + 2);
      v15 += 5;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v16);
    }
    while ( v15 != v3 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return a2;
}


// ===== 357144 glitch::core::heapsink<glitch::scene::CSceneManager::SDefaultNodeEntry>(glitch::scene::CSceneManager::SDefaultNodeEntry *,int,int) =====
glitch::video::CMaterial **__fastcall glitch::core::heapsink<glitch::scene::CSceneManager::SDefaultNodeEntry>(
        glitch::video::CMaterial **result,
        int a2,
        int a3)
{
  int v3; // r7
  int v4; // r4
  glitch::video::CMaterial **v6; // r8
  int v7; // r6
  glitch::video::CMaterial **v8; // r5
  int v9; // r4
  glitch::video::CMaterial **v10; // r11
  glitch::video::CMaterial *v11; // r2
  glitch::video::CMaterial *v12; // r2
  glitch::video::CMaterial *v13; // r3
  glitch::video::CMaterial *v14; // r2
  glitch::video::CMaterial *v15; // r3
  glitch::video::CMaterial *v16; // r3
  bool v17; // zf
  glitch::video::CMaterial *v18; // r2
  glitch::video::CMaterial *v19; // r3
  glitch::video::CMaterial *v21; // [sp+8h] [bp-1Ch]
  glitch::video::CMaterial *v22; // [sp+Ch] [bp-18h]
  glitch::video::CMaterial **v23; // [sp+10h] [bp-14h] BYREF
  glitch::video::CMaterial *v24; // [sp+14h] [bp-10h]
  glitch::video::CMaterial *v25; // [sp+18h] [bp-Ch] BYREF
  glitch::video::CMaterial **v26; // [sp+1Ch] [bp-8h] BYREF

  v3 = 2 * a2;
  v4 = a2;
  v6 = result;
  if ( a3 > 2 * a2 )
  {
    while ( 1 )
    {
      v7 = v3 + 1;
      if ( a3 <= v3 + 1 )
        break;
      v8 = &v6[4 * v3];
      if ( !glitch::scene::CSceneManager::SDefaultNodeEntry::operator<(v8, &v6[4 * v7], a3) )
        goto LABEL_5;
      v8 = &v6[4 * v7];
LABEL_6:
      v9 = 4 * v4;
      v10 = &v6[v9];
      result = (glitch::video::CMaterial **)glitch::scene::CSceneManager::SDefaultNodeEntry::operator<(&v6[v9], v8, a3);
      if ( result )
      {
        v11 = v8[1];
        v22 = v11;
        v21 = *v8;
        v23 = (glitch::video::CMaterial **)v8[2];
        if ( v23 )
          v11 = *v23;
        v3 = 2 * v7;
        if ( v23 )
          *v23 = (glitch::video::CMaterial *)((char *)v11 + 1);
        v12 = v8[3];
        *v8 = v6[v9];
        v13 = v10[1];
        v24 = v12;
        v8[1] = v13;
        v26 = (glitch::video::CMaterial **)v10[2];
        if ( v26 )
          v14 = *v26;
        else
          v14 = nullptr;
        if ( v26 )
        {
          *v26 = (glitch::video::CMaterial *)((char *)v14 + 1);
          v14 = (glitch::video::CMaterial *)v26;
        }
        v15 = v8[2];
        v8[2] = v14;
        v26 = (glitch::video::CMaterial **)v15;
        boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr((glitch::video::CMaterial **)&v26);
        v16 = (glitch::video::CMaterial *)v23;
        v17 = v23 == nullptr;
        v8[3] = v10[3];
        v6[v9] = v21;
        v10[1] = v22;
        v25 = v16;
        v18 = v17 ? v16 : *(glitch::video::CMaterial **)v16;
        v4 = v7;
        if ( !v17 )
        {
          *(_DWORD *)v16 = (char *)v18 + 1;
          v18 = v25;
        }
        v19 = v10[2];
        v10[2] = v18;
        v25 = v19;
        boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v25);
        v10[3] = v24;
        result = boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr((glitch::video::CMaterial **)&v23);
        if ( v3 < a3 )
          continue;
      }
      return result;
    }
    v8 = &v6[4 * v3];
LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }
  return result;
}


// ===== 3572ac glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(glitch::scene::CSceneManager::SDefaultNodeEntry *,int) =====
glitch::video::CMaterial **__fastcall glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(
        glitch::video::CMaterial **result,
        int a2)
{
  int v2; // r4
  int v3; // r6
  glitch::video::CMaterial **v4; // r5
  glitch::video::CMaterial **v5; // r7
  int v6; // r8
  int v7; // r10
  glitch::video::CMaterial **v8; // r4
  glitch::video::CMaterial *v9; // r3
  glitch::video::CMaterial *v10; // r2
  glitch::video::CMaterial *v11; // r3
  glitch::video::CMaterial *v12; // r2
  glitch::video::CMaterial *v13; // [sp+0h] [bp-18h]
  glitch::video::CMaterial *v14; // [sp+4h] [bp-14h]
  glitch::video::CMaterial *v15; // [sp+8h] [bp-10h] BYREF
  glitch::video::CMaterial *v16; // [sp+Ch] [bp-Ch]
  glitch::video::CMaterial *v17; // [sp+10h] [bp-8h] BYREF
  glitch::video::CMaterial *v18; // [sp+14h] [bp-4h] BYREF

  v2 = a2 - 1;
  v3 = a2;
  v4 = result;
  v5 = result - 4;
  if ( (a2 - 1) / 2 >= 0 )
  {
    v6 = (a2 - 1) / 2 + 1;
    v7 = a2 + 1;
    do
      result = glitch::core::heapsink<glitch::scene::CSceneManager::SDefaultNodeEntry>(v5, v6--, v7);
    while ( v6 );
  }
  if ( v2 >= 0 )
  {
    v8 = &v4[4 * v2];
    do
    {
      v13 = *v4;
      v14 = v4[1];
      v15 = v4[2];
      if ( v15 )
        ++*(_DWORD *)v15;
      v9 = v4[3];
      *v4 = *v8;
      v16 = v9;
      v4[1] = v8[1];
      v10 = v8[2];
      v18 = v10;
      if ( v10 )
      {
        ++*(_DWORD *)v10;
        v10 = v18;
      }
      v11 = v4[2];
      v4[2] = v10;
      v18 = v11;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v18);
      v4[3] = v8[3];
      v8[1] = v14;
      v12 = v15;
      *v8 = v13;
      v17 = v12;
      if ( v12 )
      {
        ++*(_DWORD *)v12;
        v12 = v17;
      }
      v17 = v8[2];
      v8[2] = v12;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v17);
      v8[3] = v16;
      glitch::core::heapsink<glitch::scene::CSceneManager::SDefaultNodeEntry>(v5, 1, v3);
      result = boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v15);
      --v3;
      v8 -= 4;
    }
    while ( v3 );
  }
  return result;
}


// ===== 3573e4 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::CSceneManager::SDefaultNodeEntry*,uint,glitch::scene::CSceneManager::SDefaultNodeEntry const&,std::__false_type const&) =====
glitch::video::CMaterial **__fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        glitch::video::CMaterial **result,
        _DWORD *a2,
        unsigned int a3,
        glitch::video::CMaterial *a4)
{
  _DWORD *v5; // r5
  glitch::video::CMaterial *v6; // r6
  glitch::video::CMaterial *v7; // r3
  int v8; // r12
  int v9; // r7
  int v10; // r9
  char *v11; // r7
  int v12; // r12
  glitch::video::CMaterial *v13; // r3
  _DWORD *v14; // r3
  glitch::video::CMaterial *i; // r2
  _DWORD *v16; // r1
  int v17; // r1
  int v18; // r8
  glitch::video::CMaterial *v19; // r2
  int v20; // r3
  int v21; // r6
  glitch::video::CMaterial *v22; // r2
  glitch::video::CMaterial *v23; // r3
  unsigned int v24; // r2
  int v25; // r1
  glitch::video::CMaterial *v26; // r2
  _DWORD *v27; // r3
  int v28; // r12
  _DWORD *v29; // r3
  _DWORD *v30; // r1
  int v31; // r1
  glitch::video::CMaterial *v32; // r2
  glitch::video::CMaterial *v33; // r3
  _DWORD v34[2]; // [sp+8h] [bp-20h] BYREF
  glitch::video::CMaterial *v35[2]; // [sp+10h] [bp-18h] BYREF
  glitch::video::CMaterial *v36; // [sp+18h] [bp-10h] BYREF
  glitch::video::CMaterial *v37; // [sp+1Ch] [bp-Ch] BYREF
  glitch::video::CMaterial *v38; // [sp+20h] [bp-8h] BYREF
  char v39[4]; // [sp+24h] [bp-4h] BYREF

  v5 = a2;
  if ( a4 < *result )
  {
    v6 = result[1];
    goto LABEL_8;
  }
  v6 = result[1];
  if ( a4 >= v6 )
  {
LABEL_8:
    v9 = (v6 - (glitch::video::CMaterial *)a2) >> 4;
    if ( a3 >= v9 )
    {
      v24 = a3 - v9;
      v25 = (int)(16 * v24) >> 4;
      v26 = (glitch::video::CMaterial *)((char *)v6 + 16 * v24);
      if ( v25 > 0 )
      {
        while ( 1 )
        {
          *(_DWORD *)v6 = *(_DWORD *)a4;
          *((_DWORD *)v6 + 1) = *((_DWORD *)a4 + 1);
          v27 = *((_DWORD **)a4 + 2);
          *((_DWORD *)v6 + 2) = v27;
          if ( v27 )
            ++*v27;
          --v25;
          *((_DWORD *)v6 + 3) = *((_DWORD *)a4 + 3);
          if ( !v25 )
            break;
          v6 = (glitch::video::CMaterial *)((char *)v6 + 16);
        }
      }
      result[1] = v26;
      if ( v9 > 0 )
      {
        v28 = v9;
        v29 = v5;
        while ( 1 )
        {
          *(_DWORD *)v26 = *v29;
          *((_DWORD *)v26 + 1) = v29[1];
          v30 = (_DWORD *)v29[2];
          *((_DWORD *)v26 + 2) = v30;
          if ( v30 )
            ++*v30;
          v31 = v29[3];
          --v28;
          v29 += 4;
          *((_DWORD *)v26 + 3) = v31;
          if ( !v28 )
            break;
          v26 = (glitch::video::CMaterial *)((char *)v26 + 16);
        }
        result[1] = (glitch::video::CMaterial *)((char *)result[1] + 16 * v9);
        while ( 1 )
        {
          *v5 = *(_DWORD *)a4;
          v5[1] = *((_DWORD *)a4 + 1);
          v32 = *((glitch::video::CMaterial **)a4 + 2);
          v36 = v32;
          if ( v32 )
          {
            ++*(_DWORD *)v32;
            v32 = v36;
          }
          v33 = (glitch::video::CMaterial *)v5[2];
          v5[2] = v32;
          v36 = v33;
          result = boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v36);
          --v9;
          v5[3] = *((_DWORD *)a4 + 3);
          if ( !v9 )
            break;
          v5 += 4;
        }
      }
      else
      {
        result[1] = (glitch::video::CMaterial *)((char *)v26 + 16 * v9);
      }
    }
    else
    {
      v10 = 16 * a3;
      v11 = (char *)v6 - 16 * a3;
      v12 = (int)(16 * a3) >> 4;
      if ( v12 > 0 )
      {
        v14 = (_DWORD *)((char *)v6 - 16 * a3);
        for ( i = v6; ; i = (glitch::video::CMaterial *)((char *)i + 16) )
        {
          *(_DWORD *)i = *v14;
          *((_DWORD *)i + 1) = v14[1];
          v16 = (_DWORD *)v14[2];
          *((_DWORD *)i + 2) = v16;
          if ( v16 )
            ++*v16;
          v17 = v14[3];
          --v12;
          v14 += 4;
          *((_DWORD *)i + 3) = v17;
          if ( !v12 )
            break;
        }
        v13 = result[1];
      }
      else
      {
        v13 = v6;
      }
      v18 = (v11 - (char *)v5) >> 4;
      result[1] = (glitch::video::CMaterial *)((char *)v13 + v10);
      if ( v18 > 0 )
      {
        do
        {
          *((_DWORD *)v6 - 4) = *((_DWORD *)v11 - 4);
          *((_DWORD *)v6 - 3) = *((_DWORD *)v11 - 3);
          v19 = *((glitch::video::CMaterial **)v11 - 2);
          v38 = v19;
          if ( v19 )
          {
            ++*(_DWORD *)v19;
            v19 = v38;
          }
          v38 = *((glitch::video::CMaterial **)v6 - 2);
          *((_DWORD *)v6 - 2) = v19;
          result = boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v38);
          v20 = *((_DWORD *)v11 - 1);
          --v18;
          v11 -= 16;
          *((_DWORD *)v6 - 1) = v20;
          v6 = (glitch::video::CMaterial *)((char *)v6 - 16);
        }
        while ( v18 );
      }
      v21 = v10 >> 4;
      if ( v10 >> 4 > 0 )
      {
        while ( 1 )
        {
          *v5 = *(_DWORD *)a4;
          v5[1] = *((_DWORD *)a4 + 1);
          v22 = *((glitch::video::CMaterial **)a4 + 2);
          v37 = v22;
          if ( v22 )
          {
            ++*(_DWORD *)v22;
            v22 = v37;
          }
          v23 = (glitch::video::CMaterial *)v5[2];
          v5[2] = v22;
          v37 = v23;
          result = boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v37);
          --v21;
          v5[3] = *((_DWORD *)a4 + 3);
          if ( !v21 )
            break;
          v5 += 4;
        }
      }
    }
    return result;
  }
  v7 = *((glitch::video::CMaterial **)a4 + 2);
  v8 = *(_DWORD *)a4;
  v34[1] = *((_DWORD *)a4 + 1);
  v35[0] = v7;
  v34[0] = v8;
  if ( v7 )
    ++*(_DWORD *)v7;
  v35[1] = *((glitch::video::CMaterial **)a4 + 3);
  ((void (__fastcall *)(glitch::video::CMaterial **, _DWORD *, unsigned int, _DWORD *, char *))std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux)(
    result,
    a2,
    a3,
    v34,
    v39);
  return boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v35);
}


// ===== 3576e0 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::SDefaultNodeEntry*,uint,glitch::scene::CSceneManager::SDefaultNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int a1,
        char *a2,
        unsigned int a3,
        glitch::video::CMaterial *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 4 )
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        (glitch::video::CMaterial **)a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (glitch::video::CMaterial ***)a1,
        a2,
        (glitch::video::CMaterial **)a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 357734 std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::CSceneManager::SDefaultNodeEntry const&) [clone] =====
void __fastcall std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        glitch::video::CMaterial *a2)
{
  char *v2; // r2

  v2 = *(char **)(a1 + 4);
  if ( (int)&v2[-*(_DWORD *)a1] >> 4 )
  {
    if ( v2 != *(char **)a1 )
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        *(_DWORD **)a1,
        v2);
  }
  else
  {
    std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      v2,
      0,
      a2);
  }
}


// ===== 357780 SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(E_SCENE_NODE_CUSTOM_RENDER_PASS,std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>> &) =====
glitch::video::CMaterial **__fastcall SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(
        _DWORD *a1,
        int a2,
        glitch::video::CMaterial ***a3)
{
  char *v3; // r1
  glitch::video::CMaterial **v4; // r6
  glitch::video::CMaterial **v6; // r2
  int v8; // r6
  glitch::video::CMaterial *v9; // r3
  int v10; // r12
  glitch::video::CMaterial *v11; // r1
  glitch::video::CMaterial *v12; // r3
  int v13; // r0
  glitch::video::CMaterial *v14; // r2
  int v15; // r7
  int v16; // r1
  int v17; // r2
  int v18; // r12
  int v19; // r0
  int v20; // r2
  int v21; // r0
  int v22; // r12
  int v23; // lr
  int v24; // r1
  int v25; // r2
  _DWORD v27[2]; // [sp+Ch] [bp-28h] BYREF
  glitch::video::CMaterial *v28[2]; // [sp+14h] [bp-20h] BYREF
  glitch::video::CMaterial *v29; // [sp+1Ch] [bp-18h] BYREF
  int v30; // [sp+20h] [bp-14h]
  glitch::video::CMaterial *v31; // [sp+24h] [bp-10h] BYREF
  int v32; // [sp+28h] [bp-Ch]
  char v33[8]; // [sp+2Ch] [bp-8h] BYREF

  if ( a2 <= 8 )
    a1[93] = a2;
  else
    a1[93] = 9;
  a1[290] = a2;
  v3 = (char *)a3[1];
  v4 = *a3;
  v6 = a3[2];
  v8 = (v3 - (char *)v4) >> 4;
  v29 = nullptr;
  v30 = 0;
  v31 = nullptr;
  v32 = 0;
  if ( v3 == (char *)v6 )
  {
    std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      a3,
      v3,
      &v29,
      (int)v33,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v3 = 0;
    *((_DWORD *)v3 + 1) = v30;
    v9 = v31;
    *((_DWORD *)v3 + 2) = v31;
    if ( v9 )
      ++*(_DWORD *)v9;
    *((_DWORD *)v3 + 3) = v32;
    a3[1] += 4;
  }
  boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v31);
  v10 = a1[43];
  v11 = (*a3)[3];
  v12 = **a3;
  v13 = a1[44];
  v14 = (*a3)[1];
  a1[39] = a1[42];
  a1[40] = v10;
  a1[41] = v13;
  a1[43] = v14;
  a1[44] = v11;
  a1[42] = v12;
  if ( v8 )
  {
    v15 = 0;
    while ( 1 )
    {
      ++v15;
      v16 = a1[43];
      v17 = (int)&(*a3)[4 * v15];
      v18 = *(_DWORD *)(v17 + 4);
      v19 = *(_DWORD *)(v17 + 12);
      v20 = a1[44];
      a1[42] = (*a3)[4 * v15];
      a1[44] = v19;
      a1[43] = v18;
      a1[41] = v20;
      a1[39] = v12;
      a1[40] = v16;
      (*(void (__fastcall **)(glitch::video::CMaterial *))(*(_DWORD *)v12 + 28))(v12);
      if ( v15 == v8 )
        break;
      v12 = (glitch::video::CMaterial *)a1[42];
    }
    v12 = (glitch::video::CMaterial *)a1[42];
  }
  v21 = a1[44];
  v22 = a1[43];
  v23 = (int)*(a3[1] - 1);
  v24 = (int)*(a3[1] - 4);
  v25 = (int)*(a3[1] - 3);
  a1[39] = v12;
  a1[41] = v21;
  a1[42] = v24;
  a1[44] = v23;
  a1[40] = v22;
  a1[43] = v25;
  v28[1] = nullptr;
  v27[0] = 0;
  v27[1] = 0;
  v28[0] = nullptr;
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)a3,
    (glitch::video::CMaterial *)v27);
  return boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v28);
}


// ===== 357940 std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::scene::CSceneManager::STransparentNodeEntry*,uint,glitch::scene::CSceneManager::STransparentNodeEntry const&,std::__false_type const&) =====
int __fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        int *a1,
        glitch::video::CMaterial **a2,
        unsigned int a3,
        glitch::video::CMaterial **a4)
{
  int result; // r0
  glitch::video::CMaterial **v7; // r6
  glitch::video::CMaterial **v8; // r3
  int v9; // r5
  glitch::video::CMaterial **v10; // r2
  int v11; // r0
  glitch::video::CMaterial **v12; // r3
  glitch::video::CMaterial *v13; // r1
  glitch::video::CMaterial *v14; // r1
  glitch::video::CMaterial *v15; // r2
  glitch::video::CMaterial *v16; // r3
  glitch::video::CMaterial *v17; // r1
  glitch::video::CMaterial *v18; // r0
  glitch::video::CMaterial *v19; // r3
  glitch::video::CMaterial *v20; // lr
  int v21; // r9
  glitch::video::CMaterial **v22; // r7
  int v23; // r5
  glitch::video::CMaterial **v24; // r1
  glitch::video::CMaterial **v25; // r2
  glitch::video::CMaterial **i; // r1
  glitch::video::CMaterial *v27; // r0
  int v28; // r8
  glitch::video::CMaterial **v29; // r5
  glitch::video::CMaterial *v30; // r3
  glitch::video::CMaterial *v31; // r3
  int v32; // r5
  glitch::video::CMaterial *v33; // r2
  glitch::video::CMaterial *v34; // r3
  _DWORD v35[2]; // [sp+Ch] [bp-24h] BYREF
  glitch::video::CMaterial *v36[3]; // [sp+14h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v37; // [sp+20h] [bp-10h] BYREF
  glitch::video::CMaterial *v38; // [sp+24h] [bp-Ch] BYREF
  glitch::video::CMaterial *v39; // [sp+28h] [bp-8h] BYREF
  char v40[4]; // [sp+2Ch] [bp-4h] BYREF

  result = *a1;
  v7 = a2;
  if ( (unsigned int)a4 < result )
  {
    v8 = (glitch::video::CMaterial **)a1[1];
    goto LABEL_4;
  }
  v8 = (glitch::video::CMaterial **)a1[1];
  if ( a4 >= v8 )
  {
LABEL_4:
    v9 = -858993459 * (v8 - a2);
    if ( a3 < v9 )
    {
      v21 = 20 * a3;
      v22 = &v8[-5 * a3];
      v23 = -858993459 * ((int)(20 * a3) >> 2);
      if ( v23 > 0 )
      {
        v25 = &v8[v21 / 0xFFFFFFFC];
        for ( i = v8; ; i += 5 )
        {
          *i = *v25;
          i[1] = v25[1];
          v27 = v25[2];
          i[2] = v27;
          if ( v27 )
            ++*(_DWORD *)v27;
          --v23;
          i[3] = v25[3];
          result = (int)v25[4];
          v25 += 5;
          i[4] = (glitch::video::CMaterial *)result;
          if ( !v23 )
            break;
        }
        v24 = (glitch::video::CMaterial **)a1[1];
      }
      else
      {
        v24 = v8;
      }
      a1[1] = (int)&v24[v21 / 4u];
      v28 = -858993459 * (v22 - v7);
      if ( v28 > 0 )
      {
        v29 = v8;
        do
        {
          *(v29 - 5) = *(v22 - 5);
          *(v29 - 4) = *(v22 - 4);
          v30 = *(v22 - 3);
          v39 = v30;
          if ( v30 )
          {
            ++*(_DWORD *)v30;
            v30 = v39;
          }
          v39 = *(v29 - 3);
          *(v29 - 3) = v30;
          result = (int)boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v39);
          --v28;
          *(v29 - 2) = *(v22 - 2);
          v31 = *(v22 - 1);
          v22 -= 5;
          *(v29 - 1) = v31;
          v29 -= 5;
        }
        while ( v28 );
      }
      v32 = -858993459 * (v21 >> 2);
      if ( v32 > 0 )
      {
        while ( 1 )
        {
          *v7 = *a4;
          v7[1] = a4[1];
          v33 = a4[2];
          v38 = v33;
          if ( v33 )
          {
            ++*(_DWORD *)v33;
            v33 = v38;
          }
          v34 = v7[2];
          v7[2] = v33;
          v38 = v34;
          result = (int)boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v38);
          --v32;
          v7[3] = a4[3];
          v7[4] = a4[4];
          if ( !v32 )
            break;
          v7 += 5;
        }
      }
    }
    else
    {
      v10 = &v8[5 * (a3 - v9)];
      result = -858993459 * (v10 - v8);
      if ( result > 0 )
      {
        while ( 1 )
        {
          *v8 = *a4;
          v8[1] = a4[1];
          v17 = a4[2];
          v8[2] = v17;
          if ( v17 )
            ++*(_DWORD *)v17;
          --result;
          v8[3] = a4[3];
          v8[4] = a4[4];
          if ( !result )
            break;
          v8 += 5;
        }
      }
      a1[1] = (int)v10;
      if ( v9 <= 0 )
      {
        a1[1] = (int)&v10[5 * v9];
      }
      else
      {
        v11 = v9;
        v12 = v7;
        while ( 1 )
        {
          *v10 = *v12;
          v10[1] = v12[1];
          v13 = v12[2];
          v10[2] = v13;
          if ( v13 )
            ++*(_DWORD *)v13;
          --v11;
          v10[3] = v12[3];
          v14 = v12[4];
          v12 += 5;
          v10[4] = v14;
          if ( !v11 )
            break;
          v10 += 5;
        }
        a1[1] += 20 * v9;
        while ( 1 )
        {
          *v7 = *a4;
          v7[1] = a4[1];
          v15 = a4[2];
          v37 = v15;
          if ( v15 )
          {
            ++*(_DWORD *)v15;
            v15 = v37;
          }
          v16 = v7[2];
          v7[2] = v15;
          v37 = v16;
          result = (int)boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v37);
          --v9;
          v7[3] = a4[3];
          v7[4] = a4[4];
          if ( !v9 )
            break;
          v7 += 5;
        }
      }
    }
    return result;
  }
  v18 = *a4;
  v19 = a4[2];
  v35[1] = a4[1];
  v35[0] = v18;
  v36[0] = v19;
  if ( v19 )
    ++*(_DWORD *)v19;
  v20 = a4[4];
  v36[1] = a4[3];
  v36[2] = v20;
  std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    a1,
    a2,
    a3,
    v35,
    v40);
  return (int)boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v36);
}


// ===== 357cf4 std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::scene::CSceneManager::STransparentNodeEntry*,uint,glitch::scene::CSceneManager::STransparentNodeEntry const&) =====
void __fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        int *a1,
        glitch::video::CMaterial **a2,
        unsigned int a3,
        glitch::video::CMaterial **a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= -858993459 * ((a1[2] - a1[1]) >> 2) )
      std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (glitch::video::CMaterial ***)a1,
        a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 357d60 std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::scene::CSceneManager::STransparentNodeEntry const&) [clone] =====
void __fastcall std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int *a1,
        glitch::video::CMaterial **a2)
{
  glitch::video::CMaterial **v2; // r2

  v2 = (glitch::video::CMaterial **)a1[1];
  if ( -858993459 * (((int)v2 - *a1) >> 2) )
  {
    if ( v2 != (glitch::video::CMaterial **)*a1 )
      std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        (int)a1,
        (_DWORD *)*a1,
        v2);
  }
  else
  {
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      a1,
      v2,
      0,
      a2);
  }
}


// ===== 357dc0 SceneManager::clearRenderLists(void) =====
glitch::video::CMaterial **__fastcall SceneManager::clearRenderLists(SceneManager *this)
{
  glitch::video::CMaterial *v3[2]; // [sp+4h] [bp-58h] BYREF
  glitch::video::CMaterial *v4[3]; // [sp+Ch] [bp-50h] BYREF
  _DWORD v5[2]; // [sp+18h] [bp-44h] BYREF
  glitch::video::CMaterial *v6[2]; // [sp+20h] [bp-3Ch] BYREF
  unsigned int v7[4]; // [sp+28h] [bp-34h] BYREF
  _DWORD v8[2]; // [sp+38h] [bp-24h] BYREF
  _DWORD v9[2]; // [sp+40h] [bp-1Ch] BYREF
  _DWORD v10[2]; // [sp+48h] [bp-14h] BYREF
  _DWORD v11[3]; // [sp+50h] [bp-Ch] BYREF

  v11[0] = 0;
  v11[1] = 0;
  std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int *)this + 15,
    v11);
  memset(v7, 0, sizeof(v7));
  std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 72,
    0,
    v7);
  v10[0] = 0;
  v10[1] = 0;
  std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int *)this + 27,
    v10);
  v5[0] = 0;
  v5[1] = 0;
  v6[0] = nullptr;
  v6[1] = nullptr;
  std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 120,
    (glitch::video::CMaterial *)v5);
  boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v6);
  v9[0] = 0;
  v9[1] = 0;
  std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int *)this + 21,
    v9);
  v8[0] = 0;
  v8[1] = 0;
  std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int *)this + 24,
    v8);
  v3[0] = nullptr;
  v3[1] = nullptr;
  memset(v4, 0, sizeof(v4));
  std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int *)this + 33,
    v3);
  return boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v4);
}


// ===== 357ea4 SceneManager::_registerSceneNodes(glitch::scene::ISceneNode *) =====
batch::GOBatchSceneNode *__fastcall SceneManager::_registerSceneNodes(
        SceneManager *this,
        glitch::scene::ISceneNode *a2)
{
  char v4; // r1
  int CurrentLevel; // r5
  int v6; // r0
  int v7; // r1
  batch::GOBatchSceneNode *result; // r0
  int v9; // r1
  int v10; // t0
  int v11; // r3
  int v12; // r3
  int v13; // r6
  int v14; // r5
  int (__fastcall ***v15)(_DWORD); // r3
  int v16; // r3

  ++*((_DWORD *)this + 272);
  if ( (SceneManager::_registerSceneNodes(glitch::scene::ISceneNode *)::needRegister || byte_9A600C)
    && (*((_DWORD *)this + 272) = 0, byte_9A600C) )
  {
    v4 = 1;
  }
  else
  {
    v4 = *((_BYTE *)this + 1096);
  }
  SceneManager::_registerSceneNodes(glitch::scene::ISceneNode *)::needRegister = v4;
  CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( *((_BYTE *)this + 649)
    || (v6 = *((_DWORD *)this + 272),
        v7 = *((_DWORD *)this + 273),
        v10 = v6 / v7,
        v9 = v6 % v7,
        result = (batch::GOBatchSceneNode *)v10,
        !v9) )
  {
    SceneManager::clearRenderLists(this);
    v16 = *((_DWORD *)this + 287);
    if ( v16 != *((_DWORD *)this + 288) )
      *((_DWORD *)this + 288) = v16;
    result = (batch::GOBatchSceneNode *)glitch::scene::CSceneManager::registerSceneNodes(this, a2);
    *((_BYTE *)this + 1096) = 0;
    *((_DWORD *)this + 272) = 0;
    *((_BYTE *)this + 649) = 0;
  }
  else
  {
    if ( CurrentLevel )
    {
      v11 = *(_DWORD *)(CurrentLevel + 344);
      if ( v11 )
      {
        result = *(batch::GOBatchSceneNode **)(v11 + 52);
        if ( result )
          result = (batch::GOBatchSceneNode *)batch::GOBatchSceneNode::updateSegmentVisibility(result);
      }
    }
    v12 = *((_DWORD *)this + 287);
    v13 = (*((_DWORD *)this + 288) - v12) >> 2;
    if ( v13 > 0 )
    {
      v14 = 0;
      while ( 1 )
      {
        v15 = *(int (__fastcall ****)(_DWORD))(v12 + 4 * v14++);
        result = (batch::GOBatchSceneNode *)(**v15)(v15);
        if ( v14 == v13 )
          break;
        v12 = *((_DWORD *)this + 287);
      }
    }
  }
  return result;
}


// ===== 358008 SceneManager::renderCustomLists(glitch::video::IVideoDriver *) =====
int __fastcall SceneManager::renderCustomLists(SceneManager *this, glitch::video::IVideoDriver *a2)
{
  int v4; // r0
  int v5; // r3
  unsigned int v6; // r1
  unsigned int v7; // r1
  _DWORD *v8; // r5
  _DWORD *v9; // r12
  _DWORD *v10; // r3
  int v11; // r6
  int v12; // r6
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int *v16; // r3
  int v17; // r0
  int v18; // r1
  int v19; // r2
  int v20; // r3
  int v21; // r8
  int v22; // r1
  int v23; // r0
  int v24; // r3
  int v25; // r3
  int v26; // lr
  int v27; // r12
  int v28; // r1
  int v29; // r0
  glitch::video::CMaterial **v30; // r0
  unsigned int v31; // r1
  int v32; // r0
  _DWORD *v33; // r3
  int v34; // r1
  bool v35; // zf
  int v36; // r6
  _DWORD *v37; // r5
  int *v38; // r3
  int v39; // r0
  int v40; // r2
  int v41; // r1
  int v42; // r3
  int v43; // r8
  int v44; // r1
  int v45; // r0
  int v46; // r2
  int v47; // r2
  int v48; // lr
  int v49; // r12
  int v50; // r0
  int v51; // r1
  glitch::video::CMaterial **v52; // r0
  int v53; // r3
  unsigned int v54; // r1
  int v55; // r6
  glitch::video::CMaterial *v56; // r2
  int *v57; // r2
  int v58; // r12
  int v59; // r1
  int v60; // r3
  int v61; // r0
  int v62; // r2
  int v63; // r8
  int v64; // r10
  int v65; // r1
  int *v66; // r2
  int v67; // r12
  int v68; // r0
  int v69; // r2
  int v70; // lr
  int v71; // r12
  int v72; // r0
  int v73; // r1
  int v74; // r2
  unsigned int v75; // r1
  glitch::video::CMaterial **v76; // r0
  unsigned int v77; // r1
  glitch::video::CMaterial *v79[2]; // [sp+8h] [bp-7Ch] BYREF
  glitch::video::CMaterial *v80[3]; // [sp+10h] [bp-74h] BYREF
  glitch::video::CMaterial *v81; // [sp+1Ch] [bp-68h] BYREF
  int v82; // [sp+20h] [bp-64h]
  glitch::video::CMaterial *v83; // [sp+24h] [bp-60h] BYREF
  int v84; // [sp+28h] [bp-5Ch]
  int v85; // [sp+2Ch] [bp-58h]
  unsigned int v86[4]; // [sp+30h] [bp-54h] BYREF
  int v87; // [sp+40h] [bp-44h] BYREF
  int v88; // [sp+44h] [bp-40h]
  int v89; // [sp+48h] [bp-3Ch]
  int v90; // [sp+4Ch] [bp-38h]
  unsigned int v91[5]; // [sp+50h] [bp-34h] BYREF
  _DWORD v92[2]; // [sp+64h] [bp-20h] BYREF
  int v93; // [sp+6Ch] [bp-18h] BYREF
  int v94; // [sp+70h] [bp-14h]
  _BYTE v95[4]; // [sp+74h] [bp-10h] BYREF
  _BYTE v96[4]; // [sp+78h] [bp-Ch] BYREF
  _BYTE v97[8]; // [sp+7Ch] [bp-8h] BYREF

  SceneManager::renderCustomList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(this, 0, (int *)this + 15);
  glitch::video::IVideoDriver::deleteAllDynamicLights(a2);
  v4 = *((_DWORD *)this + 18);
  v5 = *((_DWORD *)this + 19);
  v6 = (v5 - v4) >> 4;
  if ( v6 > 1 )
  {
    glitch::core::heapsort<glitch::scene::CSceneManager::SDistanceNodeEntry>(v4, v6);
    v4 = *((_DWORD *)this + 18);
    v5 = *((_DWORD *)this + 19);
  }
  v7 = (v5 - v4) >> 4;
  v8 = (_DWORD *)((char *)this + 72);
  if ( v7 >= *((unsigned __int16 *)a2 + 30) )
    v7 = *((unsigned __int16 *)a2 + 30);
  memset(v91, 0, 16);
  std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 72,
    v7,
    v91);
  v9 = *((_DWORD **)this + 19);
  v10 = *((_DWORD **)this + 20);
  v11 = (int)v9 - *((_DWORD *)this + 18);
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v12 = v11 >> 4;
  *((_DWORD *)this + 290) = 1;
  *((_DWORD *)this + 93) = 1;
  v87 = 0;
  if ( v9 == v10 )
  {
    std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (_DWORD *)this + 18,
      (int)v9,
      &v87,
      (int)v97,
      1u,
      1);
  }
  else
  {
    v13 = v88;
    v14 = v89;
    v15 = v90;
    *v9 = v87;
    v9[1] = v13;
    v9[2] = v14;
    v9[3] = v15;
    *((_DWORD *)this + 19) += 16;
  }
  v16 = *((int **)this + 18);
  v17 = *((_DWORD *)this + 43);
  v18 = v16[1];
  v19 = *v16;
  v20 = *((_DWORD *)this + 44);
  v21 = 0;
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v17;
  *((_DWORD *)this + 41) = v20;
  *((_DWORD *)this + 43) = v18;
  *((_DWORD *)this + 42) = v19;
  *((_DWORD *)this + 44) = 0;
  if ( v12 )
  {
    while ( 1 )
    {
      ++v21;
      v22 = *((_DWORD *)this + 43);
      v23 = *(_DWORD *)(*v8 + 16 * v21 + 4);
      v24 = *((_DWORD *)this + 44);
      *((_DWORD *)this + 42) = *(_DWORD *)(*v8 + 16 * v21);
      *((_DWORD *)this + 43) = v23;
      *((_DWORD *)this + 41) = v24;
      *((_DWORD *)this + 39) = v19;
      *((_DWORD *)this + 40) = v22;
      *((_DWORD *)this + 44) = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v19 + 28))(v19);
      if ( v12 == v21 )
        break;
      v19 = *((_DWORD *)this + 42);
    }
    v19 = *((_DWORD *)this + 42);
  }
  v25 = *((_DWORD *)this + 19);
  v26 = *((_DWORD *)this + 43);
  v27 = *((_DWORD *)this + 44);
  v28 = *(_DWORD *)(v25 - 12);
  v29 = *(_DWORD *)(v25 - 16);
  *((_DWORD *)this + 39) = v19;
  *((_DWORD *)this + 40) = v26;
  *((_DWORD *)this + 41) = v27;
  *((_DWORD *)this + 42) = v29;
  *((_DWORD *)this + 43) = v28;
  *((_DWORD *)this + 44) = 0;
  memset(v86, 0, sizeof(v86));
  std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int)this + 72,
    0,
    v86);
  SceneManager::renderCustomList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(this, 2, (int *)this + 27);
  v30 = *((glitch::video::CMaterial ***)this + 30);
  v31 = (*((_DWORD *)this + 31) - (int)v30) >> 4;
  if ( v31 > 1 )
    glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(v30, v31);
  SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(
    this,
    4,
    (glitch::video::CMaterial ***)this + 30);
  v32 = *((_DWORD *)this + 24);
  v33 = *((_DWORD **)this + 25);
  v34 = ((int)v33 - v32) >> 3;
  if ( (unsigned __int8)v34 > 1u )
  {
    glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(v32, v34);
    v32 = *((_DWORD *)this + 24);
    v33 = *((_DWORD **)this + 25);
  }
  v35 = v33 == *((_DWORD **)this + 26);
  *((_DWORD *)this + 93) = 6;
  *((_DWORD *)this + 290) = 6;
  v36 = ((int)v33 - v32) >> 3;
  v93 = 0;
  v94 = 0;
  v37 = (_DWORD *)((char *)this + 96);
  if ( v35 )
  {
    std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (_DWORD *)this + 24,
      (int)v33,
      &v93,
      (int)v96,
      1u,
      1u);
  }
  else
  {
    *v33 = 0;
    v33[1] = v94;
    *((_DWORD *)this + 25) += 8;
  }
  v38 = *((int **)this + 24);
  v39 = *((_DWORD *)this + 43);
  v40 = v38[1];
  v41 = *((_DWORD *)this + 44);
  v42 = *v38;
  v43 = 0;
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v39;
  *((_DWORD *)this + 41) = v41;
  *((_DWORD *)this + 43) = v40;
  *((_DWORD *)this + 42) = v42;
  *((_DWORD *)this + 44) = 0;
  if ( v36 )
  {
    while ( 1 )
    {
      ++v43;
      v44 = *((_DWORD *)this + 43);
      v45 = *(_DWORD *)(*v37 + 8 * v43 + 4);
      v46 = *((_DWORD *)this + 44);
      *((_DWORD *)this + 42) = *(_DWORD *)(*v37 + 8 * v43);
      *((_DWORD *)this + 43) = v45;
      *((_DWORD *)this + 41) = v46;
      *((_DWORD *)this + 39) = v42;
      *((_DWORD *)this + 40) = v44;
      *((_DWORD *)this + 44) = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v42 + 28))(v42);
      if ( v36 == v43 )
        break;
      v42 = *((_DWORD *)this + 42);
    }
    v42 = *((_DWORD *)this + 42);
  }
  v47 = *((_DWORD *)this + 25);
  v48 = *((_DWORD *)this + 43);
  v49 = *((_DWORD *)this + 44);
  v50 = *(_DWORD *)(v47 - 8);
  v51 = *(_DWORD *)(v47 - 4);
  *((_DWORD *)this + 39) = v42;
  *((_DWORD *)this + 42) = v50;
  *((_DWORD *)this + 43) = v51;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 40) = v48;
  *((_DWORD *)this + 41) = v49;
  v92[1] = 0;
  v92[0] = 0;
  std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int *)this + 24,
    v92);
  v52 = *((glitch::video::CMaterial ***)this + 33);
  v53 = *((_DWORD *)this + 34);
  v54 = -858993459 * ((v53 - (int)v52) >> 2);
  if ( v54 > 1 )
  {
    glitch::core::heapsort<glitch::scene::CSceneManager::STransparentNodeEntry>(v52, v54);
    v52 = *((glitch::video::CMaterial ***)this + 33);
    v53 = *((_DWORD *)this + 34);
  }
  v35 = v53 == *((_DWORD *)this + 35);
  *((_DWORD *)this + 93) = 7;
  v55 = -858993459 * ((v53 - (int)v52) >> 2);
  v85 = 0;
  *((_DWORD *)this + 290) = 7;
  v81 = nullptr;
  v82 = 0;
  v83 = nullptr;
  v84 = 0;
  if ( v35 )
  {
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (glitch::video::CMaterial ***)this + 33,
      (glitch::video::CMaterial **)v53,
      &v81,
      (int)v95,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v53 = 0;
    *(_DWORD *)(v53 + 4) = v82;
    v56 = v83;
    *(_DWORD *)(v53 + 8) = v83;
    if ( v56 )
      ++*(_DWORD *)v56;
    *(_DWORD *)(v53 + 12) = v84;
    *(_DWORD *)(v53 + 16) = v85;
    *((_DWORD *)this + 34) += 20;
  }
  boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v83);
  v57 = *((int **)this + 33);
  v58 = *((_DWORD *)this + 43);
  v59 = v57[3];
  v60 = *v57;
  v61 = *((_DWORD *)this + 44);
  v62 = v57[1];
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v58;
  *((_DWORD *)this + 41) = v61;
  *((_DWORD *)this + 43) = v62;
  *((_DWORD *)this + 44) = v59;
  *((_DWORD *)this + 42) = v60;
  if ( v55 )
  {
    v63 = 20;
    v64 = 0;
    while ( 1 )
    {
      v65 = *((_DWORD *)this + 43);
      v66 = (int *)(*((_DWORD *)this + 33) + v63);
      v67 = *v66;
      v68 = v66[3];
      v69 = v66[1];
      *((_DWORD *)this + 41) = *((_DWORD *)this + 44);
      *((_DWORD *)this + 44) = v68;
      *((_DWORD *)this + 42) = v67;
      *((_DWORD *)this + 43) = v69;
      *((_DWORD *)this + 39) = v60;
      *((_DWORD *)this + 40) = v65;
      ++v64;
      (*(void (__fastcall **)(int))(*(_DWORD *)v60 + 28))(v60);
      v63 += 20;
      if ( v55 == v64 )
        break;
      v60 = *((_DWORD *)this + 42);
    }
    v60 = *((_DWORD *)this + 42);
  }
  v70 = *((_DWORD *)this + 43);
  v71 = *((_DWORD *)this + 44);
  v72 = *(_DWORD *)(*((_DWORD *)this + 34) - 20);
  v73 = *(_DWORD *)(*((_DWORD *)this + 34) - 8);
  v74 = *(_DWORD *)(*((_DWORD *)this + 34) - 16);
  *((_DWORD *)this + 39) = v60;
  *((_DWORD *)this + 40) = v70;
  *((_DWORD *)this + 41) = v71;
  *((_DWORD *)this + 42) = v72;
  *((_DWORD *)this + 43) = v74;
  *((_DWORD *)this + 44) = v73;
  v79[0] = nullptr;
  v79[1] = nullptr;
  memset(v80, 0, sizeof(v80));
  std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    (int *)this + 33,
    v79);
  boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v80);
  v75 = (*((_DWORD *)this + 285) - *((_DWORD *)this + 284)) >> 4;
  if ( v75 > 1 )
    glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(
      *((glitch::video::CMaterial ***)this + 281),
      v75);
  SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(
    this,
    10,
    (glitch::video::CMaterial ***)this + 284);
  (*(void (__fastcall **)(glitch::video::IVideoDriver *, int))(*(_DWORD *)a2 + 168))(a2, 2);
  v76 = *((glitch::video::CMaterial ***)this + 281);
  v77 = (*((_DWORD *)this + 282) - (int)v76) >> 4;
  if ( v77 > 1 )
    glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(v76, v77);
  SceneManager::renderCustomList<glitch::scene::CSceneManager::SDefaultNodeEntry>(
    this,
    9,
    (glitch::video::CMaterial ***)this + 281);
  return glitch::scene::CSceneManager::clearDeletionList(this);
}


// ===== 35861c std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(glitch::scene::ISceneNode **,glitch::scene::ISceneNode * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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


// ===== 3586ac SceneManager::SearchByName(glitch::scene::ISceneNode *,std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> &,std::string const&,bool) =====
int __fastcall SceneManager::SearchByName(
        int result,
        glitch::scene::ISceneNode *a2,
        int a3,
        int a4,
        unsigned __int8 a5)
{
  int v5; // r10
  const char *v8; // r0
  glitch::scene::ISceneNode **v9; // r1
  _DWORD *v10; // r4
  _DWORD *v11; // r5
  _DWORD *v12; // r1
  const char *v13; // r0
  glitch::scene::ISceneNode *v14; // [sp+Ch] [bp-8h] BYREF

  v5 = result;
  v14 = a2;
  if ( !a2 )
    return result;
  if ( a5 )
  {
    v13 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
    if ( LC_API_STRNCMP_0(v13, *(const char **)(a4 + 20), *(_DWORD *)(a4 + 16) - *(_DWORD *)(a4 + 20)) )
      goto LABEL_6;
  }
  else
  {
    v8 = (const char *)(*(int (__fastcall **)(glitch::scene::ISceneNode *))(*(_DWORD *)a2 + 36))(a2);
    if ( LC_API_STRCMP_0(v8, *(const char **)(a4 + 20)) )
      goto LABEL_6;
  }
  v9 = *(glitch::scene::ISceneNode ***)(a3 + 4);
  if ( v9 == *(glitch::scene::ISceneNode ***)(a3 + 8) )
  {
    std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a3,
      (int)v9,
      &v14);
  }
  else
  {
    *v9 = v14;
    *(_DWORD *)(a3 + 4) += 4;
  }
LABEL_6:
  result = glitch::scene::ISceneNode::getChildren(v14);
  v11 = (_DWORD *)(result + 4);
  v10 = *(_DWORD **)(result + 4);
  if ( v10 != (_DWORD *)(result + 4) )
  {
    do
    {
      if ( v10 )
        v12 = v10 - 1;
      else
        v12 = nullptr;
      result = SceneManager::SearchByName(v5, v12, a3, a4, a5);
      v10 = (_DWORD *)*v10;
    }
    while ( v11 != v10 );
  }
  return result;
}


// ===== 3587a0 SceneManager::_renderLists(glitch::video::IVideoDriver *) =====
int __fastcall SceneManager::_renderLists(SceneManager *this, glitch::video::IVideoDriver *a2)
{
  int v2; // r11
  _DWORD *v4; // r5
  int v5; // r0
  int v6; // r3
  unsigned int v7; // r1
  unsigned int v8; // r1
  glitch::video::CMaterial **v9; // r0
  unsigned int v10; // r1
  int v11; // r0
  int v12; // r1
  int v13; // r0
  int v14; // r1
  glitch::video::CMaterial **v15; // r0
  unsigned int v16; // r1
  _DWORD *v17; // r12
  _DWORD *v18; // r2
  int v19; // r6
  int v20; // r6
  int v21; // r1
  int v22; // r2
  int v23; // r3
  int *v24; // r3
  int v25; // r2
  int v26; // r0
  int v27; // r1
  int v28; // r3
  int v29; // r7
  int v30; // r2
  int v31; // r3
  int v32; // r12
  int v33; // r1
  int v34; // r2
  int *v35; // r12
  int v36; // lr
  int v37; // r0
  int v38; // r1
  int *v39; // r5
  glitch::video::CMaterial *v40; // r3
  int *v41; // r3
  int v42; // r0
  int v43; // r1
  int v44; // r2
  int v45; // r12
  int v46; // r3
  unsigned int v47; // r7
  int v48; // r9
  int v49; // r6
  int v50; // r2
  int v51; // r8
  unsigned int v52; // r10
  int v53; // r1
  int v54; // r10
  bool v55; // cf
  int v56; // lr
  glitch::video::CMaterial *v57; // r3
  bool v58; // zf
  glitch::video::CMaterial *v59; // r2
  int v60; // r8
  int v61; // r3
  int HashCode; // r8
  int v63; // r3
  int *v64; // r0
  int v65; // lr
  int v66; // r12
  int v67; // r2
  int v68; // r0
  int v69; // r0
  int v70; // r12
  int v71; // r1
  int v72; // r2
  int v73; // r6
  int v74; // lr
  int v75; // r1
  int *v76; // r5
  glitch::video::CMaterial *v77; // r3
  int *v78; // r3
  int v79; // lr
  int v80; // r1
  int v81; // r2
  int v82; // r3
  int v83; // r12
  int v84; // r6
  int v85; // r9
  unsigned int v86; // r7
  int v87; // r3
  int v88; // r8
  unsigned int v89; // r10
  int v90; // r1
  int v91; // r10
  int v92; // r2
  int v93; // r11
  glitch::video::CMaterial *v94; // r2
  glitch::video::CMaterial *v95; // r3
  int v96; // r8
  int v97; // r2
  int v98; // r3
  int v99; // r8
  int v100; // r3
  int v101; // r1
  int *v102; // r0
  int v103; // lr
  int v104; // r12
  int v105; // r2
  int v106; // r0
  int v107; // r0
  int v108; // r12
  int v109; // r1
  int v110; // r2
  int v111; // r6
  int v112; // lr
  int v114; // [sp+8h] [bp-BCh]
  int v115; // [sp+8h] [bp-BCh]
  int v116; // [sp+Ch] [bp-B8h]
  int v117; // [sp+Ch] [bp-B8h]
  int v118; // [sp+10h] [bp-B4h]
  int v119; // [sp+10h] [bp-B4h]
  int v121; // [sp+20h] [bp-A4h]
  glitch::video::CMaterial *v122[2]; // [sp+28h] [bp-9Ch] BYREF
  glitch::video::CMaterial *v123[3]; // [sp+30h] [bp-94h] BYREF
  glitch::video::CMaterial *v124; // [sp+3Ch] [bp-88h] BYREF
  int v125; // [sp+40h] [bp-84h]
  glitch::video::CMaterial *v126; // [sp+44h] [bp-80h] BYREF
  int v127; // [sp+48h] [bp-7Ch]
  int v128; // [sp+4Ch] [bp-78h]
  _DWORD v129[2]; // [sp+50h] [bp-74h] BYREF
  glitch::video::CMaterial *v130[2]; // [sp+58h] [bp-6Ch] BYREF
  glitch::video::CMaterial *v131; // [sp+60h] [bp-64h] BYREF
  int v132; // [sp+64h] [bp-60h]
  glitch::video::CMaterial *v133; // [sp+68h] [bp-5Ch] BYREF
  int v134; // [sp+6Ch] [bp-58h]
  unsigned int v135[4]; // [sp+70h] [bp-54h] BYREF
  int v136; // [sp+80h] [bp-44h] BYREF
  int v137; // [sp+84h] [bp-40h]
  int v138; // [sp+88h] [bp-3Ch]
  int v139; // [sp+8Ch] [bp-38h]
  unsigned int v140[5]; // [sp+90h] [bp-34h] BYREF
  glitch::video::CMaterial **v141; // [sp+A4h] [bp-20h] BYREF
  glitch::video::CMaterial *v142; // [sp+A8h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v143; // [sp+ACh] [bp-18h] BYREF
  glitch::video::CMaterial *v144; // [sp+B0h] [bp-14h] BYREF
  _BYTE v145[4]; // [sp+B4h] [bp-10h] BYREF
  _BYTE v146[4]; // [sp+B8h] [bp-Ch] BYREF
  _BYTE v147[8]; // [sp+BCh] [bp-8h] BYREF

  if ( *((_DWORD *)this + 272) )
  {
    v4 = (_DWORD *)((char *)this + 72);
  }
  else
  {
    v5 = *((_DWORD *)this + 18);
    v6 = *((_DWORD *)this + 19);
    v7 = (v6 - v5) >> 4;
    if ( v7 > 1 )
    {
      glitch::core::heapsort<glitch::scene::CSceneManager::SDistanceNodeEntry>(v5, v7);
      v5 = *((_DWORD *)this + 18);
      v6 = *((_DWORD *)this + 19);
    }
    v4 = (_DWORD *)((char *)this + 72);
    v8 = (v6 - v5) >> 4;
    if ( v8 >= *((unsigned __int16 *)a2 + 30) )
      v8 = *((unsigned __int16 *)a2 + 30);
    memset(v140, 0, 16);
    std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)this + 72,
      v8,
      v140);
    v9 = *((glitch::video::CMaterial ***)this + 30);
    v10 = (*((_DWORD *)this + 31) - (int)v9) >> 4;
    if ( v10 > 1 )
      glitch::core::heapsort<glitch::scene::CSceneManager::SDefaultNodeEntry>(v9, v10);
    v11 = *((_DWORD *)this + 21);
    v12 = (*((_DWORD *)this + 22) - v11) >> 3;
    if ( (unsigned __int8)v12 > 1u )
      glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(v11, v12);
    v13 = *((_DWORD *)this + 24);
    v14 = (*((_DWORD *)this + 25) - v13) >> 3;
    if ( (unsigned __int8)v14 > 1u )
      glitch::core::heapsort<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(v13, v14);
    v15 = *((glitch::video::CMaterial ***)this + 33);
    v16 = -858993459 * ((*((_DWORD *)this + 34) - (int)v15) >> 2);
    if ( v16 > 1 )
      glitch::core::heapsort<glitch::scene::CSceneManager::STransparentNodeEntry>(v15, v16);
  }
  v121 = *((unsigned __int8 *)this + 1084);
  glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
    this,
    0,
    (int *)this + 15,
    v121);
  glitch::video::IVideoDriver::deleteAllDynamicLights(a2);
  v17 = *((_DWORD **)this + 19);
  v18 = *((_DWORD **)this + 20);
  v19 = (int)v17 - *((_DWORD *)this + 18);
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v20 = v19 >> 4;
  *((_DWORD *)this + 93) = 1;
  v136 = 0;
  if ( v17 == v18 )
  {
    std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      v4,
      (int)v17,
      &v136,
      (int)v147,
      1u,
      1);
  }
  else
  {
    v21 = v137;
    v22 = v138;
    v23 = v139;
    *v17 = v136;
    v17[1] = v21;
    v17[2] = v22;
    v17[3] = v23;
    *((_DWORD *)this + 19) += 16;
  }
  v24 = *((int **)this + 18);
  v25 = *((_DWORD *)this + 43);
  v26 = v24[1];
  v27 = *v24;
  v28 = *((_DWORD *)this + 42);
  *((_DWORD *)this + 41) = *((_DWORD *)this + 44);
  v29 = 0;
  *((_DWORD *)this + 40) = v25;
  *((_DWORD *)this + 39) = v28;
  v30 = v26;
  *((_DWORD *)this + 42) = v27;
  *((_DWORD *)this + 43) = v26;
  *((_DWORD *)this + 44) = 0;
  if ( v20 )
  {
    do
    {
      ++v29;
      v31 = *((_DWORD *)this + 42);
      v32 = *(_DWORD *)(*v4 + 16 * v29);
      v33 = *((_DWORD *)this + 43);
      v34 = *((_DWORD *)this + 44);
      *((_DWORD *)this + 43) = *(_DWORD *)(*v4 + 16 * v29 + 4);
      *((_DWORD *)this + 42) = v32;
      *((_DWORD *)this + 41) = v34;
      *((_DWORD *)this + 39) = v31;
      *((_DWORD *)this + 40) = v33;
      *((_DWORD *)this + 44) = 0;
      (*(void (__fastcall **)(int))(*(_DWORD *)v31 + 28))(v31);
    }
    while ( v20 != v29 );
    v27 = *((_DWORD *)this + 42);
    v30 = *((_DWORD *)this + 43);
    v29 = *((_DWORD *)this + 44);
  }
  v35 = (int *)(*((_DWORD *)this + 19) - 16);
  v36 = *v35;
  v37 = *(_DWORD *)(*((_DWORD *)this + 19) - 12);
  *((_DWORD *)this + 39) = v27;
  *((_DWORD *)this + 40) = v30;
  *((_DWORD *)this + 41) = v29;
  *((_DWORD *)this + 42) = v36;
  *((_DWORD *)this + 43) = v37;
  *((_DWORD *)this + 44) = 0;
  if ( v121 )
  {
    memset(v135, 0, sizeof(v135));
    std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int)v4,
      0,
      v135);
  }
  else
  {
    *((_DWORD *)this + 19) = v35;
  }
  glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
    this,
    2,
    (int *)this + 27,
    v121);
  v38 = *((_DWORD *)this + 31);
  v118 = (v38 - *((_DWORD *)this + 30)) >> 4;
  if ( v118 )
  {
    v39 = (int *)((char *)this + 120);
    v58 = v38 == *((_DWORD *)this + 32);
    *((_DWORD *)this + 93) = 4;
    v131 = nullptr;
    v132 = 0;
    v133 = nullptr;
    v134 = 0;
    if ( v58 )
    {
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (glitch::video::CMaterial ***)this + 30,
        (char *)v38,
        &v131,
        (int)v146,
        1u,
        1);
    }
    else
    {
      *(_DWORD *)v38 = 0;
      *(_DWORD *)(v38 + 4) = v132;
      v40 = v133;
      *(_DWORD *)(v38 + 8) = v133;
      if ( v40 )
        ++*(_DWORD *)v40;
      *(_DWORD *)(v38 + 12) = v134;
      *((_DWORD *)this + 31) += 16;
    }
    boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v133);
    v41 = *((int **)this + 30);
    v42 = *((_DWORD *)this + 44);
    v43 = *v41;
    v44 = v41[3];
    v45 = *((_DWORD *)this + 43);
    v46 = v41[1];
    v47 = 0;
    *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
    *((_DWORD *)this + 41) = v42;
    *((_DWORD *)this + 42) = v43;
    *((_DWORD *)this + 40) = v45;
    *((_DWORD *)this + 43) = v46;
    *((_DWORD *)this + 44) = v44;
    v48 = 1;
    v49 = 0;
    while ( 1 )
    {
      v50 = *v39;
      ++v47;
      v51 = *(_DWORD *)(*v39 + v49);
      v52 = *(_DWORD *)(*((_DWORD *)this + 5) + 136);
      v53 = *(_DWORD *)(*v39 + v49 + 4);
      v142 = *(glitch::video::CMaterial **)(*v39 + v49 + 8);
      if ( v142 )
        v50 = *(_DWORD *)v142;
      v49 = 16 * v47;
      if ( v142 )
      {
        *(_DWORD *)v142 = v50 + 1;
        v50 = *v39;
      }
      v54 = (v52 >> 8) & 1;
      v55 = v47 >= (*((_DWORD *)this + 31) - v50) >> 4;
      v56 = *(_DWORD *)(v50 + v49 + 4);
      if ( v47 >= (*((_DWORD *)this + 31) - v50) >> 4 )
        v2 = 0;
      v143 = nullptr;
      v116 = v56;
      if ( !v55 )
      {
        v57 = *(glitch::video::CMaterial **)(v50 + v49 + 8);
        v2 = *(_DWORD *)(v50 + 16 * v47);
        v58 = v57 == nullptr;
        v144 = v57;
        if ( v57 )
        {
          v59 = *(glitch::video::CMaterial **)v57;
        }
        else
        {
          v59 = nullptr;
          v57 = nullptr;
        }
        if ( !v58 )
        {
          *(_DWORD *)v57 = (char *)v59 + 1;
          v57 = v144;
          v59 = v143;
        }
        v114 = v53;
        v144 = v59;
        v143 = v57;
        boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v144);
        v53 = v114;
      }
      if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v51 + 32))(v51, v53) <= *(_DWORD *)(*((_DWORD *)this + 5) + 268) )
      {
        if ( v2
          && (*(int (__fastcall **)(int, int))(*(_DWORD *)v2 + 32))(v2, v116) <= *(_DWORD *)(*((_DWORD *)this + 5) + 268)
          && v142
          && v143
          && (v142 == v143
           || (HashCode = glitch::video::CMaterial::getHashCode(v142),
               HashCode == glitch::video::CMaterial::getHashCode(v143))) )
        {
          v60 = 1;
          v61 = 0;
        }
        else
        {
          v60 = 0;
          v61 = 0;
        }
      }
      else
      {
        v60 = 0;
        v61 = 1;
      }
      if ( v54 )
      {
        if ( v61 )
          goto LABEL_56;
      }
      else if ( v60 )
      {
        (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 5) + 160))(*((_DWORD *)this + 5), 256, 1);
        goto LABEL_57;
      }
      if ( v48 && v54 && !v60 )
LABEL_56:
        (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 5) + 160))(*((_DWORD *)this + 5), 256, 0);
LABEL_57:
      v63 = *((_DWORD *)this + 42);
      v64 = (int *)(*v39 + v49);
      v65 = *v64;
      v66 = v64[1];
      v67 = v64[3];
      v68 = *((_DWORD *)this + 44);
      *((_DWORD *)this + 40) = *((_DWORD *)this + 43);
      *((_DWORD *)this + 42) = v65;
      *((_DWORD *)this + 43) = v66;
      *((_DWORD *)this + 44) = v67;
      *((_DWORD *)this + 41) = v68;
      *((_DWORD *)this + 39) = v63;
      (*(void (__fastcall **)(int))(*(_DWORD *)v63 + 28))(v63);
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v143);
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v142);
      if ( v118 == v47 )
      {
        v69 = *((_DWORD *)this + 31);
        v70 = *(_DWORD *)(v69 - 16);
        v71 = *(_DWORD *)(v69 - 12);
        v72 = *(_DWORD *)(v69 - 4);
        v73 = *((_DWORD *)this + 43);
        v74 = *((_DWORD *)this + 44);
        *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
        *((_DWORD *)this + 40) = v73;
        *((_DWORD *)this + 41) = v74;
        *((_DWORD *)this + 42) = v70;
        *((_DWORD *)this + 43) = v71;
        *((_DWORD *)this + 44) = v72;
        if ( v121 )
        {
          v130[1] = nullptr;
          v129[0] = 0;
          v129[1] = 0;
          v130[0] = nullptr;
          std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
            (int)this + 120,
            (glitch::video::CMaterial *)v129);
          boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v130);
        }
        else
        {
          *((_DWORD *)this + 31) = v69 - 16;
          boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr((glitch::video::CMaterial **)(v69 - 8));
        }
        break;
      }
      v48 = v60 ^ 1;
    }
  }
  (*(void (__fastcall **)(glitch::video::IVideoDriver *, _DWORD, _DWORD, _DWORD, _DWORD))(*(_DWORD *)a2 + 212))(
    a2,
    0,
    0,
    0,
    0);
  glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
    this,
    5,
    (int *)this + 21,
    v121);
  (*(void (__fastcall **)(glitch::video::IVideoDriver *, int, int, int, int))(*(_DWORD *)a2 + 212))(a2, 1, 1, 1, 1);
  glitch::scene::CSceneManager::renderList<glitch::scene::CSceneManager::SRenderDataSortNodeEntry>(
    this,
    6,
    (int *)this + 24,
    v121);
  v75 = *((_DWORD *)this + 34);
  v119 = -858993459 * ((v75 - *((_DWORD *)this + 33)) >> 2);
  if ( !v119 )
    return glitch::scene::CSceneManager::clearDeletionList(this);
  v76 = (int *)((char *)this + 132);
  v58 = v75 == *((_DWORD *)this + 35);
  *((_DWORD *)this + 93) = 8;
  v128 = 0;
  v124 = nullptr;
  v125 = 0;
  v126 = nullptr;
  v127 = 0;
  if ( v58 )
  {
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
      (glitch::video::CMaterial ***)this + 33,
      (glitch::video::CMaterial **)v75,
      &v124,
      (int)v145,
      1u,
      1);
  }
  else
  {
    *(_DWORD *)v75 = 0;
    *(_DWORD *)(v75 + 4) = v125;
    v77 = v126;
    *(_DWORD *)(v75 + 8) = v126;
    if ( v77 )
      ++*(_DWORD *)v77;
    *(_DWORD *)(v75 + 12) = v127;
    *(_DWORD *)(v75 + 16) = v128;
    *((_DWORD *)this + 34) += 20;
  }
  boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v126);
  v78 = *((int **)this + 33);
  v79 = *((_DWORD *)this + 42);
  v80 = *v78;
  v81 = v78[3];
  v82 = v78[1];
  v83 = *((_DWORD *)this + 43);
  *((_DWORD *)this + 41) = *((_DWORD *)this + 44);
  *((_DWORD *)this + 42) = v80;
  *((_DWORD *)this + 43) = v82;
  v84 = 0;
  *((_DWORD *)this + 39) = v79;
  *((_DWORD *)this + 40) = v83;
  *((_DWORD *)this + 44) = v81;
  v85 = 1;
  v86 = 0;
  while ( 1 )
  {
    v87 = *v76;
    ++v86;
    v88 = *(_DWORD *)(*v76 + v84);
    v89 = *(_DWORD *)(*((_DWORD *)this + 5) + 136);
    v90 = *(_DWORD *)(*v76 + v84 + 4);
    v143 = *(glitch::video::CMaterial **)(*v76 + v84 + 8);
    if ( v143 )
      v87 = *(_DWORD *)v143;
    v84 += 20;
    v91 = (v89 >> 8) & 1;
    if ( v143 )
    {
      *(_DWORD *)v143 = v87 + 1;
      v87 = *v76;
    }
    v92 = (*((_DWORD *)this + 34) - v87) >> 2;
    v117 = *(_DWORD *)(v87 + v84 + 4);
    v142 = nullptr;
    if ( v86 < -858993459 * v92 )
    {
      v93 = *(_DWORD *)(v87 + v84);
      v141 = *(glitch::video::CMaterial ***)(v87 + v84 + 8);
      v94 = (glitch::video::CMaterial *)v141;
      if ( v141 )
        v95 = *v141;
      else
        v95 = nullptr;
      if ( v141 )
      {
        *v141 = (glitch::video::CMaterial *)((char *)v95 + 1);
        v95 = (glitch::video::CMaterial *)v141;
        v94 = v142;
      }
      v115 = v90;
      v141 = (glitch::video::CMaterial **)v94;
      v142 = v95;
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr((glitch::video::CMaterial **)&v141);
      v90 = v115;
    }
    else
    {
      v93 = 0;
    }
    if ( (*(int (__fastcall **)(int, int))(*(_DWORD *)v88 + 32))(v88, v90) <= *(_DWORD *)(*((_DWORD *)this + 5) + 268) )
    {
      if ( v93
        && (*(int (__fastcall **)(int, int))(*(_DWORD *)v93 + 32))(v93, v117) <= *(_DWORD *)(*((_DWORD *)this + 5) + 268)
        && v143
        && v142
        && (v143 == v142
         || (v99 = glitch::video::CMaterial::getHashCode(v143), v99 == glitch::video::CMaterial::getHashCode(v142))) )
      {
        v96 = 0;
        v97 = 1;
        v98 = 0;
      }
      else
      {
        v97 = 0;
        v96 = 1;
        v98 = 0;
      }
    }
    else
    {
      v96 = 1;
      v97 = 0;
      v98 = 1;
    }
    if ( v91 )
    {
      if ( v98 )
      {
        (*(void (__fastcall **)(_DWORD, int, _DWORD))(**((_DWORD **)this + 5) + 160))(*((_DWORD *)this + 5), 256, 0);
        goto LABEL_97;
      }
    }
    else if ( v97 )
    {
      (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 5) + 160))(*((_DWORD *)this + 5), 256, 1);
      goto LABEL_97;
    }
    if ( v85 && v91 && !v97 )
      (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 5) + 160))(*((_DWORD *)this + 5), 256);
LABEL_97:
    v100 = *((_DWORD *)this + 42);
    v101 = *((_DWORD *)this + 43);
    v102 = (int *)(*v76 + v84);
    v103 = *v102;
    v104 = v102[1];
    v105 = v102[3];
    v106 = *((_DWORD *)this + 44);
    *((_DWORD *)this + 42) = v103;
    *((_DWORD *)this + 43) = v104;
    *((_DWORD *)this + 44) = v105;
    *((_DWORD *)this + 40) = v101;
    *((_DWORD *)this + 41) = v106;
    *((_DWORD *)this + 39) = v100;
    (*(void (__fastcall **)(int))(*(_DWORD *)v100 + 28))(v100);
    boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v142);
    boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v143);
    if ( v119 == v86 )
      break;
    v85 = v96;
  }
  v107 = *((_DWORD *)this + 34);
  v108 = *(_DWORD *)(v107 - 20);
  v109 = *(_DWORD *)(v107 - 16);
  v110 = *(_DWORD *)(v107 - 8);
  v111 = *((_DWORD *)this + 43);
  v112 = *((_DWORD *)this + 44);
  *((_DWORD *)this + 39) = *((_DWORD *)this + 42);
  *((_DWORD *)this + 40) = v111;
  *((_DWORD *)this + 41) = v112;
  *((_DWORD *)this + 42) = v108;
  *((_DWORD *)this + 43) = v109;
  *((_DWORD *)this + 44) = v110;
  if ( v121 )
  {
    v122[0] = nullptr;
    v122[1] = nullptr;
    memset(v123, 0, sizeof(v123));
    std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
      (int *)this + 33,
      v122);
    boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v123);
  }
  else
  {
    *((_DWORD *)this + 34) = v107 - 20;
    boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr((glitch::video::CMaterial **)(v107 - 12));
  }
  return glitch::scene::CSceneManager::clearDeletionList(this);
}


// ===== 3592b0 SceneManager::_drawAll(glitch::scene::ISceneNode *) =====
int __fastcall SceneManager::_drawAll(SceneManager *this, glitch::scene::ISceneNode *a2)
{
  int result; // r0

  (*(void (__fastcall **)(SceneManager *, _DWORD))(*(_DWORD *)this + 64))(this, *((_DWORD *)this + 6));
  if ( !a2 && *((_BYTE *)this + 648) )
    glitch::scene::CSceneManager::collectAllNodes(this);
  (*(void (__fastcall **)(SceneManager *))(*(_DWORD *)this + 68))(this);
  SceneManager::_registerSceneNodes(this, a2);
  SceneManager::_RegisterAutomacticLights(this);
  (*(void (__fastcall **)(SceneManager *))(*(_DWORD *)this + 76))(this);
  result = SceneManager::_renderLists(this, *((glitch::video::IVideoDriver **)this + 6));
  *((_DWORD *)this + 93) = 9;
  return result;
}


// ===== 359338 SceneManager::drawAll(glitch::scene::ISceneNode *) =====
void __fastcall SceneManager::drawAll(SceneManager *this, glitch::scene::ISceneNode *a2)
{
  int Switch; // r10
  time_t v5; // r0
  bool v6; // r2
  glitch::IReferenceCounted *v7; // r7
  glitch::video::CImageWriterTGA *v8; // r6
  glitch::IReferenceCounted *v9; // [sp+0h] [bp-8Ch] BYREF
  char s[100]; // [sp+8h] [bp-84h] BYREF
  std::string v11; // [sp+6Ch] [bp-20h] BYREF

  LightSetManager::Update((SceneManager *)((char *)this + 660));
  SceneManager::_drawAll(this, a2);
  if ( *((_BYTE *)this + 656) )
  {
    *((_BYTE *)this + 656) = 0;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v11, "ToggleGamepadScreenShot");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v11);
    std::string::~string(&v11);
    if ( Switch )
    {
      v5 = time(nullptr);
      sprintf(s, "screenshot_%u.tga", v5);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD))(**((_DWORD **)this + 5) + 152))(
        &v9,
        *((_DWORD *)this + 5));
      v7 = (glitch::IReferenceCounted *)glitch::io::createWriteFile((glitch::io *)s, nullptr, v6);
      v8 = (glitch::video::CImageWriterTGA *)operator new(8, 0);
      glitch::video::CImageWriterTGA::CImageWriterTGA(v8);
      (*(void (__fastcall **)(glitch::video::CImageWriterTGA *, glitch::IReferenceCounted *, glitch::IReferenceCounted **, _DWORD))(*(_DWORD *)v8 + 16))(
        v8,
        v7,
        &v9,
        0);
      glitch::IReferenceCounted::drop(v8);
      glitch::IReferenceCounted::drop(v7);
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
    }
  }
}


// ===== 3594a4 SceneManager::LoadFXLib(char const*,char const*) =====
SceneManager *__fastcall SceneManager::LoadFXLib(char **this, const char *a2, const char *a3, char *a4)
{
  char *v8; // r3
  char *v9; // r2
  char *v11; // r3
  char *v12; // r3
  char *v13; // r2
  _BYTE v14[8]; // [sp+10h] [bp-44h] BYREF
  char *v15; // [sp+18h] [bp-3Ch] BYREF
  char *v16; // [sp+1Ch] [bp-38h] BYREF
  char *v17; // [sp+20h] [bp-34h] BYREF
  char *v18; // [sp+24h] [bp-30h] BYREF
  char *v19; // [sp+28h] [bp-2Ch] BYREF
  char *v20; // [sp+2Ch] [bp-28h] BYREF
  std::string v21; // [sp+34h] [bp-20h] BYREF

  if ( !a3 )
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
        "filename",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\SceneManager.cpp",
        1298);
    }
  }
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v14,
    a3,
    (glitch::collada::CColladaFactory *)&ColladaFactory::s_factory);
  *this = nullptr;
  if ( a4 )
  {
    if ( strrstr(a4, "-fx") )
    {
      glitch::collada::CColladaDatabase::constructEffect(
        (int)&v19,
        (glitch::collada::CColladaDatabase *)v14,
        *((_DWORD *)a2 + 5),
        a4,
        0);
      v8 = v19;
      v16 = v19;
      if ( v19 )
      {
        ++*(_DWORD *)v19;
        v8 = v16;
      }
      v9 = *this;
      *this = v8;
      v16 = v9;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v16);
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v19);
    }
    else
    {
      std::string::string((int)&v21, a4);
      std::string::_M_append(&v21, "-fx", "");
      glitch::collada::CColladaDatabase::constructEffect(
        (int)&v18,
        (glitch::collada::CColladaDatabase *)v14,
        *((_DWORD *)a2 + 5),
        v21._M_start_of_storage._M_data,
        0);
      v12 = v18;
      v15 = v18;
      if ( v18 )
      {
        ++*(_DWORD *)v18;
        v12 = v15;
      }
      v13 = *this;
      *this = v12;
      v15 = v13;
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v15);
      boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v18);
      std::string::~string(&v21);
    }
  }
  else
  {
    glitch::collada::CColladaDatabase::constructEffect(
      (int)&v20,
      (glitch::collada::CColladaDatabase *)v14,
      *((_DWORD *)a2 + 5),
      0,
      0);
    v17 = v20;
    if ( v20 )
    {
      ++*(_DWORD *)v20;
      a4 = v17;
    }
    v11 = *this;
    *this = a4;
    v17 = v11;
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v17);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v20);
  }
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v14);
  return (SceneManager *)this;
}


// ===== 3596f8 SceneManager::LoadScene(char const*,char const*,bool,bool) =====
int __fastcall SceneManager::LoadScene(SceneManager *this, glitch::video::IVideoDriver *a2, char *a3, int a4, bool a5)
{
  glitch::collada::CColladaFactory *v8; // r2
  int v9; // r10
  size_t v10; // r0
  std::string *v11; // r3
  size_t v12; // r0
  const char *v13; // r2
  const char *v14; // r1
  char *v15; // r9
  bool v16; // zf
  _DWORD *v17; // r8
  const char *v18; // r0
  _DWORD *v19; // r5
  _DWORD *v20; // r8
  _DWORD *v21; // t1
  _DWORD *v22; // r6
  const char *v23; // r0
  const char *v25; // r0
  const char *v26; // r0
  const char *v27; // r0
  _DWORD *v28; // r0
  _DWORD *v29; // r5
  glitch::collada::CColladaFactory *v30; // [sp+0h] [bp-3Ch]
  std::string v32; // [sp+1Ch] [bp-20h] BYREF

  if ( a3 && *a3 )
  {
    std::string::string((int)&v32, a3);
    std::string::_M_append(&v32, "-node", "");
    v9 = glitch::collada::CColladaDatabase::constructNode(
           *(glitch::collada::CColladaDatabase **)(dword_99F73C + 16),
           a2,
           v32._M_start_of_storage._M_data,
           (const char *)&ColladaFactory::s_factory,
           v30);
    std::string::~string(&v32);
  }
  else
  {
    v9 = glitch::collada::CColladaDatabase::constructScene(
           *(glitch::collada::CColladaDatabase **)(dword_99F73C + 16),
           a2,
           (const char *)&dword_0 + 1,
           (bool)&ColladaFactory::s_factory,
           v30);
  }
  if ( v9 )
  {
    v10 = LC_API_STRLEN_0((const char *)a2);
    std::string::_M_assign((std::string *const)(v9 + 444), (const char *)a2, (const char *)a2 + v10);
    v11 = (std::string *)(v9 + 468);
    if ( a3 )
    {
      v12 = LC_API_STRLEN_0(a3);
      v11 = (std::string *)(v9 + 468);
      v13 = &a3[v12];
      v14 = a3;
    }
    else
    {
      v13 = "";
      v14 = "";
    }
    std::string::_M_assign(v11, v14, v13);
  }
  if ( a5 && v9 )
    RootSceneNode::ResetPositionFromFile((RootSceneNode *)v9);
  v15 = a3;
  if ( a3 )
    v15 = (_BYTE *)(&dword_0 + 1);
  v16 = v9 == 0;
  if ( v9 )
    v16 = a3 == nullptr;
  if ( !v16 )
  {
    v28 = (_DWORD *)glitch::collada::CColladaDatabase::constructAnimator(
                      a2,
                      (const char *)&ColladaFactory::s_factory,
                      v8);
    v29 = v28;
    if ( v28 )
    {
      (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v9 + 108))(v9, v28);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v29 + *(_DWORD *)(*v29 - 12)));
    }
  }
  if ( v9 )
  {
    glitch::scene::ISceneNode::setAutomaticCulling(v9, 2);
    if ( v15 )
    {
      v17 = *(_DWORD **)(v9 + 244);
      if ( v17 )
        --v17;
      v18 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v17 + 36))(v17);
      if ( LC_API_STRSTR_0(v18, "_module") )
      {
        v21 = (_DWORD *)v17[61];
        v20 = v17 + 61;
        v19 = v21;
        while ( v20 != v19 )
        {
          if ( v19 )
            v22 = v19 - 1;
          else
            v22 = nullptr;
          v19 = (_DWORD *)*v19;
          v23 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v22 + 36))(v22);
          if ( !LC_API_STRSTR_0(v23, "_minimap") )
          {
            v25 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v22 + 36))(v22);
            if ( !LC_API_STRSTR_0(v25, "_mesh") )
            {
              v26 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v22 + 36))(v22);
              if ( !LC_API_STRSTR_0(v26, "_floor") )
              {
                v27 = (const char *)(*(int (__fastcall **)(_DWORD *))(*v22 + 36))(v22);
                if ( !LC_API_STRSTR_0(v27, "_exit") )
                  (*(void (__fastcall **)(_DWORD *))(*v22 + 104))(v22);
              }
            }
          }
        }
      }
    }
    if ( a4 )
      (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 1) + 92))(*((_DWORD *)this + 1), v9);
  }
  return v9;
}


// ===== 359a38 SceneManager::AddSkyBoxSceneNode(char const*,char const*) =====
SceneManager *__fastcall SceneManager::AddSkyBoxSceneNode(
        SceneManager *this,
        glitch::video::IVideoDriver *a2,
        char *a3)
{
  SceneManager *v3; // r4
  SceneManager *v4; // r5
  SceneManager *v5; // r7
  int v6; // r3
  int v7; // r6
  int v8; // r3
  glitch::IReferenceCounted *v9; // [sp+8h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v10; // [sp+Ch] [bp-8h] BYREF

  v3 = this;
  if ( *(_BYTE *)a2 )
  {
    this = (SceneManager *)SceneManager::LoadScene(this, a2, a3, 0, 1);
    v4 = this;
    if ( this )
    {
      this = (SceneManager *)(*(int (__fastcall **)(SceneManager *, int, SceneManager *))(*(_DWORD *)v3 + 28))(
                               v3,
                               1835360612,
                               this);
      v5 = this;
      if ( this )
      {
        v6 = *((_DWORD *)v3 + 270);
        if ( v6 )
        {
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 104))(*((_DWORD *)v3 + 270));
          glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(*((_DWORD *)v3 + 270)
                                                                      + *(_DWORD *)(**((_DWORD **)v3 + 270) - 12)));
          *((_DWORD *)v3 + 270) = 0;
        }
        (*(void (__fastcall **)(glitch::IReferenceCounted **, SceneManager *))(*(_DWORD *)v5 + 248))(&v9, v5);
        v10 = v9;
        if ( v9 )
        {
          ++*((_DWORD *)v9 + 1);
          if ( v9 )
            glitch::IReferenceCounted::drop(v9);
        }
        v7 = operator new(328, 0);
        SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(v7, &v10, v5);
        v8 = *((_DWORD *)v3 + 1);
        *((_DWORD *)v3 + 270) = v7;
        (*(void (__fastcall **)(int, int))(*(_DWORD *)v8 + 92))(v8, v7);
        glitch::IReferenceCounted::drop((SceneManager *)((char *)v4 + *(_DWORD *)(*(_DWORD *)v4 - 12)));
        this = v10;
        if ( v10 )
          return (SceneManager *)glitch::IReferenceCounted::drop(v10);
      }
    }
  }
  return this;
}


// ===== 359b68 SceneManager::PreloadScene(char const*,char const*) =====
void __fastcall SceneManager::PreloadScene(int **this, glitch::video::IVideoDriver *a2, char *a3)
{
  int Scene; // r0
  int v5; // r6
  int *v6; // r5
  unsigned int v7; // r3
  unsigned int v8; // r1
  int *v9; // r0
  _BYTE *v10; // r1
  int *v11; // r7
  size_t v12; // r5
  int *v13; // r5
  int *v14; // r5
  _BYTE *v15; // r0
  size_t v16; // r1
  size_t v17; // r3
  size_t v18; // [sp+Ch] [bp-8h] BYREF

  Scene = SceneManager::LoadScene((SceneManager *)this, a2, a3, 0, 0);
  v5 = Scene;
  if ( Scene )
  {
    v6 = *(this + 276);
    if ( v6 == *(this + 277) )
    {
      v7 = v6 - *(this + 275);
      if ( v7 )
        v8 = 2 * v7;
      else
        v8 = 1;
      if ( v8 > 0x3FFFFFFF || v7 > v8 )
        v8 = 0x3FFFFFFF;
      v18 = v8;
      v9 = (int *)std::allocator<glitch::scene::ISceneNode *>::_M_allocate((int)(this + 277), v8, &v18);
      v10 = *(this + 275);
      v11 = v9;
      v12 = (char *)v6 - v10;
      if ( v12 )
        v13 = (int *)((char *)memmove(v9, v10, v12) + v12);
      else
        v13 = v9;
      *v13 = v5;
      v14 = v13 + 1;
      v15 = *(this + 275);
      if ( v15 )
      {
        v16 = ((char *)*(this + 277) - v15) & 0xFFFFFFFC;
        if ( v16 > 0x80 )
          CustomFree(v15);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, v16);
      }
      v17 = v18;
      *(this + 275) = v11;
      *(this + 276) = v14;
      *(this + 277) = &v11[v17];
    }
    else
    {
      *v6 = Scene;
      ++*(this + 276);
    }
  }
}


// ===== 359c60 SceneManager::GetMaterial(glitch::scene::ISceneNode *,char const*,bool) =====
SceneManager *__fastcall SceneManager::GetMaterial(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        const std::string *a3,
        char *a4,
        char a5)
{
  bool v5; // zf
  int v7; // r2
  std::string v11; // [sp+Ch] [bp-1Ch] BYREF

  v5 = a4 == nullptr;
  if ( a4 )
    v5 = a3 == nullptr;
  v7 = !v5;
  if ( v5 )
  {
    *(_DWORD *)this = v7;
  }
  else
  {
    std::string::string(&v11, a4);
    SceneManager::GetMaterial(this, a2, a3, (int)&v11, a5);
    std::string::~string(&v11);
  }
  return this;
}


// ===== 359d08 SceneManager::SetMaterialRimLightEffects(boost::intrusive_ptr<glitch::video::CMaterial>,float,std::string) =====
glitch::video::CMaterialRenderer **__fastcall SceneManager::SetMaterialRimLightEffects(
        int a1,
        _DWORD *a2,
        float a3,
        int a4)
{
  int v5; // r1
  glitch::video::CMaterialRenderer *v7; // r3
  const char *v8; // r8
  int v10; // r10
  const char *v11; // r8
  int ParameterID; // r10
  int v13; // r8
  glitch::IReferenceCounted *v14; // r9
  float v15[2]; // [sp+4h] [bp-34h] BYREF
  const char **v16; // [sp+Ch] [bp-2Ch] BYREF
  glitch::IReferenceCounted *v17; // [sp+10h] [bp-28h] BYREF
  glitch::video::CMaterialRenderer *v18; // [sp+14h] [bp-24h] BYREF
  std::string v19; // [sp+1Ch] [bp-1Ch] BYREF

  v5 = *a2;
  v15[0] = a3;
  v7 = *(glitch::video::CMaterialRenderer **)(v5 + 4);
  v18 = v7;
  if ( v7 )
  {
    ++*(_DWORD *)v7;
    v7 = v18;
  }
  v8 = *((const char **)v7 + 2);
  if ( !LC_API_STRNCMP_0(v8, "GL_Diffuse", 0xAu) || !LC_API_STRNCMP_0(v8, "GL_Xray", 7u) )
  {
    v10 = *a2;
    v11 = *(const char **)(*a2 + 28);
    if ( v11 )
      v11 += 4;
    if ( (int)LC_API_STRLEN_0(v11) > 2 && (!LC_API_STRNCMP_0(v11, "GL_", 3u) || !LC_API_STRNCMP_0(v11, "XR_", 3u)) )
    {
      ParameterID = glitch::video::CMaterialRenderer::getParameterID(
                      *(glitch::video::CMaterialRenderer **)(v10 + 4),
                      (glitch::core::detail::SSharedStringHeapEntry::SData *)"RimLight_Level",
                      0);
      v13 = glitch::video::CMaterialRenderer::getParameterID(
              *(glitch::video::CMaterialRenderer **)(*a2 + 4),
              (glitch::core::detail::SSharedStringHeapEntry::SData *)"RimLight",
              0);
      if ( ParameterID != 0xFFFF && v15[0] > -0.5 )
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<float>(
          *a2,
          ParameterID,
          0,
          v15);
      if ( v13 != 0xFFFF && **(_BYTE **)(a4 + 20) )
      {
        std::string::string(&v19, "data/3d/textures/");
        std::string::_M_append(&v19, *(char **)(a4 + 20), *(char **)(a4 + 16));
        glitch::video::CTextureManager::getTexture(
          (glitch::video::CTextureManager *)&v17,
          *(const char **)(*(_DWORD *)(dword_99F73C + 16) + 224),
          v19._M_start_of_storage._M_data);
        v16 = nullptr;
        glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
          *a2,
          v13,
          0,
          &v16);
        v14 = (glitch::IReferenceCounted *)v16;
        if ( v16 && LC_API_STRSTR_0(v16[7], "char_rim_light_off.tga")
          || (glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(
                *a2,
                v13,
                0,
                &v17),
              (v14 = (glitch::IReferenceCounted *)v16) != nullptr) )
        {
          glitch::IReferenceCounted::drop(v14);
        }
        if ( v17 )
          glitch::IReferenceCounted::drop(v17);
        std::string::~string(&v19);
      }
    }
  }
  return boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v18);
}


// ===== 359fac SceneManager::SearchByName(glitch::scene::ISceneNode *,std::vector<glitch::scene::ISceneNode *,glitch::core::SAllocator<glitch::scene::ISceneNode *,(glitch::memory::E_MEMORY_HINT)0>> &,char const*,bool) =====
void __fastcall SceneManager::SearchByName(int a1, glitch::scene::ISceneNode *a2, int a3, char *a4, char a5)
{
  bool v6; // zf
  std::string v9; // [sp+Ch] [bp-1Ch] BYREF

  v6 = a4 == nullptr;
  if ( a4 )
    v6 = a2 == nullptr;
  if ( !v6 )
  {
    std::string::string(&v9, a4);
    SceneManager::SearchByName(a1, a2, a3, (int)&v9, a5);
    std::string::~string(&v9);
  }
}


// ===== 35a044 SceneManager::SearchByName(glitch::scene::ISceneNode *,void (*)(glitch::scene::ISceneNode *),char const*,bool) =====
void __fastcall SceneManager::SearchByName(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        void (*a3)(glitch::scene::ISceneNode *),
        char *a4,
        bool a5)
{
  bool v6; // zf
  std::string v9; // [sp+Ch] [bp-1Ch] BYREF

  v6 = a3 == nullptr;
  if ( a3 )
    v6 = a2 == nullptr;
  if ( !v6 )
  {
    if ( a4 )
    {
      std::string::string(&v9, a4);
      SceneManager::SearchByName(this, a2, a3, &v9, a5);
      std::string::~string(&v9);
    }
  }
}


// ===== 35a0e4 SceneManager::SearchByName(glitch::scene::ISceneNode *,char const*,bool) =====
glitch::scene::ISceneNode *__fastcall SceneManager::SearchByName(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        char *a3,
        _BOOL4 a4)
{
  bool v4; // zf
  int v6; // r1
  glitch::scene::ISceneNode *v9; // r5
  std::string v11; // [sp+4h] [bp-20h] BYREF

  v4 = a3 == nullptr;
  if ( a3 )
    v4 = a2 == nullptr;
  v6 = !v4;
  if ( v4 )
    return (glitch::scene::ISceneNode *)v6;
  std::string::string(&v11, a3);
  v9 = SceneManager::SearchByName(this, a2, &v11, a4);
  std::string::~string(&v11);
  return v9;
}


// ===== 35a188 SceneManager::SetMaterialRimLightEffects(glitch::scene::ISceneNode *,float,std::string) =====
void *__fastcall SceneManager::SetMaterialRimLightEffects(
        SceneManager *this,
        glitch::scene::ISceneNode *a2,
        float a3,
        std::string a4)
{
  glitch::scene::ISceneNode *v4; // r5
  char *M_end_of_storage; // r7
  _DWORD *v8; // r3
  void *result; // r0
  int v10; // r6
  int v11; // r8
  int i; // r5
  glitch::video::CMaterial *v13; // r3
  bool v14; // zf
  glitch::video::CMaterial *v15; // r3
  const char *v16; // r1
  const char *v17; // r2
  glitch::video::CMaterial *p; // [sp+0h] [bp-4Ch]
  glitch::video::CMaterial *pa; // [sp+0h] [bp-4Ch]
  int v20; // [sp+8h] [bp-44h]
  int v21; // [sp+Ch] [bp-40h]
  void *v22; // [sp+18h] [bp-34h] BYREF
  int v23; // [sp+1Ch] [bp-30h]
  int v24; // [sp+20h] [bp-2Ch]
  glitch::video::CMaterial *v25; // [sp+24h] [bp-28h] BYREF
  glitch::video::CMaterial *v26; // [sp+28h] [bp-24h] BYREF
  std::string v27; // [sp+2Ch] [bp-20h] BYREF

  v4 = a2;
  if ( !a2 )
    v4 = *((glitch::scene::ISceneNode **)this + 1);
  M_end_of_storage = a4._M_buffers._M_end_of_storage;
  v22 = nullptr;
  v23 = 0;
  v24 = 0;
  SceneManager::SearchByType((int)this, (int)v4, (int)&v22, 1835360612);
  SceneManager::SearchByType((int)this, (int)v4, (int)&v22, 1936023908);
  SceneManager::SearchByType((int)this, (int)v4, (int)&v22, 1298489700);
  v8 = v22;
  result = v22;
  v21 = (v23 - (int)v22) >> 2;
  if ( v21 )
  {
    v20 = 0;
    while ( 1 )
    {
      v10 = v8[v20];
      v11 = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 136))(v10);
      if ( v11 > 0 )
      {
        for ( i = 0; i != v11; ++i )
        {
          (*(void (__fastcall **)(glitch::video::CMaterial **, int, int))(*(_DWORD *)v10 + 132))(&v26, v10, i);
          v25 = v26;
          if ( v26 )
            ++*(_DWORD *)v26;
          v16 = *((const char **)M_end_of_storage + 5);
          v17 = *((const char **)M_end_of_storage + 4);
          v27._M_finish = (char *)&v27;
          v27._M_start_of_storage._M_data = (char *)&v27;
          std::string::_M_range_initialize(&v27, v16, v17);
          SceneManager::SetMaterialRimLightEffects((int)this, &v25, a3, (int)&v27);
          if ( (std::string *)v27._M_start_of_storage._M_data != &v27 && v27._M_start_of_storage._M_data )
          {
            if ( (unsigned int)(v27._M_buffers._M_end_of_storage - v27._M_start_of_storage._M_data) <= 0x80 )
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
                v27._M_start_of_storage._M_data,
                v27._M_buffers._M_end_of_storage - v27._M_start_of_storage._M_data);
            else
              CustomFree(v27._M_start_of_storage._M_data);
          }
          v13 = v25;
          if ( v25 )
          {
            v14 = (*(_DWORD *)v25)-- == 1;
            if ( v14 )
            {
              p = v13;
              glitch::video::CMaterial::~CMaterial(v13);
              CustomFree(p);
            }
          }
          v15 = v26;
          if ( v26 )
          {
            v14 = (*(_DWORD *)v26)-- == 1;
            if ( v14 )
            {
              pa = v15;
              glitch::video::CMaterial::~CMaterial(v15);
              CustomFree(pa);
            }
          }
        }
      }
      if ( ++v20 == v21 )
        break;
      v8 = v22;
    }
    result = v22;
  }
  if ( result )
    GlitchFree(result);
  return result;
}


// ===== 35a3d8 SceneManager::registerNodeForCustomRendering(glitch::scene::ISceneNode *,boost::intrusive_ptr<glitch::video::CMaterial> const&,void *,E_SCENE_NODE_CUSTOM_RENDER_PASS,glitch::core::vector3d<float> const*,int) =====
int __fastcall SceneManager::registerNodeForCustomRendering(
        int a1,
        int a2,
        glitch::video::CMaterial **a3,
        int a4,
        int a5,
        float *a6,
        int a7)
{
  int v7; // r4
  char *v10; // r12
  int *v11; // r3
  int v12; // r2
  int *v13; // r2
  _DWORD *v14; // r12
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int *v18; // r3
  int *v19; // r2
  glitch::video::CMaterial *v20; // r6
  int Technique; // r0
  glitch::video::CMaterial *v22; // r3
  int v23; // r7
  float *v24; // r2
  char *v25; // r6
  glitch::video::CMaterial **v26; // r4
  glitch::video::CMaterial *v27; // r3
  int v28; // r7
  glitch::video::CMaterial **v29; // r4
  bool v30; // zf
  glitch::video::CMaterial **v31; // r6
  int *v32; // r3
  int *v33; // r2
  int *v34; // r3
  int *v35; // r2
  glitch::video::CMaterial *v36; // r3
  glitch::video::CMaterial *v37; // r3
  bool v38; // zf
  int v39; // r4
  glitch::video::CMaterial *v40; // r3
  bool v41; // zf
  glitch::video::CMaterial *v42; // r3
  glitch::video::CMaterial *v43; // r3
  bool v44; // zf
  int v45; // r7
  glitch::video::CMaterial **v46; // [sp+10h] [bp-E4h]
  int v47; // [sp+14h] [bp-E0h]
  char v48; // [sp+18h] [bp-DCh] BYREF
  char v49; // [sp+2Ch] [bp-C8h] BYREF
  char v50; // [sp+40h] [bp-B4h] BYREF
  _DWORD v51[2]; // [sp+50h] [bp-A4h] BYREF
  glitch::video::CMaterial *v52; // [sp+58h] [bp-9Ch] BYREF
  char v53; // [sp+60h] [bp-94h] BYREF
  _DWORD v54[4]; // [sp+70h] [bp-84h] BYREF
  char v55; // [sp+80h] [bp-74h] BYREF
  double v56; // [sp+90h] [bp-64h] BYREF
  int v57; // [sp+98h] [bp-5Ch]
  int v58; // [sp+9Ch] [bp-58h]
  int v59; // [sp+A0h] [bp-54h] BYREF
  int v60; // [sp+A4h] [bp-50h]
  int v61; // [sp+A8h] [bp-4Ch] BYREF
  int v62; // [sp+ACh] [bp-48h]
  int v63; // [sp+B0h] [bp-44h] BYREF
  int v64; // [sp+B4h] [bp-40h]
  int v65; // [sp+B8h] [bp-3Ch] BYREF
  int v66; // [sp+BCh] [bp-38h]
  glitch::video::CMaterial *v67; // [sp+C0h] [bp-34h] BYREF
  glitch::video::CMaterial *v68; // [sp+C4h] [bp-30h] BYREF
  glitch::video::CMaterial *v69; // [sp+C8h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v70; // [sp+CCh] [bp-28h] BYREF
  glitch::video::CMaterial *v71; // [sp+D0h] [bp-24h] BYREF
  glitch::video::CMaterial *v72; // [sp+D4h] [bp-20h] BYREF
  glitch::video::CMaterial *v73; // [sp+D8h] [bp-1Ch] BYREF
  char v74[4]; // [sp+DCh] [bp-18h] BYREF
  char v75[4]; // [sp+E0h] [bp-14h] BYREF
  char v76[4]; // [sp+E4h] [bp-10h] BYREF
  char v77[4]; // [sp+E8h] [bp-Ch] BYREF
  char v78[8]; // [sp+ECh] [bp-8h] BYREF

  v7 = a1;
  switch ( a5 )
  {
    case 0:
      v10 = *(char **)(a1 + 60);
      v11 = *(int **)(a1 + 64);
      if ( ((char *)v11 - v10) >> 3 )
      {
        if ( *(_DWORD *)v10 == a2 )
          return 0;
        v12 = 0;
        while ( ++v12 != ((char *)v11 - v10) >> 3 )
        {
          if ( *(_DWORD *)&v10[8 * v12] == a2 )
            return 0;
        }
      }
      v13 = *(int **)(a1 + 68);
      v66 = a4;
      v65 = a2;
      if ( v11 == v13 )
      {
        std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 60),
          (int)v11,
          &v65,
          (int)v78,
          1u,
          1u);
      }
      else
      {
        *v11 = a2;
        v11[1] = v66;
        *(_DWORD *)(a1 + 64) += 8;
      }
      return 1;
    case 1:
      glitch::scene::CSceneManager::SDistanceNodeEntry::SDistanceNodeEntry(&v56, a2, (float *)(a1 + 232), a4);
      v14 = *(_DWORD **)(v7 + 76);
      if ( v14 == *(_DWORD **)(v7 + 80) )
      {
        std::vector<glitch::scene::CSceneManager::SDistanceNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDistanceNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(v7 + 72),
          *(_DWORD *)(v7 + 76),
          &v56,
          (int)v77,
          1u,
          1);
      }
      else
      {
        v15 = HIDWORD(v56);
        v16 = v57;
        v17 = v58;
        *v14 = LODWORD(v56);
        v14[1] = v15;
        v14[2] = v16;
        v14[3] = v17;
        *(_DWORD *)(v7 + 76) += 16;
      }
      return 1;
    case 2:
      v18 = *(int **)(a1 + 112);
      v19 = *(int **)(a1 + 116);
      v64 = a4;
      v63 = a2;
      if ( v18 == v19 )
      {
        std::vector<glitch::scene::CSceneManager::SUnsortedNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SUnsortedNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 108),
          (int)v18,
          &v63,
          (int)v76,
          1u,
          1u);
      }
      else
      {
        *v18 = a2;
        v18[1] = v64;
        *(_DWORD *)(a1 + 112) += 8;
      }
      return 1;
    case 3:
      v20 = *a3;
      if ( !*a3 )
      {
        v69 = nullptr;
        v28 = a1 + 120;
LABEL_56:
        v29 = (glitch::video::CMaterial **)&v53;
        v31 = &v69;
        goto LABEL_30;
      }
      v47 = a2;
      v46 = a3;
      Technique = glitch::video::CMaterial::getTechnique(*a3);
      a2 = v47;
      if ( (*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v20 + 1) + 24) + 12 * Technique + 8) + 4) & 0x10000) == 0
        || *(_BYTE *)(v7 + 650) )
      {
        v42 = *v46;
        v28 = v7 + 120;
        v69 = *v46;
        if ( v69 )
          ++*(_DWORD *)v42;
        goto LABEL_56;
      }
      v22 = *v46;
      v23 = v7 + 132;
      v24 = (float *)(v7 + 232);
      v70 = v22;
      if ( v22 )
        Technique = *(_DWORD *)v22;
      v25 = &v48;
      v26 = &v70;
      if ( v22 )
        *(_DWORD *)v22 = Technique + 1;
LABEL_42:
      glitch::scene::CSceneManager::STransparentNodeEntry::STransparentNodeEntry((float *)v25, a2, v24, v26, a4, a6, a7);
      std::vector<glitch::scene::CSceneManager::STransparentNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v23,
        (int)v25);
LABEL_43:
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr((glitch::video::CMaterial **)v25 + 2);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v26);
      return 1;
    case 4:
      v27 = *a3;
      v28 = a1 + 120;
      v29 = (glitch::video::CMaterial **)&v55;
      v30 = *a3 == nullptr;
      v73 = *a3;
      if ( v73 )
        a3 = *(glitch::video::CMaterial ***)v27;
      v31 = &v73;
      if ( !v30 )
        *(_DWORD *)v27 = (char *)a3 + 1;
      goto LABEL_30;
    case 5:
      v32 = *(int **)(a1 + 88);
      v33 = *(int **)(a1 + 92);
      v62 = a4;
      v61 = a2;
      if ( v32 == v33 )
      {
        std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 84),
          (int)v32,
          &v61,
          (int)v75,
          1u,
          1u);
      }
      else
      {
        *v32 = a2;
        v32[1] = v62;
        *(_DWORD *)(a1 + 88) += 8;
      }
      return 1;
    case 6:
      v34 = *(int **)(a1 + 100);
      v35 = *(int **)(a1 + 104);
      v60 = a4;
      v59 = a2;
      if ( v34 == v35 )
      {
        std::vector<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SRenderDataSortNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
          (_DWORD *)(a1 + 96),
          (int)v34,
          &v59,
          (int)v74,
          1u,
          1u);
      }
      else
      {
        *v34 = a2;
        v34[1] = v60;
        *(_DWORD *)(a1 + 100) += 8;
      }
      return 1;
    case 7:
      if ( !*(_BYTE *)(a1 + 650) )
      {
        v36 = *a3;
        v23 = a1 + 132;
        v24 = (float *)(a1 + 232);
        v71 = v36;
        if ( v36 )
          a1 = *(_DWORD *)v36;
        v25 = &v49;
        v26 = &v71;
        if ( v36 )
          *(_DWORD *)v36 = a1 + 1;
        goto LABEL_42;
      }
      v43 = *a3;
      v25 = (char *)v54;
      v26 = &v72;
      v44 = *a3 == nullptr;
      v72 = *a3;
      if ( v72 )
        a3 = *(glitch::video::CMaterial ***)v43;
      v45 = a1 + 120;
      if ( !v44 )
        *(_DWORD *)v43 = (char *)a3 + 1;
      glitch::scene::CSceneManager::SDefaultNodeEntry::SDefaultNodeEntry(v54, a2, (_DWORD **)&v72, a4, a7);
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v45,
        (int)v54);
      goto LABEL_43;
    case 9:
      v37 = *a3;
      v38 = *a3 == nullptr;
      v68 = *a3;
      if ( v68 )
        a3 = *(glitch::video::CMaterial ***)v37;
      v39 = a1 + 1124;
      if ( !v38 )
        *(_DWORD *)v37 = (char *)a3 + 1;
      glitch::scene::CSceneManager::SDefaultNodeEntry::SDefaultNodeEntry(v51, a2, (_DWORD **)&v68, a4, a7);
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v39,
        (int)v51);
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(&v52);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v68);
      return 1;
    case 10:
      v40 = *a3;
      v28 = a1 + 1136;
      v29 = (glitch::video::CMaterial **)&v50;
      v41 = *a3 == nullptr;
      v67 = *a3;
      if ( v67 )
        a3 = *(glitch::video::CMaterial ***)v40;
      v31 = &v67;
      if ( !v41 )
        *(_DWORD *)v40 = (char *)a3 + 1;
LABEL_30:
      glitch::scene::CSceneManager::SDefaultNodeEntry::SDefaultNodeEntry(v29, a2, (_DWORD **)v31, a4, a7);
      std::vector<glitch::scene::CSceneManager::SDefaultNodeEntry,glitch::core::SAllocator<glitch::scene::CSceneManager::SDefaultNodeEntry,(glitch::memory::E_MEMORY_HINT)0>>::push_back(
        v28,
        (int)v29);
      boost::intrusive_ptr<glitch::video::CMaterial const>::~intrusive_ptr(v29 + 2);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v31);
      return 1;
    default:
      return 0;
  }
}


// ===== 35a8a0 `virtual thunk to'SceneManager::~SceneManager() =====
void __fastcall `virtual thunk to'SceneManager::~SceneManager(SceneManager *this)
{
  SceneManager::~SceneManager((SceneManager *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35a8b0 `virtual thunk to'SceneManager::~SceneManager() =====
void __fastcall `virtual thunk to'SceneManager::~SceneManager(SceneManager *this)
{
  SceneManager::~SceneManager((SceneManager *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35a8c0 `virtual thunk to'SceneManager::~SceneManager() =====
void __fastcall `virtual thunk to'SceneManager::~SceneManager(SceneManager *this)
{
  SceneManager::~SceneManager((SceneManager *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35a8d0 `virtual thunk to'SceneManager::~SceneManager() =====
void __fastcall `virtual thunk to'SceneManager::~SceneManager(SceneManager *this)
{
  SceneManager::~SceneManager((SceneManager *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35a8e0 glitch::scene::ISceneNode::getAbsoluteTransformation(void) =====
char *__fastcall glitch::scene::ISceneNode::getAbsoluteTransformation(glitch::scene::ISceneNode *this)
{
  return (char *)this + 36;
}


// ===== 35a8e8 ModularSkinnedMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall ModularSkinnedMeshSceneNode::onRegisterSceneNode(ModularSkinnedMeshSceneNode *this)
{
  (*(void (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 68) + 136))(*((_DWORD *)this + 68), (char *)this + 384);
  return glitch::collada::CMeshSceneNode::onRegisterSceneNode(this);
}


// ===== 35a914 SkinnedMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall SkinnedMeshSceneNode::onRegisterSceneNode(SkinnedMeshSceneNode *this)
{
  (*(void (__fastcall **)(_DWORD, char *))(**((_DWORD **)this + 68) + 136))(*((_DWORD *)this + 68), (char *)this + 384);
  return glitch::collada::CMeshSceneNode::onRegisterSceneNode(this);
}


// ===== 35a940 ModularSkinnedMeshSceneNode::updateAbsolutePosition(bool) =====
int __fastcall ModularSkinnedMeshSceneNode::updateAbsolutePosition(ModularSkinnedMeshSceneNode *this, bool a2)
{
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 77) + 52))(*((_DWORD *)this + 77), 1);
  return glitch::scene::ISceneNode::updateAbsolutePosition(this, a2);
}


// ===== 35a974 SkinnedMeshSceneNode::updateAbsolutePosition(bool) =====
int __fastcall SkinnedMeshSceneNode::updateAbsolutePosition(SkinnedMeshSceneNode *this, bool a2)
{
  (*(void (__fastcall **)(_DWORD, int))(**((_DWORD **)this + 77) + 52))(*((_DWORD *)this + 77), 1);
  return glitch::scene::ISceneNode::updateAbsolutePosition(this, a2);
}


// ===== 35a9a8 BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::render(void *) =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::render(
        glitch::collada::CMeshSceneNode *result,
        void *a2)
{
  if ( *((_BYTE *)result + 312) )
    return (glitch::collada::CMeshSceneNode *)glitch::collada::CMeshSceneNode::render(result, a2);
  return result;
}


// ===== 35a9b8 BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::render(void *) =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::render(
        glitch::collada::CMeshSceneNode *result,
        void *a2)
{
  if ( *((_BYTE *)result + 380) )
    return (glitch::collada::CMeshSceneNode *)glitch::collada::CMeshSceneNode::render(result, a2);
  return result;
}


// ===== 35a9c8 BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::render(void *) =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::render(
        glitch::collada::CMeshSceneNode *result,
        void *a2)
{
  if ( *((_BYTE *)result + 380) )
    return (glitch::collada::CMeshSceneNode *)glitch::collada::CMeshSceneNode::render(result, a2);
  return result;
}


// ===== 35a9d8 glitch::collada::CSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
// attributes: thunk
int glitch::collada::CSkinnedMeshSceneNode::serializeAttributes()
{
  return glitch::scene::ISceneNode::serializeAttributes();
}


// ===== 35a9dc `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::serializeAttributes()
{
  return glitch::collada::CSkinnedMeshSceneNode::serializeAttributes();
}


// ===== 35a9ec glitch::collada::CSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
// attributes: thunk
int glitch::collada::CSkinnedMeshSceneNode::deserializeAttributes()
{
  return glitch::scene::ISceneNode::deserializeAttributes();
}


// ===== 35a9f0 `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::deserializeAttributes()
{
  return glitch::collada::CSkinnedMeshSceneNode::deserializeAttributes();
}


// ===== 35aa00 BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode(
        glitch::collada::CMeshSceneNode *a1)
{
  *(_DWORD *)a1 = off_95CF7C;
  *((_DWORD *)a1 + 79) = off_95D088;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(a1);
  return a1;
}


// ===== 35aa4c `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 24)));
}


// ===== 35aa5c `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 35aa6c glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode() =====
void __fastcall glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  *(_DWORD *)this = off_98484C;
  *((_DWORD *)this + 95) = off_984958;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 35aab8 `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode((glitch::collada::CSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35aac8 `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode((glitch::collada::CSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35aad8 MeshSceneNode::~MeshSceneNode() =====
void __fastcall MeshSceneNode::~MeshSceneNode(MeshSceneNode *this)
{
  *((_DWORD *)this + 79) = off_95F548;
  *(_DWORD *)this = off_95F5BC;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_95F5BC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_95F6C8;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 35ab40 MeshSceneNode::~MeshSceneNode() =====
void __fastcall MeshSceneNode::~MeshSceneNode(MeshSceneNode *this)
{
  MeshSceneNode::~MeshSceneNode(this);
  CustomFree(this);
}


// ===== 35ab5c MeshSceneNode::~MeshSceneNode() =====
void __fastcall MeshSceneNode::~MeshSceneNode(MeshSceneNode *this, int *a2)
{
  int v3; // r1
  _DWORD *v4; // r2
  int v5; // r3

  v3 = *a2;
  v4 = a2 + 1;
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 28)) = a2[13];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[14];
  v5 = a2[1];
  *(_DWORD *)this = v5;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 28)) = v4[10];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v4[11];
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 35abc4 glitch::scene::IMeshSceneNode::~IMeshSceneNode() =====
void __fastcall glitch::scene::IMeshSceneNode::~IMeshSceneNode(glitch::scene::IMeshSceneNode *this)
{
  *(_DWORD *)this = off_976864;
  *((_DWORD *)this + 76) = off_976970;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 35ac10 `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode(glitch::scene::IMeshSceneNode *this)
{
  glitch::scene::IMeshSceneNode::~IMeshSceneNode((glitch::scene::IMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35ac20 `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode(glitch::scene::IMeshSceneNode *this)
{
  glitch::scene::IMeshSceneNode::~IMeshSceneNode((glitch::scene::IMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35ac30 glitch::collada::CSkinnedMeshSceneNode::getAbsoluteTransformation(void) =====
int *__fastcall glitch::collada::CSkinnedMeshSceneNode::getAbsoluteTransformation(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  int v1; // r3
  char *v2; // r4
  _BYTE v4[72]; // [sp+4h] [bp-48h] BYREF

  v1 = *((_DWORD *)this + 77);
  if ( *(_BYTE *)(v1 + 24) || (*(_DWORD *)(v1 + 20) & 1) != 0 )
    return &glitch::core::IdentityMatrix;
  v2 = (char *)this + 312;
  (*(void (__fastcall **)(_BYTE *, _DWORD, char *))(*(_DWORD *)v1 + 88))(v4, *((_DWORD *)this + 77), (char *)this + 36);
  memcpy(v2, v4, 0x41u);
  return (int *)v2;
}


// ===== 35acac `non-virtual thunk to'ModularSkinnedMeshSceneNode::prepareSkinForRendering(void) =====
int __fastcall `non-virtual thunk to'ModularSkinnedMeshSceneNode::prepareSkinForRendering(
        ModularSkinnedMeshSceneNode *this)
{
  return ModularSkinnedMeshSceneNode::prepareSkinForRendering((ModularSkinnedMeshSceneNode *)((char *)this - 384));
}


// ===== 35acb4 ModularSkinnedMeshSceneNode::prepareSkinForRendering(void) =====
glitch::video::CMaterial **__fastcall ModularSkinnedMeshSceneNode::prepareSkinForRendering(
        glitch::video::CMaterial **this)
{
  int v1; // r3
  glitch::video::CMaterial **v2; // r5
  int v3; // r10
  glitch::video::CMaterial **v4; // r7
  glitch::video::CMaterial **v5; // r4
  glitch::video::CMaterial *v6; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial **v7; // [sp+4h] [bp-8h] BYREF

  v1 = (int)*(this + 77);
  v2 = this;
  if ( v1 )
  {
    v3 = *((_DWORD *)*(this + 68) + 5);
    if ( v3 )
    {
      this = (glitch::video::CMaterial **)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*(this + 77));
      v4 = this;
      if ( this )
      {
        v5 = nullptr;
        do
        {
          (*(void (__fastcall **)(glitch::video::CMaterial ***, glitch::video::CMaterial *, glitch::video::CMaterial **))(*(_DWORD *)v2[77] + 20))(
            &v7,
            v2[77],
            v5);
          this = v7;
          if ( v7 )
          {
            glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v7);
            (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial *, glitch::video::CMaterial **))(*(_DWORD *)v2[77] + 24))(
              &v6,
              v2[77],
              v5);
            (*(void (__fastcall **)(glitch::video::CMaterial *, _DWORD, int, glitch::video::CMaterial **))(*(_DWORD *)v2[77] + 56))(
              v2[77],
              0,
              v3,
              v5);
            this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v6);
          }
          v5 = (glitch::video::CMaterial **)((char *)v5 + 1);
        }
        while ( v5 != v4 );
      }
    }
  }
  return this;
}


// ===== 35ad84 `non-virtual thunk to'SkinnedMeshSceneNode::prepareSkinForRendering(void) =====
int __fastcall `non-virtual thunk to'SkinnedMeshSceneNode::prepareSkinForRendering(SkinnedMeshSceneNode *this)
{
  return SkinnedMeshSceneNode::prepareSkinForRendering((SkinnedMeshSceneNode *)((char *)this - 384));
}


// ===== 35ad8c SkinnedMeshSceneNode::prepareSkinForRendering(void) =====
glitch::video::CMaterial **__fastcall SkinnedMeshSceneNode::prepareSkinForRendering(glitch::video::CMaterial **this)
{
  int v1; // r3
  glitch::video::CMaterial **v2; // r5
  int v3; // r10
  glitch::video::CMaterial **v4; // r7
  glitch::video::CMaterial **v5; // r4
  glitch::video::CMaterial *v6; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial **v7; // [sp+4h] [bp-8h] BYREF

  v1 = (int)*(this + 77);
  v2 = this;
  if ( v1 )
  {
    v3 = *((_DWORD *)*(this + 68) + 5);
    if ( v3 )
    {
      this = (glitch::video::CMaterial **)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*(this + 77));
      v4 = this;
      if ( this )
      {
        v5 = nullptr;
        do
        {
          (*(void (__fastcall **)(glitch::video::CMaterial ***, glitch::video::CMaterial *, glitch::video::CMaterial **))(*(_DWORD *)v2[77] + 20))(
            &v7,
            v2[77],
            v5);
          this = v7;
          if ( v7 )
          {
            glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)v7);
            (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::video::CMaterial *, glitch::video::CMaterial **))(*(_DWORD *)v2[77] + 24))(
              &v6,
              v2[77],
              v5);
            (*(void (__fastcall **)(glitch::video::CMaterial *, _DWORD, int, glitch::video::CMaterial **))(*(_DWORD *)v2[77] + 56))(
              v2[77],
              0,
              v3,
              v5);
            this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v6);
          }
          v5 = (glitch::video::CMaterial **)((char *)v5 + 1);
        }
        while ( v5 != v4 );
      }
    }
  }
  return this;
}


// ===== 35ae5c BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
int __fastcall BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode(
        int a1,
        int *a2,
        int a3)
{
  int v5; // r3
  _DWORD v7[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v8[3]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD v9[4]; // [sp+2Ch] [bp-10h] BYREF

  v8[2] = 1065353216;
  memset(v9, 0, 12);
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  ((void (__fastcall *)(int, int *, int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode)(
    a1,
    a2 + 1,
    a3,
    0,
    -1,
    v9,
    v7,
    v8);
  v5 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v5 - 28)) = a2[16];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[17];
  *(_BYTE *)(a1 + 380) = 1;
  return a1;
}


// ===== 35af00 ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
_DWORD *__fastcall ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(_DWORD *a1, int a2)
{
  a1[98] = 1;
  a1[97] = off_95B720;
  *a1 = off_95EC14;
  *(int *)((char *)&elf_hash_bucket[42] + (_DWORD)a1) = (int)off_95EC34;
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, (int *)off_95E464, a2);
  *a1 = off_95E334;
  a1[97] = off_95E450;
  a1[96] = &off_95E43C;
  return a1;
}


// ===== 35af88 ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
int *__fastcall ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(int *a1, int *a2, int a3)
{
  int v6; // r2

  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, a2 + 1, a3);
  a1[96] = (int)&off_95E310;
  v6 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v6 - 28)) = a2[19];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[20];
  a1[96] = (int)&off_95E43C;
  return a1;
}


// ===== 35affc BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
int __fastcall BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(int a1, int *a2, int a3)
{
  int v5; // r3
  _DWORD v7[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v8[3]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD v9[4]; // [sp+2Ch] [bp-10h] BYREF

  v8[2] = 1065353216;
  memset(v9, 0, 12);
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  ((void (__fastcall *)(int, int *, int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode)(
    a1,
    a2 + 1,
    a3,
    0,
    -1,
    v9,
    v7,
    v8);
  v5 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v5 - 28)) = a2[13];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[14];
  *(_BYTE *)(a1 + 380) = 1;
  return a1;
}


// ===== 35b0a0 SkinnedMeshSceneNode::SkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
_DWORD *__fastcall SkinnedMeshSceneNode::SkinnedMeshSceneNode(_DWORD *a1, int a2)
{
  a1[98] = 1;
  a1[97] = off_95B720;
  *a1 = off_95F3F4;
  *(int *)((char *)&elf_hash_bucket[42] + (_DWORD)a1) = (int)off_95F414;
  BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, (int *)off_95ED8C, a2);
  *a1 = off_95EC5C;
  a1[97] = off_95ED78;
  a1[96] = &off_95ED64;
  return a1;
}


// ===== 35b128 SkinnedMeshSceneNode::SkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
int *__fastcall SkinnedMeshSceneNode::SkinnedMeshSceneNode(int *a1, int *a2, int a3)
{
  int v6; // r2

  BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, a2 + 1, a3);
  a1[96] = (int)&off_95E310;
  v6 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v6 - 28)) = a2[16];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[17];
  a1[96] = (int)&off_95ED64;
  return a1;
}


// ===== 35b19c BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::BaseMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
int __fastcall BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::BaseMeshSceneNode(int a1, int *a2, int a3)
{
  int v5; // r3
  _DWORD v7[4]; // [sp+10h] [bp-2Ch] BYREF
  _DWORD v8[3]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD v9[4]; // [sp+2Ch] [bp-10h] BYREF

  v8[2] = 1065353216;
  memset(v9, 0, 12);
  memset(v7, 0, 12);
  v7[3] = 1065353216;
  v8[0] = 1065353216;
  v8[1] = 1065353216;
  ((void (__fastcall *)(int, int *, int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CMeshSceneNode::CMeshSceneNode)(
    a1,
    a2 + 1,
    a3,
    0,
    -1,
    v9,
    v7,
    v8);
  v5 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v5 - 28)) = a2[10];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[11];
  *(_BYTE *)(a1 + 312) = 1;
  return a1;
}


// ===== 35b240 MeshSceneNode::MeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
_DWORD *__fastcall MeshSceneNode::MeshSceneNode(_DWORD *a1, int a2)
{
  a1[80] = 1;
  a1[79] = off_95B720;
  *a1 = off_95FA84;
  *(int *)((char *)&elf_hash_bucket[24] + (_DWORD)a1) = (int)off_95FAA4;
  BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::BaseMeshSceneNode((int)a1, (int *)off_95F55C, a2);
  *a1 = off_95F43C;
  a1[79] = off_95F548;
  return a1;
}


// ===== 35b2c0 MeshSceneNode::MeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&) =====
int *__fastcall MeshSceneNode::MeshSceneNode(int *a1, int *a2, int a3)
{
  int v5; // r3

  BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::BaseMeshSceneNode((int)a1, a2 + 1, a3);
  v5 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v5 - 28)) = a2[13];
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[14];
  return a1;
}


// ===== 35b300 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_MeshSceneNode.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_MeshSceneNode.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A1F08 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1F04 = 1056964608;
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


// ===== 35b3dc glitch::scene::IMeshSceneNode::~IMeshSceneNode() =====
void __fastcall glitch::scene::IMeshSceneNode::~IMeshSceneNode(glitch::scene::IMeshSceneNode *this)
{
  *(_DWORD *)this = off_976864;
  *((_DWORD *)this + 76) = off_976970;
  glitch::scene::ISceneNode::~ISceneNode(this);
  *(_DWORD *)this = off_976ADC;
  *(int *)((char *)&elf_hash_bucket[21] + (_DWORD)this) = (int)off_976AFC;
  *((_DWORD *)this + 76) = off_95B720;
  CustomFree(this);
}


// ===== 35b458 `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode(glitch::scene::IMeshSceneNode *this)
{
  glitch::scene::IMeshSceneNode::~IMeshSceneNode((glitch::scene::IMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35b468 `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IMeshSceneNode::~IMeshSceneNode(glitch::scene::IMeshSceneNode *this)
{
  glitch::scene::IMeshSceneNode::~IMeshSceneNode((glitch::scene::IMeshSceneNode *)((char *)this
                                                                                 + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35b478 BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode(
        glitch::collada::CMeshSceneNode *a1)
{
  *(_DWORD *)a1 = off_95CF7C;
  *((_DWORD *)a1 + 79) = off_95D088;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(a1);
  *(_DWORD *)a1 = off_95D47C;
  *(int *)((char *)&elf_hash_bucket[24] + (_DWORD)a1) = (int)off_95D49C;
  *((_DWORD *)a1 + 79) = off_95B720;
  CustomFree(a1);
  return a1;
}


// ===== 35b4f4 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 24)));
}


// ===== 35b504 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 35b514 glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode() =====
void __fastcall glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  *(_DWORD *)this = off_98484C;
  *((_DWORD *)this + 95) = off_984958;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
  *(_DWORD *)this = off_984D4C;
  *(int *)((char *)&elf_hash_bucket[40] + (_DWORD)this) = (int)off_984D6C;
  *((_DWORD *)this + 95) = off_95B720;
  CustomFree(this);
}


// ===== 35b590 `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode((glitch::collada::CSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35b5a0 `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode(
        glitch::collada::CSkinnedMeshSceneNode *this)
{
  glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode((glitch::collada::CSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35b5b0 glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() =====
void __fastcall glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(
        glitch::collada::CModularSkinnedMeshSceneNode *this)
{
  *((_DWORD *)this + 95) = off_97F648;
  *(_DWORD *)this = off_97F6BC;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_97F6BC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_97F7C8;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
  *(_DWORD *)this = off_97FB84;
  *(int *)((char *)&elf_hash_bucket[40] + (_DWORD)this) = (int)off_97FBA4;
  *((_DWORD *)this + 95) = off_95B720;
  CustomFree(this);
}


// ===== 35b648 `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(
        glitch::collada::CModularSkinnedMeshSceneNode *this)
{
  glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode((glitch::collada::CModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35b658 `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(
        glitch::collada::CModularSkinnedMeshSceneNode *this)
{
  glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode((glitch::collada::CModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35b668 BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        glitch::collada::CMeshSceneNode *a1)
{
  *(_DWORD *)a1 = off_95DCDC;
  *((_DWORD *)a1 + 96) = off_95DC60;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_95DCDC;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_95DDE8;
  *(_DWORD *)a1 = off_95DE14;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_95DE14;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_95DF20;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(a1);
  return a1;
}


// ===== 35b6f4 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 24)));
}


// ===== 35b704 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 35b714 BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        glitch::collada::CMeshSceneNode *a1)
{
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(a1);
  CustomFree(a1);
  return a1;
}


// ===== 35b730 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 24)));
}


// ===== 35b740 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 35b750 BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        glitch::collada::CMeshSceneNode *a1)
{
  *((_DWORD *)a1 + 96) = off_95D5D0;
  *(_DWORD *)a1 = off_95D644;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_95D644;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_95D750;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(a1);
  return a1;
}


// ===== 35b7b8 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 24)));
}


// ===== 35b7c8 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 35b7d8 glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() =====
void __fastcall glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(
        glitch::collada::CModularSkinnedMeshSceneNode *this)
{
  *((_DWORD *)this + 95) = off_97F648;
  *(_DWORD *)this = off_97F6BC;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_97F6BC;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_97F7C8;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 35b840 `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(
        glitch::collada::CModularSkinnedMeshSceneNode *this)
{
  glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode((glitch::collada::CModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35b850 `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(
        glitch::collada::CModularSkinnedMeshSceneNode *this)
{
  glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode((glitch::collada::CModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35b860 SkinnedMeshSceneNode::~SkinnedMeshSceneNode() =====
void __fastcall SkinnedMeshSceneNode::~SkinnedMeshSceneNode(SkinnedMeshSceneNode *this)
{
  *(_DWORD *)this = off_95EDF4;
  *((_DWORD *)this + 97) = off_95ED78;
  *((_DWORD *)this + 96) = &off_95ED64;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_95EDF4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_95EF00;
  *(_DWORD *)this = off_95EF2C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_95EF2C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_95F038;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 35b8f4 SkinnedMeshSceneNode::~SkinnedMeshSceneNode() =====
void __fastcall SkinnedMeshSceneNode::~SkinnedMeshSceneNode(SkinnedMeshSceneNode *this)
{
  SkinnedMeshSceneNode::~SkinnedMeshSceneNode(this);
  CustomFree(this);
}


// ===== 35b910 SkinnedMeshSceneNode::~SkinnedMeshSceneNode() =====
void __fastcall SkinnedMeshSceneNode::~SkinnedMeshSceneNode(SkinnedMeshSceneNode *this, int *a2)
{
  int v2; // r3
  int v3; // lr
  int v4; // r3

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[16];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[17];
  *((_DWORD *)this + 96) = &off_95ED64;
  v3 = a2[1];
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 28)) = a2[14];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[15];
  v4 = a2[2];
  *(_DWORD *)this = v4;
  *(_DWORD *)((char *)this + *(_DWORD *)(v4 - 28)) = a2[12];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[13];
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 35b9bc BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        glitch::collada::CMeshSceneNode *a1,
        int *a2)
{
  int v3; // r1
  _DWORD *v4; // r2
  _DWORD *v5; // r12
  int v7; // r3
  int v8; // r3

  v3 = *a2;
  v4 = a2 + 1;
  v5 = a2 + 2;
  *(_DWORD *)a1 = v3;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v3 - 28)) = a2[16];
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[17];
  v7 = a2[1];
  *(_DWORD *)a1 = v7;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v7 - 28)) = v4[13];
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = v4[14];
  v8 = v4[1];
  *(_DWORD *)a1 = v8;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v8 - 28)) = v5[10];
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = v5[11];
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(a1);
  return a1;
}


// ===== 35ba4c ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() =====
void __fastcall ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(ModularSkinnedMeshSceneNode *this)
{
  *(_DWORD *)this = off_95E334;
  *((_DWORD *)this + 97) = off_95E450;
  *((_DWORD *)this + 96) = &off_95E43C;
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(this, (int *)off_95E464);
}


// ===== 35baa0 ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() =====
void __fastcall ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(ModularSkinnedMeshSceneNode *this)
{
  ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(this);
  CustomFree(this);
}


// ===== 35babc ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() =====
void __fastcall ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(ModularSkinnedMeshSceneNode *this, int *a2)
{
  int v2; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[19];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[20];
  *((_DWORD *)this + 96) = &off_95E43C;
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(this, a2 + 1);
}


// ===== 35bb18 BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        glitch::collada::CMeshSceneNode *a1)
{
  *((_DWORD *)a1 + 96) = off_95D5D0;
  *(_DWORD *)a1 = off_95D644;
  *(int *)((char *)&dword_0 + (_DWORD)a1) = (int)off_95D644;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_95D750;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(a1);
  *(_DWORD *)a1 = off_95DB0C;
  *(int *)((char *)&elf_hash_bucket[41] + (_DWORD)a1) = (int)off_95DB2C;
  *((_DWORD *)a1 + 96) = off_95B720;
  CustomFree(a1);
  return a1;
}


// ===== 35bbb0 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 24)));
}


// ===== 35bbc0 `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode() =====
glitch::collada::CMeshSceneNode *__fastcall `virtual thunk to'BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode(
        _DWORD *a1)
{
  return BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode((glitch::collada::CMeshSceneNode *)((char *)a1 + *(_DWORD *)(*a1 - 12)));
}


// ===== 35bbd0 `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(
        ModularSkinnedMeshSceneNode *this)
{
  ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode((ModularSkinnedMeshSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35bbe0 `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(
        ModularSkinnedMeshSceneNode *this)
{
  ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode((ModularSkinnedMeshSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35bbf0 `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(
        ModularSkinnedMeshSceneNode *this)
{
  ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode((ModularSkinnedMeshSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35bc00 `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode(
        ModularSkinnedMeshSceneNode *this)
{
  ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode((ModularSkinnedMeshSceneNode *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35bc10 `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode(SkinnedMeshSceneNode *this)
{
  SkinnedMeshSceneNode::~SkinnedMeshSceneNode((SkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35bc20 `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode(SkinnedMeshSceneNode *this)
{
  SkinnedMeshSceneNode::~SkinnedMeshSceneNode((SkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35bc30 `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode(SkinnedMeshSceneNode *this)
{
  SkinnedMeshSceneNode::~SkinnedMeshSceneNode((SkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35bc40 `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'SkinnedMeshSceneNode::~SkinnedMeshSceneNode(SkinnedMeshSceneNode *this)
{
  SkinnedMeshSceneNode::~SkinnedMeshSceneNode((SkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35bc50 `virtual thunk to'MeshSceneNode::~MeshSceneNode() =====
void __fastcall `virtual thunk to'MeshSceneNode::~MeshSceneNode(MeshSceneNode *this)
{
  MeshSceneNode::~MeshSceneNode((MeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35bc60 `virtual thunk to'MeshSceneNode::~MeshSceneNode() =====
void __fastcall `virtual thunk to'MeshSceneNode::~MeshSceneNode(MeshSceneNode *this)
{
  MeshSceneNode::~MeshSceneNode((MeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35bc70 `virtual thunk to'MeshSceneNode::~MeshSceneNode() =====
void __fastcall `virtual thunk to'MeshSceneNode::~MeshSceneNode(MeshSceneNode *this)
{
  MeshSceneNode::~MeshSceneNode((MeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35bc80 `virtual thunk to'MeshSceneNode::~MeshSceneNode() =====
void __fastcall `virtual thunk to'MeshSceneNode::~MeshSceneNode(MeshSceneNode *this)
{
  MeshSceneNode::~MeshSceneNode((MeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35bc90 glitch::core::quaternion::operator*(glitch::core::vector3d<float> const&) =====
float *__fastcall glitch::core::quaternion::operator*(float *result, float *a2, float *a3)
{
  float v3; // r6
  float v4; // r11
  float v5; // r8
  float v6; // r10
  float v7; // r7
  float v8; // r4
  float v9; // [sp+0h] [bp-1Ch]
  float v10; // [sp+Ch] [bp-10h]
  float v11; // [sp+10h] [bp-Ch]
  float v12; // [sp+14h] [bp-8h]

  v3 = a2[1];
  v4 = a2[2];
  v5 = a3[1];
  v9 = a3[2];
  v11 = (float)(COERCE_FLOAT(LODWORD(v3) + 0x80000000) * v9) + (float)(v4 * v5);
  v6 = *a2;
  LODWORD(v12) = *(_DWORD *)a2 + 0x80000000;
  v7 = (float)(COERCE_FLOAT(LODWORD(v4) + 0x80000000) * *a3) + (float)(*a2 * v9);
  v10 = (float)(v5 * v12) + (float)(v3 * *a3);
  v8 = a2[3] + a2[3];
  *result = (float)((float)((float)(COERCE_FLOAT(LODWORD(v3) + 0x80000000) * v10) + (float)(v4 * v7))
                  + (float)((float)(COERCE_FLOAT(LODWORD(v3) + 0x80000000) * v10) + (float)(v4 * v7)))
          + (float)(*a3 + (float)(v8 * v11));
  result[1] = (float)((float)((float)(v11 * COERCE_FLOAT(LODWORD(v4) + 0x80000000)) + (float)(v6 * v10))
                    + (float)((float)(v11 * COERCE_FLOAT(LODWORD(v4) + 0x80000000)) + (float)(v6 * v10)))
            + (float)(v5 + (float)(v8 * v7));
  result[2] = (float)((float)((float)(v7 * v12) + (float)(v3 * v11)) + (float)((float)(v7 * v12) + (float)(v3 * v11)))
            + (float)(v9 + (float)(v8 * v10));
  return result;
}


// ===== 35bea4 glitch::scene::CEmptySceneNode::getType(void) =====
int __fastcall glitch::scene::CEmptySceneNode::getType(glitch::scene::CEmptySceneNode *this)
{
  return 2037673317;
}


// ===== 35beb0 glitch::scene::ICameraSceneNode::getTargetNode(void) =====
int __fastcall glitch::scene::ICameraSceneNode::getTargetNode(glitch::scene::ICameraSceneNode *this)
{
  return 0;
}


// ===== 35beb8 glitch::scene::ICameraSceneNode::getTargetNode(void) =====
int __fastcall glitch::scene::ICameraSceneNode::getTargetNode(glitch::scene::ICameraSceneNode *this)
{
  return 0;
}


// ===== 35bec0 glitch::scene::ICameraSceneNode::isOrthogonal(void) =====
int __fastcall glitch::scene::ICameraSceneNode::isOrthogonal(glitch::scene::ICameraSceneNode *this)
{
  return *((unsigned __int8 *)this + 308);
}


// ===== 35bec8 glitch::scene::SViewFrustum::intersects(glitch::core::aabbox3d<float> const&) =====
int __fastcall glitch::scene::SViewFrustum::intersects(float *a1, float *a2)
{
  float *v2; // r4
  int v4; // r11
  float v5; // r9
  float v6; // r10
  float v7; // r8

  v2 = a1;
  if ( a1[27] <= a2[3] && a1[28] <= a2[4] && a1[29] <= a2[5] && a1[30] >= *a2 && a1[31] >= a2[1] && a1[32] >= a2[2] )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = v2[3] < 0.0 ? a2[3] : *a2;
      v6 = v2[4] >= 0.0 ? a2[1] : a2[4];
      v7 = v2[5] >= 0.0 ? a2[2] : a2[5];
      if ( (float)((float)((float)((float)(v2[3] * v5) + (float)(v2[4] * v6)) + (float)(v2[5] * v7)) + v2[6]) > 0.0 )
        break;
      ++v4;
      v2 += 4;
      if ( v4 == 6 )
        return 1;
    }
  }
  return 0;
}


// ===== 35c058 RootSceneNode::ResetDebugCounters(void) =====
int *__fastcall RootSceneNode::ResetDebugCounters(RootSceneNode *this)
{
  RootSceneNode::s_dbgNumUpdateAbsolutePosition = 0;
  RootSceneNode::s_dbgAnimatedNodeCount = 0;
  RootSceneNode::s_dbgUpdateTimeNodeCount = 0;
  return &RootSceneNode::s_dbgAnimatedNodeCount;
}


// ===== 35c09c RootSceneNode::ForwardAnim(uint) =====
int **__fastcall RootSceneNode::ForwardAnim(int **this, unsigned int a2)
{
  int **v2; // r4
  int **v3; // r5

  v3 = this + 63;
  v2 = (int **)*(this + 63);
  if ( v2 != this + 63 )
  {
    do
    {
      this = (int **)(*(int (__fastcall **)(int *))(*v2[2] + 68))(v2[2]);
      if ( this )
        this = (int **)((int (__fastcall *)(int **, unsigned int))(*this)[3])(this, (unsigned int)*(this + 1) + a2);
      v2 = (int **)*v2;
    }
    while ( v3 != v2 );
  }
  return this;
}


// ===== 35c0f4 RootSceneNode::onUpdateTime(uint) =====
int __fastcall RootSceneNode::onUpdateTime(int this, unsigned int a2)
{
  int *v3; // r4
  int v4; // r5

  if ( (*(_DWORD *)(this + 284) & 0x201) == 0x201 )
  {
    v4 = this + 252;
    v3 = *(int **)(this + 252);
    if ( (int *)(this + 252) != v3 )
    {
      do
      {
        this = (*(int (__fastcall **)(int, unsigned int))(*(_DWORD *)v3[2] + 20))(v3[2], a2);
        v3 = (int *)*v3;
      }
      while ( (int *)v4 != v3 );
    }
  }
  return this;
}


// ===== 35c150 glitch::core::aabbox3d<float>::addInternalBox(glitch::core::aabbox3d<float> const&) =====
bool __fastcall glitch::core::aabbox3d<float>::addInternalBox(float *a1, float *a2)
{
  float v2; // r8
  float v5; // r7
  float v6; // r6
  float v7; // r1
  _BOOL4 v8; // r0
  float v9; // r1
  _BOOL4 v10; // r0
  float v11; // r1
  _BOOL4 v12; // r0
  float v13; // r1
  _BOOL4 v14; // r0
  float v15; // r1
  float v16; // r7
  float v17; // r6
  _BOOL4 v18; // r0
  float v19; // r5
  float v20; // r1
  _BOOL4 v21; // r0
  float v22; // r1
  _BOOL4 v23; // r0
  float v24; // r1
  _BOOL4 v25; // r0
  float v26; // r1
  _BOOL4 result; // r0

  v2 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a1[4];
  if ( v2 > a1[3] )
    a1[3] = v2;
  v8 = v5 > v7;
  v9 = a1[5];
  if ( v8 )
    a1[4] = v5;
  v10 = v6 > v9;
  v11 = *a1;
  if ( v10 )
    a1[5] = v6;
  v12 = v2 < v11;
  v13 = a1[1];
  if ( v12 )
    *a1 = v2;
  v14 = v5 < v13;
  v15 = a1[2];
  if ( v14 )
    a1[1] = v5;
  if ( v6 < v15 )
    a1[2] = v6;
  v16 = *a2;
  v17 = a2[2];
  v18 = *a2 > a1[3];
  v19 = a2[1];
  v20 = a1[4];
  if ( v18 )
    a1[3] = v16;
  v21 = v19 > v20;
  v22 = a1[5];
  if ( v21 )
    a1[4] = v19;
  v23 = v17 > v22;
  v24 = *a1;
  if ( v23 )
    a1[5] = v17;
  v25 = v16 < v24;
  v26 = a1[1];
  if ( v25 )
    *a1 = v16;
  if ( v19 < v26 )
    a1[1] = v19;
  result = v17 < a1[2];
  if ( v17 < a1[2] )
    a1[2] = v17;
  return result;
}


// ===== 35c268 RootSceneNode::PlainOnAnimate(uint) =====
// attributes: thunk
int __fastcall RootSceneNode::PlainOnAnimate(RootSceneNode *this, unsigned int a2)
{
  return glitch::collada::CRootSceneNode::onAnimate(this, a2);
}


// ===== 35c26c RootSceneNode::setVisible(bool) =====
glitch::scene::ISceneNode *__fastcall RootSceneNode::setVisible(glitch::scene::ISceneNode *this, int a2)
{
  *((_BYTE *)this + 521) = a2;
  if ( !a2 )
    return (glitch::scene::ISceneNode *)glitch::scene::ISceneNode::setVisible(this, 0);
  return this;
}


// ===== 35c27c RootSceneNode::updateAbsolutePosition(bool) =====
int __fastcall RootSceneNode::updateAbsolutePosition(RootSceneNode *this, bool a2)
{
  ++RootSceneNode::s_dbgNumUpdateAbsolutePosition;
  return glitch::scene::ISceneNode::updateAbsolutePosition(this, a2);
}


// ===== 35c2a4 glitch::scene::CEmptySceneNode::~CEmptySceneNode() =====
void __fastcall glitch::scene::CEmptySceneNode::~CEmptySceneNode(glitch::scene::CEmptySceneNode *this)
{
  *(_DWORD *)this = off_9758EC;
  *((_DWORD *)this + 82) = off_9759F0;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 35c2f0 `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode(
        glitch::scene::CEmptySceneNode *this)
{
  glitch::scene::CEmptySceneNode::~CEmptySceneNode((glitch::scene::CEmptySceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35c300 `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode(
        glitch::scene::CEmptySceneNode *this)
{
  glitch::scene::CEmptySceneNode::~CEmptySceneNode((glitch::scene::CEmptySceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35c310 `non-virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode(
        glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode::~CCameraSceneNode((glitch::scene::CCameraSceneNode *)((char *)this - 304));
}


// ===== 35c318 glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall glitch::scene::CCameraSceneNode::~CCameraSceneNode(glitch::scene::CCameraSceneNode *this)
{
  *((_DWORD *)this + 76) = off_975580;
  *((_DWORD *)this + 225) = off_97559C;
  *(_DWORD *)this = off_9755F4;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_9755F4;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_975758;
  *((_DWORD *)this + 76) = off_95C300;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 35c39c `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode(
        glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode::~CCameraSceneNode((glitch::scene::CCameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35c3ac `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CCameraSceneNode::~CCameraSceneNode(
        glitch::scene::CCameraSceneNode *this)
{
  glitch::scene::CCameraSceneNode::~CCameraSceneNode((glitch::scene::CCameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35c3bc `non-virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode(
        glitch::scene::ICameraSceneNode *this)
{
  glitch::scene::ICameraSceneNode::~ICameraSceneNode((glitch::scene::ICameraSceneNode *)((char *)this - 304));
}


// ===== 35c3c4 glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall glitch::scene::ICameraSceneNode::~ICameraSceneNode(glitch::scene::ICameraSceneNode *this)
{
  *(_DWORD *)this = off_95FACC;
  *((_DWORD *)this + 78) = off_95FC44;
  *((_DWORD *)this + 76) = off_95C300;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 35c424 `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode(
        glitch::scene::ICameraSceneNode *this)
{
  glitch::scene::ICameraSceneNode::~ICameraSceneNode((glitch::scene::ICameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35c434 `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode(
        glitch::scene::ICameraSceneNode *this)
{
  glitch::scene::ICameraSceneNode::~ICameraSceneNode((glitch::scene::ICameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35c444 glitch::collada::CSceneNode::~CSceneNode() =====
void __fastcall glitch::collada::CSceneNode::~CSceneNode(glitch::collada::CSceneNode *this)
{
  *(_DWORD *)this = off_9835DC;
  *((_DWORD *)this + 86) = off_9836E4;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CSceneNode *)((char *)this + 332));
  *(_DWORD *)this = off_98373C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98373C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_983840;
  glitch::scene::ISceneNode::~ISceneNode(this);
}


// ===== 35c4c0 `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode(glitch::collada::CSceneNode *this)
{
  glitch::collada::CSceneNode::~CSceneNode((glitch::collada::CSceneNode *)((char *)this
                                                                         + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35c4d0 `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode(glitch::collada::CSceneNode *this)
{
  glitch::collada::CSceneNode::~CSceneNode((glitch::collada::CSceneNode *)((char *)this
                                                                         + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35c4e0 glitch::collada::CSceneNode::~CSceneNode() =====
void __fastcall glitch::collada::CSceneNode::~CSceneNode(glitch::collada::CSceneNode *this)
{
  glitch::collada::CSceneNode::~CSceneNode(this);
  CustomFree(this);
}


// ===== 35c4fc `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode(glitch::collada::CSceneNode *this)
{
  glitch::collada::CSceneNode::~CSceneNode((glitch::collada::CSceneNode *)((char *)this
                                                                         + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35c50c `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CSceneNode::~CSceneNode(glitch::collada::CSceneNode *this)
{
  glitch::collada::CSceneNode::~CSceneNode((glitch::collada::CSceneNode *)((char *)this
                                                                         + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35c51c RootSceneNode::UpdateEnlargedViewFrustum(glitch::scene::CSceneManager *) =====
int __fastcall RootSceneNode::UpdateEnlargedViewFrustum(int this, glitch::scene::CSceneManager *a2)
{
  _DWORD *v2; // r4
  int v3; // r0
  float *UpVector; // r8
  float *v5; // r7
  int v6; // r0
  float v7; // r8
  float v8; // r8
  float v9; // r8
  float v10; // r10
  float v11; // r0
  float v12; // r0
  float v13; // r0
  float v14; // r0
  _DWORD v15[4]; // [sp+4h] [bp-10h] BYREF

  v2 = *(_DWORD **)(this + 228);
  if ( v2 )
  {
    glitch::scene::ISceneNode::getAbsolutePosition(v15, v2);
    glitch::scene::ISceneNode::setPosition(&RootSceneNode::s_enlargedCamera, v15);
    glitch::scene::ISceneNode::updateAbsolutePosition((glitch::scene::ISceneNode *)&RootSceneNode::s_enlargedCamera, 0);
    v3 = (*(int (__fastcall **)(_DWORD *))(*v2 + 264))(v2);
    glitch::scene::CCameraSceneNode::setTarget(&RootSceneNode::s_enlargedCamera, v3);
    UpVector = (float *)glitch::scene::CCameraSceneNode::getUpVector((glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera);
    v5 = (float *)(*(int (__fastcall **)(_DWORD *))(*v2 + 280))(v2);
    if ( *UpVector != *v5 || UpVector[1] != v5[1] || UpVector[2] != v5[2] )
    {
      v6 = (*(int (__fastcall **)(_DWORD *))(*v2 + 280))(v2);
      glitch::scene::CCameraSceneNode::setUpVector(&RootSceneNode::s_enlargedCamera, v6);
    }
    v7 = COERCE_FLOAT(glitch::scene::CCameraSceneNode::getNearValue((glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera));
    if ( v7 != (*(float (__fastcall **)(_DWORD *))(*v2 + 284))(v2) )
    {
      v11 = (*(float (__fastcall **)(_DWORD *))(*v2 + 284))(v2);
      glitch::scene::CCameraSceneNode::setNearValue(
        (glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera,
        v11);
    }
    v8 = COERCE_FLOAT(glitch::scene::CCameraSceneNode::getFarValue((glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera));
    if ( v8 != (*(float (__fastcall **)(_DWORD *))(*v2 + 288))(v2) )
    {
      v14 = (*(float (__fastcall **)(_DWORD *))(*v2 + 288))(v2);
      glitch::scene::CCameraSceneNode::setFarValue(
        (glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera,
        v14);
    }
    v9 = COERCE_FLOAT(glitch::scene::CCameraSceneNode::getAspectRatio((glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera));
    if ( v9 != (*(float (__fastcall **)(_DWORD *))(*v2 + 292))(v2) )
    {
      v13 = (*(float (__fastcall **)(_DWORD *))(*v2 + 292))(v2);
      glitch::scene::CCameraSceneNode::setAspectRatio(
        (glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera,
        v13);
    }
    v10 = COERCE_FLOAT(glitch::scene::CCameraSceneNode::getFOV((glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera));
    if ( v10 != (float)(COERCE_FLOAT((*(int (__fastcall **)(_DWORD *))(*v2 + 296))(v2)) * *(float *)&s_frustumScale) )
    {
      v12 = COERCE_FLOAT((*(int (__fastcall **)(_DWORD *))(*v2 + 296))(v2));
      glitch::scene::CCameraSceneNode::setFOV(
        (glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera,
        v12 * *(float *)&s_frustumScale);
    }
    return glitch::scene::CCameraSceneNode::recalculateMatrices((glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera);
  }
  return this;
}


// ===== 35c784 RootSceneNode::IsVisibleFastTest(void) =====
bool __fastcall RootSceneNode::IsVisibleFastTest(RootSceneNode *this)
{
  int v2; // r0
  _BOOL4 v3; // r7
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((std::string *)&v5, "Optim_DisableUpdateTimeOnlyForCulledNode");
  v3 = false;
  if ( !DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5)
    && (!*((_BYTE *)this + 512)
     || (v2 = *((_DWORD *)this + 129)) != 0 && !ObjectBase::TestCullingBeforeUpdate((_BYTE *)v2, (float *)(v2 + 300))) )
  {
    v3 = true;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  return v3;
}


// ===== 35c854 RootSceneNode::RefreshBoundingBox(void) =====
float __fastcall RootSceneNode::RefreshBoundingBox(RootSceneNode *this)
{
  float *v2; // r0
  float v3; // r3
  float *v4; // r0
  float result; // r0

  glitch::collada::CSceneNode::computeBoundingBox();
  v2 = (float *)(*(int (__fastcall **)(RootSceneNode *))(*(_DWORD *)this + 160))(this);
  *((float *)this + 76) = *((float *)this + 76) - *v2;
  *((float *)this + 77) = *((float *)this + 77) - v2[1];
  v3 = *(float *)this;
  *((float *)this + 78) = *((float *)this + 78) - v2[2];
  v4 = (float *)(*(int (__fastcall **)(RootSceneNode *))(LODWORD(v3) + 160))(this);
  *((float *)this + 79) = *((float *)this + 79) - *v4;
  *((float *)this + 80) = *((float *)this + 80) - v4[1];
  result = *((float *)this + 81) - v4[2];
  *((float *)this + 81) = result;
  return result;
}


// ===== 35c8f0 glitch::core::quaternion::normalize(void) =====
glitch::core::quaternion *__fastcall glitch::core::quaternion::normalize(glitch::core::quaternion *this)
{
  float v2; // r5
  float v3; // r0

  v2 = (float)((float)((float)(*(float *)this * *(float *)this) + (float)(*((float *)this + 1) * *((float *)this + 1)))
             + (float)(*((float *)this + 2) * *((float *)this + 2)))
     + (float)(*((float *)this + 3) * *((float *)this + 3));
  if ( v2 != 1.0 )
  {
    v3 = 1.0 / sqrtf(v2);
    *(float *)this = *(float *)this * v3;
    *((float *)this + 1) = *((float *)this + 1) * v3;
    *((float *)this + 2) = *((float *)this + 2) * v3;
    *((float *)this + 3) = *((float *)this + 3) * v3;
  }
  return this;
}


// ===== 35c9d8 glitch::core::quaternion::set(float,float,float) =====
int __fastcall glitch::core::quaternion::set(glitch::core::quaternion *this, float a2, float a3, float a4)
{
  double v7; // r6
  double v8; // r8
  double v9; // r6
  double v10; // r10
  double v11; // r0
  double v12; // r10
  double v14; // [sp+8h] [bp-2Ch]
  double v15; // [sp+10h] [bp-24h]
  double v16; // [sp+10h] [bp-24h]
  double v17; // [sp+18h] [bp-1Ch]
  double v18; // [sp+20h] [bp-14h]
  double v19; // [sp+28h] [bp-Ch]

  v7 = a2 * 0.5;
  v8 = sin(v7);
  v9 = cos(v7);
  v17 = sin(a3 * 0.5);
  v14 = cos(a3 * 0.5);
  v10 = a4 * 0.5;
  v15 = sin(v10);
  v11 = cos(v10);
  v18 = v14 * v11;
  v19 = v17 * v11;
  v12 = v14 * v15;
  v16 = v17 * v15;
  *(float *)&v11 = v8 * (v14 * v11) - v9 * v16;
  *(_DWORD *)this = LODWORD(v11);
  *(float *)&v11 = v9 * v19 + v8 * v12;
  *((_DWORD *)this + 1) = LODWORD(v11);
  *(float *)&v11 = v9 * v12 - v8 * v19;
  *((_DWORD *)this + 2) = LODWORD(v11);
  *(float *)&v11 = v9 * v18 + v8 * v16;
  *((_DWORD *)this + 3) = LODWORD(v11);
  return glitch::core::quaternion::normalize(this);
}


// ===== 35cc0c RootSceneNode::ResetPositionFromFile(void) =====
int __fastcall RootSceneNode::ResetPositionFromFile(int this)
{
  int v1; // r5
  int v2; // r8
  void (__fastcall *v3)(int, _DWORD *); // r3
  void (__fastcall *v4)(int, _BYTE *); // r7
  void (__fastcall *v5)(int, _DWORD *); // r3
  void (__fastcall *v6)(int, _DWORD *); // r3
  _BYTE v7[16]; // [sp+4h] [bp-38h] BYREF
  _DWORD v8[3]; // [sp+14h] [bp-28h] BYREF
  _DWORD v9[3]; // [sp+20h] [bp-1Ch] BYREF
  _DWORD v10[4]; // [sp+2Ch] [bp-10h] BYREF

  v1 = *(_DWORD *)(this + 244);
  v2 = this;
  if ( v1 )
  {
    if ( v1 != 4 )
    {
      v3 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)(v1 - 4) + 164);
      memset(v10, 0, 12);
      v3(v1 - 4, v10);
      v4 = *(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)(v1 - 4) + 156);
      glitch::core::quaternion::set((glitch::core::quaternion *)v7, 0.0, 0.0, 0.0);
      v4(v1 - 4, v7);
      v5 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)(v1 - 4) + 148);
      v9[2] = 1065353216;
      v9[0] = 1065353216;
      v9[1] = 1065353216;
      v5(v1 - 4, v9);
      v6 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v2 + 164);
      memset(v8, 0, sizeof(v8));
      v6(v2, v8);
      return (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)(v1 - 4) + 184))(v1 - 4, 0);
    }
  }
  return this;
}


// ===== 35ccdc RootSceneNode::GetAnimRoot(bool) =====
int __fastcall RootSceneNode::GetAnimRoot(RootSceneNode *this, int a2)
{
  int result; // r0

  if ( a2 || (result = findSceneNodeRef(this, "root_camera")) == 0 )
  {
    result = findSceneNodeRef(this, "Bip01");
    if ( !result )
    {
      result = findSceneNodeRef(this, "Root");
      if ( !result )
        return findSceneNodeRef(this, "root_character");
    }
  }
  return result;
}


// ===== 35cd5c RootSceneNode::_CalcDelta(glitch::core::vector3d<float> &) =====
float __fastcall RootSceneNode::_CalcDelta(float result, float *a2)
{
  int *v2; // r5
  int v3; // r6

  v3 = LODWORD(result) + 252;
  v2 = *(int **)(LODWORD(result) + 252);
  a2[2] = 0.0;
  *a2 = 0.0;
  a2[1] = 0.0;
  if ( (int *)(LODWORD(result) + 252) != v2 )
  {
    do
    {
      result = COERCE_FLOAT(GetApplicator((glitch::scene::ISceneNodeAnimator *)v2[2]));
      if ( result == 0.0 )
      {
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
        }
        else if ( gAssertLevel == 1 )
        {
          result = COERCE_FLOAT(
                     fprintf(
                       (FILE *)&_sF + 2,
                       "ASSERT(%s) FAILED: %s:%d\n",
                       "aa",
                       "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\RootSceneNode.cpp",
                       244));
          v2 = (int *)*v2;
          continue;
        }
      }
      else
      {
        *a2 = *a2 + *(float *)(LODWORD(result) + 36);
        a2[1] = a2[1] + *(float *)(LODWORD(result) + 40);
        result = a2[2] + *(float *)(LODWORD(result) + 44);
        a2[2] = result;
      }
      v2 = (int *)*v2;
    }
    while ( (int *)v3 != v2 );
  }
  return result;
}


// ===== 35ce6c RootSceneNode::_ResetDelta(uint) =====
int **__fastcall RootSceneNode::_ResetDelta(int **this, unsigned int a2)
{
  int **v2; // r4
  int **v3; // r5

  v3 = this + 63;
  v2 = (int **)*(this + 63);
  if ( this + 63 != v2 )
  {
    do
    {
      this = (int **)GetApplicator((glitch::scene::ISceneNodeAnimator *)v2[2]);
      if ( this )
      {
        this = (int **)((int (__fastcall *)(int **, unsigned int))(*this)[3])(this, a2);
      }
      else if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        this = (int **)fprintf(
                         (FILE *)&_sF + 2,
                         "ASSERT(%s) FAILED: %s:%d\n",
                         "aa",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\RootSceneNode.cpp",
                         222);
        v2 = (int **)*v2;
        continue;
      }
      v2 = (int **)*v2;
    }
    while ( v3 != v2 );
  }
  return this;
}


// ===== 35cf48 RootSceneNode::_HandleDisplacement(uint) =====
bool __fastcall RootSceneNode::_HandleDisplacement(RootSceneNode *this, unsigned int a2)
{
  float *v3; // r0
  float v4; // r5
  float v5; // r6
  _DWORD *v6; // r3
  void (__fastcall *v7)(RootSceneNode *, _DWORD *); // r10
  float *v8; // r0
  float v9; // r11
  float v10; // r9
  float v11; // r0
  int v12; // r0
  void (__fastcall *v13)(int, _DWORD *); // r3
  int v15; // r4
  void (__fastcall *v16)(int, _DWORD *); // r8
  float *v17; // r0
  float v18; // r6
  float v19; // r5
  float v20; // r0
  float v21; // [sp+4h] [bp-48h]
  _DWORD v22[3]; // [sp+Ch] [bp-40h] BYREF
  _DWORD v23[3]; // [sp+18h] [bp-34h] BYREF
  _DWORD v24[3]; // [sp+24h] [bp-28h] BYREF
  _DWORD v25[3]; // [sp+30h] [bp-1Ch] BYREF
  float v26; // [sp+3Ch] [bp-10h] BYREF
  float v27; // [sp+40h] [bp-Ch]
  float v28; // [sp+44h] [bp-8h]

  v3 = (float *)(*(int (__fastcall **)(_DWORD, unsigned int))(**((_DWORD **)this + 124) + 160))(
                  *((_DWORD *)this + 124),
                  a2);
  v4 = v3[2];
  v21 = *v3;
  v5 = v3[1];
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  RootSceneNode::_CalcDelta(*(float *)&this, &v26);
  v26 = v26 * *((float *)this + 50);
  v27 = v27 * *((float *)this + 51);
  v28 = 0.0;
  glitch::core::quaternion::operator*(v25, (char *)this + 184, &v26);
  v6 = *(_DWORD **)this;
  v26 = *(float *)v25;
  v27 = *(float *)&v25[1];
  v28 = *(float *)&v25[2];
  v7 = (void (__fastcall *)(RootSceneNode *, _DWORD *))v6[41];
  v8 = (float *)((int (__fastcall *)(RootSceneNode *))v6[40])(this);
  v9 = v8[1] + v27;
  v10 = v8[2] + v28;
  v11 = *v8 + v26;
  *(float *)&v24[1] = v9;
  *(float *)v24 = v11;
  *(float *)&v24[2] = v10;
  v7(this, v24);
  v12 = *((_DWORD *)this + 126);
  if ( v12 )
  {
    v13 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v12 + 164);
    v23[0] = LODWORD(v21) + 0x80000000;
    v23[1] = LODWORD(v5) + 0x80000000;
    v23[2] = LODWORD(v4) + 0x80000000;
    v13(v12, v23);
    (*(void (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 126) + 184))(*((_DWORD *)this + 126), 0);
  }
  else
  {
    glitch::scene::ISceneNode::setPosition(*((glitch::scene::ISceneNode **)this + 124), 0.0, 0.0, v4);
    v15 = *((_DWORD *)this + 125);
    if ( v15 )
    {
      v16 = *(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)v15 + 164);
      v17 = (float *)(*(int (__fastcall **)(int))(*(_DWORD *)v15 + 160))(v15);
      v18 = v17[1] - v5;
      v19 = v17[2] - v4;
      v20 = *v17 - v21;
      *(float *)&v22[1] = v18;
      *(float *)v22 = v20;
      *(float *)&v22[2] = v19;
      v16(v15, v22);
    }
  }
  return v26 != 0.0 || v27 != 0.0 || v28 != 0.0;
}


// ===== 35d168 RootSceneNode::onAnimate(uint) =====
void __fastcall RootSceneNode::onAnimate(RootSceneNode *this, unsigned int a2)
{
  int v2; // r3
  int v5; // r2
  int v6; // r2
  int v7; // r3
  int v8; // lr
  int v9; // r0
  int v10; // r1
  int v11; // r12
  int v12; // r0
  int ViewFrustum; // r0
  char v14; // r11
  _DWORD **i; // r4
  int v16; // r3
  RootSceneNode *j; // r4
  char *v18; // r3
  int v19; // r3
  glitch::scene::ISceneNodeAnimator **k; // r4
  int Applicator; // r0
  int v22; // r0
  int v23; // [sp+0h] [bp-3Ch] BYREF
  int v24; // [sp+4h] [bp-38h]
  int v25; // [sp+8h] [bp-34h]
  int v26; // [sp+Ch] [bp-30h]
  int v27; // [sp+10h] [bp-2Ch]
  int v28; // [sp+14h] [bp-28h]
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+1Ch] [bp-20h] BYREF

  v2 = *((unsigned __int8 *)this + 521);
  if ( *((_BYTE *)this + 521) )
  {
    v5 = *((_DWORD *)this + 71);
    if ( (v5 & 1) != 0 )
    {
      v2 = 0;
    }
    else
    {
      glitch::scene::ISceneNode::setVisible(this, 1);
      glitch::scene::CSceneManager::notifyVisibilityChanged(*((glitch::scene::CSceneManager **)this + 68));
      v5 = *((_DWORD *)this + 71);
      *((_BYTE *)this + 521) = 0;
      v2 = 1;
    }
  }
  else
  {
    v5 = *((_DWORD *)this + 71);
  }
  if ( (v5 & 0x400) != 0 && (v5 & 1) == 0 || (v5 & 0x200) == 0 )
    goto LABEL_8;
  v6 = *((_DWORD *)this + 129);
  if ( !v6 || v2 || byte_9A600C )
    goto LABEL_23;
  v7 = *(_DWORD *)(v6 + 320);
  v8 = *(_DWORD *)(v6 + 308);
  v9 = *(_DWORD *)(v6 + 312);
  v10 = *(_DWORD *)(v6 + 316);
  v11 = *(_DWORD *)(v6 + 300);
  v24 = *(_DWORD *)(v6 + 304);
  v25 = v8;
  v23 = v11;
  v26 = v9;
  v27 = v10;
  v28 = v7;
  if ( *(_BYTE *)(v6 + 761) )
  {
    v12 = (*(int (__fastcall **)(RootSceneNode *))(*(_DWORD *)this + 52))(this);
    glitch::core::aabbox3d<float>::addInternalBox(&v23, v12);
  }
  ViewFrustum = glitch::scene::CCameraSceneNode::getViewFrustum((glitch::scene::CCameraSceneNode *)&RootSceneNode::s_enlargedCamera);
  if ( glitch::scene::SViewFrustum::intersects(ViewFrustum, &v23) || (*((_DWORD *)this + 71) & 0x400) == 0 )
  {
LABEL_23:
    v14 = 0;
LABEL_24:
    ++RootSceneNode::s_dbgAnimatedNodeCount;
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v29, "isTracingGlitchOnAnimate");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v29);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
    for ( i = *((_DWORD ***)this + 63); (_DWORD **)((char *)this + 252) != i; i = (_DWORD **)*i )
      (*(void (__fastcall **)(_DWORD *, RootSceneNode *, unsigned int, _DWORD, int, int, int, int, int, int))(*i[2] + 16))(
        i[2],
        this,
        a2,
        *i[2],
        v23,
        v24,
        v25,
        v26,
        v27,
        v28);
    if ( *((_BYTE *)this + 492) )
      RootSceneNode::_HandleDisplacement(this, a2);
    v16 = *((_DWORD *)this + 129);
    if ( !v16 || *(_DWORD *)(v16 + 272) == -1 )
      (*(void (__fastcall **)(RootSceneNode *, _DWORD))(*(_DWORD *)this + 184))(this, 0);
    for ( j = *((RootSceneNode **)this + 61); j != (RootSceneNode *)((char *)this + 244); j = *(RootSceneNode **)j )
    {
      if ( j )
        v18 = (char *)j - 4;
      else
        v18 = nullptr;
      (*(void (__fastcall **)(char *, unsigned int))(*(_DWORD *)v18 + 20))(v18, a2);
    }
    v19 = *((_DWORD *)this + 71);
    *((_BYTE *)this + 522) = v14 ^ 1;
    *((_DWORD *)this + 71) = v19 & 0xFFFFFFDF;
    goto LABEL_8;
  }
  if ( *((_BYTE *)this + 522) )
  {
    v14 = 1;
    goto LABEL_24;
  }
  (*(void (__fastcall **)(RootSceneNode *, unsigned int))(*(_DWORD *)this + 24))(this, a2);
  if ( *((_BYTE *)this + 492) )
  {
    for ( k = *((glitch::scene::ISceneNodeAnimator ***)this + 63);
          (glitch::scene::ISceneNodeAnimator **)((char *)this + 252) != k;
          k = (glitch::scene::ISceneNodeAnimator **)*k )
    {
      Applicator = GetApplicator(k[2]);
      (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)Applicator + 16))(Applicator, a2);
    }
    v22 = RootSceneNode::_HandleDisplacement(this, a2);
    *((_DWORD *)this + 71) &= ~0x20u;
    if ( v22 )
      goto LABEL_21;
  }
  if ( *((_BYTE *)this + 520) )
  {
LABEL_21:
    (*(void (__fastcall **)(RootSceneNode *, int))(*(_DWORD *)this + 184))(this, 1);
    *((_BYTE *)this + 520) = 0;
  }
  ++RootSceneNode::s_dbgUpdateTimeNodeCount;
  *((_BYTE *)this + 522) = 0;
LABEL_8:
  *((_DWORD *)this + 127) = a2;
}


// ===== 35d4cc RootSceneNode::_EnableDisplacement(bool) =====
RootSceneNode *__fastcall RootSceneNode::_EnableDisplacement(RootSceneNode *this, int a2)
{
  char v2; // r5
  RootSceneNode *v3; // r4
  RootSceneNode *v4; // r3
  glitch::scene::CEmptySceneNode *v5; // r6
  glitch::scene::CEmptySceneNode *v6; // r3
  _DWORD *v7; // r6
  int v8; // r1
  glitch::scene::ISceneNodeAnimator **i; // r6

  v2 = a2;
  v3 = this;
  if ( !a2 || *((_DWORD *)this + 124) )
  {
LABEL_3:
    *((_BYTE *)v3 + 492) = v2;
    return this;
  }
  *((_DWORD *)this + 124) = RootSceneNode::GetAnimRoot(this, 0);
  this = (RootSceneNode *)RootSceneNode::GetAnimRoot(v3, 1);
  v4 = *((RootSceneNode **)v3 + 124);
  *((_DWORD *)v3 + 125) = this;
  if ( v4 )
  {
    if ( this == v4 )
    {
      *((_DWORD *)v3 + 125) = 0;
    }
    else if ( this )
    {
      ++*(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12) + 4);
      v4 = *((RootSceneNode **)v3 + 124);
    }
    ++*(_DWORD *)((char *)v4 + *(_DWORD *)(*(_DWORD *)v4 - 12) + 4);
    v5 = (glitch::scene::CEmptySceneNode *)operator new(336, 0);
    glitch::scene::CEmptySceneNode::CEmptySceneNode(v5, -1);
    *((_DWORD *)v3 + 126) = v5;
    v6 = v5;
    v7 = *((_DWORD **)v3 + 61);
    if ( v7 != (_DWORD *)((char *)v3 + 244) )
    {
      while ( 1 )
      {
        v8 = v7 ? (int)(v7 - 1) : 0;
        v7 = (_DWORD *)*v7;
        (*(void (__fastcall **)(glitch::scene::CEmptySceneNode *, int))(*(_DWORD *)v6 + 92))(v6, v8);
        if ( (_DWORD *)((char *)v3 + 244) == v7 )
          break;
        v6 = *((glitch::scene::CEmptySceneNode **)v3 + 126);
      }
      v6 = *((glitch::scene::CEmptySceneNode **)v3 + 126);
    }
    this = (RootSceneNode *)(*(int (__fastcall **)(RootSceneNode *, glitch::scene::CEmptySceneNode *))(*(_DWORD *)v3 + 92))(
                              v3,
                              v6);
    for ( i = *((glitch::scene::ISceneNodeAnimator ***)v3 + 63);
          (glitch::scene::ISceneNodeAnimator **)((char *)v3 + 252) != i;
          i = (glitch::scene::ISceneNodeAnimator **)*i )
    {
      this = (RootSceneNode *)GetApplicator(i[2]);
      if ( !this )
      {
        v2 = 0;
        goto LABEL_3;
      }
      this = (RootSceneNode *)(*(int (__fastcall **)(RootSceneNode *, _DWORD))(*(_DWORD *)this + 8))(
                                this,
                                *((_DWORD *)v3 + 124));
    }
    goto LABEL_3;
  }
  *((_DWORD *)v3 + 125) = 0;
  return this;
}


// ===== 35d624 RootSceneNode::NewAnim(bool) =====
RootSceneNode *__fastcall RootSceneNode::NewAnim(RootSceneNode *this, bool a2)
{
  RootSceneNode *result; // r0
  int v4; // r1

  result = RootSceneNode::_EnableDisplacement(this, a2);
  if ( *((_BYTE *)this + 492) && *((_DWORD *)this + 124) )
  {
    v4 = *((_DWORD *)this + 127);
    if ( v4 )
    {
      RootSceneNode::_ResetDelta((int **)this, v4 + 1);
      return (RootSceneNode *)(*(int (__fastcall **)(RootSceneNode *, _DWORD))(*(_DWORD *)this + 20))(
                                this,
                                *((_DWORD *)this + 127));
    }
  }
  return result;
}


// ===== 35d67c RootSceneNode::~RootSceneNode() =====
void __fastcall RootSceneNode::~RootSceneNode(RootSceneNode *this)
{
  _DWORD *v1; // r2
  _DWORD *v3; // r3
  _DWORD *v4; // r3

  v1 = *((_DWORD **)this + 124);
  *(_DWORD *)this = off_95FDF4;
  *((_DWORD *)this + 131) = off_95FEFC;
  if ( v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
    *((_DWORD *)this + 124) = 0;
  }
  v3 = *((_DWORD **)this + 125);
  if ( v3 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v3 + *(_DWORD *)(*v3 - 12)));
    *((_DWORD *)this + 125) = 0;
  }
  v4 = *((_DWORD **)this + 126);
  if ( v4 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 12)));
    *((_DWORD *)this + 126) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 468));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 444));
  glitch::collada::CRootSceneNode::~CRootSceneNode(this);
}


// ===== 35d748 RootSceneNode::~RootSceneNode() =====
void __fastcall RootSceneNode::~RootSceneNode(RootSceneNode *this)
{
  RootSceneNode::~RootSceneNode(this);
  CustomFree(this);
}


// ===== 35d764 RootSceneNode::~RootSceneNode() =====
void __fastcall RootSceneNode::~RootSceneNode(RootSceneNode *this, int *a2)
{
  int v2; // r3
  _DWORD *v4; // r3
  _DWORD *v5; // r3
  _DWORD *v6; // r3

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[13];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[14];
  v4 = *((_DWORD **)this + 124);
  if ( v4 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 12)));
    *((_DWORD *)this + 124) = 0;
  }
  v5 = *((_DWORD **)this + 125);
  if ( v5 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
    *((_DWORD *)this + 125) = 0;
  }
  v6 = *((_DWORD **)this + 126);
  if ( v6 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v6 + *(_DWORD *)(*v6 - 12)));
    *((_DWORD *)this + 126) = 0;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 468));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 444));
  glitch::collada::CRootSceneNode::~CRootSceneNode(this);
}


// ===== 35d824 RootSceneNode::RootSceneNode(glitch::collada::CColladaDatabase const&) =====
void __fastcall RootSceneNode::RootSceneNode(RootSceneNode *this, const glitch::collada::CColladaDatabase *a2)
{
  *((_DWORD *)this + 131) = off_95B720;
  *((_DWORD *)this + 132) = 1;
  *(_DWORD *)this = off_96041C;
  *(int *)((char *)&elf_hash_bucket[76] + (_DWORD)this) = (int)off_96043C;
  glitch::collada::CRootSceneNode::CRootSceneNode(this, (const glitch::collada::CColladaDatabase *)off_95FF0C);
  *((_DWORD *)this + 115) = (char *)this + 444;
  *((_DWORD *)this + 116) = (char *)this + 444;
  *(_DWORD *)this = off_95FDF4;
  *((_DWORD *)this + 131) = off_95FEFC;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 111, 0x10u);
  **((_BYTE **)this + 115) = 0;
  *((_DWORD *)this + 121) = (char *)this + 468;
  *((_DWORD *)this + 122) = (char *)this + 468;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 117, 0x10u);
  **((_BYTE **)this + 121) = 0;
  *((_BYTE *)this + 520) = 1;
  *((_BYTE *)this + 522) = 0;
  *((_BYTE *)this + 492) = 0;
  *((_DWORD *)this + 124) = 0;
  *((_DWORD *)this + 125) = 0;
  *((_DWORD *)this + 126) = 0;
  *((_DWORD *)this + 127) = 0;
  *((_BYTE *)this + 512) = 1;
  *((_DWORD *)this + 129) = 0;
  *((_BYTE *)this + 521) = 0;
}


// ===== 35d910 RootSceneNode::RootSceneNode(glitch::collada::CColladaDatabase const&) =====
void __fastcall RootSceneNode::RootSceneNode(RootSceneNode *this, const glitch::collada::CColladaDatabase *a2)
{
  int v4; // r2

  glitch::collada::CRootSceneNode::CRootSceneNode(this, (const glitch::collada::CColladaDatabase *)((char *)a2 + 4));
  v4 = *(_DWORD *)a2;
  *(_DWORD *)this = *(_DWORD *)a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v4 - 28)) = *((_DWORD *)a2 + 13);
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = *((_DWORD *)a2 + 14);
  *((_DWORD *)this + 115) = (char *)this + 444;
  *((_DWORD *)this + 116) = (char *)this + 444;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 111, 0x10u);
  **((_BYTE **)this + 115) = 0;
  *((_DWORD *)this + 121) = (char *)this + 468;
  *((_DWORD *)this + 122) = (char *)this + 468;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 117, 0x10u);
  **((_BYTE **)this + 121) = 0;
  *((_BYTE *)this + 520) = 1;
  *((_BYTE *)this + 522) = 0;
  *((_BYTE *)this + 492) = 0;
  *((_DWORD *)this + 124) = 0;
  *((_DWORD *)this + 125) = 0;
  *((_DWORD *)this + 126) = 0;
  *((_DWORD *)this + 127) = 0;
  *((_BYTE *)this + 512) = 1;
  *((_DWORD *)this + 129) = 0;
  *((_BYTE *)this + 521) = 0;
}


// ===== 35d9c0 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_RootSceneNode.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_RootSceneNode.cpp()
{
  int result; // r0
  _DWORD v1[3]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v2[4]; // [sp+14h] [bp-10h] BYREF

  dword_9A1F14 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A1F10 = 1056964608;
  v1[2] = 1120403456;
  v1[1] = 0;
  memset(v2, 0, 12);
  v1[0] = 0;
  glitch::scene::CCameraSceneNode::CCameraSceneNode(&RootSceneNode::s_enlargedCamera, -1, v2, v1, 0);
  result = _aeabi_atexit(
             (int)&RootSceneNode::s_enlargedCamera,
             (int)glitch::scene::CCameraSceneNode::~CCameraSceneNode,
             (int)&_dso_handle);
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


// ===== 35db04 glitch::scene::CEmptySceneNode::~CEmptySceneNode() =====
void __fastcall glitch::scene::CEmptySceneNode::~CEmptySceneNode(glitch::scene::CEmptySceneNode *this)
{
  *(_DWORD *)this = off_9758EC;
  *((_DWORD *)this + 82) = off_9759F0;
  glitch::scene::ISceneNode::~ISceneNode(this);
  *(_DWORD *)this = off_975B5C;
  *(int *)((char *)&elf_hash_bucket[27] + (_DWORD)this) = (int)off_975B7C;
  *((_DWORD *)this + 82) = off_95B720;
  CustomFree(this);
}


// ===== 35db80 `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode(
        glitch::scene::CEmptySceneNode *this)
{
  glitch::scene::CEmptySceneNode::~CEmptySceneNode((glitch::scene::CEmptySceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35db90 `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CEmptySceneNode::~CEmptySceneNode(
        glitch::scene::CEmptySceneNode *this)
{
  glitch::scene::CEmptySceneNode::~CEmptySceneNode((glitch::scene::CEmptySceneNode *)((char *)this
                                                                                    + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35dba0 `non-virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode(
        glitch::scene::ICameraSceneNode *this)
{
  glitch::scene::ICameraSceneNode::~ICameraSceneNode((glitch::scene::ICameraSceneNode *)((char *)this - 304));
}


// ===== 35dba8 glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall glitch::scene::ICameraSceneNode::~ICameraSceneNode(glitch::scene::ICameraSceneNode *this)
{
  *(_DWORD *)this = off_95FACC;
  *((_DWORD *)this + 78) = off_95FC44;
  *((_DWORD *)this + 76) = off_95C300;
  glitch::scene::ISceneNode::~ISceneNode(this);
  *(_DWORD *)this = off_95FDAC;
  *(int *)((char *)&elf_hash_bucket[23] + (_DWORD)this) = (int)off_95FDCC;
  *((_DWORD *)this + 78) = off_95B720;
  CustomFree(this);
}


// ===== 35dc38 `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode(
        glitch::scene::ICameraSceneNode *this)
{
  glitch::scene::ICameraSceneNode::~ICameraSceneNode((glitch::scene::ICameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35dc48 `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::ICameraSceneNode::~ICameraSceneNode(
        glitch::scene::ICameraSceneNode *this)
{
  glitch::scene::ICameraSceneNode::~ICameraSceneNode((glitch::scene::ICameraSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35dc58 `virtual thunk to'RootSceneNode::~RootSceneNode() =====
void __fastcall `virtual thunk to'RootSceneNode::~RootSceneNode(RootSceneNode *this)
{
  RootSceneNode::~RootSceneNode((RootSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35dc68 `virtual thunk to'RootSceneNode::~RootSceneNode() =====
void __fastcall `virtual thunk to'RootSceneNode::~RootSceneNode(RootSceneNode *this)
{
  RootSceneNode::~RootSceneNode((RootSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35dc78 `virtual thunk to'RootSceneNode::~RootSceneNode() =====
void __fastcall `virtual thunk to'RootSceneNode::~RootSceneNode(RootSceneNode *this)
{
  RootSceneNode::~RootSceneNode((RootSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 35dc88 `virtual thunk to'RootSceneNode::~RootSceneNode() =====
void __fastcall `virtual thunk to'RootSceneNode::~RootSceneNode(RootSceneNode *this)
{
  RootSceneNode::~RootSceneNode((RootSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 35dc98 ShadowSkinnedMeshSceneNode::getBoundingBox(void) =====
int __fastcall ShadowSkinnedMeshSceneNode::getBoundingBox(ShadowSkinnedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 104) + 48))(*((_DWORD *)this + 104));
}


// ===== 35dcb4 ShadowSkinnedMeshSceneNode::getTransformedBoundingBox(void) =====
int __fastcall ShadowSkinnedMeshSceneNode::getTransformedBoundingBox(ShadowSkinnedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 104) + 52))(*((_DWORD *)this + 104));
}


// ===== 35dcd0 ShadowModularSkinnedMeshSceneNode::getBoundingBox(void) =====
int __fastcall ShadowModularSkinnedMeshSceneNode::getBoundingBox(ShadowModularSkinnedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 114) + 48))(*((_DWORD *)this + 114));
}


// ===== 35dcec ShadowModularSkinnedMeshSceneNode::getTransformedBoundingBox(void) =====
int __fastcall ShadowModularSkinnedMeshSceneNode::getTransformedBoundingBox(ShadowModularSkinnedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 114) + 48))(*((_DWORD *)this + 114));
}


// ===== 35dd08 glitch::core::CMatrix4<float>::transformPlane(glitch::core::plane3d<float> &) =====
unsigned int __fastcall glitch::core::CMatrix4<float>::transformPlane(float *a1, int a2)
{
  float v2; // r10
  float v4; // r7
  float v5; // r11
  float v6; // r6
  float v7; // r9
  float v8; // r10
  float v9; // r0
  float v10; // r10
  float v11; // r11
  float v12; // r9
  float v13; // r0
  float v14; // r8
  float v15; // r7
  float v16; // r4
  unsigned int result; // r0
  float v18; // [sp+0h] [bp-1Ch]
  float v19; // [sp+4h] [bp-18h]
  float v20; // [sp+8h] [bp-14h]
  float v21; // [sp+Ch] [bp-10h]
  float v22; // [sp+10h] [bp-Ch]
  float v23; // [sp+14h] [bp-8h]

  LODWORD(v2) = *(_DWORD *)(a2 + 12) + 0x80000000;
  v4 = *(float *)(a2 + 4);
  v5 = v2 * *(float *)a2;
  v6 = *(float *)(a2 + 8);
  v7 = v2 * v4;
  v8 = v2 * v6;
  v20 = *a1;
  v21 = (float)((float)((float)(v5 * *a1) + (float)(v7 * a1[4])) + (float)(v8 * a1[8])) + a1[12];
  v19 = a1[1];
  v22 = (float)((float)((float)(v5 * v19) + (float)(v7 * a1[5])) + (float)(v8 * a1[9])) + a1[13];
  v18 = a1[2];
  v9 = v8 * a1[10];
  v10 = a1[14];
  v23 = (float)((float)((float)(v5 * v18) + (float)(v7 * a1[6])) + v9) + v10;
  v11 = a1[12] + (float)((float)((float)(*(float *)a2 * v20) + (float)(v4 * a1[4])) + (float)(v6 * a1[8]));
  v12 = a1[13] + (float)((float)((float)(*(float *)a2 * v19) + (float)(v4 * a1[5])) + (float)(v6 * a1[9]));
  v13 = v10 + (float)((float)((float)(*(float *)a2 * v18) + (float)(v4 * a1[6])) + (float)(v6 * a1[10]));
  *(float *)a2 = v11;
  *(float *)(a2 + 4) = v12;
  *(float *)(a2 + 8) = v13;
  v14 = (float)((float)((float)(a1[1] * 0.0) + (float)(a1[5] * 0.0)) + (float)(a1[9] * 0.0)) + a1[13];
  v15 = (float)((float)((float)(a1[2] * 0.0) + (float)(a1[6] * 0.0)) + (float)(a1[10] * 0.0)) + a1[14];
  v16 = v11 - (float)((float)((float)((float)(*a1 * 0.0) + (float)(a1[4] * 0.0)) + (float)(a1[8] * 0.0)) + a1[12]);
  *(float *)a2 = v16;
  *(float *)(a2 + 4) = v12 - v14;
  *(float *)(a2 + 8) = v13 - v15;
  result = COERCE_INT((float)((float)(v21 * v16) + (float)(v22 * (float)(v12 - v14))) + (float)(v23 * (float)(v13 - v15)))
         + 0x80000000;
  *(_DWORD *)(a2 + 12) = result;
  return result;
}


// ===== 35e118 glitch::core::detail::CMatrix4Base<float>::mult(glitch::core::detail::CMatrix4Base<float> const&) =====
float *__fastcall glitch::core::detail::CMatrix4Base<float>::mult(float *a1, float *a2, float *a3)
{
  float v4; // r11
  float v5; // r9
  float v6; // r8
  float v7; // r7
  float v8; // r6
  float v9; // r5
  float v10; // r10
  float v12; // [sp+Ch] [bp-68h]
  float v13; // [sp+10h] [bp-64h]
  float v14; // [sp+14h] [bp-60h]
  float v15; // [sp+18h] [bp-5Ch]
  float v16; // [sp+1Ch] [bp-58h]
  float v17; // [sp+20h] [bp-54h]
  float v18; // [sp+24h] [bp-50h]
  float v19; // [sp+28h] [bp-4Ch]
  float v20; // [sp+2Ch] [bp-48h]
  float v21; // [sp+30h] [bp-44h]
  float v22; // [sp+34h] [bp-40h]
  float v23; // [sp+38h] [bp-3Ch]
  float v24; // [sp+3Ch] [bp-38h]
  float v25; // [sp+40h] [bp-34h]
  float v26; // [sp+44h] [bp-30h]
  float v27; // [sp+48h] [bp-2Ch]
  float v28; // [sp+4Ch] [bp-28h]
  float v29; // [sp+50h] [bp-24h]
  float v30; // [sp+54h] [bp-20h]
  float v31; // [sp+58h] [bp-1Ch]
  float v32; // [sp+5Ch] [bp-18h]
  float v33; // [sp+60h] [bp-14h]
  float v34; // [sp+64h] [bp-10h]
  float v35; // [sp+68h] [bp-Ch]
  float v36; // [sp+6Ch] [bp-8h]

  if ( *((_BYTE *)a2 + 64) )
  {
    memmove(a1, a3, 0x41u);
  }
  else if ( *((_BYTE *)a3 + 64) )
  {
    memmove(a1, a2, 0x41u);
  }
  else
  {
    v20 = a2[3];
    v4 = a3[12];
    v19 = a2[7];
    v5 = a3[13];
    v17 = a2[15];
    v6 = a3[15];
    v36 = *a2;
    v35 = *a3;
    v34 = a2[4];
    v33 = a3[1];
    v32 = a2[8];
    v31 = a3[2];
    v30 = a2[12];
    v29 = a3[3];
    v28 = a2[1];
    v27 = a2[5];
    v26 = a2[9];
    v25 = a2[13];
    v24 = a2[2];
    v23 = a2[6];
    v22 = a2[10];
    v21 = a2[14];
    v18 = a2[11];
    v16 = a3[4];
    v15 = a3[5];
    v14 = a3[6];
    v13 = a3[7];
    v7 = a3[8];
    v8 = a3[9];
    v9 = a3[10];
    v12 = a3[11];
    v10 = a3[14];
    a1[15] = (float)((float)((float)(v20 * v4) + (float)(v19 * v5)) + (float)(v18 * v10)) + (float)(v17 * v6);
    a1[14] = (float)((float)((float)(v24 * v4) + (float)(v23 * v5)) + (float)(v22 * v10)) + (float)(v21 * v6);
    a1[13] = (float)((float)((float)(v28 * v4) + (float)(v27 * v5)) + (float)(v26 * v10)) + (float)(v25 * v6);
    a1[12] = (float)((float)((float)(v36 * v4) + (float)(v34 * v5)) + (float)(v32 * v10)) + (float)(v30 * v6);
    a1[11] = (float)((float)((float)(v20 * v7) + (float)(v19 * v8)) + (float)(v18 * v9)) + (float)(v17 * v12);
    a1[10] = (float)((float)((float)(v24 * v7) + (float)(v23 * v8)) + (float)(v22 * v9)) + (float)(v21 * v12);
    a1[9] = (float)((float)((float)(v28 * v7) + (float)(v27 * v8)) + (float)(v26 * v9)) + (float)(v25 * v12);
    a1[8] = (float)((float)((float)(v36 * v7) + (float)(v34 * v8)) + (float)(v32 * v9)) + (float)(v30 * v12);
    a1[7] = (float)((float)((float)(v20 * v16) + (float)(v19 * v15)) + (float)(v18 * v14)) + (float)(v17 * v13);
    a1[6] = (float)((float)((float)(v24 * v16) + (float)(v23 * v15)) + (float)(v22 * v14)) + (float)(v21 * v13);
    a1[5] = (float)((float)((float)(v28 * v16) + (float)(v27 * v15)) + (float)(v26 * v14)) + (float)(v25 * v13);
    a1[4] = (float)((float)((float)(v36 * v16) + (float)(v34 * v15)) + (float)(v32 * v14)) + (float)(v30 * v13);
    a1[3] = (float)((float)((float)(v35 * v20) + (float)(v33 * v19)) + (float)(v31 * v18)) + (float)(v29 * v17);
    a1[2] = (float)((float)((float)(v35 * v24) + (float)(v33 * v23)) + (float)(v31 * v22)) + (float)(v29 * v21);
    a1[1] = (float)((float)((float)(v35 * v28) + (float)(v33 * v27)) + (float)(v31 * v26)) + (float)(v29 * v25);
    *a1 = (float)((float)((float)(v36 * v35) + (float)(v34 * v33)) + (float)(v32 * v31)) + (float)(v30 * v29);
    *((_BYTE *)a1 + 64) = 0;
  }
  return a1;
}


// ===== 35e8e0 glitch::core::vector3d<float>::normalize(void) =====
float *__fastcall glitch::core::vector3d<float>::normalize(float *a1)
{
  float v2; // r5
  float v3; // r0

  v2 = (float)((float)(*a1 * *a1) + (float)(a1[1] * a1[1])) + (float)(a1[2] * a1[2]);
  if ( v2 != 0.0 )
  {
    v3 = 1.0 / sqrtf(v2);
    *a1 = *a1 * v3;
    a1[1] = a1[1] * v3;
    a1[2] = a1[2] * v3;
  }
  return a1;
}


// ===== 35e998 glitch::core::CMatrix4<float>::operator*(glitch::core::CMatrix4<float> const&) =====
int __fastcall glitch::core::CMatrix4<float>::operator*(int a1, float *a2, float *a3)
{
  float v4; // r1
  float v5; // r2
  float v6; // r3
  float v7; // r0
  float v8; // r1
  float v9; // r2
  float v10; // r3
  float v11; // r1
  float v12; // r2
  float v13; // r3
  float v14; // r1
  float v15; // r2
  float v16; // r3
  char v17; // r4
  float v19[16]; // [sp+4h] [bp-44h] BYREF
  char v20; // [sp+44h] [bp-4h]

  glitch::core::detail::CMatrix4Base<float>::mult(v19, a2, a3);
  v4 = v19[1];
  v5 = v19[2];
  v6 = v19[3];
  *(float *)a1 = v19[0];
  *(float *)(a1 + 4) = v4;
  *(float *)(a1 + 8) = v5;
  *(float *)(a1 + 12) = v6;
  v7 = v19[4];
  v8 = v19[5];
  v9 = v19[6];
  v10 = v19[7];
  *(_BYTE *)(a1 + 64) = 0;
  *(float *)(a1 + 16) = v7;
  *(float *)(a1 + 20) = v8;
  *(float *)(a1 + 24) = v9;
  *(float *)(a1 + 28) = v10;
  v11 = v19[9];
  v12 = v19[10];
  v13 = v19[11];
  *(float *)(a1 + 32) = v19[8];
  *(float *)(a1 + 36) = v11;
  *(float *)(a1 + 40) = v12;
  *(float *)(a1 + 44) = v13;
  v14 = v19[13];
  v15 = v19[14];
  v16 = v19[15];
  v17 = v20;
  *(float *)(a1 + 48) = v19[12];
  *(float *)(a1 + 52) = v14;
  *(float *)(a1 + 56) = v15;
  *(float *)(a1 + 60) = v16;
  *(_BYTE *)(a1 + 64) = v17;
  return a1;
}


// ===== 35e9f0 std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_compute_next_size(
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


// ===== 35ea50 std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_compute_next_size(
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


// ===== 35eab0 std::vector<int,std::allocator<int>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<int>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
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


// ===== 35eb10 glitch::video::IVideoDriver::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap const> const&) =====
int __fastcall glitch::video::IVideoDriver::setMaterial(int a1, glitch::video::CMaterial **a2, int a3)
{
  int Technique; // r2
  int v7; // r3

  Technique = glitch::video::CMaterial::getTechnique(*a2);
  if ( *(_DWORD *)a3 && *a2 )
    v7 = *(_DWORD *)a3
       + 8
       + 330382100
       * ((*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)a3 + 4) + 24) + 12 * Technique + 8)
         - *(_DWORD *)(*(_DWORD *)(*(_DWORD *)a3 + 4) + 28)) >> 2);
  else
    v7 = 0;
  return glitch::video::IVideoDriver::setMaterial(a1, a2, Technique, v7);
}


// ===== 35eb90 boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr() =====
glitch::video::CVertexStreams **__fastcall boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(
        glitch::video::CVertexStreams **a1)
{
  glitch::video::CVertexStreams *v1; // r4

  v1 = *a1;
  if ( *a1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v1);
      CustomFree(v1);
    }
  }
  return a1;
}


// ===== 35ebd0 glitch::video::IVideoDriver::drawMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&) =====
glitch::video::CVertexStreams **__fastcall glitch::video::IVideoDriver::drawMeshBuffer(
        glitch::video::CVertexStreams **result,
        int a2)
{
  void (__fastcall *v2)(glitch::video::CVertexStreams **); // r12
  glitch::video::CVertexStreams *v3; // [sp+Ch] [bp-4h] BYREF

  if ( *(_DWORD *)a2 )
  {
    v2 = *((void (__fastcall **)(glitch::video::CVertexStreams **))*result + 22);
    v3 = *(glitch::video::CVertexStreams **)(*(_DWORD *)a2 + 20);
    if ( v3 )
      ++*(_DWORD *)v3;
    v2(result);
    return boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v3);
  }
  return result;
}


// ===== 35ec30 std::vector<int,std::allocator<int>>::_M_fill_insert_aux(int *,uint,int const&,std::__false_type const&) =====
char *__fastcall std::vector<int>::_M_fill_insert_aux(char *result, char *a2, unsigned int a3, char *a4)
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
      return (char *)std::vector<int>::_M_fill_insert_aux(result);
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


// ===== 35ed78 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_ShadowMeshSceneNode.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_ShadowMeshSceneNode.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A22B8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A22B4 = 1056964608;
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


// ===== 35ee54 std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "RENDERING_EnableShadowProjection";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
    this,
    a2 - "RENDERING_EnableShadowProjection" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "RENDERING_EnableShadowProjection" )
    result = (char *)memcpy(result, "RENDERING_EnableShadowProjection", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 35eea4 std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>>::_M_erase(boost::intrusive_ptr<glitch::video::CMaterial>*,boost::intrusive_ptr<glitch::video::CMaterial>*,std::__false_type const&) =====
glitch::video::CMaterial **__fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_erase(
        int a1,
        glitch::video::CMaterial **a2,
        int a3)
{
  glitch::video::CMaterial **v3; // r4
  int v5; // r9
  glitch::video::CMaterial **v8; // r7
  int v9; // r7
  int v10; // r4
  glitch::video::CMaterial *v11; // r2
  glitch::video::CMaterial *v12; // r3
  glitch::video::CMaterial **v13; // r6
  glitch::video::CMaterial **v14; // r0
  glitch::video::CMaterial *v16; // [sp+4h] [bp-4h] BYREF

  v3 = *(glitch::video::CMaterial ***)(a1 + 4);
  v5 = ((int)v3 - a3) >> 2;
  if ( v5 > 0 )
  {
    v9 = ((int)v3 - a3) >> 2;
    v10 = 0;
    do
    {
      v11 = *(glitch::video::CMaterial **)(a3 + v10 * 4);
      v16 = v11;
      if ( v11 )
      {
        ++*(_DWORD *)v11;
        v11 = v16;
      }
      v12 = a2[v10];
      a2[v10] = v11;
      v16 = v12;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
      --v9;
      ++v10;
    }
    while ( v9 );
    v3 = *(glitch::video::CMaterial ***)(a1 + 4);
    v8 = &a2[v5];
  }
  else
  {
    v8 = a2;
  }
  if ( v8 != v3 )
  {
    v13 = v8;
    do
    {
      v14 = v13++;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v14);
    }
    while ( v13 != v3 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 35ef50 std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>>::_M_fill_insert_aux(boost::intrusive_ptr<glitch::video::CMaterial>*,uint,boost::intrusive_ptr<glitch::video::CMaterial> const&,std::__false_type const&) =====
glitch::video::CMaterial **__fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_fill_insert_aux(
        glitch::video::CMaterial **result,
        int a2,
        unsigned int a3,
        glitch::video::CMaterial **a4)
{
  glitch::video::CMaterial *v4; // r12
  glitch::video::CMaterial *v7; // r10
  glitch::video::CMaterial *v8; // r3
  int v9; // r7
  int v10; // r7
  char *v11; // r8
  int v12; // r1
  glitch::video::CMaterial *v13; // r3
  int v14; // r2
  glitch::video::CMaterial **v15; // r3
  int v16; // r6
  glitch::video::CMaterial *v17; // r2
  int v18; // r7
  int v19; // r6
  glitch::video::CMaterial *v20; // r2
  glitch::video::CMaterial *v21; // r3
  unsigned int v22; // r2
  int v23; // r6
  glitch::video::CMaterial *v24; // r2
  int i; // r1
  glitch::video::CMaterial *v26; // r3
  bool v27; // zf
  int v28; // r6
  int v29; // r1
  glitch::video::CMaterial **v30; // r3
  glitch::video::CMaterial *v31; // r2
  glitch::video::CMaterial *v32; // r3
  glitch::video::CMaterial *v33; // [sp+Ch] [bp-14h] BYREF
  glitch::video::CMaterial *v34; // [sp+10h] [bp-10h] BYREF
  glitch::video::CMaterial *v35; // [sp+14h] [bp-Ch] BYREF
  glitch::video::CMaterial *v36; // [sp+18h] [bp-8h] BYREF

  v4 = *result;
  if ( a4 < (glitch::video::CMaterial **)*result )
  {
    v7 = result[1];
    goto LABEL_8;
  }
  v7 = result[1];
  if ( a4 >= (glitch::video::CMaterial **)v7 )
  {
LABEL_8:
    v9 = ((int)v7 - a2) >> 2;
    if ( a3 >= v9 )
    {
      v22 = a3 - v9;
      v23 = (int)(4 * v22) >> 2;
      v24 = (glitch::video::CMaterial *)((char *)v7 + 4 * v22);
      if ( v23 > 0 )
      {
        for ( i = 0; i != v23; ++i )
        {
          v26 = *a4;
          v27 = *a4 == nullptr;
          *((_DWORD *)v7 + i) = *a4;
          if ( !v27 )
            v4 = *(glitch::video::CMaterial **)v26;
          if ( !v27 )
          {
            v4 = (glitch::video::CMaterial *)((char *)v4 + 1);
            *(_DWORD *)v26 = v4;
          }
        }
      }
      result[1] = v24;
      if ( v9 > 0 )
      {
        v28 = ((int)v7 - a2) >> 2;
        v29 = 0;
        do
        {
          v30 = *(glitch::video::CMaterial ***)(a2 + v29);
          *(_DWORD *)((char *)v24 + v29) = v30;
          if ( v30 )
            v4 = *v30;
          v29 += 4;
          if ( v30 )
          {
            v4 = (glitch::video::CMaterial *)((char *)v4 + 1);
            *v30 = v4;
          }
          --v28;
        }
        while ( v28 );
        result[1] = (glitch::video::CMaterial *)((char *)result[1] + 4 * v9);
        do
        {
          v31 = *a4;
          v33 = v31;
          if ( v31 )
          {
            ++*(_DWORD *)v31;
            v31 = v33;
          }
          v32 = *(glitch::video::CMaterial **)(a2 + v28);
          *(_DWORD *)(a2 + v28) = v31;
          v33 = v32;
          result = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v33);
          --v9;
          v28 += 4;
        }
        while ( v9 );
      }
      else
      {
        result[1] = (glitch::video::CMaterial *)((char *)v24 + 4 * v9);
      }
    }
    else
    {
      v10 = 4 * a3;
      v11 = (char *)v7 - 4 * a3;
      v12 = (int)(4 * a3) >> 2;
      if ( v12 > 0 )
      {
        v14 = 0;
        do
        {
          v15 = *(glitch::video::CMaterial ***)&v11[v14];
          *(_DWORD *)((char *)v7 + v14) = v15;
          if ( v15 )
            v4 = *v15;
          v14 += 4;
          if ( v15 )
          {
            v4 = (glitch::video::CMaterial *)((char *)v4 + 1);
            *v15 = v4;
          }
          --v12;
        }
        while ( v12 );
        v13 = result[1];
      }
      else
      {
        v13 = v7;
      }
      v16 = (int)&v11[-a2] >> 2;
      result[1] = (glitch::video::CMaterial *)((char *)v13 + v10);
      if ( v16 > 0 )
      {
        do
        {
          v17 = *((glitch::video::CMaterial **)v11 - 1);
          v11 -= 4;
          v35 = v17;
          if ( v17 )
          {
            ++*(_DWORD *)v17;
            v17 = v35;
          }
          v35 = *((glitch::video::CMaterial **)v7 - 1);
          *((_DWORD *)v7 - 1) = v17;
          v7 = (glitch::video::CMaterial *)((char *)v7 - 4);
          result = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v35);
          --v16;
        }
        while ( v16 );
      }
      v18 = v10 >> 2;
      if ( v18 > 0 )
      {
        v19 = 0;
        do
        {
          v20 = *a4;
          v34 = v20;
          if ( v20 )
          {
            ++*(_DWORD *)v20;
            v20 = v34;
          }
          v21 = *(glitch::video::CMaterial **)(a2 + v19);
          *(_DWORD *)(a2 + v19) = v20;
          v34 = v21;
          result = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v34);
          --v18;
          v19 += 4;
        }
        while ( v18 );
      }
    }
    return result;
  }
  v8 = *a4;
  v36 = v8;
  if ( v8 )
    ++*(_DWORD *)v8;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_fill_insert_aux(result);
  return boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v36);
}


// ===== 35f188 glitch::core::buildShadowMatrix<float>(glitch::core::vector3d<float> const&,glitch::core::plane3d<float>,float) [clone] =====
int __fastcall glitch::core::buildShadowMatrix<float>(int a1, float *a2, int a3)
{
  float v6; // r7
  float v7; // r0
  float v8; // r0

  *(_BYTE *)(a1 + 64) = 0;
  glitch::core::vector3d<float>::normalize((float *)a3);
  v6 = (float)(*(float *)a3 * *a2) + (float)(*(float *)(a3 + 4) * a2[1]);
  v7 = *(float *)(a3 + 8) * a2[2];
  *(_BYTE *)(a1 + 64) = 0;
  v8 = v6 + v7;
  *(float *)a1 = v8 + (float)(COERCE_FLOAT(*(_DWORD *)a3 + 0x80000000) * *a2);
  *(float *)(a1 + 4) = COERCE_FLOAT(*(_DWORD *)a3 + 0x80000000) * a2[1];
  *(float *)(a1 + 8) = COERCE_FLOAT(*(_DWORD *)a3 + 0x80000000) * a2[2];
  *(_DWORD *)(a1 + 12) = *(_DWORD *)a3 + 0x80000000;
  *(float *)(a1 + 16) = COERCE_FLOAT(*(_DWORD *)(a3 + 4) + 0x80000000) * *a2;
  *(float *)(a1 + 20) = v8 + (float)(COERCE_FLOAT(*(_DWORD *)(a3 + 4) + 0x80000000) * a2[1]);
  *(float *)(a1 + 24) = COERCE_FLOAT(*(_DWORD *)(a3 + 4) + 0x80000000) * a2[2];
  *(_DWORD *)(a1 + 28) = *(_DWORD *)(a3 + 4) + 0x80000000;
  *(float *)(a1 + 32) = COERCE_FLOAT(*(_DWORD *)(a3 + 8) + 0x80000000) * *a2;
  *(float *)(a1 + 36) = COERCE_FLOAT(*(_DWORD *)(a3 + 8) + 0x80000000) * a2[1];
  *(float *)(a1 + 40) = v8 + (float)(COERCE_FLOAT(*(_DWORD *)(a3 + 8) + 0x80000000) * a2[2]);
  *(_DWORD *)(a1 + 44) = *(_DWORD *)(a3 + 8) + 0x80000000;
  *(float *)(a1 + 48) = COERCE_FLOAT(*(_DWORD *)(a3 + 12) + 0x80000000) * *a2;
  *(float *)(a1 + 52) = COERCE_FLOAT(*(_DWORD *)(a3 + 12) + 0x80000000) * a2[1];
  *(float *)(a1 + 56) = COERCE_FLOAT(*(_DWORD *)(a3 + 12) + 0x80000000) * a2[2];
  *(float *)(a1 + 60) = v8 + COERCE_FLOAT(*(_DWORD *)(a3 + 12) + 0x80000000);
  return a1;
}


// ===== 35f348 ShadowModularSkinnedMeshSceneNode::UpdateShadow(void) =====
int __fastcall ShadowModularSkinnedMeshSceneNode::UpdateShadow(ShadowModularSkinnedMeshSceneNode *this)
{
  int v2; // r10
  float v4[17]; // [sp+8h] [bp-198h] BYREF
  float v5[17]; // [sp+4Ch] [bp-154h] BYREF
  _BYTE v6[68]; // [sp+90h] [bp-110h] BYREF
  float v7[16]; // [sp+D4h] [bp-CCh] BYREF
  char v8; // [sp+114h] [bp-8Ch]
  float v9[16]; // [sp+118h] [bp-88h] BYREF
  char v10; // [sp+158h] [bp-48h]
  float v11[17]; // [sp+15Ch] [bp-44h] BYREF
  float v12[16]; // [sp+1A0h] [bp+0h] BYREF
  char v13; // [sp+1E0h] [bp+40h]
  _DWORD v14[4]; // [sp+1E4h] [bp+44h] BYREF
  int v15; // [sp+1F4h] [bp+54h] BYREF
  int v16; // [sp+1F8h] [bp+58h]
  int v17; // [sp+1FCh] [bp+5Ch]
  unsigned int v18; // [sp+200h] [bp+60h]
  float v19; // [sp+204h] [bp+64h] BYREF
  float v20; // [sp+208h] [bp+68h]
  float v21; // [sp+20Ch] [bp+6Ch]

  v2 = *(_DWORD *)(dword_99F73C + 28);
  LC_API_MEMSET_0(v12, 0, 0x40u);
  v13 = 1;
  v16 = 0;
  v18 = 0x80000000;
  v12[0] = 1.0;
  v12[5] = 1.0;
  v12[10] = 1.0;
  v12[15] = 1.0;
  v15 = 0;
  v17 = 1065353216;
  glitch::core::CMatrix4<float>::transformPlane(v12, (int)&v15);
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  glitch::core::buildShadowMatrix<float>((int)v11, (float *)(v2 + 1024), (int)v14);
  glitch::scene::ISceneNode::getAbsolutePosition(&v19, *((_DWORD **)this + 115));
  LC_API_MEMSET_0(v9, 0, 0x40u);
  LODWORD(v9[13]) = LODWORD(v20) + 0x80000000;
  LODWORD(v9[12]) = LODWORD(v19) + 0x80000000;
  LODWORD(v9[14]) = LODWORD(v21) + 0x80000000;
  v9[0] = 1.0;
  v9[5] = 1.0;
  v9[10] = 1.0;
  v9[15] = 1.0;
  v10 = 0;
  LC_API_MEMSET_0(v7, 0, 0x40u);
  v7[15] = 1.0;
  v7[0] = 1.0;
  v7[5] = 1.0;
  v7[10] = 1.0;
  v7[14] = v21 + 10.0;
  v7[12] = v19 + 10.0;
  v7[13] = v20 + -10.0;
  v8 = 0;
  glitch::core::CMatrix4<float>::operator*((int)v5, v7, v11);
  glitch::core::CMatrix4<float>::operator*((int)v4, v5, v12);
  glitch::core::CMatrix4<float>::operator*((int)v6, v4, v9);
  return (*(int (__fastcall **)(ShadowModularSkinnedMeshSceneNode *, _BYTE *))(*(_DWORD *)this + 60))(this, v6);
}


// ===== 35f530 ShadowModularSkinnedMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall ShadowModularSkinnedMeshSceneNode::onRegisterSceneNode(ShadowModularSkinnedMeshSceneNode *this)
{
  float v2; // r8
  const char *v3; // r2
  int Switch; // r6
  int v5; // r10
  unsigned int v6; // r9
  int v7; // r4
  unsigned int v8; // r6
  bool v9; // cc
  int v10; // r0
  bool v11; // zf
  glitch::video::CMaterial *v13; // [sp+1Ch] [bp-28h] BYREF
  glitch::IReferenceCounted *v14; // [sp+20h] [bp-24h] BYREF
  std::string v15; // [sp+24h] [bp-20h] BYREF

  ShadowModularSkinnedMeshSceneNode::UpdateShadow(this);
  v2 = *(float *)(*(_DWORD *)(dword_99F73C + 28) + 1048);
  if ( *((_DWORD *)this + 77) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v15._M_finish = (char *)&v15;
    v15._M_start_of_storage._M_data = (char *)&v15;
    std::string::_M_range_initialize(&v15, "", v3);
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v15);
    if ( Switch )
      Switch = v2 > 0.0;
    if ( (std::string *)v15._M_start_of_storage._M_data != &v15 && v15._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v15._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v15._M_start_of_storage._M_data,
          v15._M_buffers._M_end_of_storage - v15._M_start_of_storage._M_data);
    }
    if ( Switch )
    {
      v5 = *(_DWORD *)(*((_DWORD *)this + 68) + 20);
      if ( v5 )
      {
        v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
        if ( v6 )
        {
          v7 = 0;
          v8 = 1;
          do
          {
            (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**((_DWORD **)this + 77) + 20))(
              &v14,
              *((_DWORD *)this + 77),
              v7);
            if ( v14 )
            {
              glitch::IReferenceCounted::drop(v14);
              v13 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 108)
                                                 + 4 * *(_DWORD *)(*((_DWORD *)this + 96) + 4 * v7));
              if ( v13 )
                ++*(_DWORD *)v13;
              v10 = (*(int (__fastcall **)(_DWORD, _DWORD, int, int))(**((_DWORD **)this + 77) + 56))(
                      *((_DWORD *)this + 77),
                      0,
                      v5,
                      v7);
              v11 = v10 == 4;
              if ( v10 != 4 )
                v11 = v10 == 16;
              if ( v11 )
              {
                (*(void (__fastcall **)(_DWORD, ShadowModularSkinnedMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(**((_DWORD **)this + 68) + 36))(
                  *((_DWORD *)this + 68),
                  this,
                  &v13,
                  v8,
                  6,
                  0,
                  0x7FFFFFFF);
              }
              else if ( v10 == 5 )
              {
                (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 36))(*((_DWORD *)this + 77));
              }
              boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
            }
            v9 = v6 > v8;
            ++v7;
            ++v8;
          }
          while ( v9 );
        }
      }
    }
  }
  return 1;
}


// ===== 35f780 ShadowSkinnedMeshSceneNode::UpdateShadow(void) =====
int __fastcall ShadowSkinnedMeshSceneNode::UpdateShadow(ShadowSkinnedMeshSceneNode *this)
{
  int v2; // r10
  float v4[17]; // [sp+8h] [bp-198h] BYREF
  float v5[17]; // [sp+4Ch] [bp-154h] BYREF
  _BYTE v6[68]; // [sp+90h] [bp-110h] BYREF
  float v7[16]; // [sp+D4h] [bp-CCh] BYREF
  char v8; // [sp+114h] [bp-8Ch]
  float v9[16]; // [sp+118h] [bp-88h] BYREF
  char v10; // [sp+158h] [bp-48h]
  float v11[17]; // [sp+15Ch] [bp-44h] BYREF
  float v12[16]; // [sp+1A0h] [bp+0h] BYREF
  char v13; // [sp+1E0h] [bp+40h]
  _DWORD v14[4]; // [sp+1E4h] [bp+44h] BYREF
  int v15; // [sp+1F4h] [bp+54h] BYREF
  int v16; // [sp+1F8h] [bp+58h]
  int v17; // [sp+1FCh] [bp+5Ch]
  unsigned int v18; // [sp+200h] [bp+60h]
  float v19; // [sp+204h] [bp+64h] BYREF
  float v20; // [sp+208h] [bp+68h]
  float v21; // [sp+20Ch] [bp+6Ch]

  v2 = *(_DWORD *)(dword_99F73C + 28);
  LC_API_MEMSET_0(v12, 0, 0x40u);
  v13 = 1;
  v16 = 0;
  v18 = 0x80000000;
  v12[0] = 1.0;
  v12[5] = 1.0;
  v12[10] = 1.0;
  v12[15] = 1.0;
  v15 = 0;
  v17 = 1065353216;
  glitch::core::CMatrix4<float>::transformPlane(v12, (int)&v15);
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  glitch::core::buildShadowMatrix<float>((int)v11, (float *)(v2 + 1024), (int)v14);
  glitch::scene::ISceneNode::getAbsolutePosition(&v19, *((_DWORD **)this + 104));
  LC_API_MEMSET_0(v9, 0, 0x40u);
  LODWORD(v9[13]) = LODWORD(v20) + 0x80000000;
  LODWORD(v9[12]) = LODWORD(v19) + 0x80000000;
  LODWORD(v9[14]) = LODWORD(v21) + 0x80000000;
  v9[0] = 1.0;
  v9[5] = 1.0;
  v9[10] = 1.0;
  v9[15] = 1.0;
  v10 = 0;
  LC_API_MEMSET_0(v7, 0, 0x40u);
  v7[15] = 1.0;
  v7[0] = 1.0;
  v7[5] = 1.0;
  v7[10] = 1.0;
  v7[14] = v21 + 10.0;
  v7[12] = v19 + 10.0;
  v7[13] = v20 + -10.0;
  v8 = 0;
  glitch::core::CMatrix4<float>::operator*((int)v5, v7, v11);
  glitch::core::CMatrix4<float>::operator*((int)v4, v5, v12);
  glitch::core::CMatrix4<float>::operator*((int)v6, v4, v9);
  return (*(int (__fastcall **)(ShadowSkinnedMeshSceneNode *, _BYTE *))(*(_DWORD *)this + 60))(this, v6);
}


// ===== 35f968 std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>>::_M_clear_after_move(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_clear_after_move(
        glitch::video::CMaterial ***a1)
{
  glitch::video::CMaterial **v1; // r4
  glitch::video::CMaterial **v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(--v1);
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = ((char *)a1[2] - (char *)v1) & 0xFFFFFFFC;
    if ( v4 > 0x80 )
      CustomFree(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, v4);
  }
}


// ===== 35f9d0 std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>>::~vector() =====
void **__fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector(void **a1)
{
  char *v1; // r6
  char *v2; // r7
  glitch::video::CMaterialVertexAttributeMap *v4; // r5
  _BYTE *v6; // r0
  size_t v7; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v4 = *((glitch::video::CMaterialVertexAttributeMap **)v1 - 1);
      v1 -= 4;
      if ( v4 )
      {
        if ( (*(_DWORD *)v4)-- == 1 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v4);
          CustomFree(v4);
        }
      }
    }
    while ( v2 != v1 );
  }
  v6 = *a1;
  if ( !*a1 )
    return a1;
  v7 = ((_BYTE *)a1[2] - v6) & 0xFFFFFFFC;
  if ( v7 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
    return a1;
  }
  CustomFree(v6);
  return a1;
}


// ===== 35fa5c std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>>::~vector() =====
glitch::video::CMaterial ***__fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector(
        glitch::video::CMaterial ***a1)
{
  glitch::video::CMaterial **v1; // r5
  glitch::video::CMaterial **v2; // r6
  glitch::video::CMaterial **v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(--v1);
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = ((char *)a1[2] - (char *)v4) & 0xFFFFFFFC;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 35fac0 std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
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


// ===== 35fb30 std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>>::_M_fill_insert(boost::intrusive_ptr<glitch::video::CMaterial>*,uint,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_fill_insert(
        int a1,
        int a2,
        unsigned int a3,
        glitch::video::CMaterial **a4)
{
  _DWORD *v8; // r0
  int v9; // r1
  glitch::video::CMaterial *v10; // r12
  _DWORD *v11; // r8
  int v12; // lr
  int v13; // r2
  _DWORD **v14; // r3
  int v15; // r12
  _DWORD *v16; // r7
  int i; // r2
  glitch::video::CMaterial *v18; // r3
  bool v19; // zf
  int v20; // r12
  int v21; // r1
  int v22; // r2
  _DWORD **v23; // r3
  size_t v24; // r3
  glitch::video::CMaterial *v25; // r3
  size_t size; // [sp+8h] [bp-8h] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_fill_insert_aux(
        (glitch::video::CMaterial **)a1,
        a2,
        a3,
        a4);
    }
    else
    {
      size = std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_compute_next_size((_DWORD *)a1, a3);
      v8 = std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_allocate(a1 + 8, size, &size);
      v10 = *(glitch::video::CMaterial **)a1;
      v11 = v8;
      v12 = (a2 - *(_DWORD *)a1) >> 2;
      if ( v12 > 0 )
      {
        v9 = (a2 - *(_DWORD *)a1) >> 2;
        v13 = 0;
        do
        {
          v14 = *(_DWORD ***)((char *)v10 + v13 * 4);
          v11[v13] = v14;
          if ( v14 )
            v8 = *v14;
          ++v13;
          if ( v14 )
          {
            v8 = (_DWORD *)((char *)v8 + 1);
            *v14 = v8;
          }
          --v9;
        }
        while ( v9 );
        v8 = &v11[v12];
      }
      if ( a3 == 1 )
      {
        v25 = *a4;
        v16 = v8 + 1;
        v19 = *a4 == nullptr;
        *v8 = *a4;
        if ( !v19 )
          ++*(_DWORD *)v25;
      }
      else
      {
        v15 = (int)(4 * a3) >> 2;
        v16 = &v8[a3];
        if ( v15 > 0 )
        {
          for ( i = 0; i != v15; ++i )
          {
            v18 = *a4;
            v19 = *a4 == nullptr;
            v8[i] = *a4;
            if ( !v19 )
              v9 = *(_DWORD *)v18;
            if ( !v19 )
              *(_DWORD *)v18 = ++v9;
          }
        }
      }
      v20 = (*(_DWORD *)(a1 + 4) - a2) >> 2;
      if ( v20 > 0 )
      {
        v21 = (*(_DWORD *)(a1 + 4) - a2) >> 2;
        v22 = 0;
        do
        {
          v23 = *(_DWORD ***)(a2 + v22 * 4);
          v16[v22] = v23;
          if ( v23 )
            v8 = *v23;
          ++v22;
          if ( v23 )
          {
            v8 = (_DWORD *)((char *)v8 + 1);
            *v23 = v8;
          }
          --v21;
        }
        while ( v21 );
        v16 += v20;
      }
      std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_clear_after_move((glitch::video::CMaterial ***)a1);
      v24 = size;
      *(_DWORD *)a1 = v11;
      *(_DWORD *)(a1 + 4) = v16;
      *(_DWORD *)(a1 + 8) = &v11[v24];
    }
  }
}


// ===== 35fc9c std::vector<boost::intrusive_ptr<glitch::video::CMaterial>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterial>>>::resize(uint,boost::intrusive_ptr<glitch::video::CMaterial> const&) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize(
        _DWORD *a1,
        unsigned int a2,
        glitch::video::CMaterial **a3)
{
  glitch::video::CMaterial **v3; // r12
  unsigned int v5; // r2
  glitch::video::CMaterial **v6; // r1

  v3 = (glitch::video::CMaterial **)a1[1];
  v5 = ((int)v3 - *a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_fill_insert((int)a1, a1[1], a2 - v5, a3);
  }
  else
  {
    v6 = (glitch::video::CMaterial **)(*a1 + 4 * a2);
    if ( v6 != v3 )
      std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_erase((int)a1, v6, a1[1]);
  }
}


// ===== 35fcec std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
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


// ===== 35fd5c std::allocator<int>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<int>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 35fdcc std::vector<int,std::allocator<int>>::_M_fill_insert(int *,uint,int const&) =====
void __fastcall std::vector<int>::_M_fill_insert(int a1, char *a2, unsigned int a3, char *a4)
{
  char *v8; // r0
  char *v9; // r8
  size_t v10; // r10
  unsigned int v11; // r2
  int v12; // r3
  char *v13; // r3
  char *v14; // r6
  void *v15; // r0
  size_t v16; // r1
  size_t v17; // r3
  size_t v18; // r3
  size_t size; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 4)) >> 2 )
    {
      std::vector<int>::_M_fill_insert_aux((char *)a1, a2, a3, a4);
      return;
    }
    size = std::vector<int>::_M_compute_next_size((_DWORD *)a1, a3);
    v8 = (char *)std::allocator<int>::_M_allocate(a1 + 8, size, &size);
    v9 = v8;
    if ( a2 != *(char **)a1 )
    {
      v10 = (size_t)&a2[-*(_DWORD *)a1];
      v8 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
    }
    v11 = a3;
    v12 = 0;
    do
    {
      --v11;
      *(_DWORD *)&v8[v12] = *(_DWORD *)a4;
      v12 += 4;
    }
    while ( v11 );
    v13 = *(char **)(a1 + 4);
    v14 = &v8[4 * a3];
    if ( v13 != a2 )
      v14 = (char *)memmove(v14, a2, v13 - a2) + v13 - a2;
    v15 = *(void **)a1;
    if ( *(_DWORD *)a1 )
    {
      v16 = (*(_DWORD *)(a1 + 8) - (_DWORD)v15) & 0xFFFFFFFC;
      if ( v16 > 0x80 )
      {
        CustomFree(v15);
        v18 = size;
        *(_DWORD *)a1 = v9;
        *(_DWORD *)(a1 + 4) = v14;
        *(_DWORD *)(a1 + 8) = &v9[4 * v18];
        return;
      }
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, v16);
    }
    v17 = size;
    *(_DWORD *)a1 = v9;
    *(_DWORD *)(a1 + 4) = v14;
    *(_DWORD *)(a1 + 8) = &v9[4 * v17];
  }
}


// ===== 35fee8 std::vector<int,std::allocator<int>>::resize(uint,int const&) =====
void __fastcall std::vector<int>::resize(int a1, unsigned int a2, char *a3)
{
  int v3; // r4
  unsigned int v5; // r2
  int v6; // r5

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<int>::_M_fill_insert(a1, *(char **)(a1 + 4), a2 - v5, a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 4 * a2;
    if ( v6 != v3 )
      *(_DWORD *)(a1 + 4) = v6;
  }
}


// ===== 35ff2c std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>>::_M_clear_after_move(void) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_clear_after_move(
        void **a1)
{
  char *v2; // r6
  char *v3; // r0
  char *v4; // r5
  glitch::video::CMaterialVertexAttributeMap *v5; // r4
  size_t v7; // r1

  v2 = (char *)*a1;
  v3 = (char *)a1[1];
  if ( v3 != v2 )
  {
    v4 = v3;
    do
    {
      v5 = *((glitch::video::CMaterialVertexAttributeMap **)v4 - 1);
      v4 -= 4;
      if ( v5 )
      {
        if ( (*(_DWORD *)v5)-- == 1 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v5);
          CustomFree(v5);
        }
      }
    }
    while ( v2 != v4 );
    v3 = (char *)*a1;
  }
  if ( v3 )
  {
    v7 = ((_BYTE *)a1[2] - v3) & 0xFFFFFFFC;
    if ( v7 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v7);
  }
}


// ===== 35ffb8 ShadowSkinnedMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall ShadowSkinnedMeshSceneNode::onRegisterSceneNode(ShadowSkinnedMeshSceneNode *this)
{
  float v2; // r8
  const char *v3; // r2
  int Switch; // r7
  int v5; // r10
  unsigned int v6; // r9
  unsigned int v7; // r4
  int v9; // r0
  bool v10; // zf
  glitch::video::CMaterial *v12; // [sp+1Ch] [bp-28h] BYREF
  glitch::IReferenceCounted *v13; // [sp+20h] [bp-24h] BYREF
  std::string v14; // [sp+24h] [bp-20h] BYREF

  v2 = *(float *)(*(_DWORD *)(dword_99F73C + 28) + 1048);
  if ( *((_DWORD *)this + 77) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    v14._M_finish = (char *)&v14;
    v14._M_start_of_storage._M_data = (char *)&v14;
    std::string::_M_range_initialize(&v14, "", v3);
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v14);
    if ( Switch )
      Switch = v2 > 0.0;
    if ( (std::string *)v14._M_start_of_storage._M_data != &v14 && v14._M_start_of_storage._M_data )
    {
      if ( (unsigned int)(v14._M_buffers._M_end_of_storage - v14._M_start_of_storage._M_data) > 0x80 )
        CustomFree(v14._M_start_of_storage._M_data);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
          v14._M_start_of_storage._M_data,
          v14._M_buffers._M_end_of_storage - v14._M_start_of_storage._M_data);
    }
    if ( Switch )
    {
      v5 = *(_DWORD *)(*((_DWORD *)this + 68) + 20);
      if ( v5 )
      {
        v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
        if ( v6 )
        {
          v7 = 1;
          do
          {
            (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 77) + 20))(
              &v13,
              *((_DWORD *)this + 77),
              v7 - 1);
            if ( v13 )
            {
              glitch::IReferenceCounted::drop(v13);
              v12 = *((glitch::video::CMaterial **)this + 102);
              if ( v12 )
                ++*(_DWORD *)v12;
              v9 = (*(int (__fastcall **)(_DWORD, _DWORD, int, unsigned int))(**((_DWORD **)this + 77) + 56))(
                     *((_DWORD *)this + 77),
                     0,
                     v5,
                     v7 - 1);
              v10 = v9 == 4;
              if ( v9 != 4 )
                v10 = v9 == 16;
              if ( v10 )
              {
                (*(void (__fastcall **)(_DWORD, ShadowSkinnedMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(**((_DWORD **)this + 68) + 36))(
                  *((_DWORD *)this + 68),
                  this,
                  &v12,
                  v7,
                  6,
                  0,
                  0x7FFFFFFF);
              }
              else if ( v9 == 5 )
              {
                (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 36))(*((_DWORD *)this + 77));
              }
              boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v12);
            }
          }
          while ( v6 > v7++ );
        }
      }
    }
  }
  return 1;
}


// ===== 3601fc ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() =====
void __fastcall ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *this)
{
  void *v2; // r0
  size_t v3; // r1
  void *v4; // r0
  size_t v5; // r1

  *(_DWORD *)this = off_960464;
  *((_DWORD *)this + 116) = off_960570;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 111);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 108);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 105);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 102);
  v2 = *((void **)this + 99);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 101) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  v4 = *((void **)this + 96);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 98) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(this, (int *)off_960584);
}


// ===== 3602cc ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() =====
void __fastcall ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *this)
{
  ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(this);
  CustomFree(this);
}


// ===== 3602e8 ShadowModularSkinnedMeshSceneNode::renderMesh(void *) =====
glitch::IReferenceCounted *__fastcall ShadowModularSkinnedMeshSceneNode::renderMesh(
        glitch::IReferenceCounted *this,
        char *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r4
  glitch::video::CVertexStreams **v4; // r5
  char *v5; // r6
  _DWORD *v6; // r3
  int v7; // r8
  int v8; // r2
  glitch::video::CMaterial *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r4
  glitch::IReferenceCounted *v12; // [sp+0h] [bp-10h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v13; // [sp+4h] [bp-Ch] BYREF
  glitch::video::CMaterial *v14; // [sp+8h] [bp-8h] BYREF
  glitch::IReferenceCounted *v15; // [sp+Ch] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 77);
  v3 = this;
  v4 = *(glitch::video::CVertexStreams ***)(*((_DWORD *)this + 68) + 20);
  if ( v2 )
  {
    if ( v4 )
    {
      if ( a2 )
      {
        v5 = a2 - 1;
        this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted **, int, char *))(*(_DWORD *)v2 + 20))(
                                              &v15,
                                              v2,
                                              a2 - 1);
        if ( v15 )
        {
          v6 = *((_DWORD **)v3 + 77);
          if ( (v6[5] & (1 << ((unsigned __int8)v5 & 0x1F))) != 0 )
            v7 = 0;
          else
            v7 = (*(int (__fastcall **)(_DWORD, int, glitch::video::CVertexStreams **, char *))(*v6 + 56))(
                   *((_DWORD *)v3 + 77),
                   1,
                   v4,
                   v5)
               & 4;
          v8 = *((_DWORD *)v3 + 96);
          v9 = *(glitch::video::CMaterial **)(*((_DWORD *)v3 + 108) + 4 * *(_DWORD *)(v8 + 4 * (_DWORD)v5));
          v14 = v9;
          if ( v9 )
          {
            ++*(_DWORD *)v9;
            v8 = *((_DWORD *)v3 + 96);
          }
          v13 = *(glitch::video::CMaterialVertexAttributeMap **)(*((_DWORD *)v3 + 111)
                                                               + 4 * *(_DWORD *)(v8 + 4 * (_DWORD)v5));
          if ( v13 )
            ++*(_DWORD *)v13;
          (*((void (__fastcall **)(glitch::video::CVertexStreams **, int, _DWORD *))*v4 + 27))(v4, 1, (_DWORD *)v3 + 9);
          glitch::video::IVideoDriver::setMaterial((int)v4, &v14, (int)&v13);
          v4[58] = nullptr;
          v12 = v15;
          if ( v15 )
            ++*((_DWORD *)v15 + 1);
          glitch::video::IVideoDriver::drawMeshBuffer(v4, (int)&v12);
          if ( v12 )
            glitch::IReferenceCounted::drop(v12);
          if ( v7 )
            (*(void (__fastcall **)(_DWORD, glitch::video::CVertexStreams **, char *))(**((_DWORD **)v3 + 77) + 60))(
              *((_DWORD *)v3 + 77),
              v4,
              v5);
          v10 = v13;
          if ( v13 )
          {
            if ( (*(_DWORD *)v13)-- == 1 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v10);
              CustomFree(v10);
            }
          }
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v14);
          this = v15;
          if ( v15 )
            return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v15);
        }
      }
    }
  }
  return this;
}


// ===== 3604a8 ShadowModularSkinnedMeshSceneNode::render(void *) =====
void __fastcall ShadowModularSkinnedMeshSceneNode::render(ShadowModularSkinnedMeshSceneNode *this, char *a2)
{
  const char *v3; // r2
  int Switch; // r6
  int v5; // r5
  int v6; // r6
  int v7; // r2
  int v8; // r1
  int v9; // r6
  int v10; // r7
  int v11; // r3
  int v12; // r10
  int v13; // r3
  glitch::IReferenceCounted *v14; // r5
  int v15; // r0
  int v16; // r9
  int v17; // r2
  int v18; // r7
  int i; // r5
  int v20; // r2
  int v21; // r1
  int j; // r7
  int v23; // r3
  glitch::IReferenceCounted *v24; // r5
  int v25; // r0
  int v26; // r9
  int v27; // r2
  void *v29[3]; // [sp+Ch] [bp-38h] BYREF
  glitch::video::CMaterial **v30[3]; // [sp+18h] [bp-2Ch] BYREF
  std::string v31; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v31._M_finish = (char *)&v31;
  v31._M_start_of_storage._M_data = (char *)&v31;
  std::string::_M_range_initialize(&v31, "", v3);
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v31);
  if ( (std::string *)v31._M_start_of_storage._M_data != &v31 && v31._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v31._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v31._M_start_of_storage._M_data,
        v31._M_buffers._M_end_of_storage - v31._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    v5 = *(float *)(*(_DWORD *)(dword_99F73C + 28) + 1048) < 0.0001;
    if ( *(float *)(*(_DWORD *)(dword_99F73C + 28) + 1048) >= 0.0001 )
    {
      ShadowModularSkinnedMeshSceneNode::UpdateShadow(this);
      v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
      if ( v6 )
      {
        do
        {
          v7 = 4 * *(_DWORD *)(*((_DWORD *)this + 96) + 4 * v5);
          v8 = v5++;
          (*(void (__fastcall **)(_DWORD, int, int, int))(**((_DWORD **)this + 77) + 32))(
            *((_DWORD *)this + 77),
            v8,
            *((_DWORD *)this + 108) + v7,
            *((_DWORD *)this + 111) + v7);
        }
        while ( v5 != v6 );
      }
      v9 = *((_DWORD *)this + 77);
      v10 = 0;
      memset(v30, 0, sizeof(v30));
      memset(v29, 0, sizeof(v29));
      v11 = *(_DWORD *)(v9 + 36);
      v12 = (*(_DWORD *)(v9 + 40) - v11) >> 3;
      if ( v12 )
      {
        while ( 1 )
        {
          v13 = v11 + 8 * v10;
          v14 = *(glitch::IReferenceCounted **)(v13 + 4);
          if ( v14 )
          {
            v15 = *(_DWORD *)(v13 + 4);
            v16 = *(_DWORD *)v14;
            ++*((_DWORD *)v14 + 1);
            v17 = 4 * *(_DWORD *)(*((_DWORD *)this + 99) + 4 * v10);
            (*(void (__fastcall **)(int, _DWORD, int, int))(v16 + 32))(
              v15,
              0,
              *((_DWORD *)this + 108) + v17,
              *((_DWORD *)this + 111) + v17);
            glitch::IReferenceCounted::drop(v14);
          }
          if ( ++v10 == v12 )
            break;
          v11 = *(_DWORD *)(v9 + 36);
        }
      }
      ShadowModularSkinnedMeshSceneNode::renderMesh(this, a2);
      v18 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
      if ( v18 )
      {
        for ( i = 0; i != v18; ++i )
        {
          v20 = 4 * *(_DWORD *)(*((_DWORD *)this + 96) + 4 * i);
          v21 = i;
          (*(void (__fastcall **)(_DWORD, int, int, int))(**((_DWORD **)this + 77) + 32))(
            *((_DWORD *)this + 77),
            v21,
            *((_DWORD *)this + 102) + v20,
            *((_DWORD *)this + 105) + v20);
        }
      }
      if ( v12 )
      {
        for ( j = 0; j != v12; ++j )
        {
          v23 = *(_DWORD *)(v9 + 36) + 8 * j;
          v24 = *(glitch::IReferenceCounted **)(v23 + 4);
          if ( v24 )
          {
            v25 = *(_DWORD *)(v23 + 4);
            v26 = *(_DWORD *)v24;
            ++*((_DWORD *)v24 + 1);
            v27 = 4 * *(_DWORD *)(*((_DWORD *)this + 99) + 4 * j);
            (*(void (__fastcall **)(int, _DWORD, int, int))(v26 + 32))(
              v25,
              0,
              *((_DWORD *)this + 102) + v27,
              *((_DWORD *)this + 105) + v27);
            glitch::IReferenceCounted::drop(v24);
          }
        }
      }
      std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector(v29);
      std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector(v30);
    }
  }
}


// ===== 3607a0 ShadowSkinnedMeshSceneNode::renderMesh(void *) =====
glitch::IReferenceCounted *__fastcall ShadowSkinnedMeshSceneNode::renderMesh(glitch::IReferenceCounted *this, char *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r4
  glitch::video::CVertexStreams **v4; // r5
  char *v5; // r6
  _DWORD *v6; // r3
  int v7; // r8
  glitch::video::CMaterial *v8; // r3
  glitch::video::CMaterialVertexAttributeMap *v9; // r4
  glitch::IReferenceCounted *v11; // [sp+0h] [bp-10h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v12; // [sp+4h] [bp-Ch] BYREF
  glitch::video::CMaterial *v13; // [sp+8h] [bp-8h] BYREF
  glitch::IReferenceCounted *v14; // [sp+Ch] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 77);
  v3 = this;
  v4 = *(glitch::video::CVertexStreams ***)(*((_DWORD *)this + 68) + 20);
  if ( v2 )
  {
    if ( v4 )
    {
      if ( a2 )
      {
        v5 = a2 - 1;
        this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted **, int, char *))(*(_DWORD *)v2 + 20))(
                                              &v14,
                                              v2,
                                              a2 - 1);
        if ( v14 )
        {
          v6 = *((_DWORD **)v3 + 77);
          if ( (v6[5] & (1 << ((unsigned __int8)v5 & 0x1F))) != 0 )
            v7 = 0;
          else
            v7 = (*(int (__fastcall **)(_DWORD, int, glitch::video::CVertexStreams **, char *))(*v6 + 56))(
                   *((_DWORD *)v3 + 77),
                   1,
                   v4,
                   v5)
               & 4;
          v8 = *((glitch::video::CMaterial **)v3 + 102);
          v13 = v8;
          if ( v8 )
            ++*(_DWORD *)v8;
          v12 = *((glitch::video::CMaterialVertexAttributeMap **)v3 + 103);
          if ( v12 )
            ++*(_DWORD *)v12;
          (*((void (__fastcall **)(glitch::video::CVertexStreams **, int, int))*v4 + 27))(v4, 1, (int)v3 + 36);
          glitch::video::IVideoDriver::setMaterial((int)v4, &v13, (int)&v12);
          v4[58] = nullptr;
          v11 = v14;
          if ( v14 )
            ++*((_DWORD *)v14 + 1);
          glitch::video::IVideoDriver::drawMeshBuffer(v4, (int)&v11);
          if ( v11 )
            glitch::IReferenceCounted::drop(v11);
          if ( v7 )
            (*(void (__fastcall **)(_DWORD, glitch::video::CVertexStreams **, char *))(**((_DWORD **)v3 + 77) + 60))(
              *((_DWORD *)v3 + 77),
              v4,
              v5);
          v9 = v12;
          if ( v12 )
          {
            if ( (*(_DWORD *)v12)-- == 1 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v9);
              CustomFree(v9);
            }
          }
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v13);
          this = v14;
          if ( v14 )
            return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v14);
        }
      }
    }
  }
  return this;
}


// ===== 360948 ShadowSkinnedMeshSceneNode::render(void *) =====
void __fastcall ShadowSkinnedMeshSceneNode::render(ShadowSkinnedMeshSceneNode *this, char *a2)
{
  const char *v4; // r2
  int Switch; // r10
  std::string v6; // [sp+4h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::string::_M_range_initialize(&v6, "", v4);
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v6);
  if ( (std::string *)v6._M_start_of_storage._M_data != &v6 && v6._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v6._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v6._M_start_of_storage._M_data,
        v6._M_buffers._M_end_of_storage - v6._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    if ( *(float *)(*(_DWORD *)(dword_99F73C + 28) + 1048) >= 0.0001 )
    {
      ShadowSkinnedMeshSceneNode::UpdateShadow(this);
      (*(void (__fastcall **)(_DWORD, _DWORD, char *, char *))(**((_DWORD **)this + 77) + 32))(
        *((_DWORD *)this + 77),
        0,
        (char *)this + 408,
        (char *)this + 412);
      ShadowSkinnedMeshSceneNode::renderMesh(this, a2);
      (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 77) + 32))(
        *((_DWORD *)this + 77),
        0,
        *((_DWORD *)this + 96),
        *((_DWORD *)this + 99));
    }
  }
}


// ===== 360aa8 ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() =====
void __fastcall ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *this,
        int *a2)
{
  int v2; // r3
  void *v5; // r0
  size_t v6; // r1
  void *v7; // r0
  size_t v8; // r1

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[19];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[20];
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 111);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 108);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 105);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 102);
  v5 = *((void **)this + 99);
  if ( v5 )
  {
    v6 = (*((_DWORD *)this + 101) - (_DWORD)v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((void **)this + 96);
  if ( !v7 )
    goto LABEL_7;
  v8 = (*((_DWORD *)this + 98) - (_DWORD)v7) & 0xFFFFFFFC;
  if ( v8 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
LABEL_7:
    BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(this, a2 + 1);
    return;
  }
  CustomFree(v7);
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode(this, a2 + 1);
}


// ===== 360b7c ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() =====
void __fastcall ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(ShadowSkinnedMeshSceneNode *this)
{
  glitch::video::CMaterialVertexAttributeMap *v1; // r6

  v1 = *((glitch::video::CMaterialVertexAttributeMap **)this + 103);
  *(_DWORD *)this = off_960D7C;
  *((_DWORD *)this + 105) = off_960E88;
  if ( v1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v1);
      CustomFree(v1);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 102);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 99);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 96);
  *(_DWORD *)this = off_960F04;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_960F04;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_961010;
  *(_DWORD *)this = off_96103C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_96103C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_961148;
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 360c60 ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() =====
void __fastcall ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(ShadowSkinnedMeshSceneNode *this)
{
  ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(this);
  CustomFree(this);
}


// ===== 360c7c ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() =====
void __fastcall ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(ShadowSkinnedMeshSceneNode *this, int *a2)
{
  int v2; // r3
  glitch::video::CMaterialVertexAttributeMap *v5; // r6
  int v7; // r2
  _DWORD *v8; // r5
  int v9; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[16];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[17];
  v5 = *((glitch::video::CMaterialVertexAttributeMap **)this + 103);
  if ( v5 )
  {
    if ( (*(_DWORD *)v5)-- == 1 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v5);
      CustomFree(v5);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 102);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 99);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 96);
  v7 = a2[1];
  v8 = a2 + 1;
  *(_DWORD *)this = v7;
  *(_DWORD *)((char *)this + *(_DWORD *)(v7 - 28)) = v8[13];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v8[14];
  v9 = v8[1];
  *(_DWORD *)this = v9;
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 28)) = v8[11];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v8[12];
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 360d5c std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>>::_M_erase(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*,std::__false_type const&) =====
glitch::video::CMaterialVertexAttributeMap **__fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_erase(
        int a1,
        glitch::video::CMaterialVertexAttributeMap **a2,
        int a3)
{
  glitch::video::CMaterialVertexAttributeMap **v3; // r4
  int v6; // r9
  glitch::video::CMaterialVertexAttributeMap **v8; // r8
  int v9; // r8
  int v10; // r4
  glitch::video::CMaterialVertexAttributeMap *v11; // r3
  glitch::video::CMaterialVertexAttributeMap *v12; // r7
  bool v13; // zf
  glitch::video::CMaterialVertexAttributeMap **v14; // r7
  glitch::video::CMaterialVertexAttributeMap *v15; // r6

  v3 = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 4);
  v6 = ((int)v3 - a3) >> 2;
  if ( v6 > 0 )
  {
    v9 = ((int)v3 - a3) >> 2;
    v10 = 0;
    do
    {
      v11 = *(glitch::video::CMaterialVertexAttributeMap **)(a3 + v10 * 4);
      if ( v11 )
        ++*(_DWORD *)v11;
      v12 = a2[v10];
      a2[v10++] = v11;
      if ( v12 )
      {
        v13 = (*(_DWORD *)v12)-- == 1;
        if ( v13 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v12);
          CustomFree(v12);
        }
      }
      --v9;
    }
    while ( v9 );
    v3 = *(glitch::video::CMaterialVertexAttributeMap ***)(a1 + 4);
    v8 = &a2[v6];
  }
  else
  {
    v8 = a2;
  }
  if ( v3 != v8 )
  {
    v14 = v8;
    do
    {
      v15 = *v14++;
      if ( v15 )
      {
        v13 = (*(_DWORD *)v15)-- == 1;
        if ( v13 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v15);
          CustomFree(v15);
        }
      }
    }
    while ( v3 != v14 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return a2;
}


// ===== 360e3c std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>>::_M_fill_insert_aux(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*,uint,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&,std::__false_type const&) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_fill_insert_aux(
        int *a1,
        int a2,
        unsigned int a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  int v4; // r12
  unsigned int v7; // r7
  glitch::video::CMaterialVertexAttributeMap *v8; // r3
  int v9; // r8
  int v10; // r8
  unsigned int v11; // r9
  int v12; // r1
  unsigned int v13; // r3
  int v14; // r2
  int *v15; // r3
  int v16; // r10
  _DWORD *v17; // r3
  glitch::video::CMaterialVertexAttributeMap *v18; // r6
  int v19; // r8
  int v20; // r7
  glitch::video::CMaterialVertexAttributeMap *v21; // r3
  glitch::video::CMaterialVertexAttributeMap *v22; // r6
  unsigned int v23; // r2
  int v24; // r6
  unsigned int v25; // r2
  int i; // r1
  glitch::video::CMaterialVertexAttributeMap *v27; // r3
  bool v28; // zf
  int v29; // r7
  int v30; // r1
  int *v31; // r3
  glitch::video::CMaterialVertexAttributeMap *v32; // r3
  glitch::video::CMaterialVertexAttributeMap *v33; // r6
  glitch::video::CMaterialVertexAttributeMap *v34; // [sp+8h] [bp-8h]

  v4 = *a1;
  if ( (unsigned int)a4 < *a1 )
  {
    v7 = a1[1];
    goto LABEL_10;
  }
  v7 = a1[1];
  if ( (unsigned int)a4 >= v7 )
  {
LABEL_10:
    v9 = (int)(v7 - a2) >> 2;
    if ( a3 >= v9 )
    {
      v23 = a3 - v9;
      v24 = (int)(4 * v23) >> 2;
      v25 = v7 + 4 * v23;
      if ( v24 > 0 )
      {
        for ( i = 0; i != v24; ++i )
        {
          v27 = *a4;
          v28 = *a4 == nullptr;
          *(_DWORD *)(v7 + 4 * i) = *a4;
          if ( !v28 )
            v4 = *(_DWORD *)v27;
          if ( !v28 )
            *(_DWORD *)v27 = ++v4;
        }
      }
      a1[1] = v25;
      if ( v9 > 0 )
      {
        v29 = (int)(v7 - a2) >> 2;
        v30 = 0;
        do
        {
          v31 = *(int **)(a2 + v30);
          *(_DWORD *)(v25 + v30) = v31;
          if ( v31 )
            v4 = *v31;
          v30 += 4;
          if ( v31 )
            *v31 = ++v4;
          --v29;
        }
        while ( v29 );
        a1[1] += 4 * v9;
        do
        {
          v32 = *a4;
          if ( *a4 )
            ++*(_DWORD *)v32;
          v33 = *(glitch::video::CMaterialVertexAttributeMap **)(a2 + v29);
          *(_DWORD *)(a2 + v29) = v32;
          v29 += 4;
          if ( v33 )
          {
            v28 = (*(_DWORD *)v33)-- == 1;
            if ( v28 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v33);
              CustomFree(v33);
            }
          }
          --v9;
        }
        while ( v9 );
      }
      else
      {
        a1[1] = v25 + 4 * v9;
      }
    }
    else
    {
      v10 = 4 * a3;
      v11 = v7 - 4 * a3;
      v12 = (int)(4 * a3) >> 2;
      if ( v12 > 0 )
      {
        v14 = 0;
        do
        {
          v15 = *(int **)(v11 + v14);
          *(_DWORD *)(v7 + v14) = v15;
          if ( v15 )
            v4 = *v15;
          v14 += 4;
          if ( v15 )
            *v15 = ++v4;
          --v12;
        }
        while ( v12 );
        v13 = a1[1];
      }
      else
      {
        v13 = v7;
      }
      v16 = (int)(v11 - a2) >> 2;
      a1[1] = v13 + v10;
      if ( v16 > 0 )
      {
        do
        {
          v17 = *(_DWORD **)(v11 - 4);
          v11 -= 4;
          if ( v17 )
            ++*v17;
          v18 = *(glitch::video::CMaterialVertexAttributeMap **)(v7 - 4);
          *(_DWORD *)(v7 - 4) = v17;
          v7 -= 4;
          if ( v18 )
          {
            v28 = (*(_DWORD *)v18)-- == 1;
            if ( v28 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v18);
              CustomFree(v18);
            }
          }
          --v16;
        }
        while ( v16 );
      }
      v19 = v10 >> 2;
      if ( v19 > 0 )
      {
        v20 = 0;
        do
        {
          v21 = *a4;
          if ( *a4 )
            ++*(_DWORD *)v21;
          v22 = *(glitch::video::CMaterialVertexAttributeMap **)(a2 + v20);
          *(_DWORD *)(a2 + v20) = v21;
          v20 += 4;
          if ( v22 )
          {
            v28 = (*(_DWORD *)v22)-- == 1;
            if ( v28 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v22);
              CustomFree(v22);
            }
          }
          --v19;
        }
        while ( v19 );
      }
    }
    return;
  }
  v8 = *a4;
  v34 = v8;
  if ( v8 )
    ++*(_DWORD *)v8;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_fill_insert_aux(a1);
  if ( v34 )
  {
    v28 = (*(_DWORD *)v34)-- == 1;
    if ( v28 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v34);
      CustomFree(v34);
    }
  }
}


// ===== 3610dc std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>>::_M_fill_insert(boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>*,uint,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_fill_insert(
        int *a1,
        int a2,
        unsigned int a3,
        glitch::video::CMaterialVertexAttributeMap **a4)
{
  _DWORD *v8; // r0
  int v9; // r1
  int v10; // r12
  _DWORD *v11; // r8
  int v12; // lr
  int v13; // r2
  _DWORD **v14; // r3
  int v15; // r12
  _DWORD *v16; // r7
  int i; // r2
  glitch::video::CMaterialVertexAttributeMap *v18; // r3
  bool v19; // zf
  int v20; // r12
  int v21; // r1
  int v22; // r2
  _DWORD **v23; // r3
  size_t v24; // r3
  glitch::video::CMaterialVertexAttributeMap *v25; // r3
  size_t size; // [sp+8h] [bp-8h] BYREF

  if ( a3 )
  {
    if ( a3 <= (a1[2] - a1[1]) >> 2 )
    {
      std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_fill_insert_aux(a1, a2, a3, a4);
    }
    else
    {
      size = std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_compute_next_size(a1, a3);
      v8 = std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_allocate(
             (int)(a1 + 2),
             size,
             &size);
      v10 = *a1;
      v11 = v8;
      v12 = (a2 - *a1) >> 2;
      if ( v12 > 0 )
      {
        v9 = (a2 - *a1) >> 2;
        v13 = 0;
        do
        {
          v14 = *(_DWORD ***)(v10 + v13 * 4);
          v11[v13] = v14;
          if ( v14 )
            v8 = *v14;
          ++v13;
          if ( v14 )
          {
            v8 = (_DWORD *)((char *)v8 + 1);
            *v14 = v8;
          }
          --v9;
        }
        while ( v9 );
        v8 = &v11[v12];
      }
      if ( a3 == 1 )
      {
        v25 = *a4;
        v16 = v8 + 1;
        v19 = *a4 == nullptr;
        *v8 = *a4;
        if ( !v19 )
          ++*(_DWORD *)v25;
      }
      else
      {
        v15 = (int)(4 * a3) >> 2;
        v16 = &v8[a3];
        if ( v15 > 0 )
        {
          for ( i = 0; i != v15; ++i )
          {
            v18 = *a4;
            v19 = *a4 == nullptr;
            v8[i] = *a4;
            if ( !v19 )
              v9 = *(_DWORD *)v18;
            if ( !v19 )
              *(_DWORD *)v18 = ++v9;
          }
        }
      }
      v20 = (a1[1] - a2) >> 2;
      if ( v20 > 0 )
      {
        v21 = (a1[1] - a2) >> 2;
        v22 = 0;
        do
        {
          v23 = *(_DWORD ***)(a2 + v22 * 4);
          v16[v22] = v23;
          if ( v23 )
            v8 = *v23;
          ++v22;
          if ( v23 )
          {
            v8 = (_DWORD *)((char *)v8 + 1);
            *v23 = v8;
          }
          --v21;
        }
        while ( v21 );
        v16 += v20;
      }
      std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_clear_after_move((void **)a1);
      v24 = size;
      *a1 = (int)v11;
      a1[1] = (int)v16;
      a1[2] = (int)&v11[v24];
    }
  }
}


// ===== 361248 std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>,std::allocator<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>>::resize(uint,boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&) =====
void __fastcall std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::resize(
        int *a1,
        unsigned int a2,
        glitch::video::CMaterialVertexAttributeMap **a3)
{
  glitch::video::CMaterialVertexAttributeMap **v3; // r12
  unsigned int v5; // r2
  glitch::video::CMaterialVertexAttributeMap **v6; // r1

  v3 = (glitch::video::CMaterialVertexAttributeMap **)a1[1];
  v5 = ((int)v3 - *a1) >> 2;
  if ( a2 >= v5 )
  {
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_fill_insert(
      a1,
      a1[1],
      a2 - v5,
      a3);
  }
  else
  {
    v6 = (glitch::video::CMaterialVertexAttributeMap **)(*a1 + 4 * a2);
    if ( v6 != v3 )
      std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_erase((int)a1, v6, a1[1]);
  }
}


// ===== 361298 ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial(void) =====
void __fastcall ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial(ShadowModularSkinnedMeshSceneNode *this)
{
  int v2; // r5
  int v3; // r2
  int v4; // r3
  glitch::video::CMaterialVertexAttributeMap *v5; // r5
  bool v6; // zf
  int v7; // r5
  unsigned int *v8; // r2
  int v9; // r1
  unsigned int *v10; // r3
  int v11; // r7
  int v12; // r3
  glitch::video::CMaterialVertexAttributeMap *v13; // r6
  int v14; // r9
  unsigned int *v15; // r10
  int v16; // r11
  int v17; // r8
  int v18; // r6
  int v19; // r5
  glitch::video::CMaterial *v20; // r10
  glitch::video::CMaterial *v21; // r6
  unsigned int v22; // r3
  int v23; // r6
  glitch::video::CMaterial **v24; // r10
  glitch::video::CMaterial *v25; // r2
  int v26; // r10
  glitch::video::CMaterialVertexAttributeMap *v27; // r2
  glitch::video::CMaterialVertexAttributeMap **v28; // r10
  glitch::video::CMaterialVertexAttributeMap *v29; // r3
  glitch::video::CMaterialVertexAttributeMap *v30; // r10
  unsigned int v31; // r1
  unsigned int v32; // r5
  glitch::video::CMaterialVertexAttributeMap *v33; // r6
  int v34; // r3
  int v35; // r10
  glitch::IReferenceCounted *v36; // r7
  int i; // r6
  int v38; // r6
  unsigned int v39; // r10
  int v40; // r3
  int v41; // r3
  glitch::video::CMaterialVertexAttributeMap *v42; // r7
  int v43; // r7
  glitch::video::CMaterial *v44; // r3
  int v45; // r7
  glitch::video::CMaterialVertexAttributeMap *v46; // r2
  glitch::video::CMaterialVertexAttributeMap *v47; // r3
  glitch::video::CMaterialVertexAttributeMap *v48; // r5
  glitch::video::CMaterialVertexAttributeMap *p; // [sp+Ch] [bp-80h]
  glitch::video::CMaterial *pa; // [sp+Ch] [bp-80h]
  glitch::video::CMaterialVertexAttributeMap *pb; // [sp+Ch] [bp-80h]
  glitch::video::CMaterial *v52; // [sp+10h] [bp-7Ch]
  unsigned int v53; // [sp+14h] [bp-78h]
  unsigned int v54; // [sp+1Ch] [bp-70h]
  _DWORD *v55; // [sp+2Ch] [bp-60h]
  _BYTE v56[8]; // [sp+38h] [bp-54h] BYREF
  glitch::video::CMaterial *v57; // [sp+40h] [bp-4Ch] BYREF
  glitch::video::CMaterial *v58; // [sp+44h] [bp-48h] BYREF
  glitch::video::CMaterial *v59; // [sp+48h] [bp-44h] BYREF
  glitch::video::CMaterial *v60; // [sp+4Ch] [bp-40h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v61; // [sp+50h] [bp-3Ch] BYREF
  glitch::video::CMaterial *v62; // [sp+54h] [bp-38h] BYREF
  glitch::video::CMaterial *v63; // [sp+58h] [bp-34h] BYREF
  int v64; // [sp+5Ch] [bp-30h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v65; // [sp+60h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v66; // [sp+64h] [bp-28h] BYREF
  glitch::video::CMaterial *v67; // [sp+68h] [bp-24h] BYREF
  glitch::video::CMaterial *v68; // [sp+6Ch] [bp-20h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v69; // [sp+70h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v70; // [sp+74h] [bp-18h] BYREF
  int v71; // [sp+78h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v72; // [sp+7Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v73; // [sp+80h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v74; // [sp+84h] [bp-8h] BYREF

  v2 = *(_DWORD *)(dword_99F73C + 16);
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v56,
    "gl_shadowprojection.bdae",
    (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
  glitch::collada::CColladaDatabase::constructEffect(
    (int)&v74,
    (glitch::collada::CColladaDatabase *)v56,
    v2,
    "GL_ShadowProjection-fx",
    0);
  v55 = *((_DWORD **)this + 77);
  v53 = (*(int (__fastcall **)(_DWORD *))(*v55 + 16))(v55);
  v3 = v55[10];
  v4 = v55[9];
  v73 = nullptr;
  v54 = (v3 - v4) >> 3;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize((_DWORD *)this + 102, v53, &v73);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v73);
  v72 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::resize((int *)this + 105, v53, &v72);
  v5 = v72;
  if ( v72 )
  {
    v6 = (*(_DWORD *)v72)-- == 1;
    if ( v6 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v5);
      CustomFree(v5);
    }
  }
  v7 = 0;
  v71 = 0;
  std::vector<int>::resize((int)this + 384, v53, (char *)&v71);
  v8 = *((unsigned int **)this + 102);
  v9 = *((_DWORD *)this + 103);
  v10 = v8;
  v11 = (v9 - (int)v8) >> 2;
  if ( v11 )
  {
    while ( 1 )
    {
      v60 = nullptr;
      v60 = (glitch::video::CMaterial *)v8[v7];
      v8[v7] = 0;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v60);
      v12 = *((_DWORD *)this + 105);
      v13 = *(glitch::video::CMaterialVertexAttributeMap **)(v12 + 4 * v7);
      *(_DWORD *)(v12 + 4 * v7++) = 0;
      if ( v13 )
      {
        v6 = (*(_DWORD *)v13)-- == 1;
        if ( v6 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v13);
          CustomFree(v13);
        }
      }
      if ( v7 == v11 )
        break;
      v8 = *((unsigned int **)this + 102);
    }
    v10 = *((unsigned int **)this + 102);
    v9 = *((_DWORD *)this + 103);
  }
  v14 = (v9 - (int)v10) >> 2;
  v15 = v10;
  if ( !v53 )
    goto LABEL_44;
  v16 = 0;
  v17 = 0;
  while ( !v14 )
  {
LABEL_36:
    ++v17;
    v16 += 4;
    if ( v17 == v53 )
      goto LABEL_39;
LABEL_37:
    v15 = v10;
  }
  v18 = 0;
  v19 = 0;
  while ( 1 )
  {
    v22 = v15[v18];
    v23 = v18;
    v24 = (glitch::video::CMaterial **)&v15[v23];
    if ( !v22 )
    {
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(**((_DWORD **)this + 77) + 24))(
        &v70,
        *((_DWORD *)this + 77),
        v17);
      v25 = v70;
      v58 = v70;
      if ( v70 )
      {
        ++*(_DWORD *)v70;
        v25 = v58;
      }
      v58 = *v24;
      *v24 = v25;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v58);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v70);
      v26 = *((_DWORD *)this + 105);
      (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, int))(**((_DWORD **)this + 77) + 28))(
        &v69,
        *((_DWORD *)this + 77),
        v17);
      v27 = v69;
      v28 = (glitch::video::CMaterialVertexAttributeMap **)(v26 + v16);
      if ( v69 )
        ++*(_DWORD *)v69;
      v29 = *v28;
      *v28 = v27;
      if ( v29 )
      {
        v6 = (*(_DWORD *)v29)-- == 1;
        if ( v6 )
        {
          p = v29;
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v29);
          CustomFree(p);
        }
      }
      v30 = v69;
      if ( v69 )
      {
        v6 = (*(_DWORD *)v69)-- == 1;
        if ( v6 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v30);
          CustomFree(v30);
        }
      }
      *(_DWORD *)(*((_DWORD *)this + 96) + v16) = v19;
    }
    (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(**((_DWORD **)this + 77) + 24))(
      &v68,
      *((_DWORD *)this + 77),
      v17);
    v20 = v68;
    v21 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 102) + v23 * 4);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v68);
    if ( v20 == v21 )
    {
      *(_DWORD *)(*((_DWORD *)this + 96) + v16) = v19;
      v10 = *((unsigned int **)this + 102);
      v15 = v10;
      goto LABEL_36;
    }
    v18 = ++v19;
    if ( v19 == v14 )
      break;
    v15 = *((unsigned int **)this + 102);
  }
  v10 = *((unsigned int **)this + 102);
  ++v17;
  v15 = v10;
  v16 += 4;
  if ( v17 != v53 )
    goto LABEL_37;
LABEL_39:
  v31 = *v10;
  if ( *v10 )
  {
    v31 = 0;
    while ( ++v31 != v53 )
    {
      if ( !v10[v31] )
        goto LABEL_78;
    }
    v9 = *((_DWORD *)this + 103);
  }
  else
  {
LABEL_78:
    v67 = nullptr;
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize((_DWORD *)this + 102, v31, &v67);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v67);
    v15 = *((unsigned int **)this + 102);
    v9 = *((_DWORD *)this + 103);
  }
LABEL_44:
  v66 = nullptr;
  v32 = (v9 - (int)v15) >> 2;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize((_DWORD *)this + 108, v32, &v66);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v66);
  v65 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::resize((int *)this + 111, v32, &v65);
  v33 = v65;
  if ( v65 )
  {
    v34 = *(_DWORD *)v65 - 1;
    *(_DWORD *)v65 = v34;
    if ( !v34 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v33);
      CustomFree(v33);
    }
  }
  v35 = 0;
  v64 = 0;
  std::vector<int>::resize((int)this + 396, v54, (char *)&v64);
  if ( v54 )
  {
    do
    {
      v36 = *(glitch::IReferenceCounted **)(v55[9] + 8 * v35 + 4);
      if ( v36 )
      {
        ++*((_DWORD *)v36 + 1);
        if ( v32 )
        {
          for ( i = 0; i != v32; ++i )
          {
            (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v36 + 24))(
              &v63,
              v36,
              0);
            v52 = v63;
            pa = *(glitch::video::CMaterial **)(*((_DWORD *)this + 102) + 4 * i);
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v63);
            if ( v52 == pa )
              *(_DWORD *)(*((_DWORD *)this + 99) + 4 * v35) = i;
          }
        }
        glitch::IReferenceCounted::drop(v36);
      }
      ++v35;
    }
    while ( v35 != v54 );
  }
  if ( v32 )
  {
    v38 = 0;
    v39 = v32;
    do
    {
      v40 = *((_DWORD *)this + 108);
      v59 = nullptr;
      v59 = *(glitch::video::CMaterial **)(v40 + 4 * v38);
      *(_DWORD *)(v40 + 4 * v38) = 0;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v59);
      v41 = *((_DWORD *)this + 111);
      v42 = *(glitch::video::CMaterialVertexAttributeMap **)(v41 + 4 * v38);
      *(_DWORD *)(v41 + 4 * v38) = 0;
      if ( v42 )
      {
        v6 = (*(_DWORD *)v42)-- == 1;
        if ( v6 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v42);
          CustomFree(v42);
        }
      }
      if ( *(_DWORD *)(*((_DWORD *)this + 102) + 4 * v38) )
      {
        v43 = *((_DWORD *)this + 108);
        glitch::video::CMaterial::allocate(&v62, &v74, "SH_SHADOW_SKINNED_MODULAR", 0);
        v44 = v62;
        v57 = v62;
        if ( v62 )
        {
          ++*(_DWORD *)v62;
          v44 = v57;
        }
        v57 = *(glitch::video::CMaterial **)(v43 + 4 * v38);
        *(_DWORD *)(v43 + 4 * v38) = v44;
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v57);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v62);
        *(_BYTE *)(*(_DWORD *)(*((_DWORD *)this + 108) + 4 * v38) + 8) = 3;
        if ( *(_DWORD *)(*((_DWORD *)this + 105) + 4 * v38) )
        {
          v45 = *((_DWORD *)this + 111);
          glitch::video::CMaterialVertexAttributeMap::allocate(&v61, *(_DWORD *)(*((_DWORD *)this + 108) + 4 * v38) + 4);
          v46 = v61;
          if ( v61 )
            ++*(_DWORD *)v61;
          v47 = *(glitch::video::CMaterialVertexAttributeMap **)(v45 + 4 * v38);
          *(_DWORD *)(v45 + 4 * v38) = v46;
          if ( v47 )
          {
            v6 = (*(_DWORD *)v47)-- == 1;
            if ( v6 )
            {
              pb = v47;
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v47);
              CustomFree(pb);
            }
          }
          v48 = v61;
          if ( v61 )
          {
            v6 = (*(_DWORD *)v61)-- == 1;
            if ( v6 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v48);
              CustomFree(v48);
            }
          }
        }
      }
      ++v38;
    }
    while ( v38 != v39 );
  }
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v74);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v56);
}


// ===== 3619c8 ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>,glitch::scene::ISceneNode const*,glitch::scene::ISceneNode const*) =====
ShadowModularSkinnedMeshSceneNode *__fastcall ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *a1,
        int a2,
        int a3,
        int a4)
{
  *((_DWORD *)a1 + 116) = off_95B720;
  *(_DWORD *)a1 = off_960D34;
  *((_DWORD *)a1 + 117) = 1;
  *(int *)((char *)&elf_hash_bucket[61] + (_DWORD)a1) = (int)off_960D54;
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, (int *)off_960584, a2);
  *((_DWORD *)a1 + 113) = 0;
  *((_DWORD *)a1 + 114) = a3;
  *((_DWORD *)a1 + 115) = a4;
  *(_DWORD *)a1 = off_960464;
  *((_DWORD *)a1 + 116) = off_960570;
  *((_DWORD *)a1 + 96) = 0;
  *((_DWORD *)a1 + 97) = 0;
  *((_DWORD *)a1 + 98) = 0;
  *((_DWORD *)a1 + 99) = 0;
  *((_DWORD *)a1 + 100) = 0;
  *((_DWORD *)a1 + 101) = 0;
  *((_DWORD *)a1 + 102) = 0;
  *((_DWORD *)a1 + 103) = 0;
  *((_DWORD *)a1 + 104) = 0;
  *((_DWORD *)a1 + 105) = 0;
  *((_DWORD *)a1 + 106) = 0;
  *((_DWORD *)a1 + 107) = 0;
  *((_DWORD *)a1 + 108) = 0;
  *((_DWORD *)a1 + 109) = 0;
  *((_DWORD *)a1 + 110) = 0;
  *((_DWORD *)a1 + 111) = 0;
  *((_DWORD *)a1 + 112) = 0;
  ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial(a1);
  return a1;
}


// ===== 361ab0 ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>,glitch::scene::ISceneNode const*,glitch::scene::ISceneNode const*) =====
ShadowModularSkinnedMeshSceneNode *__fastcall ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *a1,
        int *a2,
        int a3,
        int a4,
        int a5)
{
  int v8; // r2

  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, a2 + 1, a3);
  v8 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v8 - 28)) = a2[19];
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[20];
  *((_DWORD *)a1 + 113) = 0;
  *((_DWORD *)a1 + 114) = a4;
  *((_DWORD *)a1 + 96) = 0;
  *((_DWORD *)a1 + 97) = 0;
  *((_DWORD *)a1 + 115) = a5;
  *((_DWORD *)a1 + 98) = 0;
  *((_DWORD *)a1 + 99) = 0;
  *((_DWORD *)a1 + 100) = 0;
  *((_DWORD *)a1 + 101) = 0;
  *((_DWORD *)a1 + 102) = 0;
  *((_DWORD *)a1 + 103) = 0;
  *((_DWORD *)a1 + 104) = 0;
  *((_DWORD *)a1 + 105) = 0;
  *((_DWORD *)a1 + 106) = 0;
  *((_DWORD *)a1 + 107) = 0;
  *((_DWORD *)a1 + 108) = 0;
  *((_DWORD *)a1 + 109) = 0;
  *((_DWORD *)a1 + 110) = 0;
  *((_DWORD *)a1 + 111) = 0;
  *((_DWORD *)a1 + 112) = 0;
  ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial(a1);
  return a1;
}


// ===== 361b54 ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>,glitch::scene::ISceneNode const*) =====
int __fastcall ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(int a1, int a2, int a3)
{
  int v5; // r5
  unsigned int v6; // r5
  glitch::video::CMaterial *v7; // r3
  glitch::video::CMaterial *v8; // r2
  glitch::video::CMaterialVertexAttributeMap *v9; // r3
  glitch::video::CMaterialVertexAttributeMap *v10; // r6
  bool v11; // zf
  glitch::video::CMaterialVertexAttributeMap *v12; // r6
  int v13; // r6
  int v14; // r7
  int v15; // r2
  glitch::video::CMaterial *v16; // r1
  int v17; // r3
  glitch::video::CMaterialVertexAttributeMap *v18; // r6
  int v19; // r6
  int v20; // r7
  glitch::video::CMaterialVertexAttributeMap *v21; // r3
  int v22; // r2
  glitch::video::CMaterialVertexAttributeMap *v23; // r10
  glitch::video::CMaterialVertexAttributeMap *v24; // r7
  _BYTE v26[8]; // [sp+Ch] [bp-30h] BYREF
  glitch::video::CMaterial *v27; // [sp+14h] [bp-28h] BYREF
  glitch::video::CMaterial *v28; // [sp+18h] [bp-24h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v29; // [sp+1Ch] [bp-20h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v30; // [sp+20h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v31; // [sp+24h] [bp-18h] BYREF
  glitch::video::CMaterial *v32; // [sp+28h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v33; // [sp+2Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v34; // [sp+30h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v35; // [sp+34h] [bp-8h] BYREF

  *(_DWORD *)(a1 + 424) = 1;
  *(_DWORD *)(a1 + 420) = off_95B720;
  *(_DWORD *)a1 = off_961504;
  *(int *)((char *)&elf_hash_bucket[50] + a1) = (int)off_961524;
  BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(a1, (int *)off_960E9C, a2);
  *(_DWORD *)(a1 + 416) = a3;
  *(_DWORD *)(a1 + 420) = off_960E88;
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)a1 = off_960D7C;
  v5 = *(_DWORD *)(dword_99F73C + 16);
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v26,
    "gl_shadowprojection.bdae",
    (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
  glitch::collada::CColladaDatabase::constructEffect(
    (int)&v35,
    (glitch::collada::CColladaDatabase *)v26,
    v5,
    "GL_ShadowProjection-fx",
    0);
  v6 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 308) + 16))(*(_DWORD *)(a1 + 308));
  glitch::video::CMaterial::allocate(&v34, &v35, "SH_SHADOW_SKINNED", 0);
  v7 = v34;
  v28 = v34;
  if ( v34 )
  {
    ++*(_DWORD *)v34;
    v7 = v28;
  }
  v8 = *(glitch::video::CMaterial **)(a1 + 408);
  *(_DWORD *)(a1 + 408) = v7;
  v28 = v8;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v28);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v34);
  *(_BYTE *)(*(_DWORD *)(a1 + 408) + 8) = 0;
  glitch::video::CMaterialVertexAttributeMap::allocate(&v33, *(_DWORD *)(a1 + 408) + 4);
  v9 = v33;
  if ( v33 )
    ++*(_DWORD *)v33;
  v10 = *(glitch::video::CMaterialVertexAttributeMap **)(a1 + 412);
  *(_DWORD *)(a1 + 412) = v9;
  if ( v10 )
  {
    v11 = (*(_DWORD *)v10)-- == 1;
    if ( v11 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v10);
      CustomFree(v10);
    }
  }
  v12 = v33;
  if ( v33 )
  {
    v11 = (*(_DWORD *)v33)-- == 1;
    if ( v11 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v12);
      CustomFree(v12);
    }
  }
  v13 = 0;
  v32 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize((_DWORD *)(a1 + 384), v6, &v32);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v32);
  if ( v6 )
  {
    do
    {
      v14 = *(_DWORD *)(a1 + 384);
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(**(_DWORD **)(a1 + 308) + 24))(
        &v31,
        *(_DWORD *)(a1 + 308),
        v13);
      v16 = v31;
      v17 = 4 * v13;
      v27 = v31;
      if ( v31 )
        v15 = *(_DWORD *)v31;
      ++v13;
      if ( v31 )
      {
        *(_DWORD *)v31 = v15 + 1;
        v16 = v27;
      }
      v27 = *(glitch::video::CMaterial **)(v14 + v17);
      *(_DWORD *)(v14 + v17) = v16;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v27);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v31);
    }
    while ( v13 != v6 );
  }
  v30 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::resize((int *)(a1 + 396), v6, &v30);
  v18 = v30;
  if ( v30 )
  {
    v11 = (*(_DWORD *)v30)-- == 1;
    if ( v11 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v18);
      CustomFree(v18);
    }
  }
  if ( v6 )
  {
    v19 = 0;
    do
    {
      v20 = *(_DWORD *)(a1 + 396);
      (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, int))(**(_DWORD **)(a1 + 308) + 28))(
        &v29,
        *(_DWORD *)(a1 + 308),
        v19);
      v21 = v29;
      v22 = 4 * v19++;
      if ( v29 )
        ++*(_DWORD *)v29;
      v23 = *(glitch::video::CMaterialVertexAttributeMap **)(v20 + v22);
      *(_DWORD *)(v20 + v22) = v21;
      if ( v23 )
      {
        v11 = (*(_DWORD *)v23)-- == 1;
        if ( v11 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v23);
          CustomFree(v23);
        }
      }
      v24 = v29;
      if ( v29 )
      {
        v11 = (*(_DWORD *)v29)-- == 1;
        if ( v11 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v24);
          CustomFree(v24);
        }
      }
    }
    while ( v19 != v6 );
  }
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v35);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v26);
  return a1;
}


// ===== 361f24 ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>,glitch::scene::ISceneNode const*) =====
int __fastcall ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(int a1, int *a2, int a3, int a4)
{
  int v7; // r3
  int v8; // r5
  unsigned int v9; // r5
  glitch::video::CMaterial *v10; // r3
  glitch::video::CMaterial *v11; // r2
  glitch::video::CMaterialVertexAttributeMap *v12; // r3
  glitch::video::CMaterialVertexAttributeMap *v13; // r6
  bool v14; // zf
  glitch::video::CMaterialVertexAttributeMap *v15; // r6
  int v16; // r6
  int v17; // r7
  int v18; // r2
  glitch::video::CMaterial *v19; // r1
  int v20; // r3
  glitch::video::CMaterialVertexAttributeMap *v21; // r6
  int v22; // r6
  int v23; // r7
  glitch::video::CMaterialVertexAttributeMap *v24; // r3
  int v25; // r2
  glitch::video::CMaterialVertexAttributeMap *v26; // r10
  glitch::video::CMaterialVertexAttributeMap *v27; // r7
  _BYTE v29[8]; // [sp+Ch] [bp-30h] BYREF
  glitch::video::CMaterial *v30; // [sp+14h] [bp-28h] BYREF
  glitch::video::CMaterial *v31; // [sp+18h] [bp-24h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v32; // [sp+1Ch] [bp-20h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v33; // [sp+20h] [bp-1Ch] BYREF
  glitch::video::CMaterial *v34; // [sp+24h] [bp-18h] BYREF
  glitch::video::CMaterial *v35; // [sp+28h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v36; // [sp+2Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v37; // [sp+30h] [bp-Ch] BYREF
  glitch::video::CMaterialRenderer *v38; // [sp+34h] [bp-8h] BYREF

  BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(a1, a2 + 1, a3);
  v7 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v7 - 28)) = a2[16];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[17];
  *(_DWORD *)(a1 + 384) = 0;
  *(_DWORD *)(a1 + 388) = 0;
  *(_DWORD *)(a1 + 392) = 0;
  *(_DWORD *)(a1 + 396) = 0;
  *(_DWORD *)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 404) = 0;
  *(_DWORD *)(a1 + 408) = 0;
  *(_DWORD *)(a1 + 412) = 0;
  *(_DWORD *)(a1 + 416) = a4;
  v8 = *(_DWORD *)(dword_99F73C + 16);
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v29,
    "gl_shadowprojection.bdae",
    (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
  glitch::collada::CColladaDatabase::constructEffect(
    (int)&v38,
    (glitch::collada::CColladaDatabase *)v29,
    v8,
    "GL_ShadowProjection-fx",
    0);
  v9 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 308) + 16))(*(_DWORD *)(a1 + 308));
  glitch::video::CMaterial::allocate(&v37, &v38, "SH_SHADOW_SKINNED", 0);
  v10 = v37;
  v31 = v37;
  if ( v37 )
  {
    ++*(_DWORD *)v37;
    v10 = v31;
  }
  v11 = *(glitch::video::CMaterial **)(a1 + 408);
  *(_DWORD *)(a1 + 408) = v10;
  v31 = v11;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v31);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v37);
  *(_BYTE *)(*(_DWORD *)(a1 + 408) + 8) = 0;
  glitch::video::CMaterialVertexAttributeMap::allocate(&v36, *(_DWORD *)(a1 + 408) + 4);
  v12 = v36;
  if ( v36 )
    ++*(_DWORD *)v36;
  v13 = *(glitch::video::CMaterialVertexAttributeMap **)(a1 + 412);
  *(_DWORD *)(a1 + 412) = v12;
  if ( v13 )
  {
    v14 = (*(_DWORD *)v13)-- == 1;
    if ( v14 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v13);
      CustomFree(v13);
    }
  }
  v15 = v36;
  if ( v36 )
  {
    v14 = (*(_DWORD *)v36)-- == 1;
    if ( v14 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v15);
      CustomFree(v15);
    }
  }
  v16 = 0;
  v35 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize((_DWORD *)(a1 + 384), v9, &v35);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v35);
  if ( v9 )
  {
    do
    {
      v17 = *(_DWORD *)(a1 + 384);
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(**(_DWORD **)(a1 + 308) + 24))(
        &v34,
        *(_DWORD *)(a1 + 308),
        v16);
      v19 = v34;
      v20 = 4 * v16;
      v30 = v34;
      if ( v34 )
        v18 = *(_DWORD *)v34;
      ++v16;
      if ( v34 )
      {
        *(_DWORD *)v34 = v18 + 1;
        v19 = v30;
      }
      v30 = *(glitch::video::CMaterial **)(v17 + v20);
      *(_DWORD *)(v17 + v20) = v19;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v30);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v34);
    }
    while ( v16 != v9 );
  }
  v33 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::resize((int *)(a1 + 396), v9, &v33);
  v21 = v33;
  if ( v33 )
  {
    v14 = (*(_DWORD *)v33)-- == 1;
    if ( v14 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v21);
      CustomFree(v21);
    }
  }
  if ( v9 )
  {
    v22 = 0;
    do
    {
      v23 = *(_DWORD *)(a1 + 396);
      (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, int))(**(_DWORD **)(a1 + 308) + 28))(
        &v32,
        *(_DWORD *)(a1 + 308),
        v22);
      v24 = v32;
      v25 = 4 * v22++;
      if ( v32 )
        ++*(_DWORD *)v32;
      v26 = *(glitch::video::CMaterialVertexAttributeMap **)(v23 + v25);
      *(_DWORD *)(v23 + v25) = v24;
      if ( v26 )
      {
        v14 = (*(_DWORD *)v26)-- == 1;
        if ( v14 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v26);
          CustomFree(v26);
        }
      }
      v27 = v32;
      if ( v32 )
      {
        v14 = (*(_DWORD *)v32)-- == 1;
        if ( v14 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v27);
          CustomFree(v27);
        }
      }
    }
    while ( v22 != v9 );
  }
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v38);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v29);
  return a1;
}


// ===== 3622bc `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(
        ShadowSkinnedMeshSceneNode *this)
{
  ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode((ShadowSkinnedMeshSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 3622cc `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(
        ShadowSkinnedMeshSceneNode *this)
{
  ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode((ShadowSkinnedMeshSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 3622dc `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(
        ShadowSkinnedMeshSceneNode *this)
{
  ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode((ShadowSkinnedMeshSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 3622ec `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode(
        ShadowSkinnedMeshSceneNode *this)
{
  ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode((ShadowSkinnedMeshSceneNode *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 3622fc `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *this)
{
  ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode((ShadowModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 36230c `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *this)
{
  ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode((ShadowModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 36231c `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *this)
{
  ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode((ShadowModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 36232c `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode(
        ShadowModularSkinnedMeshSceneNode *this)
{
  ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode((ShadowModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 36233c SkyBoxMeshSceneNode::getType(void) =====
int __fastcall SkyBoxMeshSceneNode::getType(SkyBoxMeshSceneNode *this)
{
  return 1601792883;
}


// ===== 362348 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_SkyBoxMeshSceneNode.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_SkyBoxMeshSceneNode.cpp()
{
  dword_9A22C4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A22C0 = 1056964608;
}


// ===== 362368 glitch::intrusive_ptr_release(glitch::ISharedMemoryBlockHeader<glitch::video::CMaterialVertexAttributeMap> const*) =====
void __fastcall glitch::intrusive_ptr_release(glitch::video::CMaterialVertexAttributeMap *a1)
{
  if ( (*(_DWORD *)a1)-- == 1 )
  {
    glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(a1);
    CustomFree(a1);
  }
}


// ===== 362398 SkyBoxMeshSceneNode::render(void *) =====
glitch::IReferenceCounted *__fastcall SkyBoxMeshSceneNode::render(glitch::IReferenceCounted *this, char *a2)
{
  glitch::IReferenceCounted *v2; // r4
  int v4; // r3
  int v5; // r8
  glitch::video::CVertexStreams **v6; // r5
  bool v7; // zf
  int v8; // r7
  int v9; // r3
  int v10; // r1
  float v11; // r0
  float v12; // r0
  int v13; // r3
  char *v14; // r6
  _DWORD *v15; // r3
  char v16; // r0
  _DWORD v17[3]; // [sp+0h] [bp-20h] BYREF
  glitch::IReferenceCounted *v18; // [sp+Ch] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v19; // [sp+10h] [bp-10h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v20; // [sp+14h] [bp-Ch] BYREF
  glitch::video::CMaterial *v21; // [sp+18h] [bp-8h] BYREF
  glitch::IReferenceCounted *v22; // [sp+1Ch] [bp-4h] BYREF

  v2 = this;
  if ( *((_BYTE *)this + 312) )
  {
    v4 = *((_DWORD *)this + 68);
    v5 = *(_DWORD *)(v4 + 228);
    v6 = *(glitch::video::CVertexStreams ***)(v4 + 20);
    if ( *((_DWORD *)this + 77) )
    {
      v7 = v6 == nullptr;
      if ( v6 )
        v7 = v5 == 0;
      if ( !v7 )
      {
        v8 = 0;
        glitch::scene::ISceneNode::getAbsolutePosition(v17, *(_DWORD **)(v4 + 228));
        v9 = v17[2];
        v10 = v17[0];
        *((_DWORD *)v2 + 22) = v17[1];
        *((_DWORD *)v2 + 23) = v9;
        *((_DWORD *)v2 + 21) = v10;
        *((_BYTE *)v2 + 100) = 0;
        v11 = (*(float (__fastcall **)(int))(*(_DWORD *)v5 + 284))(v5);
        v12 = v11 + v11;
        v13 = *((_DWORD *)v2 + 77);
        *((float *)v2 + 19) = v12;
        *((float *)v2 + 9) = v12;
        *((float *)v2 + 14) = v12;
        *((_BYTE *)v2 + 100) = 0;
        this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int, glitch::video::CVertexStreams **, int))(*(_DWORD *)v13 + 68))(
                                              v13,
                                              v6,
                                              (int)v2 + 36);
        if ( a2 )
        {
          v14 = a2 - 1;
          this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted **, _DWORD, char *))(**((_DWORD **)v2 + 77) + 20))(
                                                &v22,
                                                *((_DWORD *)v2 + 77),
                                                v14);
          if ( v22 )
          {
            v15 = *((_DWORD **)v2 + 77);
            if ( (v15[5] & (1 << ((unsigned __int8)v14 & 0x1F))) == 0 )
            {
              v16 = (*(int (__fastcall **)(_DWORD, int, glitch::video::CVertexStreams **, char *))(*v15 + 56))(
                      *((_DWORD *)v2 + 77),
                      1,
                      v6,
                      v14);
              v15 = *((_DWORD **)v2 + 77);
              v8 = v16 & 4;
            }
            (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD *, char *))(*v15 + 24))(&v21, v15, v14);
            (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, char *))(**((_DWORD **)v2 + 77)
                                                                                                  + 28))(
              &v19,
              *((_DWORD *)v2 + 77),
              v14);
            v20 = v19;
            if ( v19 )
            {
              ++*(_DWORD *)v19;
              if ( v19 )
                glitch::intrusive_ptr_release(v19);
            }
            glitch::video::IVideoDriver::setMaterial((int)v6, &v21, (int)&v20);
            (*((void (__fastcall **)(glitch::video::CVertexStreams **, _DWORD))*v6 + 67))(v6, 0);
            v18 = v22;
            if ( v22 )
              ++*((_DWORD *)v22 + 1);
            glitch::video::IVideoDriver::drawMeshBuffer(v6, (int)&v18);
            if ( v18 )
              glitch::IReferenceCounted::drop(v18);
            if ( v8 )
              (*(void (__fastcall **)(_DWORD, glitch::video::CVertexStreams **, char *))(**((_DWORD **)v2 + 77) + 60))(
                *((_DWORD *)v2 + 77),
                v6,
                v14);
            if ( v20 )
              glitch::intrusive_ptr_release(v20);
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v21);
            this = v22;
            if ( v22 )
              return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v22);
          }
        }
      }
    }
  }
  return this;
}


// ===== 3625d0 SkyBoxMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall SkyBoxMeshSceneNode::onRegisterSceneNode(SkyBoxMeshSceneNode *this)
{
  int v1; // r3
  int v3; // r9
  int v4; // r0
  unsigned int v5; // r4
  unsigned int v6; // r8
  int v8; // r0
  bool v9; // zf
  glitch::video::CMaterial *v11; // [sp+10h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v12; // [sp+14h] [bp-8h] BYREF

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
            &v12,
            *((_DWORD *)this + 77),
            v5 - 1);
          if ( v12 )
          {
            glitch::IReferenceCounted::drop(v12);
            (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**((_DWORD **)this + 77) + 24))(
              &v11,
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
              (*(void (__fastcall **)(_DWORD, SkyBoxMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(**((_DWORD **)this + 68) + 36))(
                *((_DWORD *)this + 68),
                this,
                &v11,
                v5,
                2,
                0,
                0x7FFFFFFF);
            }
            else if ( v8 == 5 )
            {
              (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 36))(*((_DWORD *)this + 77));
            }
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v11);
          }
        }
        while ( v6 > v5++ );
      }
    }
  }
  return 1;
}


// ===== 362718 SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() =====
void __fastcall SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(SkyBoxMeshSceneNode *this)
{
  _DWORD *v1; // r2

  v1 = *((_DWORD **)this + 79);
  *(_DWORD *)this = off_96154C;
  *((_DWORD *)this + 80) = off_961658;
  if ( v1 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
    *((_DWORD *)this + 79) = 0;
  }
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 36278c SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() =====
void __fastcall SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(SkyBoxMeshSceneNode *this)
{
  SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(this);
  CustomFree(this);
}


// ===== 3627a8 SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() =====
void __fastcall SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(SkyBoxMeshSceneNode *this, int *a2)
{
  int v2; // r3
  _DWORD *v4; // r3

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[10];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[11];
  v4 = *((_DWORD **)this + 79);
  if ( v4 )
  {
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v4 + *(_DWORD *)(*v4 - 12)));
    *((_DWORD *)this + 79) = 0;
  }
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 362810 SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::scene::IMeshSceneNode *) =====
int __fastcall SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(int a1, int a2, int a3)
{
  _DWORD *v5; // r3
  int v6; // r3
  int v7; // r2
  _DWORD v9[4]; // [sp+10h] [bp-1Ch] BYREF
  _DWORD v10[3]; // [sp+20h] [bp-Ch] BYREF
  _DWORD v11[3]; // [sp+2Ch] [bp+0h] BYREF
  glitch::video::CMaterialRenderer *v12; // [sp+38h] [bp+Ch] BYREF
  glitch::video::CMaterial *v13[2]; // [sp+3Ch] [bp+10h] BYREF

  *(_DWORD *)(a1 + 320) = off_95B720;
  *(_DWORD *)a1 = off_961A4C;
  *(_DWORD *)(a1 + 324) = 1;
  *(int *)((char *)&elf_hash_bucket[25] + a1) = (int)off_961A6C;
  v10[2] = 1065353216;
  memset(v11, 0, sizeof(v11));
  memset(v9, 0, 12);
  v9[3] = 1065353216;
  v10[0] = 1065353216;
  v10[1] = 1065353216;
  ((void (__fastcall *)(int, int (***)(), int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CMeshSceneNode::CMeshSceneNode)(
    a1,
    off_96166C,
    a2,
    0,
    -1,
    v11,
    v9,
    v10);
  *(_BYTE *)(a1 + 312) = 1;
  *(_DWORD *)(a1 + 316) = a3;
  *(_DWORD *)a1 = off_96154C;
  *(_DWORD *)(a1 + 320) = off_961658;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  v5 = *(_DWORD **)(a1 + 316);
  if ( v5 )
    ++*(_DWORD *)((char *)v5 + *(_DWORD *)(*v5 - 12) + 4);
  (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, _DWORD))(**(_DWORD **)(a1 + 308) + 24))(
    v13,
    *(_DWORD *)(a1 + 308),
    0);
  v12 = *((glitch::video::CMaterialRenderer **)v13[0] + 1);
  if ( v12 )
    ++*(_DWORD *)v12;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v13);
  v6 = *(_DWORD *)(*((_DWORD *)v12 + 6) + 8);
  v7 = *(_DWORD *)(v6 + 4);
  *(_DWORD *)(v6 + 4) = v7 & 0xFFEFFFFF;
  if ( (v7 & 0x100000) != 0 )
    *(_BYTE *)(v6 + 48) = 1;
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v12);
  return a1;
}


// ===== 36299c SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&,glitch::scene::IMeshSceneNode *) =====
int __fastcall SkyBoxMeshSceneNode::SkyBoxMeshSceneNode(int a1, int *a2, int a3, int a4)
{
  int v7; // r3
  _DWORD *v8; // r3
  int v9; // r3
  int v10; // r2
  _DWORD v12[4]; // [sp+10h] [bp-30h] BYREF
  _DWORD v13[3]; // [sp+20h] [bp-20h] BYREF
  _DWORD v14[3]; // [sp+2Ch] [bp-14h] BYREF
  glitch::video::CMaterialRenderer *v15; // [sp+38h] [bp-8h] BYREF
  glitch::video::CMaterial *v16; // [sp+3Ch] [bp-4h] BYREF

  v13[2] = 1065353216;
  memset(v14, 0, sizeof(v14));
  memset(v12, 0, 12);
  v12[3] = 1065353216;
  v13[0] = 1065353216;
  v13[1] = 1065353216;
  ((void (__fastcall *)(int, int *, int, _DWORD, int, _DWORD *, _DWORD *, _DWORD *))glitch::collada::CMeshSceneNode::CMeshSceneNode)(
    a1,
    a2 + 1,
    a3,
    0,
    -1,
    v14,
    v12,
    v13);
  v7 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v7 - 28)) = a2[10];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[11];
  *(_BYTE *)(a1 + 312) = 1;
  *(_DWORD *)(a1 + 316) = a4;
  glitch::scene::ISceneNode::setAutomaticCulling(a1, 0);
  v8 = *(_DWORD **)(a1 + 316);
  if ( v8 )
    ++*(_DWORD *)((char *)v8 + *(_DWORD *)(*v8 - 12) + 4);
  (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, _DWORD))(**(_DWORD **)(a1 + 308) + 24))(
    &v16,
    *(_DWORD *)(a1 + 308),
    0);
  v15 = *((glitch::video::CMaterialRenderer **)v16 + 1);
  if ( v15 )
    ++*(_DWORD *)v15;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
  v9 = *(_DWORD *)(*((_DWORD *)v15 + 6) + 8);
  v10 = *(_DWORD *)(v9 + 4);
  *(_DWORD *)(v9 + 4) = v10 & 0xFFEFFFFF;
  if ( (v10 & 0x100000) != 0 )
    *(_BYTE *)(v9 + 48) = 1;
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v15);
  return a1;
}


// ===== 362ae8 `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() =====
void __fastcall `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(SkyBoxMeshSceneNode *this)
{
  SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode((SkyBoxMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 362af8 `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() =====
void __fastcall `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(SkyBoxMeshSceneNode *this)
{
  SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode((SkyBoxMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 362b08 `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() =====
void __fastcall `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(SkyBoxMeshSceneNode *this)
{
  SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode((SkyBoxMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 362b18 `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode() =====
void __fastcall `virtual thunk to'SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode(SkyBoxMeshSceneNode *this)
{
  SkyBoxMeshSceneNode::~SkyBoxMeshSceneNode((SkyBoxMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 362b28 XrayModularSkinnedMeshSceneNode::getBoundingBox(void) =====
int __fastcall XrayModularSkinnedMeshSceneNode::getBoundingBox(XrayModularSkinnedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 114) + 48))(*((_DWORD *)this + 114));
}


// ===== 362b44 XrayModularSkinnedMeshSceneNode::getTransformedBoundingBox(void) =====
int __fastcall XrayModularSkinnedMeshSceneNode::getTransformedBoundingBox(XrayModularSkinnedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 114) + 48))(*((_DWORD *)this + 114));
}


// ===== 362b60 glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode() =====
void __fastcall glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(
        glitch::collada::CModularSkinnedMeshSceneNode *this,
        int *a2)
{
  int v3; // r1
  _DWORD *v4; // r2
  int v5; // r3

  v3 = *a2;
  v4 = a2 + 1;
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 28)) = a2[13];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[14];
  v5 = a2[1];
  *(_DWORD *)this = v5;
  *(_DWORD *)((char *)this + *(_DWORD *)(v5 - 28)) = v4[10];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v4[11];
  glitch::collada::CMeshSceneNode::~CMeshSceneNode(this);
}


// ===== 362bc8 XrayModularSkinnedMeshSceneNode::UpdateXray(void) =====
int __fastcall XrayModularSkinnedMeshSceneNode::UpdateXray(XrayModularSkinnedMeshSceneNode *this)
{
  _DWORD v3[16]; // [sp+4h] [bp-44h] BYREF
  char v4; // [sp+44h] [bp-4h]

  LC_API_MEMSET_0(v3, 0, 0x40u);
  LC_API_MEMSET_0(v3, 0, 0x40u);
  v3[15] = 1065353216;
  v4 = 1;
  v3[0] = 1065353216;
  v3[5] = 1065353216;
  v3[10] = 1065353216;
  return (*(int (__fastcall **)(XrayModularSkinnedMeshSceneNode *, _DWORD *))(*(_DWORD *)this + 60))(this, v3);
}


// ===== 362c38 XrayModularSkinnedMeshSceneNode::updateXrayMaterial(void) =====
glitch::video::CMaterial **__fastcall XrayModularSkinnedMeshSceneNode::updateXrayMaterial(
        glitch::video::CMaterial **this)
{
  int v1; // lr
  int v2; // r8
  glitch::video::CMaterial **v3; // r5
  int v4; // r4
  glitch::video::CMaterial *v5; // r12
  int v6; // r0
  int v7; // r3
  glitch::video::CMaterial *v8; // r3
  glitch::video::CMaterial *v9; // [sp+0h] [bp-Ch] BYREF
  glitch::video::CMaterial *v10[2]; // [sp+4h] [bp-8h] BYREF

  v2 = (*(this + 103) - *(this + 102)) >> 2;
  v3 = this;
  if ( v2 )
  {
    v4 = 0;
    do
    {
      v5 = *((glitch::video::CMaterial **)v3[108] + v4);
      v6 = *(_DWORD *)(dword_99F73C + 28);
      v7 = 4 * v4;
      v10[0] = v5;
      if ( v5 )
        v1 = *(_DWORD *)v5;
      ++v4;
      if ( v5 )
        *(_DWORD *)v5 = v1 + 1;
      v8 = *(glitch::video::CMaterial **)((char *)v3[102] + v7);
      v9 = v8;
      if ( v8 )
        ++*(_DWORD *)v8;
      SceneManager::SetMaterialTexture(v6, v10, &v9);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v9);
      this = boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(v10);
    }
    while ( v4 != v2 );
  }
  return this;
}


// ===== 362cf0 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_XrayMeshSceneNode.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_XrayMeshSceneNode.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A22D0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A22CC = 1056964608;
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


// ===== 362dcc std::string::_M_range_initialize(char const*,char const*) [clone] =====
char *__fastcall std::string::_M_range_initialize(std::string *this, const char *a2, const char *a3)
{
  size_t v5; // r4
  char *result; // r0

  v5 = a2 - "RENDERING_EnableXray";
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, a2 - "RENDERING_EnableXray" + 1);
  result = this->_M_start_of_storage._M_data;
  if ( a2 != "RENDERING_EnableXray" )
    result = (char *)memcpy(result, "RENDERING_EnableXray", v5) + v5;
  this->_M_finish = result;
  *result = 0;
  return result;
}


// ===== 362e1c XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() =====
void __fastcall XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *this,
        int *a2)
{
  int v2; // r3
  void *v5; // r0
  size_t v6; // r1
  void *v7; // r0
  size_t v8; // r1
  int v9; // r3
  int *v10; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[19];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[20];
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 111);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 108);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 105);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 102);
  v5 = *((void **)this + 99);
  if ( v5 )
  {
    v6 = (*((_DWORD *)this + 101) - (_DWORD)v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
  v7 = *((void **)this + 96);
  if ( v7 )
  {
    v8 = (*((_DWORD *)this + 98) - (_DWORD)v7) & 0xFFFFFFFC;
    if ( v8 > 0x80 )
      CustomFree(v7);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v7, v8);
  }
  v9 = a2[1];
  v10 = a2 + 1;
  *(_DWORD *)this = v9;
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 28)) = v10[16];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v10[17];
  glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(this, v10 + 1);
}


// ===== 362f08 XrayModularSkinnedMeshSceneNode::renderMesh(void *,bool) =====
glitch::IReferenceCounted *__fastcall XrayModularSkinnedMeshSceneNode::renderMesh(
        glitch::IReferenceCounted *this,
        char *a2,
        bool a3)
{
  int v3; // r3
  glitch::IReferenceCounted *v4; // r4
  glitch::video::CVertexStreams **v5; // r5
  char *v6; // r7
  _DWORD *v7; // r3
  int v8; // r10
  int v9; // r2
  glitch::video::CMaterial *v10; // r3
  glitch::video::CMaterialVertexAttributeMap *v11; // r4
  glitch::IReferenceCounted *v13; // [sp+8h] [bp-14h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v14; // [sp+Ch] [bp-10h] BYREF
  glitch::video::CMaterial *v15; // [sp+10h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v16; // [sp+14h] [bp-8h] BYREF

  v3 = *((_DWORD *)this + 77);
  v4 = this;
  v5 = *(glitch::video::CVertexStreams ***)(*((_DWORD *)this + 68) + 20);
  if ( v3 )
  {
    if ( v5 )
    {
      if ( a2 )
      {
        v6 = a2 - 1;
        this = (glitch::IReferenceCounted *)(*(int (__fastcall **)(glitch::IReferenceCounted **, int, char *))(*(_DWORD *)v3 + 20))(
                                              &v16,
                                              v3,
                                              a2 - 1);
        if ( v16 )
        {
          v7 = *((_DWORD **)v4 + 77);
          if ( (v7[5] & (1 << ((unsigned __int8)v6 & 0x1F))) != 0 )
            v8 = 0;
          else
            v8 = (*(int (__fastcall **)(_DWORD, int, glitch::video::CVertexStreams **, char *))(*v7 + 56))(
                   *((_DWORD *)v4 + 77),
                   1,
                   v5,
                   v6)
               & 4;
          v9 = *((_DWORD *)v4 + 96);
          v10 = *(glitch::video::CMaterial **)(*((_DWORD *)v4 + 108) + 4 * *(_DWORD *)(v9 + 4 * (_DWORD)v6));
          v15 = v10;
          if ( v10 )
          {
            ++*(_DWORD *)v10;
            v9 = *((_DWORD *)v4 + 96);
          }
          v14 = *(glitch::video::CMaterialVertexAttributeMap **)(*((_DWORD *)v4 + 111)
                                                               + 4 * *(_DWORD *)(v9 + 4 * (_DWORD)v6));
          if ( v14 )
            ++*(_DWORD *)v14;
          (*((void (__fastcall **)(glitch::video::CVertexStreams **, int, _DWORD *))*v5 + 27))(v5, 1, (_DWORD *)v4 + 9);
          glitch::video::IVideoDriver::setMaterial((int)v5, &v15, (int)&v14);
          if ( *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 1160) == 10 )
            (*((void (__fastcall **)(glitch::video::CVertexStreams **, _DWORD, _DWORD))*v5 + 53))(v5, 0, 0);
          v5[58] = nullptr;
          v13 = v16;
          if ( v16 )
            ++*((_DWORD *)v16 + 1);
          glitch::video::IVideoDriver::drawMeshBuffer(v5, (int)&v13);
          if ( v13 )
            glitch::IReferenceCounted::drop(v13);
          if ( v8 )
            (*(void (__fastcall **)(_DWORD, glitch::video::CVertexStreams **, char *))(**((_DWORD **)v4 + 77) + 60))(
              *((_DWORD *)v4 + 77),
              v5,
              v6);
          (*((void (__fastcall **)(glitch::video::CVertexStreams **, int, int))*v5 + 53))(v5, 1, 1);
          v11 = v14;
          if ( v14 )
          {
            if ( (*(_DWORD *)v14)-- == 1 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v11);
              CustomFree(v11);
            }
          }
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v15);
          this = v16;
          if ( v16 )
            return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v16);
        }
      }
    }
  }
  return this;
}


// ===== 363138 XrayModularSkinnedMeshSceneNode::render(void *) =====
void __fastcall XrayModularSkinnedMeshSceneNode::render(XrayModularSkinnedMeshSceneNode *this, char *a2)
{
  const char *v3; // r2
  int Switch; // r6
  int v5; // r0
  int v6; // r3
  int v7; // r9
  int v8; // r5
  glitch::video::CMaterial *v9; // r3
  int v10; // r6
  int i; // r5
  int v12; // r2
  int v13; // r1
  int v14; // r6
  int v15; // r7
  int v16; // r3
  int v17; // r8
  int v18; // r3
  glitch::IReferenceCounted *v19; // r5
  int v20; // r0
  int v21; // r12
  int v22; // r2
  int v23; // r7
  int j; // r5
  int v25; // r2
  int v26; // r1
  int k; // r7
  int v28; // r3
  glitch::IReferenceCounted *v29; // r5
  int v30; // r0
  int v31; // r12
  int v32; // r2
  int v33; // r3
  int v34; // r11
  glitch::video::CMaterial **v35; // r2
  int v36; // r5
  glitch::video::CMaterial *v37; // r3
  int v38; // r8
  glitch::video::CMaterial *v39; // r3
  glitch::video::CMaterialRenderer *v40; // r3
  int v41; // [sp+0h] [bp-64h]
  void *v43[3]; // [sp+1Ch] [bp-48h] BYREF
  glitch::video::CMaterial **v44[3]; // [sp+28h] [bp-3Ch] BYREF
  glitch::video::CMaterial *v45; // [sp+34h] [bp-30h] BYREF
  glitch::video::CMaterialRenderer *v46; // [sp+38h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v47; // [sp+3Ch] [bp-28h] BYREF
  glitch::video::CMaterial *v48; // [sp+40h] [bp-24h] BYREF
  std::string v49; // [sp+44h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v49._M_finish = (char *)&v49;
  v49._M_start_of_storage._M_data = (char *)&v49;
  std::string::_M_range_initialize(&v49, "", v3);
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v49);
  if ( (std::string *)v49._M_start_of_storage._M_data != &v49 && v49._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v49._M_buffers._M_end_of_storage - v49._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v49._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v49._M_start_of_storage._M_data,
        v49._M_buffers._M_end_of_storage - v49._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    XrayModularSkinnedMeshSceneNode::UpdateXray(this);
    v5 = *(_DWORD *)(dword_99F73C + 28);
    if ( *(_DWORD *)(v5 + 1160) == 10 )
    {
      v33 = *((_DWORD *)this + 108);
      v34 = (*((_DWORD *)this + 109) - v33) >> 2;
      if ( v34 )
      {
        v35 = &v47;
        v36 = 0;
        while ( 1 )
        {
          v37 = *(glitch::video::CMaterial **)(v33 + 4 * v36);
          v38 = 4 * v36;
          v48 = v37;
          if ( v37 )
            v35 = *(glitch::video::CMaterial ***)v37;
          ++v36;
          if ( v37 )
            *(_DWORD *)v37 = (char *)v35 + 1;
          v41 = 1;
          SceneManager::ChangeCustomXrayTechnique(v5, &v48, 1, 1);
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v48);
          v39 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 108) + v38);
          v47 = v39;
          if ( v39 )
          {
            ++*(_DWORD *)v39;
            v39 = v47;
          }
          v40 = *((glitch::video::CMaterialRenderer **)v39 + 1);
          v46 = v40;
          if ( v40 )
            ++*(_DWORD *)v40;
          boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v46);
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v47);
          if ( v36 == v34 )
            break;
          v33 = *((_DWORD *)this + 108);
          v35 = (glitch::video::CMaterial **)dword_99F73C;
          v5 = *(_DWORD *)(dword_99F73C + 28);
        }
      }
    }
    else
    {
      v6 = *((_DWORD *)this + 108);
      v7 = (*((_DWORD *)this + 109) - v6) >> 2;
      if ( v7 )
      {
        v8 = 0;
        while ( 1 )
        {
          v9 = *(glitch::video::CMaterial **)(v6 + 4 * v8++);
          v45 = v9;
          if ( v9 )
            ++*(_DWORD *)v9;
          v41 = 1;
          SceneManager::ChangeCustomXrayTechnique(v5, &v45, 0, 1);
          boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v45);
          if ( v8 == v7 )
            break;
          v6 = *((_DWORD *)this + 108);
          v5 = *(_DWORD *)(dword_99F73C + 28);
        }
      }
    }
    v10 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
    if ( v10 )
    {
      for ( i = 0; i != v10; ++i )
      {
        v12 = 4 * *(_DWORD *)(*((_DWORD *)this + 96) + 4 * i);
        v13 = i;
        (*(void (__fastcall **)(_DWORD, int, int, int, int))(**((_DWORD **)this + 77) + 32))(
          *((_DWORD *)this + 77),
          v13,
          *((_DWORD *)this + 108) + v12,
          *((_DWORD *)this + 111) + v12,
          v41);
      }
    }
    v14 = *((_DWORD *)this + 77);
    v15 = 0;
    memset(v44, 0, sizeof(v44));
    memset(v43, 0, sizeof(v43));
    v16 = *(_DWORD *)(v14 + 36);
    v17 = (*(_DWORD *)(v14 + 40) - v16) >> 3;
    if ( v17 )
    {
      while ( 1 )
      {
        v18 = v16 + 8 * v15;
        v19 = *(glitch::IReferenceCounted **)(v18 + 4);
        if ( v19 )
        {
          v20 = *(_DWORD *)(v18 + 4);
          v21 = *(_DWORD *)v19;
          ++*((_DWORD *)v19 + 1);
          v22 = 4 * *(_DWORD *)(*((_DWORD *)this + 99) + 4 * v15);
          (*(void (__fastcall **)(int, _DWORD, int, int))(v21 + 32))(
            v20,
            0,
            *((_DWORD *)this + 108) + v22,
            *((_DWORD *)this + 111) + v22);
          glitch::IReferenceCounted::drop(v19);
        }
        if ( ++v15 == v17 )
          break;
        v16 = *(_DWORD *)(v14 + 36);
      }
    }
    XrayModularSkinnedMeshSceneNode::renderMesh(this, a2, 0);
    v23 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
    if ( v23 )
    {
      for ( j = 0; j != v23; ++j )
      {
        v25 = 4 * *(_DWORD *)(*((_DWORD *)this + 96) + 4 * j);
        v26 = j;
        (*(void (__fastcall **)(_DWORD, int, int, int))(**((_DWORD **)this + 77) + 32))(
          *((_DWORD *)this + 77),
          v26,
          *((_DWORD *)this + 102) + v25,
          *((_DWORD *)this + 105) + v25);
      }
    }
    if ( v17 )
    {
      for ( k = 0; k != v17; ++k )
      {
        v28 = *(_DWORD *)(v14 + 36) + 8 * k;
        v29 = *(glitch::IReferenceCounted **)(v28 + 4);
        if ( v29 )
        {
          v30 = *(_DWORD *)(v28 + 4);
          v31 = *(_DWORD *)v29;
          ++*((_DWORD *)v29 + 1);
          v32 = 4 * *(_DWORD *)(*((_DWORD *)this + 99) + 4 * k);
          (*(void (__fastcall **)(int, _DWORD, int, int))(v31 + 32))(
            v30,
            0,
            *((_DWORD *)this + 102) + v32,
            *((_DWORD *)this + 105) + v32);
          glitch::IReferenceCounted::drop(v29);
        }
      }
    }
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector(v43);
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector(v44);
  }
}


// ===== 363574 XrayModularSkinnedMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall XrayModularSkinnedMeshSceneNode::onRegisterSceneNode(XrayModularSkinnedMeshSceneNode *this)
{
  const char *v2; // r2
  int Switch; // r7
  const char *v5; // r2
  int v6; // r7
  int v7; // r11
  unsigned int v8; // r9
  int v9; // r5
  unsigned int v10; // r7
  bool v11; // cc
  int v12; // r0
  bool v13; // zf
  glitch::video::CMaterial *v14; // [sp+24h] [bp-40h] BYREF
  glitch::IReferenceCounted *v15; // [sp+28h] [bp-3Ch] BYREF
  std::string v16; // [sp+2Ch] [bp-38h] BYREF
  std::string v17; // [sp+44h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v17._M_finish = (char *)&v17;
  v17._M_start_of_storage._M_data = (char *)&v17;
  std::string::_M_range_initialize(&v17, "", v2);
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v17);
  if ( (std::string *)v17._M_start_of_storage._M_data != &v17 && v17._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v17._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v17._M_start_of_storage._M_data,
        v17._M_buffers._M_end_of_storage - v17._M_start_of_storage._M_data);
  }
  if ( Switch )
  {
    XrayModularSkinnedMeshSceneNode::UpdateXray(this);
    if ( *((_DWORD *)this + 77) )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      v16._M_finish = (char *)&v16;
      v16._M_start_of_storage._M_data = (char *)&v16;
      std::string::_M_range_initialize(&v16, "", v5);
      v6 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v16);
      std::string::~string(&v16);
      if ( v6 )
      {
        v7 = *(_DWORD *)(*((_DWORD *)this + 68) + 20);
        if ( v7 )
        {
          v8 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 16))(*((_DWORD *)this + 77));
          if ( v8 )
          {
            v9 = 0;
            v10 = 1;
            do
            {
              (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int))(**((_DWORD **)this + 77) + 20))(
                &v15,
                *((_DWORD *)this + 77),
                v9);
              if ( v15 )
              {
                glitch::IReferenceCounted::drop(v15);
                v14 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 108)
                                                   + 4 * *(_DWORD *)(*((_DWORD *)this + 96) + 4 * v9));
                if ( v14 )
                  ++*(_DWORD *)v14;
                v12 = (*(int (__fastcall **)(_DWORD, _DWORD, int, int))(**((_DWORD **)this + 77) + 56))(
                        *((_DWORD *)this + 77),
                        0,
                        v7,
                        v9);
                v13 = v12 == 4;
                if ( v12 != 4 )
                  v13 = v12 == 16;
                if ( v13 )
                {
                  (*(void (__fastcall **)(_DWORD, XrayModularSkinnedMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(**(_DWORD **)(dword_99F73C + 28) + 140))(
                    *(_DWORD *)(dword_99F73C + 28),
                    this,
                    &v14,
                    v10,
                    9,
                    0,
                    0x7FFFFFFF);
                  (*(void (__fastcall **)(_DWORD, XrayModularSkinnedMeshSceneNode *, glitch::video::CMaterial **, unsigned int, int, _DWORD, int))(**(_DWORD **)(dword_99F73C + 28) + 140))(
                    *(_DWORD *)(dword_99F73C + 28),
                    this,
                    &v14,
                    v10,
                    10,
                    0,
                    0x7FFFFFFF);
                }
                else if ( v12 == 5 )
                {
                  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 77) + 36))(*((_DWORD *)this + 77));
                }
                boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v14);
              }
              v11 = v8 > v10;
              ++v9;
              ++v10;
            }
            while ( v11 );
          }
        }
      }
    }
  }
  return 1;
}


// ===== 363848 XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() =====
void __fastcall XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *this)
{
  void *v2; // r0
  size_t v3; // r1
  void *v4; // r0
  size_t v5; // r1

  *(_DWORD *)this = off_961A94;
  *((_DWORD *)this + 115) = off_961BA0;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 111);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 108);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::~vector((void **)this + 105);
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::~vector((glitch::video::CMaterial ***)this + 102);
  v2 = *((void **)this + 99);
  if ( v2 )
  {
    v3 = (*((_DWORD *)this + 101) - (_DWORD)v2) & 0xFFFFFFFC;
    if ( v3 > 0x80 )
      CustomFree(v2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
  }
  v4 = *((void **)this + 96);
  if ( v4 )
  {
    v5 = (*((_DWORD *)this + 98) - (_DWORD)v4) & 0xFFFFFFFC;
    if ( v5 > 0x80 )
      CustomFree(v4);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
  }
  *(_DWORD *)this = off_961C2C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_961C2C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_961D38;
  glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode(this, (int *)off_961BB8);
}


// ===== 36393c XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() =====
void __fastcall XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *this)
{
  XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(this);
  CustomFree(this);
}


// ===== 363958 XrayModularSkinnedMeshSceneNode::regenerateXrayMaterial(void) =====
void __fastcall XrayModularSkinnedMeshSceneNode::regenerateXrayMaterial(XrayModularSkinnedMeshSceneNode *this)
{
  glitch::video::CMaterial **v2; // r1
  int v3; // r2
  glitch::video::CMaterialVertexAttributeMap **v4; // r1
  int v5; // r2
  int v6; // r3
  glitch::video::CMaterial **v7; // r1
  int v8; // r2
  glitch::video::CMaterialVertexAttributeMap **v9; // r1
  int v10; // r2
  int v11; // r5
  int v12; // r2
  int v13; // r3
  glitch::video::CMaterialVertexAttributeMap *v14; // r5
  bool v15; // zf
  int v16; // r5
  unsigned int *v17; // r2
  int v18; // r1
  unsigned int *v19; // r3
  int v20; // r7
  int v21; // r3
  glitch::video::CMaterialVertexAttributeMap *v22; // r6
  int v23; // r9
  unsigned int *v24; // r10
  int v25; // r11
  int v26; // r8
  int v27; // r6
  int v28; // r5
  glitch::video::CMaterial *v29; // r10
  glitch::video::CMaterial *v30; // r6
  unsigned int v31; // r3
  int v32; // r6
  glitch::video::CMaterial **v33; // r10
  glitch::video::CMaterial *v34; // r2
  int v35; // r10
  glitch::video::CMaterialVertexAttributeMap *v36; // r2
  glitch::video::CMaterialVertexAttributeMap **v37; // r10
  glitch::video::CMaterialVertexAttributeMap *v38; // r3
  glitch::video::CMaterialVertexAttributeMap *v39; // r10
  unsigned int v40; // r1
  unsigned int v41; // r5
  glitch::video::CMaterialVertexAttributeMap *v42; // r6
  int v43; // r3
  int v44; // r10
  glitch::IReferenceCounted *v45; // r7
  int i; // r6
  int v47; // r6
  int v48; // r3
  int v49; // r3
  glitch::video::CMaterialVertexAttributeMap *v50; // r7
  int v51; // r7
  glitch::video::CMaterial *v52; // r3
  int v53; // r0
  int v54; // r7
  glitch::video::CMaterialVertexAttributeMap *v55; // r2
  glitch::video::CMaterialVertexAttributeMap *v56; // r3
  glitch::video::CMaterialVertexAttributeMap *v57; // r5
  glitch::video::CMaterialVertexAttributeMap *p; // [sp+Ch] [bp-A8h]
  glitch::video::CMaterial *pa; // [sp+Ch] [bp-A8h]
  glitch::video::CMaterialVertexAttributeMap *pb; // [sp+Ch] [bp-A8h]
  glitch::video::CMaterial *v61; // [sp+10h] [bp-A4h]
  unsigned int v62; // [sp+14h] [bp-A0h]
  unsigned int v63; // [sp+18h] [bp-9Ch]
  unsigned int v64; // [sp+1Ch] [bp-98h]
  _DWORD *v65; // [sp+34h] [bp-80h]
  _DWORD *v66; // [sp+3Ch] [bp-78h]
  _BYTE v67[8]; // [sp+4Ch] [bp-68h] BYREF
  glitch::video::CMaterial *v68; // [sp+54h] [bp-60h] BYREF
  glitch::video::CMaterial *v69; // [sp+58h] [bp-5Ch] BYREF
  glitch::video::CMaterial *v70; // [sp+5Ch] [bp-58h] BYREF
  glitch::video::CMaterial *v71; // [sp+60h] [bp-54h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v72; // [sp+64h] [bp-50h] BYREF
  glitch::video::CMaterial *v73; // [sp+68h] [bp-4Ch] BYREF
  glitch::video::CMaterial *v74; // [sp+6Ch] [bp-48h] BYREF
  glitch::video::CMaterial *v75; // [sp+70h] [bp-44h] BYREF
  int v76; // [sp+74h] [bp-40h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v77; // [sp+78h] [bp-3Ch] BYREF
  glitch::video::CMaterial *v78; // [sp+7Ch] [bp-38h] BYREF
  glitch::video::CMaterial *v79; // [sp+80h] [bp-34h] BYREF
  glitch::video::CMaterial *v80; // [sp+84h] [bp-30h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v81; // [sp+88h] [bp-2Ch] BYREF
  glitch::video::CMaterial *v82; // [sp+8Ch] [bp-28h] BYREF
  int v83; // [sp+90h] [bp-24h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v84; // [sp+94h] [bp-20h] BYREF
  glitch::video::CMaterial *v85; // [sp+98h] [bp-1Ch] BYREF
  glitch::video::CMaterialRenderer *v86; // [sp+9Ch] [bp-18h] BYREF

  v2 = *((glitch::video::CMaterial ***)this + 102);
  v3 = *((_DWORD *)this + 103);
  v66 = (_DWORD *)((char *)this + 408);
  if ( v2 != (glitch::video::CMaterial **)v3 )
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_erase((int)this + 408, v2, v3);
  v4 = *((glitch::video::CMaterialVertexAttributeMap ***)this + 105);
  v5 = *((_DWORD *)this + 106);
  if ( v4 != (glitch::video::CMaterialVertexAttributeMap **)v5 )
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_erase((int)this + 420, v4, v5);
  v6 = *((_DWORD *)this + 96);
  v7 = *((glitch::video::CMaterial ***)this + 108);
  v8 = *((_DWORD *)this + 109);
  if ( v6 != *((_DWORD *)this + 97) )
    *((_DWORD *)this + 97) = v6;
  if ( v7 != (glitch::video::CMaterial **)v8 )
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::_M_erase((int)this + 432, v7, v8);
  v9 = *((glitch::video::CMaterialVertexAttributeMap ***)this + 111);
  v10 = *((_DWORD *)this + 112);
  if ( v9 != (glitch::video::CMaterialVertexAttributeMap **)v10 )
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::_M_erase((int)this + 444, v9, v10);
  v11 = *(_DWORD *)(dword_99F73C + 16);
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v67,
    "gl_xray.bdae",
    (glitch::collada::CColladaFactory *)&glitch::collada::CColladaDatabase::DefaultFactory);
  glitch::collada::CColladaDatabase::constructEffect(
    (int)&v86,
    (glitch::collada::CColladaDatabase *)v67,
    v11,
    "GL_Xray-fx",
    0);
  v65 = *((_DWORD **)this + 77);
  v62 = (*(int (__fastcall **)(_DWORD *))(*v65 + 16))(v65);
  v12 = v65[10];
  v13 = v65[9];
  v85 = nullptr;
  v64 = (v12 - v13) >> 3;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize(v66, v62, &v85);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v85);
  v84 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::resize((int *)this + 105, v62, &v84);
  v14 = v84;
  if ( v84 )
  {
    v15 = (*(_DWORD *)v84)-- == 1;
    if ( v15 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v14);
      CustomFree(v14);
    }
  }
  v16 = 0;
  v83 = 0;
  std::vector<int>::resize((int)this + 384, v62, (char *)&v83);
  v17 = *((unsigned int **)this + 102);
  v18 = *((_DWORD *)this + 103);
  v19 = v17;
  v20 = (v18 - (int)v17) >> 2;
  if ( v20 )
  {
    while ( 1 )
    {
      v71 = nullptr;
      v71 = (glitch::video::CMaterial *)v17[v16];
      v17[v16] = 0;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v71);
      v21 = *((_DWORD *)this + 105);
      v22 = *(glitch::video::CMaterialVertexAttributeMap **)(v21 + 4 * v16);
      *(_DWORD *)(v21 + 4 * v16++) = 0;
      if ( v22 )
      {
        v15 = (*(_DWORD *)v22)-- == 1;
        if ( v15 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v22);
          CustomFree(v22);
        }
      }
      if ( v16 == v20 )
        break;
      v17 = *((unsigned int **)this + 102);
    }
    v19 = *((unsigned int **)this + 102);
    v18 = *((_DWORD *)this + 103);
  }
  v23 = (v18 - (int)v19) >> 2;
  v24 = v19;
  if ( !v62 )
    goto LABEL_54;
  v25 = 0;
  v26 = 0;
  while ( !v23 )
  {
LABEL_46:
    ++v26;
    v25 += 4;
    if ( v26 == v62 )
      goto LABEL_49;
LABEL_47:
    v24 = v19;
  }
  v27 = 0;
  v28 = 0;
  while ( 1 )
  {
    v31 = v24[v27];
    v32 = v27;
    v33 = (glitch::video::CMaterial **)&v24[v32];
    if ( !v31 )
    {
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(**((_DWORD **)this + 77) + 24))(
        &v82,
        *((_DWORD *)this + 77),
        v26);
      v34 = v82;
      v69 = v82;
      if ( v82 )
      {
        ++*(_DWORD *)v82;
        v34 = v69;
      }
      v69 = *v33;
      *v33 = v34;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v69);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v82);
      v35 = *((_DWORD *)this + 105);
      (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, int))(**((_DWORD **)this + 77) + 28))(
        &v81,
        *((_DWORD *)this + 77),
        v26);
      v36 = v81;
      v37 = (glitch::video::CMaterialVertexAttributeMap **)(v35 + v25);
      if ( v81 )
        ++*(_DWORD *)v81;
      v38 = *v37;
      *v37 = v36;
      if ( v38 )
      {
        v15 = (*(_DWORD *)v38)-- == 1;
        if ( v15 )
        {
          p = v38;
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v38);
          CustomFree(p);
        }
      }
      v39 = v81;
      if ( v81 )
      {
        v15 = (*(_DWORD *)v81)-- == 1;
        if ( v15 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v39);
          CustomFree(v39);
        }
      }
      *(_DWORD *)(*((_DWORD *)this + 96) + v25) = v28;
    }
    (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(**((_DWORD **)this + 77) + 24))(
      &v80,
      *((_DWORD *)this + 77),
      v26);
    v29 = v80;
    v30 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 102) + v32 * 4);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v80);
    if ( v29 == v30 )
    {
      *(_DWORD *)(*((_DWORD *)this + 96) + v25) = v28;
      v19 = *((unsigned int **)this + 102);
      v24 = v19;
      goto LABEL_46;
    }
    v27 = ++v28;
    if ( v28 == v23 )
      break;
    v24 = *((unsigned int **)this + 102);
  }
  v19 = *((unsigned int **)this + 102);
  ++v26;
  v24 = v19;
  v25 += 4;
  if ( v26 != v62 )
    goto LABEL_47;
LABEL_49:
  v40 = *v19;
  if ( *v19 )
  {
    v40 = 0;
    while ( ++v40 != v62 )
    {
      if ( !v19[v40] )
        goto LABEL_90;
    }
    v18 = *((_DWORD *)this + 103);
  }
  else
  {
LABEL_90:
    v79 = nullptr;
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize(v66, v40, &v79);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v79);
    v24 = *((unsigned int **)this + 102);
    v18 = *((_DWORD *)this + 103);
  }
LABEL_54:
  v78 = nullptr;
  v41 = (v18 - (int)v24) >> 2;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterial>>::resize((_DWORD *)this + 108, v41, &v78);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v78);
  v77 = nullptr;
  std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>>::resize((int *)this + 111, v41, &v77);
  v42 = v77;
  if ( v77 )
  {
    v43 = *(_DWORD *)v77 - 1;
    *(_DWORD *)v77 = v43;
    if ( !v43 )
    {
      glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v42);
      CustomFree(v42);
    }
  }
  v44 = 0;
  v76 = 0;
  std::vector<int>::resize((int)this + 396, v64, (char *)&v76);
  if ( v64 )
  {
    do
    {
      v45 = *(glitch::IReferenceCounted **)(v65[9] + 8 * v44 + 4);
      if ( v45 )
      {
        ++*((_DWORD *)v45 + 1);
        if ( v41 )
        {
          for ( i = 0; i != v41; ++i )
          {
            (*(void (__fastcall **)(glitch::video::CMaterial **, glitch::IReferenceCounted *, _DWORD))(*(_DWORD *)v45 + 24))(
              &v75,
              v45,
              0);
            v61 = v75;
            pa = *(glitch::video::CMaterial **)(*((_DWORD *)this + 102) + 4 * i);
            boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v75);
            if ( v61 == pa )
              *(_DWORD *)(*((_DWORD *)this + 99) + 4 * v44) = i;
          }
        }
        glitch::IReferenceCounted::drop(v45);
      }
      ++v44;
    }
    while ( v44 != v64 );
  }
  if ( v41 )
  {
    v47 = 0;
    v63 = v41;
    do
    {
      v48 = *((_DWORD *)this + 108);
      v70 = nullptr;
      v70 = *(glitch::video::CMaterial **)(v48 + 4 * v47);
      *(_DWORD *)(v48 + 4 * v47) = 0;
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v70);
      v49 = *((_DWORD *)this + 111);
      v50 = *(glitch::video::CMaterialVertexAttributeMap **)(v49 + 4 * v47);
      *(_DWORD *)(v49 + 4 * v47) = 0;
      if ( v50 )
      {
        v15 = (*(_DWORD *)v50)-- == 1;
        if ( v15 )
        {
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v50);
          CustomFree(v50);
        }
      }
      if ( *(_DWORD *)(*((_DWORD *)this + 102) + 4 * v47) )
      {
        v51 = *((_DWORD *)this + 108);
        glitch::video::CMaterial::allocate(&v74, &v86, "XR_XRAY_SKINNED_MODULAR", 0);
        v52 = v74;
        v68 = v74;
        if ( v74 )
        {
          ++*(_DWORD *)v74;
          v52 = v68;
        }
        v68 = *(glitch::video::CMaterial **)(v51 + 4 * v47);
        *(_DWORD *)(v51 + 4 * v47) = v52;
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v68);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v74);
        v53 = *(_DWORD *)(dword_99F73C + 28);
        v73 = *(glitch::video::CMaterial **)(*((_DWORD *)this + 108) + 4 * v47);
        if ( v73 )
          ++*(_DWORD *)v73;
        SceneManager::ChangeCustomXrayTechnique(v53, &v73, 1, 1);
        boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v73);
        if ( *(_DWORD *)(*((_DWORD *)this + 105) + 4 * v47) )
        {
          v54 = *((_DWORD *)this + 111);
          glitch::video::CMaterialVertexAttributeMap::allocate(&v72, *(_DWORD *)(*((_DWORD *)this + 108) + 4 * v47) + 4);
          v55 = v72;
          if ( v72 )
            ++*(_DWORD *)v72;
          v56 = *(glitch::video::CMaterialVertexAttributeMap **)(v54 + 4 * v47);
          *(_DWORD *)(v54 + 4 * v47) = v55;
          if ( v56 )
          {
            v15 = (*(_DWORD *)v56)-- == 1;
            if ( v15 )
            {
              pb = v56;
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v56);
              CustomFree(pb);
            }
          }
          v57 = v72;
          if ( v72 )
          {
            v15 = (*(_DWORD *)v72)-- == 1;
            if ( v15 )
            {
              glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v57);
              CustomFree(v57);
            }
          }
        }
      }
      ++v47;
    }
    while ( v47 != v63 );
  }
  boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr(&v86);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v67);
}


// ===== 364174 XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>,glitch::scene::ISceneNode const*) =====
XrayModularSkinnedMeshSceneNode *__fastcall XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *a1,
        int a2,
        int a3)
{
  *((_DWORD *)a1 + 116) = 1;
  *((_DWORD *)a1 + 115) = off_95B720;
  *(_DWORD *)a1 = off_962364;
  *(int *)((char *)&elf_hash_bucket[60] + (_DWORD)a1) = (int)off_962384;
  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, (int *)off_961BB4, a2);
  *((_DWORD *)a1 + 113) = 0;
  *((_DWORD *)a1 + 114) = a3;
  *((_DWORD *)a1 + 96) = 0;
  *(_DWORD *)a1 = off_961A94;
  *((_DWORD *)a1 + 115) = off_961BA0;
  *((_DWORD *)a1 + 97) = 0;
  *((_DWORD *)a1 + 98) = 0;
  *((_DWORD *)a1 + 99) = 0;
  *((_DWORD *)a1 + 100) = 0;
  *((_DWORD *)a1 + 101) = 0;
  *((_DWORD *)a1 + 102) = 0;
  *((_DWORD *)a1 + 103) = 0;
  *((_DWORD *)a1 + 104) = 0;
  *((_DWORD *)a1 + 105) = 0;
  *((_DWORD *)a1 + 106) = 0;
  *((_DWORD *)a1 + 107) = 0;
  *((_DWORD *)a1 + 108) = 0;
  *((_DWORD *)a1 + 109) = 0;
  *((_DWORD *)a1 + 110) = 0;
  *((_DWORD *)a1 + 111) = 0;
  *((_DWORD *)a1 + 112) = 0;
  XrayModularSkinnedMeshSceneNode::regenerateXrayMaterial(a1);
  return a1;
}


// ===== 364254 XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>,glitch::scene::ISceneNode const*) =====
XrayModularSkinnedMeshSceneNode *__fastcall XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *a1,
        int *a2,
        int a3,
        int a4)
{
  int v7; // r2

  BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode((int)a1, a2 + 1, a3);
  v7 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)((char *)a1 + *(_DWORD *)(v7 - 28)) = a2[19];
  *(_DWORD *)((char *)a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[20];
  *((_DWORD *)a1 + 113) = 0;
  *((_DWORD *)a1 + 114) = a4;
  *((_DWORD *)a1 + 96) = 0;
  *((_DWORD *)a1 + 97) = 0;
  *((_DWORD *)a1 + 98) = 0;
  *((_DWORD *)a1 + 99) = 0;
  *((_DWORD *)a1 + 100) = 0;
  *((_DWORD *)a1 + 101) = 0;
  *((_DWORD *)a1 + 102) = 0;
  *((_DWORD *)a1 + 103) = 0;
  *((_DWORD *)a1 + 104) = 0;
  *((_DWORD *)a1 + 105) = 0;
  *((_DWORD *)a1 + 106) = 0;
  *((_DWORD *)a1 + 107) = 0;
  *((_DWORD *)a1 + 108) = 0;
  *((_DWORD *)a1 + 109) = 0;
  *((_DWORD *)a1 + 110) = 0;
  *((_DWORD *)a1 + 111) = 0;
  *((_DWORD *)a1 + 112) = 0;
  XrayModularSkinnedMeshSceneNode::regenerateXrayMaterial(a1);
  return a1;
}


// ===== 3642f0 `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *this)
{
  XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode((XrayModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 364300 `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *this)
{
  XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode((XrayModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 364310 `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *this)
{
  XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode((XrayModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 364320 `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() =====
void __fastcall `virtual thunk to'XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode(
        XrayModularSkinnedMeshSceneNode *this)
{
  XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode((XrayModularSkinnedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 364330 AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator *) =====
int __fastcall AnimApplicator::AnimApplicator(int result, int a2)
{
  *(_DWORD *)(result + 56) = 0;
  *(_DWORD *)result = off_962398;
  *(_DWORD *)(result + 4) = a2;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_DWORD *)(result + 40) = 0;
  *(_BYTE *)(result + 48) = 0;
  *(_DWORD *)(result + 52) = 0;
  return result;
}


// ===== 364398 AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator *) =====
int __fastcall AnimApplicator::AnimApplicator(int result, int a2)
{
  *(_DWORD *)(result + 56) = 0;
  *(_DWORD *)result = off_962398;
  *(_DWORD *)(result + 4) = a2;
  *(_DWORD *)(result + 44) = 0;
  *(_DWORD *)(result + 8) = 0;
  *(_DWORD *)(result + 16) = 0;
  *(_DWORD *)(result + 20) = 0;
  *(_DWORD *)(result + 24) = 0;
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 32) = 0;
  *(_DWORD *)(result + 36) = 0;
  *(_DWORD *)(result + 40) = 0;
  *(_BYTE *)(result + 48) = 0;
  *(_DWORD *)(result + 52) = 0;
  return result;
}


// ===== 364400 AnimApplicator::SetCallback(void (*)(glitch::scene::ITimelineController *,void *),void *) =====
int __fastcall AnimApplicator::SetCallback(int result, int a2, int a3)
{
  *(_DWORD *)(result + 56) = a3;
  *(_DWORD *)(result + 52) = a2;
  return result;
}


// ===== 36440c AnimApplicator::CheckCallback(glitch::scene::ITimelineController *) =====
int __fastcall AnimApplicator::CheckCallback(int result, int a2)
{
  int v2; // r4
  int (__fastcall *v3)(int, _DWORD); // r3

  v2 = result;
  if ( *(_BYTE *)(result + 48) )
  {
    v3 = *(int (__fastcall **)(int, _DWORD))(result + 52);
    if ( v3 )
    {
      result = v3(a2, *(_DWORD *)(result + 56));
      *(_BYTE *)(v2 + 48) = 0;
    }
  }
  return result;
}


// ===== 364444 AnimApplicator::CalculateDelta(uint,glitch::core::vector3d<float> const&) =====
float __fastcall AnimApplicator::CalculateDelta(float result, int a2, float *a3)
{
  float v3; // r4
  float v4; // r7
  int v5; // r3

  v3 = result;
  if ( *(_DWORD *)(LODWORD(result) + 20) == a2 )
  {
    *(_DWORD *)(LODWORD(result) + 44) = 0;
    *(_DWORD *)(LODWORD(result) + 36) = 0;
    *(_DWORD *)(LODWORD(result) + 40) = 0;
  }
  else
  {
    v4 = a3[2] - *(float *)(LODWORD(result) + 32);
    result = *a3 - *(float *)(LODWORD(result) + 24);
    *(float *)(LODWORD(v3) + 40) = a3[1] - *(float *)(LODWORD(v3) + 28);
    *(float *)(LODWORD(v3) + 36) = result;
    *(float *)(LODWORD(v3) + 44) = v4;
  }
  *(float *)(LODWORD(v3) + 24) = *a3;
  *(float *)(LODWORD(v3) + 28) = a3[1];
  v5 = *((_DWORD *)a3 + 2);
  *(_DWORD *)(LODWORD(v3) + 20) = a2;
  *(_DWORD *)(LODWORD(v3) + 32) = v5;
  return result;
}


// ===== 3644cc AnimApplicator::ResetDelta(uint,glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall AnimApplicator::ResetDelta(_DWORD *result, int a2, _DWORD *a3)
{
  int v3; // r3

  result[6] = *a3;
  result[7] = a3[1];
  v3 = a3[2];
  result[5] = a2;
  result[11] = 0;
  result[8] = v3;
  result[9] = 0;
  result[10] = 0;
  return result;
}


// ===== 3644fc AnimApplicator::ResetDelta(uint) =====
_DWORD *__fastcall AnimApplicator::ResetDelta(_DWORD *this, unsigned int a2)
{
  int v2; // r3
  _DWORD *v3; // r4
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int (__fastcall *v8)(int, int, unsigned int, int *); // r12
  unsigned int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // [sp+4h] [bp-10h] BYREF
  int v13; // [sp+8h] [bp-Ch]
  int v14; // [sp+Ch] [bp-8h]

  v2 = *(this + 2);
  v3 = this;
  if ( v2 )
  {
    v5 = *(this + 3);
    if ( v5 == -1 )
    {
      this = (_DWORD *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 160))(*(this + 2));
      v3[6] = *this;
      v3[7] = *(this + 1);
      v3[8] = *(this + 2);
      goto LABEL_8;
    }
    v6 = *(this + 1);
    v14 = 0;
    v12 = 0;
    v13 = 0;
    if ( v6 )
    {
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 68))(v6);
      v6 = v3[1];
      v5 = v3[3];
      v8 = *(int (__fastcall **)(int, int, unsigned int, int *))(*(_DWORD *)v6 + 124);
      if ( v7 )
      {
        v9 = *(_DWORD *)(v7 + 16);
LABEL_7:
        this = (_DWORD *)v8(v6, v5, v9, &v12);
        v10 = v14;
        v11 = v12;
        v3[7] = v13;
        v3[8] = v10;
        v3[6] = v11;
        goto LABEL_8;
      }
    }
    else
    {
      v8 = (int (__fastcall *)(int, int, unsigned int, int *))MEMORY[0x464C45FB];
    }
    v9 = a2;
    goto LABEL_7;
  }
LABEL_8:
  v3[5] = a2;
  v3[11] = 0;
  v3[9] = 0;
  v3[10] = 0;
  return this;
}


// ===== 3645e8 AnimApplicator::AnimateNode(uint) =====
float __fastcall AnimApplicator::AnimateNode(float this, unsigned int a2)
{
  int v2; // r3
  float v3; // r4
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int (__fastcall *v8)(int, int, unsigned int, float *); // r12
  unsigned int v9; // r2
  float v10; // r6
  float v11; // r3
  float v12; // r1
  float v13; // [sp+4h] [bp-10h] BYREF
  float v14; // [sp+8h] [bp-Ch]
  float v15; // [sp+Ch] [bp-8h]

  v2 = *(_DWORD *)(LODWORD(this) + 8);
  v3 = this;
  if ( !v2 )
    goto LABEL_11;
  v5 = *(_DWORD *)(LODWORD(this) + 12);
  v15 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if ( v5 == -1 )
  {
    this = COERCE_FLOAT((*(int (__fastcall **)(int))(*(_DWORD *)v2 + 160))(v2));
    v13 = *(float *)LODWORD(this);
    v14 = *(float *)(LODWORD(this) + 4);
    v15 = *(float *)(LODWORD(this) + 8);
    goto LABEL_8;
  }
  v6 = *(_DWORD *)(LODWORD(this) + 4);
  if ( !v6 )
  {
    v8 = (int (__fastcall *)(int, int, unsigned int, float *))MEMORY[0x464C45FB];
LABEL_14:
    v9 = a2;
    goto LABEL_7;
  }
  v7 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 68))(*(_DWORD *)(LODWORD(this) + 4));
  v6 = *(_DWORD *)(LODWORD(v3) + 4);
  v5 = *(_DWORD *)(LODWORD(v3) + 12);
  v8 = *(int (__fastcall **)(int, int, unsigned int, float *))(*(_DWORD *)v6 + 124);
  if ( !v7 )
    goto LABEL_14;
  v9 = *(_DWORD *)(v7 + 4);
LABEL_7:
  this = COERCE_FLOAT(v8(v6, v5, v9, &v13));
LABEL_8:
  if ( *(_DWORD *)(LODWORD(v3) + 20) == a2 )
  {
    *(_DWORD *)(LODWORD(v3) + 44) = 0;
    *(_DWORD *)(LODWORD(v3) + 36) = 0;
    *(_DWORD *)(LODWORD(v3) + 40) = 0;
  }
  else
  {
    v10 = v15 - *(float *)(LODWORD(v3) + 32);
    this = v13 - *(float *)(LODWORD(v3) + 24);
    *(float *)(LODWORD(v3) + 40) = v14 - *(float *)(LODWORD(v3) + 28);
    *(float *)(LODWORD(v3) + 36) = this;
    *(float *)(LODWORD(v3) + 44) = v10;
  }
  v11 = v15;
  v12 = v13;
  *(float *)(LODWORD(v3) + 28) = v14;
  *(float *)(LODWORD(v3) + 32) = v11;
  *(float *)(LODWORD(v3) + 24) = v12;
LABEL_11:
  *(_DWORD *)(LODWORD(v3) + 20) = a2;
  return this;
}


// ===== 36471c `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimApplicator.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimApplicator.cpp()
{
  dword_9A22DC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A22D8 = 1056964608;
}


// ===== 36473c AnimApplicator::SetRefNode(glitch::scene::ISceneNode *) =====
int __fastcall AnimApplicator::SetRefNode(int this, glitch::scene::ISceneNode *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r5
  int v5; // r3
  int v6; // r7
  int v7; // r4
  int v8; // r6
  const char *v9; // r0

  v2 = *(_DWORD **)(this + 8);
  v3 = (_DWORD *)this;
  if ( v2 )
    this = glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v2 + *(_DWORD *)(*v2 - 12)));
  v3[2] = a2;
  if ( a2 )
  {
    ++*(_DWORD *)((char *)a2 + *(_DWORD *)(*(_DWORD *)a2 - 12) + 4);
    v5 = v3[1];
    v3[3] = -1;
    this = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 112))(v5);
    v6 = this;
    if ( this )
    {
      v7 = 0;
      do
      {
        while ( 1 )
        {
          v8 = (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v3[1] + 84))(v3[1], v7);
          v9 = (const char *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3[2] + 84))(v3[2]);
          this = LC_API_STRCMP_0(*(const char **)(v8 + 4), v9);
          if ( !this )
            break;
          if ( v6 == ++v7 )
            return this;
        }
        this = (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)v3[1] + 84))(v3[1], v7);
        if ( *(_DWORD *)(this + 8) == 1 )
          v3[3] = v7;
        ++v7;
      }
      while ( v6 != v7 );
    }
  }
  return this;
}


// ===== 364838 AnimApplicator::~AnimApplicator() =====
void __fastcall AnimApplicator::~AnimApplicator(AnimApplicator *this)
{
  *(_DWORD *)this = off_962398;
  AnimApplicator::SetRefNode((int)this, nullptr);
}


// ===== 364870 AnimApplicator::~AnimApplicator() =====
void __fastcall AnimApplicator::~AnimApplicator(AnimApplicator *this)
{
  *(_DWORD *)this = off_962398;
  AnimApplicator::SetRefNode((int)this, nullptr);
}


// ===== 3648a8 AnimApplicator::~AnimApplicator() =====
void __fastcall AnimApplicator::~AnimApplicator(AnimApplicator *this)
{
  AnimApplicator::~AnimApplicator(this);
  CustomFree(this);
}


// ===== 3648c4 glitch::collada::CDynamicAnimationSet::CDynamicAnimationSet(void) =====
int __fastcall glitch::collada::CDynamicAnimationSet::CDynamicAnimationSet(int this)
{
  *(_DWORD *)(this + 124) = 0;
  *(_DWORD *)this = off_97A800;
  *(_DWORD *)(this + 108) = &glitch::collada::CColladaDatabase::DefaultFactory;
  *(_BYTE *)(this + 112) = 1;
  *(_DWORD *)(this + 4) = 1;
  *(_DWORD *)(this + 8) = 0;
  *(_DWORD *)(this + 12) = 0;
  *(_DWORD *)(this + 16) = 0;
  *(_DWORD *)(this + 20) = 0;
  *(_DWORD *)(this + 24) = 0;
  *(_DWORD *)(this + 28) = 0;
  *(_DWORD *)(this + 32) = 0;
  *(_DWORD *)(this + 36) = 0;
  *(_DWORD *)(this + 40) = 0;
  *(_DWORD *)(this + 44) = 0;
  *(_DWORD *)(this + 48) = 0;
  *(_DWORD *)(this + 52) = 0;
  *(_DWORD *)(this + 56) = 0;
  *(_DWORD *)(this + 64) = 0;
  *(_DWORD *)(this + 68) = 0;
  *(_DWORD *)(this + 72) = 0;
  *(_DWORD *)(this + 76) = 0;
  *(_DWORD *)(this + 80) = 0;
  *(_DWORD *)(this + 84) = 0;
  *(_DWORD *)(this + 88) = 0;
  *(_DWORD *)(this + 92) = 0;
  *(_DWORD *)(this + 96) = 0;
  *(_DWORD *)(this + 100) = 0;
  *(_DWORD *)(this + 104) = 0;
  *(_DWORD *)(this + 116) = 0;
  *(_DWORD *)(this + 120) = 0;
  return this;
}


// ===== 36497c AnimationSet::SetAnimSet(glitch::collada::CDynamicAnimationSet *) =====
glitch::IReferenceCounted *__fastcall AnimationSet::SetAnimSet(
        AnimationSet *this,
        glitch::collada::CDynamicAnimationSet *a2)
{
  glitch::IReferenceCounted *result; // r0

  result = *((glitch::IReferenceCounted **)this + 8);
  if ( result )
  {
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
    *((_DWORD *)this + 8) = 0;
  }
  *((_DWORD *)this + 11) = 1;
  *((_DWORD *)this + 8) = a2;
  ++*((_DWORD *)a2 + 1);
  return result;
}


// ===== 3649bc AnimationSet::CalculateCacheSize(void) =====
_DWORD *__fastcall AnimationSet::CalculateCacheSize(_DWORD *this)
{
  *(this + 12) = *(this + 13) * (*(this + 1) - 1) + 10;
  return this;
}


// ===== 3649d8 AnimationSet::Update(int) =====
void __fastcall AnimationSet::Update(AnimationSet *this, int a2)
{
  ;
}


// ===== 3649dc AnimationSet::Purge(void) =====
void __fastcall AnimationSet::Purge(AnimationSet *this)
{
  ;
}


// ===== 3649e0 AnimationSet::_FindCacheCandidate(void) =====
int __fastcall AnimationSet::_FindCacheCandidate(AnimationSet *this)
{
  char *i; // r2
  char *v2; // r4
  int v3; // r6
  bool v4; // zf
  unsigned int v5; // r0
  unsigned int v6; // r1
  int v7; // r5
  unsigned int v8; // r12
  char *v9; // r1
  unsigned int v11; // r3
  int v12; // r3

  i = *((char **)this + 4);
  v2 = (char *)this + 8;
  v3 = -1;
  v4 = (char *)this + 8 == i;
  v5 = *((_DWORD *)i + 16);
  v6 = *((_DWORD *)i + 15);
  v7 = -1;
  if ( !v4 )
  {
    while ( 1 )
    {
      if ( *((int *)i + 14) > 0 )
        goto LABEL_3;
      v11 = *((_DWORD *)i + 16);
      if ( v7 == -1 )
        v7 = *((_DWORD *)i + 4);
      if ( v11 >= v5 )
        break;
      v9 = *((char **)i + 3);
      v5 = *((_DWORD *)i + 16);
      v8 = *((_DWORD *)i + 15);
      v3 = *((_DWORD *)i + 4);
      if ( !v9 )
      {
LABEL_17:
        v12 = *((_DWORD *)i + 1);
        if ( i == *(char **)(v12 + 12) )
        {
          do
          {
            i = (char *)v12;
            v12 = *(_DWORD *)(v12 + 4);
          }
          while ( *(char **)(v12 + 12) == i );
          v9 = *((char **)i + 3);
        }
        if ( (char *)v12 != v9 )
          i = (char *)v12;
        v6 = v8;
        goto LABEL_9;
      }
LABEL_5:
      for ( i = v9; *((_DWORD *)i + 2); i = *((char **)i + 2) )
        ;
      v6 = v8;
LABEL_9:
      if ( v2 == i )
        goto LABEL_10;
    }
    if ( v11 == v5 && (v8 = *((_DWORD *)i + 15), v6 > v8) )
      v3 = *((_DWORD *)i + 4);
    else
LABEL_3:
      v8 = v6;
    v9 = *((char **)i + 3);
    if ( !v9 )
      goto LABEL_17;
    goto LABEL_5;
  }
LABEL_10:
  if ( v3 == -1 )
    return v7;
  else
    return v3;
}


// ===== 364ad4 Animation::~Animation() =====
void __fastcall Animation::~Animation(std::priv::_String_base<char,std::allocator<char> > *this)
{
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)(this + 1));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this);
}


// ===== 364af4 AnimationSet::_UpdateAnimationIndices(void) =====
int __fastcall AnimationSet::_UpdateAnimationIndices(int this)
{
  _DWORD *v1; // r4
  int v2; // r5
  _DWORD *v3; // r6
  _DWORD *v4; // r3
  int v5; // r2

  v1 = *(_DWORD **)(this + 16);
  v2 = this;
  v3 = (_DWORD *)(this + 8);
  while ( v3 != v1 )
  {
    while ( 1 )
    {
      this = glitch::collada::CDynamicAnimationSet::getDatabaseIndex(
               *(glitch::collada::CDynamicAnimationSet **)(v2 + 32),
               (glitch::collada::CColladaDatabase *)(v1 + 11));
      v4 = (_DWORD *)v1[3];
      v1[13] = this;
      if ( !v4 )
        break;
      while ( v4[2] )
        v4 = (_DWORD *)v4[2];
      v1 = v4;
      if ( v3 == v4 )
        return this;
    }
    v5 = v1[1];
    if ( v1 == *(_DWORD **)(v5 + 12) )
    {
      do
      {
        v1 = (_DWORD *)v5;
        v5 = *(_DWORD *)(v5 + 4);
      }
      while ( *(_DWORD **)(v5 + 12) == v1 );
      v4 = (_DWORD *)v1[3];
    }
    if ( v4 != (_DWORD *)v5 )
      v1 = (_DWORD *)v5;
  }
  return this;
}


// ===== 364b80 Arrays::GetMemberIDByString<Arrays::AnimDict>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::AnimDict>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::AnimDict::size;
  if ( !Arrays::AnimDict::size )
    return -1;
  v3 = 0;
  v4 = Arrays::AnimDict::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 364bf4 AnimationSet::GetAnimationBySetIndex(int) =====
char *__fastcall AnimationSet::GetAnimationBySetIndex(AnimationSet *this, int a2)
{
  AnimationSet *v2; // r4
  AnimationSet *v3; // r12
  AnimationSet *v5; // r2

  v2 = *((AnimationSet **)this + 4);
  v3 = (AnimationSet *)((char *)this + 8);
  while ( v2 != v3 )
  {
    while ( 1 )
    {
      if ( *((_DWORD *)v2 + 13) == a2 )
      {
        *((_DWORD *)v2 + 15) = glitch::os::Timer::getRealTime(this);
        return (char *)v2 + 20;
      }
      this = *((AnimationSet **)v2 + 3);
      if ( !this )
        break;
      while ( *((_DWORD *)this + 2) )
        this = *((AnimationSet **)this + 2);
      v2 = this;
      if ( this == v3 )
        return (char *)&AnimationSet::s_invalidAnim;
    }
    v5 = *((AnimationSet **)v2 + 1);
    if ( v2 == *((AnimationSet **)v5 + 3) )
    {
      do
      {
        v2 = v5;
        v5 = *((AnimationSet **)v5 + 1);
      }
      while ( *((AnimationSet **)v5 + 3) == v2 );
      this = *((AnimationSet **)v2 + 3);
    }
    if ( this != v5 )
      v2 = v5;
  }
  return (char *)&AnimationSet::s_invalidAnim;
}


// ===== 364ca0 AnimationSet::CreateAnimSet(void) =====
int __fastcall AnimationSet::CreateAnimSet(AnimationSet *this)
{
  glitch::IReferenceCounted *v2; // r0
  int v3; // r5

  v2 = *((glitch::IReferenceCounted **)this + 8);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop(v2);
    *((_DWORD *)this + 8) = 0;
  }
  *((_DWORD *)this + 11) = 1;
  v3 = operator new(0x80u, 0);
  glitch::collada::CDynamicAnimationSet::CDynamicAnimationSet(v3);
  *((_DWORD *)this + 8) = v3;
  return (*(int (__fastcall **)(int, int))(*(_DWORD *)v3 + 28))(v3, 1);
}


// ===== 364cf8 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimationSet.cpp =====
int `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimationSet.cpp()
{
  int result; // r0

  dword_9A22E8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A22E4 = 1056964608;
  dword_9A22FC = (int)&AnimationSet::s_invalidAnim;
  dword_9A2300 = (int)&AnimationSet::s_invalidAnim;
  std::string::_M_range_initialize((std::string *)&AnimationSet::s_invalidAnim, "Invalid", "");
  dword_9A2310 = -1;
  dword_9A230C = -1;
  dword_9A2308 = (int)&glitch::collada::CColladaDatabase::DefaultFactory;
  dword_9A2318 = 0;
  dword_9A2304 = 0;
  dword_9A2314 = 0;
  result = _aeabi_atexit((int)&AnimationSet::s_invalidAnim, (int)Animation::~Animation, (int)&_dso_handle);
  if ( (`guard variable for'Singleton<Application>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<Application>::s_inst = 1;
    Application::Application((Application *)&Singleton<Application>::s_inst);
    return _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  return result;
}


// ===== 364df4 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(std::pair<int const,Animation> const&) =====
char *__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(
        int a1,
        int a2)
{
  char *v3; // r4
  int v4; // r3
  int v5; // r2
  int v7; // r2

  v3 = (char *)GlitchAlloc(0x44u, 0);
  *((_DWORD *)v3 + 4) = *(_DWORD *)a2;
  *((_DWORD *)v3 + 9) = v3 + 20;
  *((_DWORD *)v3 + 10) = v3 + 20;
  std::string::_M_range_initialize((std::string *)(v3 + 20), *(const char **)(a2 + 24), *(const char **)(a2 + 20));
  v4 = *(_DWORD *)(a2 + 28);
  *((_DWORD *)v3 + 11) = v4;
  *((_DWORD *)v3 + 12) = *(_DWORD *)(a2 + 32);
  if ( v4 )
  {
    v5 = *(_DWORD *)(v4 + 4);
    if ( v5 )
      *(_DWORD *)(v4 + 4) = v5 + 1;
  }
  *((_DWORD *)v3 + 13) = *(_DWORD *)(a2 + 36);
  *((_DWORD *)v3 + 14) = *(_DWORD *)(a2 + 40);
  *((_DWORD *)v3 + 15) = *(_DWORD *)(a2 + 44);
  v7 = *(_DWORD *)(a2 + 48);
  *((_DWORD *)v3 + 3) = 0;
  *((_DWORD *)v3 + 2) = 0;
  *((_DWORD *)v3 + 16) = v7;
  return v3;
}


// ===== 364e88 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)(v2 + 44));
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 20));
      GlitchFree((void *)v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 364ecc AnimationSet::FreeAll(void) =====
void __fastcall AnimationSet::FreeAll(AnimationSet *this)
{
  glitch::IReferenceCounted *v2; // r0

  v2 = *((glitch::IReferenceCounted **)this + 8);
  if ( v2 )
  {
    glitch::IReferenceCounted::drop(v2);
    *((_DWORD *)this + 8) = 0;
  }
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 8,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 364f20 AnimationSet::~AnimationSet() =====
void __fastcall AnimationSet::~AnimationSet(AnimationSet *this)
{
  *(_DWORD *)this = off_9623B8;
  AnimationSet::FreeAll(this);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 8,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 364f84 AnimationSet::~AnimationSet() =====
void __fastcall AnimationSet::~AnimationSet(AnimationSet *this)
{
  AnimationSet::~AnimationSet(this);
  CustomFree(this);
}


// ===== 364fa0 AnimationSet::~AnimationSet() =====
void __fastcall AnimationSet::~AnimationSet(AnimationSet *this)
{
  *(_DWORD *)this = off_9623B8;
  AnimationSet::FreeAll(this);
  if ( *((_DWORD *)this + 6) )
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      (int)this + 8,
      *((_DWORD *)this + 3));
    *((_DWORD *)this + 5) = (char *)this + 8;
    *((_DWORD *)this + 6) = 0;
    *((_DWORD *)this + 4) = (char *)this + 8;
    *((_DWORD *)this + 3) = 0;
  }
}


// ===== 365004 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::erase(std::priv::_Rb_tree_iterator<std::pair<int const,Animation>,std::priv::_MapTraitsT<std::pair<int const,Animation>>>) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r5

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)(v3 + 44));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v3 + 20));
  GlitchFree(v3);
  --*(_DWORD *)(a1 + 16);
}


// ===== 36504c AnimationSet::_RemoveAnimation(std::priv::_Rb_tree_iterator<std::pair<int const,Animation>,std::priv::_MapTraitsT<std::pair<int const,Animation>>>,bool) =====
void __fastcall AnimationSet::_RemoveAnimation(int a1, unsigned __int8 **a2, int a3)
{
  glitch::collada::CDynamicAnimationSet *v4; // r0
  unsigned __int8 *v7; // r3
  unsigned __int8 *v8; // [sp+4h] [bp-4h] BYREF

  v4 = *(glitch::collada::CDynamicAnimationSet **)(a1 + 32);
  v7 = *a2;
  if ( v4 )
  {
    if ( *((_BYTE *)v4 + 112) )
      glitch::collada::CDynamicAnimationSet::remAnimationLibrary(v4, *((_DWORD *)v7 + 13));
    else
      glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(v4, *((_DWORD *)v7 + 13));
  }
  if ( !a3 )
  {
    v8 = *a2;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
      a1 + 8,
      &v8);
  }
}


// ===== 3650b4 AnimationSet::UnloadAnimation(int,bool) =====
int __fastcall AnimationSet::UnloadAnimation(AnimationSet *this, int a2, bool a3)
{
  char *v3; // r3
  char *v5; // r5
  char *v6; // r12
  int v7; // r0
  bool v8; // cc
  char *v9; // r0
  char *v11; // [sp+4h] [bp-8h] BYREF

  v3 = *((char **)this + 3);
  v5 = (char *)this + 8;
  if ( !v3 )
    goto LABEL_16;
  v6 = (char *)this + 8;
  while ( 1 )
  {
    v7 = *((_DWORD *)v3 + 4);
    v8 = a2 <= v7;
    v9 = a2 <= v7 ? *((char **)v3 + 2) : *((char **)v3 + 3);
    if ( !v8 )
      v3 = v6;
    v6 = v3;
    if ( !v9 )
      break;
    v3 = v9;
  }
  if ( v5 == v3 )
    return 0;
  if ( a2 < *((_DWORD *)v3 + 4) )
LABEL_16:
    v3 = v5;
  if ( v5 != v3 && *((int *)v3 + 14) <= 0 )
  {
    v11 = v3;
    AnimationSet::_RemoveAnimation((int)this, (unsigned __int8 **)&v11, a3);
    AnimationSet::_UpdateAnimationIndices((int)this);
    return 1;
  }
  return 0;
}


// ===== 365158 AnimationSet::UnloadAnimation(char const*) =====
int __fastcall AnimationSet::UnloadAnimation(AnimationSet *this, char *a2)
{
  int v3; // r1

  v3 = Arrays::GetMemberIDByString<Arrays::AnimDict>(a2);
  return AnimationSet::UnloadAnimation(this, v3, 0);
}


// ===== 36517c std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<int const,Animation> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
char **__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        char **a1,
        _DWORD *a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6)
{
  char *v10; // r8
  int v11; // r3
  int v12; // r2
  char *node; // r10
  int v14; // r2
  char *v16; // r8
  int v17; // r2
  int v18; // r3
  int v19; // r2

  if ( a2 == a3 )
  {
    node = std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_create_node(
             (int)a2,
             a4);
    a2[2] = node;
    a2[1] = node;
    a2[3] = node;
  }
  else if ( a6 || !a5 && *(_DWORD *)a4 >= a3[4] )
  {
    v10 = (char *)GlitchAlloc(0x44u, 0);
    *((_DWORD *)v10 + 4) = *(_DWORD *)a4;
    *((_DWORD *)v10 + 9) = v10 + 20;
    *((_DWORD *)v10 + 10) = v10 + 20;
    std::string::_M_range_initialize((std::string *)(v10 + 20), *(const char **)(a4 + 24), *(const char **)(a4 + 20));
    v11 = *(_DWORD *)(a4 + 28);
    *((_DWORD *)v10 + 11) = v11;
    *((_DWORD *)v10 + 12) = *(_DWORD *)(a4 + 32);
    if ( v11 )
    {
      v12 = *(_DWORD *)(v11 + 4);
      if ( v12 )
        *(_DWORD *)(v11 + 4) = v12 + 1;
    }
    node = v10;
    *((_DWORD *)v10 + 13) = *(_DWORD *)(a4 + 36);
    *((_DWORD *)v10 + 14) = *(_DWORD *)(a4 + 40);
    *((_DWORD *)v10 + 15) = *(_DWORD *)(a4 + 44);
    v14 = *(_DWORD *)(a4 + 48);
    *((_DWORD *)v10 + 3) = 0;
    *((_DWORD *)v10 + 2) = 0;
    *((_DWORD *)v10 + 16) = v14;
    a3[3] = v10;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v10;
  }
  else
  {
    v16 = (char *)GlitchAlloc(0x44u, 0);
    *((_DWORD *)v16 + 4) = *(_DWORD *)a4;
    *((_DWORD *)v16 + 9) = v16 + 20;
    *((_DWORD *)v16 + 10) = v16 + 20;
    std::string::_M_range_initialize((std::string *)(v16 + 20), *(const char **)(a4 + 24), *(const char **)(a4 + 20));
    v17 = *(_DWORD *)(a4 + 28);
    *((_DWORD *)v16 + 11) = v17;
    *((_DWORD *)v16 + 12) = *(_DWORD *)(a4 + 32);
    if ( v17 )
    {
      v18 = *(_DWORD *)(v17 + 4);
      if ( v18 )
        *(_DWORD *)(v17 + 4) = v18 + 1;
    }
    node = v16;
    *((_DWORD *)v16 + 13) = *(_DWORD *)(a4 + 36);
    *((_DWORD *)v16 + 14) = *(_DWORD *)(a4 + 40);
    *((_DWORD *)v16 + 15) = *(_DWORD *)(a4 + 44);
    v19 = *(_DWORD *)(a4 + 48);
    *((_DWORD *)v16 + 3) = 0;
    *((_DWORD *)v16 + 2) = 0;
    *((_DWORD *)v16 + 16) = v19;
    a3[2] = v16;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v16;
  }
  *((_DWORD *)node + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)node, a2 + 1);
  ++a2[4];
  *a1 = node;
  return a1;
}


// ===== 365340 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<int const,Animation> const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
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
  char *v13; // r3
  _DWORD *v14; // r2
  char *v15; // r3
  char *v16; // [sp+8h] [bp-8h] BYREF
  char *v17; // [sp+Ch] [bp-4h] BYREF

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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      &v17,
      a2,
      v3,
      (int)a3,
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
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        &v16,
        a2,
        v3,
        (int)a3,
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


// ===== 3654c8 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<int const,Animation>,std::priv::_MapTraitsT<std::pair<int const,Animation>>>,std::pair<int const,Animation> const&) =====
char **__fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
        char **a1,
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
  char *v19; // [sp+8h] [bp-24h] BYREF
  char *v20; // [sp+10h] [bp-1Ch] BYREF
  char *v21; // [sp+18h] [bp-14h] BYREF
  char *v22; // [sp+20h] [bp-Ch] BYREF

  v4 = *a3;
  if ( *a3 == (_DWORD *)a2[2] )
  {
    if ( !a2[4] )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
        (int)&v22,
        a2,
        a4);
      *a1 = v22;
      return a1;
    }
    v13 = *a4;
    v14 = v4[4];
    if ( *a4 < v14 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        a1,
        a2,
        v4,
        (int)a4,
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
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
          a1,
          a2,
          v4,
          (int)a4,
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
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              v4,
              (int)a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              v7,
              (int)a4,
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
              std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
                a1,
                a2,
                v4,
                (int)a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
              a1,
              a2,
              i,
              (int)a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
            (int)&v19,
            a2,
            a4);
          *a1 = v19;
          return a1;
        }
LABEL_45:
        *a1 = (char *)v4;
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
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      a1,
      a2,
      v16,
      (int)a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 36583c std::map<int,Animation,std::less<int>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<int>(int const&) =====
char *__fastcall std::map<int,Animation,std::less<int>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<int>(
        _DWORD *a1,
        int *a2)
{
  _DWORD *v2; // r4
  int v5; // r1
  _DWORD *v6; // r2
  int v7; // r3
  bool v8; // cc
  _DWORD *v9; // r3
  char *v10; // r0
  int v11; // r2
  char *v12; // r4
  _DWORD *v14; // [sp+0h] [bp-70h] BYREF
  char *v15; // [sp+4h] [bp-6Ch] BYREF
  int v16; // [sp+8h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+Ch] [bp-64h] BYREF
  _DWORD v18[6]; // [sp+24h] [bp-4Ch] BYREF
  std::string v19; // [sp+3Ch] [bp-34h] BYREF
  int v20; // [sp+54h] [bp-1Ch] BYREF
  int *v21; // [sp+58h] [bp-18h]
  int v22; // [sp+5Ch] [bp-14h]
  int v23; // [sp+60h] [bp-10h]
  int v24; // [sp+64h] [bp-Ch]
  int v25; // [sp+68h] [bp-8h]

  v2 = (_DWORD *)a1[1];
  if ( v2 )
  {
    v5 = *a2;
    v6 = a1;
    while ( 1 )
    {
      v7 = v2[4];
      v8 = v7 < v5;
      if ( v7 >= v5 )
        v9 = (_DWORD *)v2[2];
      else
        v9 = (_DWORD *)v2[3];
      if ( v8 )
        v2 = v6;
      if ( !v9 )
        break;
      v6 = v2;
      v2 = v9;
    }
  }
  else
  {
    v2 = a1;
  }
  if ( a1 == v2 || (v10 = (char *)v2, *a2 < v2[4]) )
  {
    v19._M_finish = (char *)&v19;
    v19._M_start_of_storage._M_data = (char *)&v19;
    std::string::_M_range_initialize(&v19, "Invalid", "");
    v16 = *a2;
    v17._M_finish = (char *)&v17;
    v17._M_start_of_storage._M_data = (char *)&v17;
    v21 = &glitch::collada::CColladaDatabase::DefaultFactory;
    v23 = -1;
    v25 = 0;
    v20 = 0;
    v22 = -1;
    v24 = 0;
    std::string::_M_range_initialize((std::string *)&v17, v19._M_start_of_storage._M_data, v19._M_finish);
    v18[1] = v21;
    v18[0] = v20;
    if ( v20 )
    {
      v11 = *(_DWORD *)&byte_4[v20];
      if ( v11 )
        *(_DWORD *)&byte_4[v20] = v11 + 1;
    }
    v18[2] = v22;
    v18[3] = v23;
    v14 = v2;
    v18[4] = v24;
    v18[5] = v25;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      &v15,
      a1,
      &v14,
      &v16);
    v12 = v15;
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v18);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)&v20);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
    v10 = v12;
  }
  return v10 + 20;
}


// ===== 3659ec AnimationSet::LoadAnimation(int) =====
void *__fastcall AnimationSet::LoadAnimation(AnimationSet *this, int a2)
{
  void *v3; // r7
  int v5; // r10
  const char *v6; // r9
  size_t v7; // r0
  int v8; // r3
  int v9; // r2
  int *v10; // r2
  int v11; // r1
  glitch::os::Timer *v12; // r0
  int RealTime; // r0
  glitch::collada::CAnimationSet *v14; // r3
  int v15; // r2
  int v16; // r2
  char *v17; // r7
  int v18; // [sp+4h] [bp-C0h] BYREF
  char v19[8]; // [sp+Ch] [bp-B8h] BYREF
  int v20; // [sp+14h] [bp-B0h] BYREF
  int *v21; // [sp+18h] [bp-ACh]
  _DWORD v22[2]; // [sp+1Ch] [bp-A8h] BYREF
  int v23; // [sp+24h] [bp-A0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v24; // [sp+28h] [bp-9Ch] BYREF
  _DWORD v25[6]; // [sp+40h] [bp-84h] BYREF
  int v26; // [sp+58h] [bp-6Ch]
  std::priv::_String_base<char,std::allocator<char> > v27; // [sp+5Ch] [bp-68h] BYREF
  int v28; // [sp+74h] [bp-50h] BYREF
  int *v29; // [sp+78h] [bp-4Ch]
  int v30; // [sp+7Ch] [bp-48h]
  int v31; // [sp+80h] [bp-44h]
  int v32; // [sp+84h] [bp-40h]
  int v33; // [sp+88h] [bp-3Ch]
  std::string v34; // [sp+8Ch] [bp-38h] BYREF
  int v35; // [sp+A4h] [bp-20h] BYREF
  int *v36; // [sp+A8h] [bp-1Ch]
  int AnimationCount; // [sp+ACh] [bp-18h]
  int v38; // [sp+B0h] [bp-14h]
  int v39; // [sp+B4h] [bp-10h]
  int v40; // [sp+B8h] [bp-Ch]

  v18 = a2;
  PushProfilingContext("AnimationSet::ReplaceAnimation");
  if ( v18 >= 0 && v18 < Arrays::AnimDict::size )
  {
    v5 = Arrays::AnimDict::members + 12 * v18;
    v34._M_finish = (char *)&v34;
    v34._M_start_of_storage._M_data = (char *)&v34;
    std::string::_M_range_initialize(&v34, "Invalid", "");
    v38 = -1;
    AnimationCount = -1;
    v36 = &glitch::collada::CColladaDatabase::DefaultFactory;
    v35 = 0;
    v39 = 0;
    v40 = 0;
    v6 = *(const char **)(v5 + 8);
    v7 = LC_API_STRLEN_0(v6);
    std::string::_M_assign(&v34, v6, &v6[v7]);
    glitch::collada::CColladaDatabase::CColladaDatabase(
      (glitch::collada::CColladaDatabase *)v22,
      v34._M_start_of_storage._M_data,
      nullptr);
    v8 = v22[0];
    v21 = (int *)v22[1];
    v20 = v22[0];
    if ( v22[0] )
    {
      v9 = *(_DWORD *)(v22[0] + 4);
      if ( v9 )
      {
        *(_DWORD *)(v22[0] + 4) = v9 + 1;
        v8 = v20;
      }
    }
    v10 = v21;
    v11 = v35;
    v35 = v8;
    v20 = v11;
    v21 = v36;
    v36 = v10;
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)&v20);
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v22);
    v38 = 0;
    RealTime = glitch::os::Timer::getRealTime(v12);
    v14 = *((glitch::collada::CAnimationSet **)this + 8);
    v39 = RealTime;
    v40 = 0;
    if ( v14 )
    {
      if ( *((_BYTE *)v14 + 112) )
      {
        AnimationCount = (*(int (__fastcall **)(glitch::collada::CAnimationSet *, int *))(*(_DWORD *)v14 + 44))(
                           v14,
                           &v35);
      }
      else
      {
        AnimationCount = glitch::collada::CAnimationSet::getAnimationCount(v14);
        glitch::collada::CDynamicAnimationSet::addAnimationLibraryBindings(
          *((glitch::collada::CDynamicAnimationSet **)this + 8),
          (const glitch::collada::CColladaDatabase *)&v35);
      }
    }
    v26 = v18;
    v27._M_finish = (char *)&v27;
    v27._M_start_of_storage._M_data = (char *)&v27;
    std::string::_M_range_initialize((std::string *)&v27, v34._M_start_of_storage._M_data, v34._M_finish);
    v29 = v36;
    v28 = v35;
    if ( v35 )
    {
      v15 = *(_DWORD *)(v35 + 4);
      if ( v15 )
        *(_DWORD *)(v35 + 4) = v15 + 1;
    }
    v23 = v26;
    v24._M_finish = (char *)&v24;
    v24._M_start_of_storage._M_data = (char *)&v24;
    v30 = AnimationCount;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    std::string::_M_range_initialize((std::string *)&v24, v27._M_start_of_storage._M_data, v27._M_finish);
    v25[1] = v29;
    v25[0] = v28;
    if ( v28 )
    {
      v16 = *(_DWORD *)(v28 + 4);
      if ( v16 )
        *(_DWORD *)(v28 + 4) = v16 + 1;
    }
    v17 = (char *)this + 8;
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v32;
    v25[5] = v33;
    std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
      v19,
      v17,
      &v23);
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v25);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)&v28);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v27);
    v3 = (void *)std::map<int,Animation,std::less<int>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<int>(
                   v17,
                   &v18);
    glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)&v35);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
  }
  else
  {
    v3 = &AnimationSet::s_invalidAnim;
  }
  PopProfilingContext("AnimationSet::ReplaceAnimation");
  return v3;
}


// ===== 365d18 AnimationSet::LoadAnimation(char const*) =====
void *__fastcall AnimationSet::LoadAnimation(AnimationSet *this, char *a2)
{
  int v3; // r1

  v3 = Arrays::GetMemberIDByString<Arrays::AnimDict>(a2);
  return AnimationSet::LoadAnimation(this, v3);
}


// ===== 365d38 AnimationSet::ReplaceAnimation(int,int) =====
char *__fastcall AnimationSet::ReplaceAnimation(AnimationSet *this, int a2, int a3)
{
  char *v5; // r4
  char *v6; // r6
  char *v7; // r2
  int v8; // r3
  bool v9; // cc
  char *v10; // r3
  char *v11; // r4
  int v13; // r11
  size_t v14; // r0
  int v15; // r3
  int v16; // r2
  int v17; // r1
  int *v18; // r3
  glitch::os::Timer *v19; // r0
  int RealTime; // r0
  glitch::collada::CDynamicAnimationSet *v21; // r2
  int v22; // r2
  int v23; // r2
  char *__f; // [sp+0h] [bp-C4h]
  int v25; // [sp+4h] [bp-C0h] BYREF
  _BYTE v26[8]; // [sp+8h] [bp-BCh] BYREF
  int v27; // [sp+10h] [bp-B4h] BYREF
  int *v28; // [sp+14h] [bp-B0h]
  _DWORD v29[2]; // [sp+18h] [bp-ACh] BYREF
  unsigned __int8 *v30; // [sp+20h] [bp-A4h] BYREF
  int v31; // [sp+24h] [bp-A0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+28h] [bp-9Ch] BYREF
  _DWORD v33[6]; // [sp+40h] [bp-84h] BYREF
  int v34; // [sp+58h] [bp-6Ch]
  std::priv::_String_base<char,std::allocator<char> > v35; // [sp+5Ch] [bp-68h] BYREF
  int v36; // [sp+74h] [bp-50h] BYREF
  int *v37; // [sp+78h] [bp-4Ch]
  unsigned int v38; // [sp+7Ch] [bp-48h]
  int v39; // [sp+80h] [bp-44h]
  int v40; // [sp+84h] [bp-40h]
  int v41; // [sp+88h] [bp-3Ch]
  std::string v42; // [sp+8Ch] [bp-38h] BYREF
  int v43; // [sp+A4h] [bp-20h] BYREF
  int *v44; // [sp+A8h] [bp-1Ch]
  unsigned int v45; // [sp+ACh] [bp-18h]
  int v46; // [sp+B0h] [bp-14h]
  int v47; // [sp+B4h] [bp-10h]
  int v48; // [sp+B8h] [bp-Ch]

  v25 = a2;
  PushProfilingContext("AnimationSet::ReplaceAnimation");
  v5 = *((char **)this + 3);
  v6 = (char *)this + 8;
  if ( !v5 )
    goto LABEL_17;
  v7 = (char *)this + 8;
  while ( 1 )
  {
    v8 = *((_DWORD *)v5 + 4);
    v9 = a3 <= v8;
    if ( a3 <= v8 )
      v10 = *((char **)v5 + 2);
    else
      v10 = *((char **)v5 + 3);
    if ( !v9 )
      v5 = v7;
    if ( !v10 )
      break;
    v7 = v5;
    v5 = v10;
  }
  if ( v6 == v5 )
    goto LABEL_15;
  if ( a3 < *((_DWORD *)v5 + 4) )
LABEL_17:
    v5 = (char *)this + 8;
  if ( v6 == v5 || v25 < 0 || v25 >= Arrays::AnimDict::size )
  {
LABEL_15:
    v11 = (char *)&AnimationSet::s_invalidAnim;
    goto LABEL_16;
  }
  v13 = Arrays::AnimDict::members + 12 * v25;
  v42._M_finish = (char *)&v42;
  v42._M_start_of_storage._M_data = (char *)&v42;
  std::string::_M_range_initialize(&v42, "Invalid", "");
  v46 = -1;
  v45 = -1;
  v44 = &glitch::collada::CColladaDatabase::DefaultFactory;
  v43 = 0;
  v47 = 0;
  v48 = 0;
  __f = *(char **)(v13 + 8);
  v14 = LC_API_STRLEN_0(__f);
  std::string::_M_assign(&v42, __f, &__f[v14]);
  glitch::collada::CColladaDatabase::CColladaDatabase(
    (glitch::collada::CColladaDatabase *)v29,
    v42._M_start_of_storage._M_data,
    nullptr);
  v15 = v29[0];
  v28 = (int *)v29[1];
  v27 = v29[0];
  if ( v29[0] )
  {
    v16 = *(_DWORD *)(v29[0] + 4);
    if ( v16 )
    {
      *(_DWORD *)(v29[0] + 4) = v16 + 1;
      v15 = v27;
    }
  }
  v17 = v43;
  v43 = v15;
  v18 = v44;
  v44 = v28;
  v27 = v17;
  v28 = v18;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)&v27);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v29);
  v46 = 0;
  RealTime = glitch::os::Timer::getRealTime(v19);
  v21 = *((glitch::collada::CDynamicAnimationSet **)this + 8);
  v47 = RealTime;
  v48 = 0;
  if ( v21 )
  {
    v45 = *((_DWORD *)v5 + 13);
    glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(
      v21,
      (const glitch::collada::CColladaDatabase *)&v43,
      v45);
  }
  v30 = (unsigned __int8 *)v5;
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
    (int)this + 8,
    &v30);
  v34 = v25;
  v35._M_finish = (char *)&v35;
  v35._M_start_of_storage._M_data = (char *)&v35;
  std::string::_M_range_initialize((std::string *)&v35, v42._M_start_of_storage._M_data, v42._M_finish);
  v37 = v44;
  v36 = v43;
  if ( v43 )
  {
    v22 = *(_DWORD *)(v43 + 4);
    if ( v22 )
      *(_DWORD *)(v43 + 4) = v22 + 1;
  }
  v31 = v34;
  v32._M_finish = (char *)&v32;
  v32._M_start_of_storage._M_data = (char *)&v32;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  std::string::_M_range_initialize((std::string *)&v32, v35._M_start_of_storage._M_data, v35._M_finish);
  v33[1] = v37;
  v33[0] = v36;
  if ( v36 )
  {
    v23 = *(_DWORD *)(v36 + 4);
    if ( v23 )
      *(_DWORD *)(v36 + 4) = v23 + 1;
  }
  v33[2] = v38;
  v33[3] = v39;
  v33[4] = v40;
  v33[5] = v41;
  std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,Animation>,std::priv::_Select1st<std::pair<int const,Animation>>,std::priv::_MapTraitsT<std::pair<int const,Animation>>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)v26,
    v6,
    &v31);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)v33);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)&v36);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v35);
  v11 = std::map<int,Animation,std::less<int>,glitch::core::SAllocator<std::pair<int const,Animation>,(glitch::memory::E_MEMORY_HINT)0>>::operator[]<int>(
          v6,
          &v25);
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::collada::CColladaDatabase *)&v43);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v42);
LABEL_16:
  PopProfilingContext("AnimationSet::ReplaceAnimation");
  return v11;
}


// ===== 3660b0 AnimationSet::ReplaceAnimation(int) =====
char *__fastcall AnimationSet::ReplaceAnimation(AnimationSet *this, int a2)
{
  int CacheCandidate; // r0

  CacheCandidate = AnimationSet::_FindCacheCandidate(this);
  return AnimationSet::ReplaceAnimation(this, a2, CacheCandidate);
}


// ===== 3660d4 AnimationSet::ReplaceAnimation(char const*) =====
char *__fastcall AnimationSet::ReplaceAnimation(AnimationSet *this, char *a2)
{
  int v3; // r1

  v3 = Arrays::GetMemberIDByString<Arrays::AnimDict>(a2);
  return AnimationSet::ReplaceAnimation(this, v3);
}


// ===== 3660f4 AnimationSet::GetAnimation(int) =====
char *__fastcall AnimationSet::GetAnimation(AnimationSet *this, int a2)
{
  char *v2; // r4
  char *v5; // r1
  char *v6; // r2
  int v7; // r3
  bool v8; // cc
  char *v9; // r3
  char *result; // r0

  v2 = *((char **)this + 3);
  v5 = (char *)this + 8;
  if ( !v2 )
    goto LABEL_15;
  v6 = (char *)this + 8;
  while ( 1 )
  {
    v7 = *((_DWORD *)v2 + 4);
    v8 = a2 <= v7;
    if ( a2 <= v7 )
      v9 = *((char **)v2 + 2);
    else
      v9 = *((char **)v2 + 3);
    if ( !v8 )
      v2 = v6;
    v6 = v2;
    if ( !v9 )
      break;
    v2 = v9;
  }
  if ( v5 == v2 || a2 < *((_DWORD *)v2 + 4) || v5 == v2 )
  {
LABEL_15:
    if ( !*((_BYTE *)this + 60) && LG_DEVICES )
    {
      return (char *)&AnimationSet::s_invalidAnim;
    }
    else
    {
      if ( *((_DWORD *)this + 12) > *((_DWORD *)this + 6) )
        return (char *)AnimationSet::LoadAnimation(this, a2);
      result = AnimationSet::ReplaceAnimation(this, a2);
      if ( result == (char *)&AnimationSet::s_invalidAnim )
        return (char *)AnimationSet::LoadAnimation(this, a2);
    }
  }
  else
  {
    *((_DWORD *)v2 + 15) = glitch::os::Timer::getRealTime(this);
    return v2 + 20;
  }
  return result;
}


// ===== 3661f4 AnimationSet::GetAnimation(char const*) =====
char *__fastcall AnimationSet::GetAnimation(AnimationSet *this, char *a2)
{
  int v3; // r1

  v3 = Arrays::GetMemberIDByString<Arrays::AnimDict>(a2);
  return AnimationSet::GetAnimation(this, v3);
}


// ===== 366214 glitch::collada::ISceneNodeAnimator::isTrackEnabled(int) =====
int __fastcall glitch::collada::ISceneNodeAnimator::isTrackEnabled(glitch::collada::ISceneNodeAnimator *this, int a2)
{
  return 1;
}


// ===== 36621c Animator::getType(void) =====
int __fastcall Animator::getType(Animator *this)
{
  return 11;
}


// ===== 366224 Animator::_HandleAnimEnding(glitch::scene::ITimelineController *) =====
int __fastcall Animator::_HandleAnimEnding(int this, glitch::scene::ITimelineController *a2)
{
  int v2; // r5
  int v3; // r6
  int v4; // r3

  v2 = this;
  if ( a2 )
  {
    v3 = (int)(float)(*((float *)a2 + 7) * 1000.0);
    this = (int)(float)(*((float *)a2 + 11) * 1000.0) - *((_DWORD *)a2 + 1);
    v4 = this < v3;
    if ( this < 0 )
      v4 = 0;
    if ( v4 )
      v4 = v3 - this;
    *(_DWORD *)(v2 + 104) = v4;
  }
  *(_BYTE *)(v2 + 136) = 1;
  return this;
}


// ===== 366294 Animator::_CBAnim(glitch::scene::ITimelineController *,void *) =====
int __fastcall Animator::_CBAnim(Animator *this, glitch::scene::ITimelineController *a2, void *a3)
{
  return Animator::_HandleAnimEnding((int)a2, this);
}


// ===== 3662a4 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_Animator.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_Animator.cpp()
{
  dword_9A2324 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2320 = 1056964608;
}


// ===== 3662c4 glitch::collada::ISceneNodeAnimator::onUnbindAll(void) =====
// attributes: thunk
int __fastcall glitch::collada::ISceneNodeAnimator::onUnbindAll(glitch::collada::ISceneNodeAnimator *this)
{
  return glitch::collada::ISceneNodeAnimator::forceUnbindAll(this);
}


// ===== 3662c8 Animator::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall Animator::animateNode(Animator *this, glitch::scene::ISceneNode *a2, unsigned int a3)
{
  char *v4; // r5
  int v6; // r1

  v4 = (char *)this + 88;
  glitch::collada::CSceneNodeAnimator::animateNode(this, a2, a3);
  AnimApplicator::AnimateNode(*(float *)&v4, a3);
  v6 = (*(int (__fastcall **)(Animator *))(*(_DWORD *)this + 68))(this);
  return AnimApplicator::CheckCallback((int)v4, v6);
}


// ===== 366308 Animator::onUnbind(glitch::scene::ISceneNode *) =====
int __fastcall Animator::onUnbind(Animator *this, glitch::scene::ISceneNode *a2)
{
  AnimApplicator::SetRefNode((int)this + 88, nullptr);
  return glitch::collada::ISceneNodeAnimator::onUnbind(this, a2);
}


// ===== 366330 Animator::SetCallbacks(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
int __fastcall Animator::SetCallbacks(_DWORD *a1, int a2, int a3, int a4, int a5)
{
  int v6; // r0
  int v9; // r0

  v6 = a1[6];
  a1[7] = a4;
  a1[8] = a5;
  if ( v6 )
  {
    *(_DWORD *)(v6 + 12) = a5;
    *(_DWORD *)(v6 + 8) = a4;
  }
  v9 = (*(int (__fastcall **)(_DWORD *))(*a1 + 68))(a1);
  if ( v9 )
  {
    *(_DWORD *)(v9 + 12) = a1;
    *(_DWORD *)(v9 + 8) = Animator::_CBAnim;
  }
  return AnimApplicator::SetCallback((int)(a1 + 22), a2, a3);
}


// ===== 3663a8 `non-virtual thunk to'Animator::~Animator() =====
void __fastcall `non-virtual thunk to'Animator::~Animator(Animator *this)
{
  Animator::~Animator((Animator *)((char *)this - 4));
}


// ===== 3663b0 Animator::~Animator() =====
void __fastcall Animator::~Animator(Animator *this)
{
  *(_DWORD *)this = off_9623D4;
  *((_DWORD *)this + 37) = off_96248C;
  *((_DWORD *)this + 1) = off_962470;
  AnimApplicator::~AnimApplicator((Animator *)((char *)this + 88));
  glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(this);
}


// ===== 366410 `non-virtual thunk to'Animator::~Animator() =====
void __fastcall `non-virtual thunk to'Animator::~Animator(Animator *this)
{
  Animator::~Animator((Animator *)((char *)this - 4));
}


// ===== 366418 Animator::~Animator() =====
void __fastcall Animator::~Animator(Animator *this)
{
  Animator::~Animator(this);
  CustomFree(this);
}


// ===== 366434 Animator::~Animator() =====
void __fastcall Animator::~Animator(Animator *this, int *a2)
{
  int v3; // r1

  v3 = *a2;
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 12)) = a2[9];
  *((_DWORD *)this + 1) = off_962470;
  AnimApplicator::~AnimApplicator((Animator *)((char *)this + 88));
  glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator(this);
}


// ===== 366490 Animator::Animator(glitch::collada::CColladaDatabase const&,glitch::collada::SLibraryAnimationClips &) =====
_DWORD *__fastcall Animator::Animator(_DWORD *a1)
{
  a1[37] = off_95B720;
  a1[38] = 1;
  glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator();
  *a1 = off_9623D4;
  a1[37] = off_96248C;
  a1[1] = off_962470;
  AnimApplicator::AnimApplicator((AnimApplicator *)(a1 + 22), (glitch::collada::ISceneNodeAnimator *)a1);
  return a1;
}


// ===== 366518 Animator::Animator(glitch::collada::CColladaDatabase const&,glitch::collada::SLibraryAnimationClips &) =====
int *__fastcall Animator::Animator(int *a1, int *a2, _DWORD *a3, _DWORD *a4)
{
  int v6; // r2

  glitch::collada::CSceneNodeAnimator::CSceneNodeAnimator((int)a1, a2 + 1, a3, a4);
  v6 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v6 - 12)) = a2[9];
  a1[1] = (int)off_962470;
  AnimApplicator::AnimApplicator((int)(a1 + 22), (int)a1);
  return a1;
}


// ===== 366574 `virtual thunk to'Animator::~Animator() =====
void __fastcall `virtual thunk to'Animator::~Animator(Animator *this)
{
  Animator::~Animator((Animator *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 366584 `virtual thunk to'Animator::~Animator() =====
void __fastcall `virtual thunk to'Animator::~Animator(Animator *this)
{
  Animator::~Animator((Animator *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 366594 glitch::collada::CSceneNodeAnimatorBlender::normalizeWeights(void) =====
float __fastcall glitch::collada::CSceneNodeAnimatorBlender::normalizeWeights(float this)
{
  _DWORD *v1; // r5
  float v2; // r8
  int v3; // r7
  float v4; // r6
  int i; // r4
  float v6; // r0
  int v7; // r4

  v1 = *(_DWORD **)(LODWORD(this) + 52);
  v2 = this;
  v3 = (*(_DWORD *)(LODWORD(this) + 56) - (int)v1) >> 2;
  if ( v3 )
  {
    v4 = 0.0;
    for ( i = 0; i != v3; ++i )
    {
      v6 = v4 + *(float *)&v1[i];
      v4 = v6;
    }
    LODWORD(this) = v6 == 0.0;
    if ( this == 0.0 )
    {
      v7 = 0;
      while ( 1 )
      {
        this = *(float *)&v1[v7] / v4;
        *(float *)&v1[v7++] = this;
        if ( v7 == v3 )
          break;
        v1 = *(_DWORD **)(LODWORD(v2) + 52);
      }
    }
    else if ( i )
    {
      *v1 = 1065353216;
    }
  }
  return this;
}


// ===== 366620 AnimatorBlender::getType(void) =====
int __fastcall AnimatorBlender::getType(AnimatorBlender *this)
{
  return 12;
}


// ===== 366628 AnimatorBlender::_HandleAnimEnding(glitch::scene::ITimelineController *) =====
int __fastcall AnimatorBlender::_HandleAnimEnding(AnimatorBlender *this, glitch::scene::ITimelineController *a2)
{
  int v4; // r0
  int result; // r0
  int v6; // r6
  int v7; // r3

  v4 = *(_DWORD *)(*((_DWORD *)this + 10) + 4 * *((_DWORD *)this + 28));
  result = (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 68))(v4);
  if ( (glitch::scene::ITimelineController *)result == a2 )
  {
    if ( result )
    {
      v6 = (int)(float)(*(float *)(result + 28) * 1000.0);
      result = (int)(float)(*(float *)(result + 44) * 1000.0) - *(_DWORD *)(result + 4);
      v7 = result < v6;
      if ( result < 0 )
        v7 = 0;
      if ( v7 )
        v7 = v6 - result;
      *((_DWORD *)this + 38) = v7;
    }
    *((_BYTE *)this + 184) = 1;
  }
  return result;
}


// ===== 3666c8 AnimatorBlender::_CBAnim(glitch::scene::ITimelineController *,void *) =====
int __fastcall AnimatorBlender::_CBAnim(AnimatorBlender *this, glitch::scene::ITimelineController *a2, void *a3)
{
  return AnimatorBlender::_HandleAnimEnding(a2, this);
}


// ===== 3666d8 AnimatorBlender::SetScale(float) =====
_DWORD *__fastcall AnimatorBlender::SetScale(_DWORD *this, float a2)
{
  int v2; // r3
  _DWORD *v3; // r5
  int v5; // r6
  int v6; // r4
  int v7; // r3

  v2 = *(this + 10);
  v3 = this;
  v5 = (*(this + 11) - v2) >> 2;
  if ( v5 )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = *(_DWORD *)(v2 + 4 * v6++);
      this = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v7 + 68))(v7);
      if ( this )
        this = (_DWORD *)(*(int (__fastcall **)(_DWORD *, _DWORD))(*this + 72))(this, LODWORD(a2));
      if ( v6 == v5 )
        break;
      v2 = v3[10];
    }
  }
  return this;
}


// ===== 366740 AnimatorBlender::BlendPost(void) =====
void __fastcall AnimatorBlender::BlendPost(AnimatorBlender *this)
{
  ;
}


// ===== 366744 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorBlender.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorBlender.cpp()
{
  dword_9A2330 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A232C = 1056964608;
}


// ===== 366764 AnimatorBlender::compile(std::vector<uchar,glitch::core::SAllocator<uchar,(glitch::memory::E_MEMORY_HINT)0>> *) =====
// attributes: thunk
int AnimatorBlender::compile()
{
  return glitch::collada::CSceneNodeAnimatorBlender::compile();
}


// ===== 366768 AnimatorBlender::BlenderApplicator::~BlenderApplicator() =====
void __fastcall AnimatorBlender::BlenderApplicator::~BlenderApplicator(AnimatorBlender::BlenderApplicator *this)
{
  *(_DWORD *)this = off_962A00;
  AnimApplicator::~AnimApplicator(this);
}


// ===== 36679c AnimatorBlender::Blend(int) =====
float __fastcall AnimatorBlender::Blend(AnimatorBlender *this, int a2)
{
  unsigned int v2; // r5
  int v5; // r0
  unsigned int v6; // r1
  float result; // r0

  v2 = (*((_DWORD *)this + 11) - *((_DWORD *)this + 10)) >> 2;
  if ( v2 != 2 )
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
        "numAnimators == 2",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorBlender.cpp",
        122);
    }
  }
  v5 = *((_DWORD *)this + 28);
  *((_DWORD *)this + 29) = v5;
  v6 = (v5 + 1) % v2;
  result = *((float *)this + 30);
  *((_DWORD *)this + 28) = v6;
  *((float *)this + 31) = result;
  if ( SLODWORD(result) > 0 )
  {
    result = 1.0 / (float)SLODWORD(result);
    *((float *)this + 32) = result;
  }
  *((_DWORD *)this + 30) = a2 & ~(a2 >> 31);
  return result;
}


// ===== 366888 AnimatorBlender::BlenderApplicator::AnimateNode(uint) =====
float __fastcall AnimatorBlender::BlenderApplicator::AnimateNode(AnimatorBlender::BlenderApplicator *this, int a2)
{
  int v3; // r2
  float result; // r0
  int v5; // r3
  int v6; // r2
  int v7; // r6
  _DWORD *v8; // r10
  float v9; // r8
  float v10; // r11
  float v11; // r0
  glitch::scene::ISceneNodeAnimator *v12; // r5
  int v13; // r8
  int v14; // r0
  float *Applicator; // r5
  float v17[4]; // [sp+2Ch] [bp-10h] BYREF

  v3 = *((_DWORD *)this + 3);
  result = COERCE_FLOAT(&__GLOBAL_OFFSET_TABLE_);
  *((_DWORD *)this + 11) = 0;
  memset(v17, 0, 12);
  *((_DWORD *)this + 9) = 0;
  *((_DWORD *)this + 10) = 0;
  if ( v3 != -1 )
  {
    v5 = *((_DWORD *)this + 15);
    v6 = *(_DWORD *)(v5 + 40);
    if ( *(_DWORD *)(v5 + 44) - v6 > 3 )
    {
      v7 = 0;
      do
      {
        v12 = *(glitch::scene::ISceneNodeAnimator **)(v6 + 4 * v7);
        v13 = 4 * v7;
        v14 = (*(int (__fastcall **)(glitch::scene::ISceneNodeAnimator *))(*(_DWORD *)v12 + 68))(v12);
        (*(void (__fastcall **)(glitch::scene::ISceneNodeAnimator *, _DWORD, _DWORD, float *))(*(_DWORD *)v12 + 124))(
          v12,
          *((_DWORD *)this + 3),
          *(_DWORD *)(v14 + 4),
          v17);
        Applicator = (float *)GetApplicator(v12);
        if ( !Applicator )
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
              "aa",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorBlender.cpp",
              394);
          }
        }
        AnimApplicator::CalculateDelta(*(float *)&Applicator, a2, v17);
        v8 = *((_DWORD **)this + 15);
        ++v7;
        v9 = *(float *)(v8[13] + v13);
        v10 = v9 * Applicator[10];
        v11 = v9 * Applicator[11];
        *((float *)this + 9) = *((float *)this + 9) + (float)(v9 * Applicator[9]);
        *((float *)this + 10) = *((float *)this + 10) + v10;
        result = *((float *)this + 11) + v11;
        *((float *)this + 11) = result;
        v6 = v8[10];
      }
      while ( v7 < (v8[11] - v6) >> 2 );
    }
  }
  return result;
}


// ===== 366a68 AnimatorBlender::BlenderApplicator::ResetDelta(uint) =====
_DWORD *__fastcall AnimatorBlender::BlenderApplicator::ResetDelta(_DWORD *this, int a2)
{
  _DWORD *v2; // r5
  glitch::scene::ISceneNodeAnimator *v4; // r4
  int v5; // r8
  _DWORD *v6; // r6
  int v7; // r1
  _DWORD v8[4]; // [sp+Ch] [bp-10h] BYREF

  v2 = this;
  if ( *(this + 2) )
  {
    v4 = *(glitch::scene::ISceneNodeAnimator **)(*(_DWORD *)(*(this + 15) + 40) + 4 * *(_DWORD *)(*(this + 15) + 112));
    v5 = (*(int (__fastcall **)(glitch::scene::ISceneNodeAnimator *))(*(_DWORD *)v4 + 68))(v4);
    this = (_DWORD *)GetApplicator(v4);
    v6 = this;
    if ( !this )
    {
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        this = (_DWORD *)fprintf(
                           (FILE *)&_sF + 2,
                           "ASSERT(%s) FAILED: %s:%d\n",
                           "aa",
                           "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorBlender.cpp",
                           359);
      }
    }
    v7 = v2[3];
    memset(v8, 0, 12);
    if ( v7 != -1 )
      this = (_DWORD *)(*(int (__fastcall **)(glitch::scene::ISceneNodeAnimator *, int, _DWORD, _DWORD *))(*(_DWORD *)v4 + 124))(
                         v4,
                         v7,
                         *(_DWORD *)(v5 + 16),
                         v8);
    if ( v6 )
      return AnimApplicator::ResetDelta(v6, a2, v8);
  }
  return this;
}


// ===== 366b80 AnimatorBlender::BlenderApplicator::SetRefNode(glitch::scene::ISceneNode *) =====
int __fastcall AnimatorBlender::BlenderApplicator::SetRefNode(
        AnimatorBlender::BlenderApplicator *this,
        glitch::scene::ISceneNode *a2)
{
  int result; // r0
  int v5; // r3
  int v6; // r7
  int v7; // r3
  int v8; // r7
  int v9; // r6
  int Applicator; // r0

  if ( !*((_DWORD *)this + 15) )
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
        "blender",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorBlender.cpp",
        304);
    }
  }
  result = AnimApplicator::SetRefNode((int)this, a2);
  v5 = *((_DWORD *)this + 15);
  v6 = *(_DWORD *)(v5 + 44);
  v7 = *(_DWORD *)(v5 + 40);
  v8 = (v6 - v7) >> 2;
  if ( v8 )
  {
    v9 = 0;
    while ( 1 )
    {
      Applicator = GetApplicator(*(glitch::scene::ISceneNodeAnimator **)(v7 + 4 * v9));
      if ( Applicator )
      {
        ++v9;
        result = (*(int (__fastcall **)(int, glitch::scene::ISceneNode *))(*(_DWORD *)Applicator + 8))(Applicator, a2);
        if ( v9 == v8 )
          return result;
      }
      else
      {
        ++v9;
        result = AnimApplicator::SetRefNode((int)this, nullptr);
        if ( v9 == v8 )
          return result;
      }
      v7 = *(_DWORD *)(*((_DWORD *)this + 15) + 40);
    }
  }
  return result;
}


// ===== 366c8c AnimatorBlender::onUnbind(glitch::scene::ISceneNode *) =====
int __fastcall AnimatorBlender::onUnbind(AnimatorBlender *this, glitch::scene::ISceneNode *a2)
{
  AnimatorBlender::BlenderApplicator::SetRefNode((AnimatorBlender *)((char *)this + 136), nullptr);
  return glitch::collada::ISceneNodeAnimator::onUnbind(this, a2);
}


// ===== 366cb4 AnimatorBlender::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall AnimatorBlender::animateNode(AnimatorBlender *this, glitch::scene::ISceneNode *a2, int a3)
{
  int v3; // r3
  int v6; // r0
  int v7; // r0
  float v8; // r0
  int v9; // r0
  int v10; // r0
  int result; // r0

  v3 = *((_DWORD *)this + 31);
  v6 = *((_DWORD *)this + 33);
  if ( v3 >= 0 )
  {
    v7 = v3 - (a3 - v6);
    *((_DWORD *)this + 31) = v7;
    if ( v7 <= 0 )
    {
      *(_DWORD *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 29)) = 0;
      *(_DWORD *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 28)) = 1065353216;
    }
    else
    {
      v8 = (float)v7 * *((float *)this + 32);
      *(float *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 29)) = v8;
      *(float *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 28)) = 1.0 - v8;
    }
  }
  (*(void (__fastcall **)(AnimatorBlender *, int))(*(_DWORD *)this + 80))(this, a3);
  AnimatorBlender::BlenderApplicator::AnimateNode((AnimatorBlender *)((char *)this + 136), a3);
  v9 = *(_DWORD *)(*((_DWORD *)this + 10) + 4 * *((_DWORD *)this + 28));
  v10 = (*(int (__fastcall **)(int))(*(_DWORD *)v9 + 68))(v9);
  result = AnimApplicator::CheckCallback((int)this + 136, v10);
  *((_DWORD *)this + 33) = a3;
  return result;
}


// ===== 366d90 AnimatorBlender::updateTime(uint) =====
int __fastcall AnimatorBlender::updateTime(AnimatorBlender *this, unsigned int a2)
{
  int v2; // r3
  int v5; // r0
  int v6; // r0
  float v7; // r0
  int v8; // r6
  int i; // r4
  int v10; // r3
  int v11; // r0
  int v12; // r0
  int result; // r0

  v2 = *((_DWORD *)this + 31);
  v5 = *((_DWORD *)this + 33);
  if ( v2 >= 0 )
  {
    v6 = v2 - (a2 - v5);
    *((_DWORD *)this + 31) = v6;
    if ( v6 <= 0 )
    {
      *(_DWORD *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 29)) = 0;
      *(_DWORD *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 28)) = 1065353216;
    }
    else
    {
      v7 = (float)v6 * *((float *)this + 32);
      *(float *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 29)) = v7;
      *(float *)(*((_DWORD *)this + 13) + 4 * *((_DWORD *)this + 28)) = 1.0 - v7;
    }
  }
  v8 = (*((_DWORD *)this + 11) - *((_DWORD *)this + 10)) >> 2;
  if ( v8 )
  {
    for ( i = 0; i != v8; ++i )
    {
      while ( *(float *)(*((_DWORD *)this + 13) + 4 * i) == 0.0 )
      {
        if ( ++i == v8 )
          goto LABEL_9;
      }
      v10 = *(_DWORD *)(*((_DWORD *)this + 10) + 4 * i);
      (*(void (__fastcall **)(int, unsigned int))(*(_DWORD *)v10 + 20))(v10, a2);
    }
  }
LABEL_9:
  glitch::collada::CSceneNodeAnimatorBlender::normalizeWeights(*(float *)&this);
  v11 = *(_DWORD *)(*((_DWORD *)this + 10) + 4 * *((_DWORD *)this + 28));
  v12 = (*(int (__fastcall **)(int))(*(_DWORD *)v11 + 68))(v11);
  result = AnimApplicator::CheckCallback((int)this + 136, v12);
  *((_DWORD *)this + 33) = a2;
  return result;
}


// ===== 366eb8 AnimatorBlender::SetCallbacks(void (*)(glitch::scene::ITimelineController *,void *),void *,void (*)(glitch::collada::STriggeredEvent const&,void *),void *) =====
int __fastcall AnimatorBlender::SetCallbacks(int a1, int a2, int a3, int a4, int a5)
{
  int v6; // r6
  int v7; // r0
  int v8; // r6
  int v12; // r10
  _DWORD *v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r0

  v6 = *(_DWORD *)(a1 + 44);
  v7 = *(_DWORD *)(a1 + 40);
  v8 = (v6 - v7) >> 2;
  if ( v8 )
  {
    v12 = 0;
    while ( 1 )
    {
      v13 = *(_DWORD **)(v7 + 4 * v12);
      v14 = 4 * v12++;
      v15 = v13[6];
      v13[7] = a4;
      v13[8] = a5;
      if ( v15 )
      {
        *(_DWORD *)(v15 + 12) = a5;
        *(_DWORD *)(v15 + 8) = a4;
      }
      v16 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(*(_DWORD *)(a1 + 40) + v14) + 68))(*(_DWORD *)(*(_DWORD *)(a1 + 40) + v14));
      if ( v16 )
      {
        *(_DWORD *)(v16 + 12) = a1;
        *(_DWORD *)(v16 + 8) = AnimatorBlender::_CBAnim;
      }
      if ( v12 == v8 )
        break;
      v7 = *(_DWORD *)(a1 + 40);
    }
  }
  return AnimApplicator::SetCallback(a1 + 136, a2, a3);
}


// ===== 366f7c glitch::collada::CSceneNodeAnimatorBlender::CSceneNodeAnimatorBlender(void) =====
glitch::collada::CSceneNodeAnimatorBlender *__fastcall glitch::collada::CSceneNodeAnimatorBlender::CSceneNodeAnimatorBlender(
        glitch::collada::CSceneNodeAnimatorBlender *this,
        int *a2)
{
  int v4; // r2

  glitch::collada::ISceneNodeAnimator::ISceneNodeAnimator(this);
  v4 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v4 - 12)) = a2[7];
  *((_DWORD *)this + 1) = off_983CB0;
  *((_DWORD *)this + 27) = 0;
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
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  return this;
}


// ===== 367018 AnimatorBlender::AnimatorBlender(void) =====
void __fastcall AnimatorBlender::AnimatorBlender(AnimatorBlender *this)
{
  *((_DWORD *)this + 51) = 1;
  *((_DWORD *)this + 50) = off_95B720;
  glitch::collada::CSceneNodeAnimatorBlender::CSceneNodeAnimatorBlender(this, (int *)off_9627B4);
  *((_DWORD *)this + 32) = 0;
  *((_DWORD *)this + 33) = 0;
  *(_DWORD *)this = off_9626F4;
  *((_DWORD *)this + 1) = off_962788;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 50) = off_9627A4;
  AnimApplicator::AnimApplicator((int)this + 136, (int)this);
  *((_DWORD *)this + 49) = this;
  *((_DWORD *)this + 34) = off_962A00;
}


// ===== 3670c8 AnimatorBlender::AnimatorBlender(void) =====
void __fastcall AnimatorBlender::AnimatorBlender(AnimatorBlender *this, int *a2)
{
  int v4; // r2

  glitch::collada::CSceneNodeAnimatorBlender::CSceneNodeAnimatorBlender(this, a2 + 1);
  v4 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v4 - 12)) = a2[9];
  *((_DWORD *)this + 1) = off_962788;
  *((_DWORD *)this + 33) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = 0;
  AnimApplicator::AnimApplicator((int)this + 136, (int)this);
  *((_DWORD *)this + 49) = this;
  *((_DWORD *)this + 34) = off_962A00;
}


// ===== 36715c AnimatorBlender::~AnimatorBlender() =====
void __fastcall AnimatorBlender::~AnimatorBlender(AnimatorBlender *this, int *a2)
{
  int v2; // r12

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 12)) = a2[9];
  *((_DWORD *)this + 1) = off_962788;
  *((_DWORD *)this + 34) = off_962A00;
  AnimApplicator::~AnimApplicator((AnimatorBlender *)((char *)this + 136));
  glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(this);
}


// ===== 3671c8 AnimatorBlender::BlenderApplicator::~BlenderApplicator() =====
void __fastcall AnimatorBlender::BlenderApplicator::~BlenderApplicator(AnimatorBlender::BlenderApplicator *this)
{
  *(_DWORD *)this = off_962A00;
  AnimApplicator::~AnimApplicator(this);
  CustomFree(this);
}


// ===== 367204 `non-virtual thunk to'AnimatorBlender::~AnimatorBlender() =====
void __fastcall `non-virtual thunk to'AnimatorBlender::~AnimatorBlender(AnimatorBlender *this)
{
  AnimatorBlender::~AnimatorBlender((AnimatorBlender *)((char *)this - 4));
}


// ===== 36720c AnimatorBlender::~AnimatorBlender() =====
void __fastcall AnimatorBlender::~AnimatorBlender(AnimatorBlender *this)
{
  *(_DWORD *)this = off_9626F4;
  *((_DWORD *)this + 50) = off_9627A4;
  *((_DWORD *)this + 1) = off_962788;
  *((_DWORD *)this + 34) = off_962A00;
  AnimApplicator::~AnimApplicator((AnimatorBlender *)((char *)this + 136));
  glitch::collada::CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender(this);
}


// ===== 36727c `non-virtual thunk to'AnimatorBlender::~AnimatorBlender() =====
void __fastcall `non-virtual thunk to'AnimatorBlender::~AnimatorBlender(AnimatorBlender *this)
{
  AnimatorBlender::~AnimatorBlender((AnimatorBlender *)((char *)this - 4));
}


// ===== 367284 AnimatorBlender::~AnimatorBlender() =====
void __fastcall AnimatorBlender::~AnimatorBlender(AnimatorBlender *this)
{
  AnimatorBlender::~AnimatorBlender(this);
  CustomFree(this);
}


// ===== 3672a0 `virtual thunk to'AnimatorBlender::~AnimatorBlender() =====
void __fastcall `virtual thunk to'AnimatorBlender::~AnimatorBlender(AnimatorBlender *this)
{
  AnimatorBlender::~AnimatorBlender((AnimatorBlender *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 3672b0 `virtual thunk to'AnimatorBlender::~AnimatorBlender() =====
void __fastcall `virtual thunk to'AnimatorBlender::~AnimatorBlender(AnimatorBlender *this)
{
  AnimatorBlender::~AnimatorBlender((AnimatorBlender *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 3672c0 AnimatorSet::getType(void) =====
int __fastcall AnimatorSet::getType(AnimatorSet *this)
{
  return 13;
}


// ===== 3672c8 AnimatorSet::_HandleAnimEnding(glitch::scene::ITimelineController *) =====
int __fastcall AnimatorSet::_HandleAnimEnding(int this, glitch::scene::ITimelineController *a2)
{
  int v2; // r5
  int v3; // r6
  int v4; // r3

  v2 = this;
  if ( a2 )
  {
    v3 = (int)(float)(*((float *)a2 + 7) * 1000.0);
    this = (int)(float)(*((float *)a2 + 11) * 1000.0) - *((_DWORD *)a2 + 1);
    v4 = this < v3;
    if ( this < 0 )
      v4 = 0;
    if ( v4 )
      v4 = v3 - this;
    *(_DWORD *)(v2 + 104) = v4;
  }
  *(_BYTE *)(v2 + 136) = 1;
  return this;
}


// ===== 367338 AnimatorSet::_CBAnim(glitch::scene::ITimelineController *,void *) =====
int __fastcall AnimatorSet::_CBAnim(AnimatorSet *this, glitch::scene::ITimelineController *a2, void *a3)
{
  return AnimatorSet::_HandleAnimEnding((int)a2, this);
}


// ===== 367348 `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorSet.cpp =====
void `global constructor keyed to'.._.._sources_Core_Irrlicht_Nodes_Animators_AnimatorSet.cpp()
{
  dword_9A233C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A2338 = 1056964608;
}


// ===== 367368 AnimatorSet::computeAnimationValues(uint) =====
int __fastcall AnimatorSet::computeAnimationValues(AnimatorSet *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 38);
  if ( v2 )
    v2 = *(_DWORD *)(v2 + 32);
  *((_DWORD *)this + 20) = v2;
  return glitch::collada::CSceneNodeAnimatorSet::computeAnimationValues(this, a2);
}


// ===== 36737c AnimatorSet::applyAnimationValues(uint) =====
int __fastcall AnimatorSet::applyAnimationValues(AnimatorSet *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 38);
  if ( v2 )
    v2 = *(_DWORD *)(v2 + 32);
  *((_DWORD *)this + 20) = v2;
  return glitch::collada::CSceneNodeAnimatorSet::applyAnimationValues(this, a2);
}


// ===== 367390 AnimatorSet::getAnimationValue(int,int,void *) =====
int __fastcall AnimatorSet::getAnimationValue(AnimatorSet *this, int a2, int a3, void *a4)
{
  int v4; // r12

  v4 = *((_DWORD *)this + 38);
  if ( v4 )
    v4 = *(_DWORD *)(v4 + 32);
  *((_DWORD *)this + 20) = v4;
  return glitch::collada::CSceneNodeAnimatorSet::getAnimationValue(this, a2, a3, a4);
}


// ===== 3673a4 AnimatorSet::animateNode(glitch::scene::ISceneNode *,uint) =====
int __fastcall AnimatorSet::animateNode(AnimatorSet *this, glitch::scene::ISceneNode *a2, unsigned int a3)
{
  char *v4; // r5
  int v6; // r1

  v4 = (char *)this + 88;
  glitch::collada::CSceneNodeAnimatorSet::animateNode(this, a2, a3);
  AnimApplicator::AnimateNode(*(float *)&v4, a3);
  v6 = (*(int (__fastcall **)(AnimatorSet *))(*(_DWORD *)this + 68))(this);
  return AnimApplicator::CheckCallback((int)v4, v6);
}


// ===== 3673e4 AnimatorSet::updateTime(uint) =====
int __fastcall AnimatorSet::updateTime(AnimatorSet *this, unsigned int a2)
{
  int v2; // r3
  int v4; // r1

  v2 = *((_DWORD *)this + 38);
  if ( v2 )
    v2 = *(_DWORD *)(v2 + 32);
  *((_DWORD *)this + 20) = v2;
  glitch::collada::ISceneNodeAnimator::updateTime(this, a2);
  v4 = (*(int (__fastcall **)(AnimatorSet *))(*(_DWORD *)this + 68))(this);
  return AnimApplicator::CheckCallback((int)this + 88, v4);
}


// ===== 367420 AnimatorSet::setCurrentAnimation(int) =====
char *__fastcall AnimatorSet::setCurrentAnimation(AnimationSet **this, int a2)
{
  char *result; // r0
  int v5; // r3
  int v6; // r3

  result = AnimationSet::GetAnimationBySetIndex(*(this + 37), a2);
  if ( *((_DWORD *)result + 8) != -1 )
  {
    v5 = *((_DWORD *)result + 11) + 1;
    ++*((_DWORD *)result + 9);
    *((_DWORD *)result + 11) = v5;
    v6 = (int)*(this + 38);
    *(this + 38) = (AnimationSet *)result;
    if ( v6 )
      --*(_DWORD *)(v6 + 36);
    return (char *)glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(
                     (glitch::collada::CSceneNodeAnimatorSet *)this,
                     a2);
  }
  return result;
}


// ===== 367484 AnimatorSet::onUnbind(glitch::scene::ISceneNode *) =====
int __fastcall AnimatorSet::onUnbind(AnimatorSet *this, glitch::scene::ISceneNode *a2)
{
  AnimApplicator::SetRefNode((int)this + 88, nullptr);
  return glitch::collada::ISceneNodeAnimator::onUnbind(this, a2);
}

