// ===== 6e0468 glitch::video::CGLSLShaderManager::~CGLSLShaderManager() =====
void __fastcall glitch::video::CGLSLShaderManager::~CGLSLShaderManager(glitch::video::CGLSLShaderManager *this)
{
  *(_DWORD *)this = off_98B188;
  glitch::video::ICodeShaderManager::~ICodeShaderManager(this);
}


// ===== 6e049c glitch::video::CGLSLShaderManager::~CGLSLShaderManager() =====
void __fastcall glitch::video::CGLSLShaderManager::~CGLSLShaderManager(glitch::video::CGLSLShaderManager *this)
{
  glitch::video::CGLSLShaderManager::~CGLSLShaderManager(this);
  LC_API_FREE_0(this);
}


// ===== 6e04b8 glitch::video::CGLSLShaderManager::~CGLSLShaderManager() =====
void __fastcall glitch::video::CGLSLShaderManager::~CGLSLShaderManager(glitch::video::CGLSLShaderManager *this)
{
  *(_DWORD *)this = off_98B188;
  glitch::video::ICodeShaderManager::~ICodeShaderManager(this);
}


// ===== 6e04ec glitch::video::CGLSLShaderManager::CGLSLShaderManager(void) =====
glitch::video::CGLSLShaderManager *__fastcall glitch::video::CGLSLShaderManager::CGLSLShaderManager(
        glitch::video::CGLSLShaderManager *this)
{
  glitch::video::ICodeShaderManager::ICodeShaderManager(this);
  *(_DWORD *)this = off_98B188;
  return this;
}


// ===== 6e0520 glitch::video::CGLSLShaderManager::CGLSLShaderManager(void) =====
glitch::video::CGLSLShaderManager *__fastcall glitch::video::CGLSLShaderManager::CGLSLShaderManager(
        glitch::video::CGLSLShaderManager *this)
{
  glitch::video::ICodeShaderManager::ICodeShaderManager(this);
  *(_DWORD *)this = off_98B188;
  return this;
}


// ===== 6e0554 glitch::video::CNullShader::releaseDriverSpecificResources(void) =====
void __fastcall glitch::video::CNullShader::releaseDriverSpecificResources(glitch::video::CNullShader *this)
{
  ;
}


// ===== 6e0558 glitch::video::CNullShader::bindShader(void) =====
void __fastcall glitch::video::CNullShader::bindShader(glitch::video::CNullShader *this)
{
  ;
}


// ===== 6e055c glitch::video::CNullShader::updateHash(void) =====
int __fastcall glitch::video::CNullShader::updateHash(int this)
{
  int v1; // r3

  v1 = *(unsigned __int16 *)(this + 64);
  *(_BYTE *)(this + 72) = 0;
  *(_DWORD *)(this + 68) = v1;
  return this;
}


// ===== 6e0570 glitch::video::CNullShader::getShaderSize(void) =====
int __fastcall glitch::video::CNullShader::getShaderSize(glitch::video::CNullShader *this)
{
  if ( *((_BYTE *)this + 72) )
    glitch::video::CNullShader::updateHash((int)this);
  return *((_DWORD *)this + 19);
}


// ===== 6e0590 glitch::video::CNullShader::getHashValue(void) =====
int __fastcall glitch::video::CNullShader::getHashValue(glitch::video::CNullShader *this)
{
  if ( *((_BYTE *)this + 72) )
    glitch::video::CNullShader::updateHash((int)this);
  return *((_DWORD *)this + 17);
}


// ===== 6e05b0 `global constructor keyed to'.._source_glitch_video_CNullShader.cpp =====
void `global constructor keyed to'.._source_glitch_video_CNullShader.cpp()
{
  dword_9F8310 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F830C = 1056964608;
}


// ===== 6e05d0 glitch::video::CNullShader::deserializeAttributes(glitch::io::IAttributes *) =====
int __fastcall glitch::video::CNullShader::deserializeAttributes(
        glitch::video::CNullShader *this,
        glitch::io::IAttributes *a2)
{
  glitch::video::IShader::deserializeAttributes(this, a2);
  return glitch::video::CNullShader::updateHash((int)this);
}


// ===== 6e05e8 glitch::video::CNullShader::serializeAttributes(glitch::io::IAttributes *) =====
// attributes: thunk
void __fastcall glitch::video::CNullShader::serializeAttributes(
        glitch::video::IShader *this,
        glitch::io::IAttributes *a2)
{
  glitch::video::IShader::serializeAttributes(this, a2);
}


// ===== 6e05ec glitch::video::CNullShader::~CNullShader() =====
void __fastcall glitch::video::CNullShader::~CNullShader(glitch::video::CNullShader *this)
{
  *(_DWORD *)this = off_98B1B0;
  glitch::video::IShader::~IShader(this);
}


// ===== 6e0620 glitch::video::CNullShader::~CNullShader() =====
void __fastcall glitch::video::CNullShader::~CNullShader(glitch::video::CNullShader *this)
{
  glitch::video::CNullShader::~CNullShader(this);
  LC_API_FREE_0(this);
}


// ===== 6e063c glitch::video::CNullShader::~CNullShader() =====
void __fastcall glitch::video::CNullShader::~CNullShader(glitch::video::CNullShader *this)
{
  *(_DWORD *)this = off_98B1B0;
  glitch::video::IShader::~IShader(this);
}


// ===== 6e0670 glitch::video::CNullShader::CNullShader(glitch::video::CNullDriver *) =====
glitch::video::CNullShader *__fastcall glitch::video::CNullShader::CNullShader(
        glitch::video::CNullShader *this,
        glitch::video::CNullDriver *a2)
{
  glitch::video::IShader::IShader(this, 0, "", a2);
  *(_DWORD *)this = off_98B1B0;
  return this;
}


// ===== 6e06b8 glitch::video::CNullShader::CNullShader(glitch::video::CNullDriver *) =====
glitch::video::CNullShader *__fastcall glitch::video::CNullShader::CNullShader(
        glitch::video::CNullShader *this,
        glitch::video::CNullDriver *a2)
{
  glitch::video::IShader::IShader(this, 0, "", a2);
  *(_DWORD *)this = off_98B1B0;
  return this;
}


// ===== 6e0700 glitch::video::CNullShader::CNullShader(ushort,char const*,glitch::video::CNullDriver *) =====
glitch::video::CNullShader *__fastcall glitch::video::CNullShader::CNullShader(
        glitch::video::CNullShader *this,
        unsigned __int16 a2,
        char *a3,
        glitch::video::CNullDriver *a4)
{
  glitch::video::IShader::IShader(this, a2, a3, a4);
  *(_DWORD *)this = off_98B1B0;
  glitch::video::CNullShader::updateHash((int)this);
  *((_DWORD *)this + 14) = 1;
  return this;
}


// ===== 6e0744 glitch::video::CNullShader::CNullShader(ushort,char const*,glitch::video::CNullDriver *) =====
glitch::video::CNullShader *__fastcall glitch::video::CNullShader::CNullShader(
        glitch::video::CNullShader *this,
        unsigned __int16 a2,
        char *a3,
        glitch::video::CNullDriver *a4)
{
  glitch::video::IShader::IShader(this, a2, a3, a4);
  *(_DWORD *)this = off_98B1B0;
  glitch::video::CNullShader::updateHash((int)this);
  *((_DWORD *)this + 14) = 1;
  return this;
}


// ===== 6e0788 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::get(ushort) =====
int *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::get(
        int a1,
        unsigned int a2)
{
  int v2; // r2

  v2 = *(_DWORD *)(a1 + 24);
  if ( a2 >= (*(_DWORD *)(a1 + 28) - v2) >> 3 )
    return &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
  else
    return (int *)(v2 + 8 * a2);
}


// ===== 6e07c0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::size(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::size(
        int a1)
{
  return *(unsigned __int16 *)(a1 + 38);
}


// ===== 6e07c8 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getNextId(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getNextId(
        int a1)
{
  return *(unsigned __int16 *)(a1 + 36);
}


// ===== 6e07d0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(
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


// ===== 6e0804 glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager(void) =====
glitch::video::ICodeShaderManager::CShaderCodeManager *__fastcall glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager(
        glitch::video::ICodeShaderManager::CShaderCodeManager *this)
{
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection((int)this);
  return this;
}


// ===== 6e0818 glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager(void) =====
glitch::video::ICodeShaderManager::CShaderCodeManager *__fastcall glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager(
        glitch::video::ICodeShaderManager::CShaderCodeManager *this)
{
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection((int)this);
  return this;
}


// ===== 6e082c glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIDedCollection(
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


// ===== 6e0860 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(
        int a1,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 24) + 8 * a2 + 4) + 24;
}


// ===== 6e0874 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getProperties(
        int a1,
        int a2)
{
  return *(_DWORD *)(*(_DWORD *)(a1 + 24) + 8 * a2 + 4) + 24;
}


// ===== 6e0888 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::idBegin(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::idBegin(
        int a1)
{
  return *(_DWORD *)(a1 + 8);
}


// ===== 6e0890 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::idEnd(void) =====
void glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::idEnd()
{
  ;
}


// ===== 6e0894 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getMaxID(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getMaxID(
        int a1)
{
  return (unsigned __int16)(((*(_DWORD *)(a1 + 28) - *(_DWORD *)(a1 + 24)) >> 3) - 1);
}


// ===== 6e08b0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(ushort) =====
_WORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(
        _WORD *result,
        __int16 a2)
{
  *result = a2;
  return result;
}


// ===== 6e08b8 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(ushort) =====
_WORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue::SIdValue(
        _WORD *result,
        __int16 a2)
{
  *result = a2;
  return result;
}


// ===== 6e08c0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(
        int result,
        int a2)
{
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = a2;
  return result;
}


// ===== 6e08d0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::SName(
        int result,
        int a2)
{
  *(_BYTE *)(result + 4) = 0;
  *(_DWORD *)result = a2;
  return result;
}


// ===== 6e08e0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::setManaged(
        int result)
{
  *(_BYTE *)(result + 4) = 1;
  return result;
}


// ===== 6e08ec glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::get(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::get(
        int a1)
{
  return *(_DWORD *)a1;
}


// ===== 6e08f4 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(void) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        _DWORD *result)
{
  result[1] = 0;
  *result = 0;
  return result;
}


// ===== 6e0904 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(void) =====
_DWORD *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        _DWORD *result)
{
  result[1] = 0;
  *result = 0;
  return result;
}


// ===== 6e0914 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::IShaderCode> const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>) =====
int *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        int *result,
        int *a2,
        int *a3)
{
  int v3; // r3

  v3 = *a2;
  *result = *a2;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  result[1] = *a3;
  return result;
}


// ===== 6e0940 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(boost::intrusive_ptr<glitch::video::IShaderCode> const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>) =====
int *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::SEntry(
        int *result,
        int *a2,
        int *a3)
{
  int v3; // r3

  v3 = *a2;
  *result = *a2;
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  result[1] = *a3;
  return result;
}


// ===== 6e096c glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const&) =====
unsigned int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(
        const char **a1,
        const char **a2)
{
  return (unsigned int)LC_API_STRCMP_0(*a1, *a2) >> 31;
}


// ===== 6e0984 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName() =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName(
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


// ===== 6e09b0 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName() =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::~SName(
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


// ===== 6e09dc std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
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


// ===== 6e0a3c glitch::video::ICodeShaderManager::initAdditionalConfig(char const*) =====
int __fastcall glitch::video::ICodeShaderManager::initAdditionalConfig(int this, const char *a2)
{
  int v2; // r4
  glitch::IReferenceCounted *v4; // r5
  int v5; // r0
  glitch::IReferenceCounted *v6; // r6
  int v7; // r0
  void *v8; // r1
  void *v9; // r0
  _BYTE *v10; // r3
  _BYTE *i; // r1

  v2 = this;
  if ( *(_DWORD *)(this + 128) == -1 )
  {
    v4 = *(glitch::IReferenceCounted **)(*(_DWORD *)(*(_DWORD *)(this + 44) + 212) + 52);
    if ( v4 )
      ++*((_DWORD *)v4 + 1);
    v5 = (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v4 + 12))(v4);
    v6 = (glitch::IReferenceCounted *)v5;
    if ( v5 )
    {
      v7 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 32))(v5);
      *(_DWORD *)(v2 + 128) = v7;
      v8 = operator new[](v7 + 1, 0);
      v9 = *(void **)(v2 + 124);
      *(_DWORD *)(v2 + 124) = v8;
      if ( v9 )
      {
        operator delete[](v9);
        v8 = *(void **)(v2 + 124);
      }
      (*(void (__fastcall **)(glitch::IReferenceCounted *, void *, _DWORD))(*(_DWORD *)v6 + 12))(
        v6,
        v8,
        *(_DWORD *)(v2 + 128));
      glitch::IReferenceCounted::drop(v6);
      *(_BYTE *)(*(_DWORD *)(v2 + 124) + *(_DWORD *)(v2 + 128)) = 0;
      v10 = *(_BYTE **)(v2 + 124);
      for ( i = &v10[*(_DWORD *)(v2 + 128)]; v10 != i; ++v10 )
      {
        if ( *v10 == 94 )
          *v10 = 10;
      }
    }
    else if ( glitch::video::ICodeShaderManager::initAdditionalConfig(char const*)::warnOnce )
    {
      glitch::os::Printer::logf(2, "%s not found; if you do not need one, create an empty one", a2);
      glitch::video::ICodeShaderManager::initAdditionalConfig(char const*)::warnOnce = 0;
    }
    return glitch::IReferenceCounted::drop(v4);
  }
  return this;
}


// ===== 6e0b64 glitch::video::ICodeShaderManager::makeShaderCodeName(char const*,uint,char const*,uint,char const*,uint,uint *) =====
char *__fastcall glitch::video::ICodeShaderManager::makeShaderCodeName(
        const char **this,
        const char *a2,
        unsigned int a3,
        const char *a4,
        unsigned int a5,
        char *a6,
        unsigned int a7,
        unsigned int *a8)
{
  int v8; // r8
  bool v13; // r1
  int v14; // r1
  int v15; // r3
  int v16; // r10
  unsigned int v17; // r8
  char *v18; // r6
  const char *v19; // r1
  char isProcessBufferHeapExcessEnabled; // [sp+4h] [bp-8h]

  isProcessBufferHeapExcessEnabled = glitch::core::isProcessBufferHeapExcessEnabled((glitch::core *)this);
  glitch::core::setProcessBufferHeapExcessEnabled((char)&dword_0 + 1, v13);
  v15 = (int)*(this + 31);
  if ( v15 )
    v8 = (int)*(this + 32);
  v16 = a7 + a5 + a3;
  if ( v15 )
    v17 = v16 + v8;
  else
    v17 = a7 + a5 + a3;
  v18 = (char *)glitch::core::allocProcessBuffer((glitch::core *)(v17 + 1), v14);
  LC_API_STRCPY_0(v18, a2);
  LC_API_STRCPY_0(&v18[a3], a4);
  LC_API_STRCPY_0(&v18[a5 + a3], a6);
  v19 = *(this + 31);
  if ( v19 )
    LC_API_STRCPY_0(&v18[v16], v19);
  if ( a8 )
    *a8 = v17;
  glitch::core::setProcessBufferHeapExcessEnabled(isProcessBufferHeapExcessEnabled, (bool)v19);
  return v18;
}


// ===== 6e0c10 glitch::video::ICodeShaderManager::makeShaderCodeName(char const*,char const*,char const*,uint *) =====
char *__fastcall glitch::video::ICodeShaderManager::makeShaderCodeName(
        const char **this,
        const char *a2,
        const char *a3,
        char *a4,
        unsigned int *a5)
{
  const char *v5; // r5
  size_t v9; // r6
  size_t v10; // r7
  size_t v11; // r0

  v5 = a3;
  if ( a3 )
  {
    v9 = LC_API_STRLEN_0(a3);
  }
  else
  {
    v9 = 0;
    v5 = "";
  }
  if ( a4 )
  {
    v10 = LC_API_STRLEN_0(a4);
  }
  else
  {
    v10 = 0;
    a4 = "";
  }
  v11 = LC_API_STRLEN_0(a2);
  return glitch::video::ICodeShaderManager::makeShaderCodeName(this, a2, v11, v5, v9, a4, v10, a5);
}


// ===== 6e0ca4 glitch::video::ICodeShaderManager::ICodeShaderManager(void) =====
glitch::video::ICodeShaderManager *__fastcall glitch::video::ICodeShaderManager::ICodeShaderManager(
        glitch::video::ICodeShaderManager *this)
{
  glitch::video::IShaderManager::IShaderManager(this);
  *(_DWORD *)this = off_98B1E0;
  glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager((glitch::video::ICodeShaderManager *)((char *)this + 84));
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = -1;
  return this;
}


// ===== 6e0cf0 glitch::video::ICodeShaderManager::ICodeShaderManager(void) =====
glitch::video::ICodeShaderManager *__fastcall glitch::video::ICodeShaderManager::ICodeShaderManager(
        glitch::video::ICodeShaderManager *this)
{
  glitch::video::IShaderManager::IShaderManager(this);
  *(_DWORD *)this = off_98B1E0;
  glitch::video::ICodeShaderManager::CShaderCodeManager::CShaderCodeManager((glitch::video::ICodeShaderManager *)((char *)this + 84));
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 32) = -1;
  return this;
}


// ===== 6e0d3c `global constructor keyed to'.._source_glitch_video_ICodeShaderManager.cpp =====
int `global constructor keyed to'.._source_glitch_video_ICodeShaderManager.cpp()
{
  int result; // r0

  dword_9F831C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8318 = 1056964608;
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
               (int)boost::intrusive_ptr<glitch::video::IShaderCode>::~intrusive_ptr,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>,unsigned short,false,glitch::video::detail::shadermanager::SShaderProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
               (int)boost::intrusive_ptr<glitch::video::IShader>::~intrusive_ptr,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::ITexture>,unsigned short,false,glitch::video::detail::texturemanager::STextureProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
               (int)boost::intrusive_ptr<glitch::video::ITexture>::~intrusive_ptr,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid = 0;
    result = _aeabi_atexit(
               (int)&glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>,unsigned short,false,glitch::video::detail::materialrenderermanager::SProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid,
               (int)boost::intrusive_ptr<glitch::video::CMaterialRenderer>::~intrusive_ptr,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid
      & 1) == 0 )
  {
    `guard variable for'glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid = 1;
    glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid = 0;
    dword_9F69FC = -1;
    word_9F69F4 = 255;
    byte_9F69F6 = -1;
    byte_9F69F7 = -1;
    dword_9F69F8 = -1;
    return _aeabi_atexit(
             (int)&glitch::core::detail::SIDedCollection<glitch::video::SShaderParameterDef,unsigned short,false,glitch::video::detail::globalmaterialparametermanager::SPropeties,glitch::video::detail::globalmaterialparametermanager::SValueTraits>::Invalid,
             (int)glitch::video::SShaderParameterDef::~SShaderParameterDef,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 6e0f0c std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        int a3,
        const char **a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  __int16 v9; // r3
  int v10; // r2
  __int16 v11; // r3
  unsigned int v13; // r7
  _DWORD *v14; // r0
  __int16 v15; // r3
  const char **v16; // [sp+0h] [bp-Ch]
  const char **v17; // [sp+0h] [bp-Ch]
  const char **v18; // [sp+0h] [bp-Ch]
  int v19; // [sp+4h] [bp-8h]
  int v20; // [sp+4h] [bp-8h]
  int v21; // [sp+4h] [bp-8h]

  if ( a2 == (_DWORD *)a3 )
  {
    v20 = a3;
    v17 = a4;
    v8 = GlitchAlloc(0x1Cu, 0);
    v8[4] = *v17;
    *((_BYTE *)v8 + 20) = *((_BYTE *)v17 + 4);
    v11 = *((_WORD *)v17 + 4);
    v8[3] = 0;
    v8[2] = 0;
    *((_WORD *)v8 + 12) = v11;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = v20;
  }
  else if ( a5
         || (v21 = a3,
             v18 = a4,
             v13 = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName::operator<(
                     a4,
                     (const char **)(a3 + 16)),
             a3 = v21,
             a4 = v18,
             v13) )
  {
    v19 = a3;
    v16 = a4;
    v7 = GlitchAlloc(0x1Cu, 0);
    v8 = v7;
    v7[4] = *v16;
    *((_BYTE *)v7 + 20) = *((_BYTE *)v16 + 4);
    v9 = *((_WORD *)v16 + 4);
    v7[3] = 0;
    v7[2] = 0;
    *((_WORD *)v7 + 12) = v9;
    v10 = v19;
    *(_DWORD *)(v19 + 8) = v7;
    if ( v19 == a2[2] )
      a2[2] = v7;
  }
  else
  {
    v14 = GlitchAlloc(0x1Cu, 0);
    v8 = v14;
    v14[4] = *v18;
    *((_BYTE *)v14 + 20) = *((_BYTE *)v18 + 4);
    v15 = *((_WORD *)v18 + 4);
    v14[3] = 0;
    v14[2] = 0;
    *((_WORD *)v14 + 12) = v15;
    v10 = v21;
    *(_DWORD *)(v21 + 12) = v14;
    if ( v21 == a2[3] )
      a2[3] = v14;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 6e107c std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue> const&) =====
int __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
        int a1,
        _DWORD *a2,
        const char **a3)
{
  int v3; // r5
  const char *v7; // r10
  const char *v8; // r8
  int v9; // r0
  int v10; // r3
  int v11; // r9
  int v13; // r2
  int v14; // r9
  int v15; // r3
  _DWORD *v16; // r3
  int v17; // r3
  int v18; // [sp+8h] [bp-8h] BYREF
  int v19; // [sp+Ch] [bp-4h] BYREF

  v3 = a2[1];
  if ( v3 )
  {
    v7 = *a3;
    while ( 1 )
    {
      v8 = *(const char **)(v3 + 16);
      v9 = LC_API_STRCMP_0(v7, v8);
      v10 = v9 >= 0 ? *(_DWORD *)(v3 + 12) : *(_DWORD *)(v3 + 8);
      if ( !v10 )
        break;
      v3 = v10;
    }
    if ( v9 >= 0 )
    {
      v11 = v3;
      goto LABEL_12;
    }
  }
  else
  {
    v3 = (int)a2;
  }
  if ( v3 == a2[2] )
  {
    std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
      &v19,
      a2,
      v3,
      a3,
      v3);
    v17 = v19;
    *(_BYTE *)(a1 + 4) = 1;
    *(_DWORD *)a1 = v17;
    return a1;
  }
  if ( !*(_BYTE *)v3 && v3 == *(_DWORD *)(*(_DWORD *)(v3 + 4) + 4) )
  {
    v7 = *a3;
    v11 = *(_DWORD *)(v3 + 12);
    v8 = *(const char **)(v11 + 16);
  }
  else
  {
    v13 = *(_DWORD *)(v3 + 8);
    if ( v13 )
    {
      while ( *(_DWORD *)(v13 + 12) )
        v13 = *(_DWORD *)(v13 + 12);
      v14 = v13;
      if ( LC_API_STRCMP_0(*(const char **)(v13 + 16), *a3) >= 0 )
      {
        *(_DWORD *)a1 = v14;
        *(_BYTE *)(a1 + 4) = 0;
        return a1;
      }
LABEL_25:
      std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert(
        &v18,
        a2,
        v3,
        a3,
        0);
      v15 = v18;
      *(_BYTE *)(a1 + 4) = 1;
      *(_DWORD *)a1 = v15;
      return a1;
    }
    v16 = *(_DWORD **)(v3 + 4);
    if ( v3 == v16[2] )
    {
      while ( 1 )
      {
        v11 = v16[1];
        if ( *(_DWORD **)(v11 + 8) != v16 )
          break;
        v16 = (_DWORD *)v16[1];
      }
      v7 = *a3;
      v8 = *(const char **)(v11 + 16);
    }
    else
    {
      v11 = *(_DWORD *)(v3 + 4);
      v7 = *a3;
      v8 = (const char *)v16[4];
    }
  }
LABEL_12:
  if ( LC_API_STRCMP_0(v8, v7) < 0 )
    goto LABEL_25;
  *(_DWORD *)a1 = v11;
  *(_BYTE *)(a1 + 4) = 0;
  return a1;
}


// ===== 6e1234 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const&) =====
int __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>(
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
  if ( v5 != a1 && LC_API_STRCMP_0(v4, *(const char **)(v5 + 16)) < 0 )
    return a1;
  return v5;
}


// ===== 6e129c std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r5
  int v7; // r8
  int v8; // r6
  int v9; // r3
  glitch::IReferenceCounted *v10; // r0

  v3 = a2 - a1;
  v4 = v3 >> 3;
  if ( v3 >> 3 > 0 )
  {
    v7 = v3 >> 3;
    v8 = 0;
    do
    {
      v9 = *(_DWORD *)(a1 + v8);
      if ( v9 )
        ++*(_DWORD *)(v9 + 4);
      v10 = *(glitch::IReferenceCounted **)(a3 + v8);
      *(_DWORD *)(a3 + v8) = v9;
      if ( v10 )
        glitch::IReferenceCounted::drop(v10);
      --v7;
      *(_DWORD *)(a3 + v8 + 4) = *(_DWORD *)(a1 + v8 + 4);
      v8 += 8;
    }
    while ( v7 );
    a3 += 8 * v4;
  }
  return a3;
}


// ===== 6e1310 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,std::__false_type const&) =====
int __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2,
        int a3)
{
  int v5; // r0
  glitch::IReferenceCounted **v6; // r7
  int v7; // r8
  glitch::IReferenceCounted **v8; // r6
  glitch::IReferenceCounted *v9; // r0

  v5 = std::priv::__copy<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
         a3,
         *(_DWORD *)(a1 + 4),
         a2);
  v6 = *(glitch::IReferenceCounted ***)(a1 + 4);
  v7 = v5;
  if ( v6 != (glitch::IReferenceCounted **)v5 )
  {
    v8 = (glitch::IReferenceCounted **)v5;
    do
    {
      v9 = *v8;
      v8 += 2;
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 6e1380 std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
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
  int v10; // r3

  v3 = (a2 - a1) >> 3;
  v4 = a3;
  if ( v3 > 0 )
  {
    v5 = a2;
    v6 = a3;
    v7 = (a2 - a1) >> 3;
    do
    {
      v8 = *(_DWORD *)(v5 - 8);
      if ( v8 )
        ++*(_DWORD *)(v8 + 4);
      v9 = *(glitch::IReferenceCounted **)(v6 - 8);
      *(_DWORD *)(v6 - 8) = v8;
      if ( v9 )
        glitch::IReferenceCounted::drop(v9);
      v10 = *(_DWORD *)(v5 - 4);
      --v7;
      v5 -= 8;
      *(_DWORD *)(v6 - 4) = v10;
      v6 -= 8;
    }
    while ( v7 );
    v4 -= 8 * v3;
  }
  return v4;
}


// ===== 6e13f4 std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&,std::random_access_iterator_tag const&,int *) =====
glitch::IReferenceCounted *__fastcall std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(
        glitch::IReferenceCounted *result,
        int a2,
        int *a3)
{
  int v3; // r5
  glitch::IReferenceCounted *v4; // r4
  int v6; // r6
  int v7; // r3

  v3 = (a2 - (int)result) >> 3;
  v4 = result;
  if ( v3 > 0 )
  {
    v6 = 0;
    do
    {
      v7 = *a3;
      if ( *a3 )
        ++*(_DWORD *)(v7 + 4);
      result = *(glitch::IReferenceCounted **)((char *)v4 + v6);
      *(_DWORD *)((char *)v4 + v6) = v7;
      if ( result )
        result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
      --v3;
      *(_DWORD *)((char *)v4 + v6 + 4) = a3[1];
      v6 += 8;
    }
    while ( v3 );
  }
  return result;
}


// ===== 6e1458 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector() =====
char **__fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector(
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


// ===== 6e14a4 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&,std::__false_type const&,uint,bool) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        void **a1,
        int a2,
        int *a3,
        int a4,
        unsigned int a5,
        char a6)
{
  int v6; // r9
  size_t v10; // r8
  int *v11; // r10
  char *v12; // r12
  char *v13; // lr
  char *v14; // r0
  int v15; // r11
  int *v16; // r11
  int v17; // r1
  int v18; // r3
  int v19; // r2
  int v20; // r1
  int *v21; // r5
  int v22; // r2
  int v23; // r3
  int *v24; // r0
  bool v25; // zf
  char *v26; // r0
  int v27; // r6
  int v28; // r3
  int v29; // r1
  int v30; // r2
  int v31; // r12
  int *v32; // r0
  char *v33; // r6
  char *v34; // r4
  glitch::IReferenceCounted *v35; // r0
  int v36; // r3

  v10 = 2
      * std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_compute_next_size(
          a1,
          a5);
  v11 = (int *)GlitchAlloc(v10 * 4, 0);
  v14 = (char *)*a1;
  v15 = (a2 - (int)*a1) >> 3;
  if ( v15 > 0 )
  {
    v17 = (a2 - (int)*a1) >> 3;
    v18 = 0;
    do
    {
      v19 = *(_DWORD *)&v14[v18 * 4];
      v13 = &v14[v18 * 4];
      v12 = (char *)&v11[v18];
      v11[v18] = v19;
      if ( v19 )
        v6 = *(_DWORD *)(v19 + 4);
      v18 += 2;
      if ( v19 )
        *(_DWORD *)(v19 + 4) = ++v6;
      --v17;
      *((_DWORD *)v12 + 1) = *((_DWORD *)v13 + 1);
    }
    while ( v17 );
    v16 = &v11[2 * v15];
  }
  else
  {
    v16 = v11;
  }
  if ( a5 == 1 )
  {
    v36 = *a3;
    v21 = v16 + 2;
    v25 = *a3 == 0;
    *v16 = *a3;
    if ( !v25 )
      ++*(_DWORD *)(v36 + 4);
    v16[1] = a3[1];
  }
  else
  {
    v20 = (int)(8 * a5) >> 3;
    v21 = &v16[2 * a5];
    if ( v20 > 0 )
    {
      v22 = 0;
      do
      {
        v23 = *a3;
        v24 = &v16[v22];
        v25 = *a3 == 0;
        v16[v22] = *a3;
        if ( !v25 )
          v12 = *(char **)(v23 + 4);
        v22 += 2;
        if ( !v25 )
          *(_DWORD *)(v23 + 4) = ++v12;
        --v20;
        v24[1] = a3[1];
      }
      while ( v20 );
    }
  }
  if ( a6 )
  {
    v26 = (char *)a1[1];
  }
  else
  {
    v26 = (char *)a1[1];
    v27 = (int)&v26[-a2] >> 3;
    if ( v27 > 0 )
    {
      v28 = 0;
      v29 = (int)&v26[-a2] >> 3;
      do
      {
        v30 = *(_DWORD *)(a2 + v28 * 4);
        v31 = a2 + v28 * 4;
        v32 = &v21[v28];
        v21[v28] = v30;
        if ( v30 )
          v13 = *(char **)(v30 + 4);
        v28 += 2;
        if ( v30 )
          *(_DWORD *)(v30 + 4) = ++v13;
        --v29;
        v32[1] = *(_DWORD *)(v31 + 4);
      }
      while ( v29 );
      v26 = (char *)a1[1];
      v21 += 2 * v27;
    }
  }
  v33 = (char *)*a1;
  if ( *a1 != v26 )
  {
    v34 = v26;
    do
    {
      v35 = *((glitch::IReferenceCounted **)v34 - 2);
      v34 -= 8;
      if ( v35 )
        glitch::IReferenceCounted::drop(v35);
    }
    while ( v33 != v34 );
    v26 = (char *)*a1;
  }
  GlitchFree(v26);
  a1[1] = v21;
  a1[2] = &v11[v10];
  *a1 = v11;
}


// ===== 6e165c glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(boost::intrusive_ptr<glitch::video::IShaderCode> const&,std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>) =====
glitch::IReferenceCounted *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::set(
        int a1,
        int *a2,
        _DWORD *a3)
{
  int v3; // r3
  glitch::IReferenceCounted *result; // r0

  v3 = *a2;
  if ( *a2 )
    ++*(_DWORD *)(v3 + 4);
  result = *(glitch::IReferenceCounted **)a1;
  *(_DWORD *)a1 = v3;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *(_DWORD *)(a1 + 4) = *a3;
  return result;
}


// ===== 6e169c glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset(void) =====
glitch::IReferenceCounted *__fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset(
        int a1)
{
  glitch::IReferenceCounted *result; // r0

  result = *(glitch::IReferenceCounted **)a1;
  *(_DWORD *)a1 = 0;
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *(_DWORD *)(a1 + 4) = 0;
  return result;
}


// ===== 6e16c8 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r6
  void *v5; // r0

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      if ( *(_BYTE *)(v2 + 20) )
      {
        v5 = *(void **)(v2 + 16);
        if ( v5 )
          operator delete[](v5);
      }
      GlitchFree((void *)v2);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 6e1718 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection() =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection(
        int a1)
{
  std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::~vector((void **)(a1 + 24));
  if ( *(_DWORD *)(a1 + 16) )
  {
    std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
      a1,
      *(_DWORD *)(a1 + 4));
    *(_DWORD *)(a1 + 16) = 0;
    *(_DWORD *)(a1 + 4) = 0;
    *(_DWORD *)(a1 + 8) = a1;
    *(_DWORD *)(a1 + 12) = a1;
  }
  return a1;
}


// ===== 6e1758 glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager() =====
void __fastcall glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager(
        glitch::video::ICodeShaderManager::CShaderCodeManager *this)
{
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection((int)this);
}


// ===== 6e176c glitch::video::ICodeShaderManager::~ICodeShaderManager() =====
void __fastcall glitch::video::ICodeShaderManager::~ICodeShaderManager(glitch::video::ICodeShaderManager *this)
{
  void *v2; // r0

  v2 = *((void **)this + 31);
  *(_DWORD *)this = off_98B1E0;
  if ( v2 )
    operator delete[](v2);
  glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager((glitch::video::ICodeShaderManager *)((char *)this + 84));
  glitch::video::IShaderManager::~IShaderManager(this);
}


// ===== 6e17bc glitch::video::ICodeShaderManager::~ICodeShaderManager() =====
void __fastcall glitch::video::ICodeShaderManager::~ICodeShaderManager(glitch::video::ICodeShaderManager *this)
{
  glitch::video::ICodeShaderManager::~ICodeShaderManager(this);
  LC_API_FREE_0(this);
}


// ===== 6e17d8 glitch::video::ICodeShaderManager::~ICodeShaderManager() =====
void __fastcall glitch::video::ICodeShaderManager::~ICodeShaderManager(glitch::video::ICodeShaderManager *this)
{
  void *v2; // r0

  v2 = *((void **)this + 31);
  *(_DWORD *)this = off_98B1E0;
  if ( v2 )
    operator delete[](v2);
  glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager((glitch::video::ICodeShaderManager *)((char *)this + 84));
  glitch::video::IShaderManager::~IShaderManager(this);
}


// ===== 6e1828 glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager() =====
void __fastcall glitch::video::ICodeShaderManager::CShaderCodeManager::~CShaderCodeManager(
        glitch::video::ICodeShaderManager::CShaderCodeManager *this)
{
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::~SIDedCollection((int)this);
}


// ===== 6e183c std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,uint,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&,std::__false_type const&) =====
glitch::IReferenceCounted *__fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        _DWORD *a1,
        glitch::IReferenceCounted *a2,
        unsigned int a3,
        int *a4)
{
  int v4; // r10
  unsigned int v7; // r3
  int v8; // r3
  glitch::IReferenceCounted *result; // r0
  int v10; // lr
  int v11; // r6
  int v12; // r1
  int v13; // lr
  unsigned int v14; // r2
  int v15; // r2
  int v16; // r12
  int v17; // r8
  int v18; // r7
  unsigned int v19; // r2
  int v20; // r7
  unsigned int v21; // r2
  int v22; // r12
  int v23; // r1
  int v24; // r6
  bool v25; // zf
  int v26; // r1
  int v27; // r12
  char *v28; // r7
  int v29; // r6
  glitch::IReferenceCounted *v30[2]; // [sp+8h] [bp-1Ch] BYREF
  char v31[8]; // [sp+1Ch] [bp-8h] BYREF

  if ( (unsigned int)a4 < *a1 )
  {
    v7 = a1[1];
    goto LABEL_8;
  }
  v7 = a1[1];
  if ( (unsigned int)a4 >= v7 )
  {
LABEL_8:
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
          v25 = *a4 == 0;
          *(_DWORD *)(v7 + v22) = *a4;
          if ( !v25 )
            v4 = *(_DWORD *)(v23 + 4);
          v22 += 8;
          if ( !v25 )
            *(_DWORD *)(v23 + 4) = ++v4;
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
          v27 = *(_DWORD *)((char *)a2 + v26);
          v28 = (char *)a2 + v26;
          v29 = v21 + v26;
          *(_DWORD *)(v21 + v26) = v27;
          if ( v27 )
            v4 = *(_DWORD *)(v27 + 4);
          v26 += 8;
          if ( v27 )
            *(_DWORD *)(v27 + 4) = ++v4;
          --v10;
          *(_DWORD *)(v29 + 4) = *((_DWORD *)v28 + 1);
        }
        while ( v10 );
        v21 = a1[1];
      }
      a1[1] = v21 + 8 * ((int)(v7 - (_DWORD)a2) >> 3);
      return std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(
               a2,
               v7,
               a4);
    }
    else
    {
      v11 = 8 * a3;
      v12 = v7 - 8 * a3;
      v13 = (int)(8 * a3) >> 3;
      if ( v13 > 0 )
      {
        v15 = 0;
        do
        {
          v16 = *(_DWORD *)(v12 + v15);
          v17 = v12 + v15;
          v18 = v7 + v15;
          *(_DWORD *)(v7 + v15) = v16;
          if ( v16 )
            v4 = *(_DWORD *)(v16 + 4);
          v15 += 8;
          if ( v16 )
            *(_DWORD *)(v16 + 4) = ++v4;
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
      a1[1] = v14 + v11;
      std::priv::__copy_backward<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,int>(
        (int)a2,
        v12,
        v7);
      return std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry *,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,int>(
               a2,
               (int)a2 + v11,
               a4);
    }
  }
  v8 = *a4;
  v30[0] = (glitch::IReferenceCounted *)*a4;
  if ( v30[0] )
    ++*(_DWORD *)(v8 + 4);
  v30[1] = (glitch::IReferenceCounted *)a4[1];
  std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
    a1,
    a2,
    a3,
    v30,
    v31);
  result = v30[0];
  if ( v30[0] )
    return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v30[0]);
  return result;
}


// ===== 6e1a10 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry*,uint,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
        void **a1,
        glitch::IReferenceCounted *a2,
        unsigned int a3,
        int *a4)
{
  _BYTE v4[4]; // [sp+8h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= ((_BYTE *)a1[2] - (_BYTE *)a1[1]) >> 3 )
      std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert_aux(
        a1,
        a2,
        a3,
        a4);
    else
      std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        a1,
        (int)a2,
        a4,
        (int)v4,
        a3,
        0);
  }
}


// ===== 6e1a64 std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(uint,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&) =====
void __fastcall std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
        int a1,
        unsigned int a2,
        int *a3)
{
  int v3; // r12
  unsigned int v5; // r2
  int v6; // r1

  v3 = *(_DWORD *)(a1 + 4);
  v5 = (v3 - *(_DWORD *)a1) >> 3;
  if ( a2 >= v5 )
  {
    std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_fill_insert(
      (void **)a1,
      *(glitch::IReferenceCounted **)(a1 + 4),
      a2 - v5,
      a3);
  }
  else
  {
    v6 = *(_DWORD *)a1 + 8 * a2;
    if ( v6 != v3 )
      std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_erase(
        a1,
        v6,
        *(_DWORD *)(a1 + 4));
  }
}


// ===== 6e1ab4 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(char const*) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
        int a1,
        void *a2)
{
  int v3; // r5
  void *v5; // [sp+0h] [bp-Ch] BYREF
  char v6; // [sp+4h] [bp-8h]

  v5 = a2;
  v6 = 0;
  v3 = std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::_M_find<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>(
         a1,
         (const char **)&v5);
  if ( v6 && v5 )
    operator delete[](v5);
  if ( v3 == a1 )
    return 0xFFFF;
  else
    return *(unsigned __int16 *)(v3 + 24);
}


// ===== 6e1b08 glitch::video::ICodeShaderManager::getShaderCode(char const*) =====
glitch::video::ICodeShaderManager *__fastcall glitch::video::ICodeShaderManager::getShaderCode(
        glitch::video::ICodeShaderManager *this,
        const char *a2,
        void *a3)
{
  unsigned int Id; // r0
  int v6; // r3
  int *v7; // r0
  int v8; // r3
  bool v9; // zf

  Id = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::getId(
         (int)(a2 + 84),
         a3);
  if ( Id == 0xFFFF )
  {
    *(_DWORD *)this = 0;
  }
  else
  {
    v6 = *((_DWORD *)a2 + 27);
    if ( Id >= (*((_DWORD *)a2 + 28) - v6) >> 3 )
      v7 = &glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::Invalid;
    else
      v7 = (int *)(v6 + 8 * Id);
    v8 = *v7;
    v9 = *v7 == 0;
    *(_DWORD *)this = *v7;
    if ( !v9 )
      ++*(_DWORD *)(v8 + 4);
  }
  return this;
}


// ===== 6e1b88 std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(std::priv::_Rb_tree_iterator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>>) =====
void __fastcall std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
        int a1,
        unsigned __int8 **a2)
{
  unsigned __int8 *v3; // r0
  unsigned __int8 *v4; // r5
  void *v5; // r0

  v3 = std::priv::_Rb_global<bool>::_Rebalance_for_erase(
         *a2,
         (unsigned __int8 **)(a1 + 4),
         (unsigned __int8 **)(a1 + 8),
         (unsigned __int8 **)(a1 + 12));
  v4 = v3;
  if ( v3[20] )
  {
    v5 = *((void **)v3 + 4);
    if ( v5 )
      operator delete[](v5);
  }
  GlitchFree(v4);
  --*(_DWORD *)(a1 + 16);
}


// ===== 6e1bdc glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::insert(char const*,boost::intrusive_ptr<glitch::video::IShaderCode> const&,bool) =====
unsigned int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::insert(
        int a1,
        void *a2,
        glitch::IReferenceCounted **a3,
        int a4)
{
  unsigned int v5; // r5
  int v8; // r3
  glitch::IReferenceCounted **v9; // r1
  glitch::IReferenceCounted *v10; // r3
  glitch::IReferenceCounted *v11; // r2
  glitch::IReferenceCounted **v12; // r3
  glitch::IReferenceCounted *v13; // r3
  glitch::IReferenceCounted *v14; // r2
  glitch::IReferenceCounted *v15; // r7
  int v16; // r6
  glitch::IReferenceCounted *v17; // r0
  int v18; // r0
  unsigned int v19; // r3
  unsigned int v20; // r2
  void *v22; // [sp+8h] [bp-2Ch] BYREF
  char v23; // [sp+Ch] [bp-28h]
  __int16 v24; // [sp+10h] [bp-24h]
  glitch::IReferenceCounted *v25; // [sp+14h] [bp-20h] BYREF
  glitch::IReferenceCounted *v26; // [sp+18h] [bp-1Ch]
  void *v27; // [sp+1Ch] [bp-18h]
  char v28; // [sp+20h] [bp-14h]
  glitch::IReferenceCounted *v29; // [sp+24h] [bp-10h] BYREF
  char v30[8]; // [sp+2Ch] [bp-8h] BYREF

  v5 = *(unsigned __int16 *)(a1 + 36);
  ++*(_WORD *)(a1 + 38);
  v22 = a2;
  v23 = 0;
  v27 = a2;
  v28 = 0;
  v24 = v5;
  std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)&v29,
    (_DWORD *)a1,
    (const char **)&v22);
  if ( v23 && v22 )
    operator delete[](v22);
  if ( a4 )
    *((_BYTE *)v29 + 20) = 1;
  v8 = *(_DWORD *)(a1 + 24);
  v9 = *(glitch::IReferenceCounted ***)(a1 + 28);
  if ( v5 < ((int)v9 - v8) >> 3 )
  {
    v14 = *a3;
    v15 = v29;
    v16 = v8 + 8 * v5;
    if ( v14 )
      ++*((_DWORD *)v14 + 1);
    v17 = *(glitch::IReferenceCounted **)(v8 + 8 * v5);
    *(_DWORD *)(v8 + 8 * v5) = v14;
    if ( v17 )
      glitch::IReferenceCounted::drop(v17);
    *(_DWORD *)(v16 + 4) = v15;
  }
  else
  {
    v10 = *a3;
    v11 = v29;
    v25 = *a3;
    if ( v25 )
    {
      ++*((_DWORD *)v10 + 1);
      v9 = *(glitch::IReferenceCounted ***)(a1 + 28);
    }
    v12 = *(glitch::IReferenceCounted ***)(a1 + 32);
    v26 = v11;
    if ( v9 == v12 )
    {
      std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow_aux(
        (void **)(a1 + 24),
        (int)v9,
        (int *)&v25,
        (int)v30,
        1u,
        1);
    }
    else
    {
      v13 = v25;
      *v9 = v25;
      if ( v13 )
        ++*((_DWORD *)v13 + 1);
      v9[1] = v26;
      *(_DWORD *)(a1 + 28) += 8;
    }
    if ( v25 )
      glitch::IReferenceCounted::drop(v25);
  }
  v18 = *(_DWORD *)(a1 + 24);
  LOWORD(v19) = *(_WORD *)(a1 + 36);
  v20 = (*(_DWORD *)(a1 + 28) - v18) >> 3;
  do
  {
    v19 = (unsigned __int16)(v19 + 1);
    *(_WORD *)(a1 + 36) = v19;
  }
  while ( v19 < v20 && *(_DWORD *)(v18 + 8 * v19) );
  return v5;
}


// ===== 6e1d70 glitch::video::ICodeShaderManager::addShaderCode(boost::intrusive_ptr<glitch::video::IShaderCode> const&) =====
unsigned int __fastcall glitch::video::ICodeShaderManager::addShaderCode(int a1, glitch::IReferenceCounted **a2)
{
  return glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::insert(
           a1 + 84,
           *((void **)*a2 + 7),
           a2,
           0);
}


// ===== 6e1d88 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::rename(ushort,char const*,bool) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::rename(
        _DWORD *a1,
        unsigned int a2,
        void *a3,
        int a4)
{
  int v5; // r6
  int v6; // r0
  _DWORD *v9; // r7
  char v10; // r2
  int v11; // r3
  int result; // r0
  void *v13; // [sp+0h] [bp-24h] BYREF
  char v14; // [sp+4h] [bp-20h]
  __int16 v15; // [sp+8h] [bp-1Ch]
  void *v16; // [sp+Ch] [bp-18h]
  char v17; // [sp+10h] [bp-14h]
  int v18; // [sp+14h] [bp-10h] BYREF
  char v19; // [sp+18h] [bp-Ch]
  unsigned __int8 *v20; // [sp+1Ch] [bp-8h] BYREF

  v5 = a1[7];
  v6 = a1[6];
  if ( a2 >= (v5 - v6) >> 3 )
    return 0;
  v9 = (_DWORD *)(v6 + 8 * a2);
  if ( !*v9 )
    return 0;
  v14 = 0;
  v17 = 0;
  v13 = a3;
  v15 = a2;
  v16 = a3;
  std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::insert_unique(
    (int)&v18,
    a1,
    (const char **)&v13);
  if ( v14 && v13 )
    operator delete[](v13);
  if ( !v19 )
    return 0;
  v20 = (unsigned __int8 *)v9[1];
  std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
    (int)a1,
    &v20);
  if ( a4 )
  {
    v11 = v18;
    v10 = 1;
  }
  result = 1;
  if ( a4 )
    *(_BYTE *)(v11 + 20) = v10;
  v9[1] = v18;
  return result;
}


// ===== 6e1e54 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(ushort,bool) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(
        int a1,
        unsigned int a2,
        int a3)
{
  int v4; // r3
  int v5; // r0
  int v7; // r3
  int v8; // r6
  int v9; // r0
  int v10; // r1
  __int16 v11; // r3
  int v12; // r3
  glitch::IReferenceCounted *v14[2]; // [sp+4h] [bp-Ch] BYREF
  unsigned __int8 *v15; // [sp+Ch] [bp-4h] BYREF

  v4 = *(_DWORD *)(a1 + 28);
  v5 = *(_DWORD *)(a1 + 24);
  if ( a2 >= (v4 - v5) >> 3 )
    return 0;
  v7 = *(_DWORD *)(v5 + 8 * a2);
  v8 = v5 + 8 * a2;
  if ( !v7 || *(_DWORD *)(v7 + 4) != 1 && !a3 )
    return 0;
  v15 = *(unsigned __int8 **)(v8 + 4);
  std::priv::_Rb_tree<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName,std::less<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName>,std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,std::priv::_Select1st<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,std::priv::_MapTraitsT<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>>,glitch::core::SAllocator<std::pair<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SName const,glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SIdValue>,(glitch::memory::E_MEMORY_HINT)0>>::erase(
    a1,
    &v15);
  glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry::reset(v8);
  v9 = *(_DWORD *)(a1 + 28);
  v10 = *(_DWORD *)(a1 + 24);
  v11 = *(_WORD *)(a1 + 38) - 1;
  if ( *(unsigned __int16 *)(a1 + 36) > a2 )
    *(_WORD *)(a1 + 36) = a2;
  *(_WORD *)(a1 + 38) = v11;
  if ( v9 == v10 )
    return 1;
  v12 = v9;
  while ( !*(_DWORD *)(v12 - 8) )
  {
    v12 -= 8;
    if ( v10 == v12 )
      return 1;
  }
  v14[1] = nullptr;
  v14[0] = nullptr;
  std::vector<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,glitch::core::SAllocator<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::SEntry,(glitch::memory::E_MEMORY_HINT)0>>::resize(
    a1 + 24,
    ((v9 - v10) >> 3) - ((v9 - v12) >> 3),
    (int *)v14);
  if ( !v14[0] )
    return 1;
  glitch::IReferenceCounted::drop(v14[0]);
  return 1;
}


// ===== 6e1f50 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(bool) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(
        int a1,
        int a2)
{
  int v2; // r3
  int v5; // r6
  int v6; // r4
  int v8; // r2
  int v9; // r4
  int v10; // r1

  v2 = *(_DWORD *)(a1 + 8);
  v5 = 0;
  while ( a1 != v2 )
  {
    v6 = *(_DWORD *)(v2 + 12);
    if ( v6 )
    {
      while ( *(_DWORD *)(v6 + 8) )
        v6 = *(_DWORD *)(v6 + 8);
      if ( glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(
             a1,
             *(unsigned __int16 *)(v2 + 24),
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
      if ( glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(
             a1,
             *(unsigned __int16 *)(v2 + 24),
             a2) )
      {
        v5 = (unsigned __int16)(v5 + 1);
      }
      v2 = v9;
    }
  }
  return v5;
}


// ===== 6e2018 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(
        int a1)
{
  return glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(
           a1,
           0);
}


// ===== 6e2020 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeUnused(void) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeUnused(
        int a1)
{
  return glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(
           a1,
           0);
}


// ===== 6e2028 glitch::video::ICodeShaderManager::removeUnusedShaderCodes(void) =====
int __fastcall glitch::video::ICodeShaderManager::removeUnusedShaderCodes(glitch::video::ICodeShaderManager *this)
{
  return glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::removeAll(
           (int)this + 84,
           0);
}


// ===== 6e2034 glitch::video::ICodeShaderManager::removeUnusedShaders(void) =====
int __fastcall glitch::video::ICodeShaderManager::removeUnusedShaders(glitch::video::ICodeShaderManager *this)
{
  int v2; // r4

  v2 = glitch::video::IShaderManager::removeUnusedShaders(this);
  glitch::video::ICodeShaderManager::removeUnusedShaderCodes(this);
  return v2;
}


// ===== 6e2054 glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,ushort,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(ushort) =====
int __fastcall glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(
        int a1,
        unsigned int a2)
{
  return glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,unsigned short,false,glitch::core::detail::sidedcollection::SEmptyProperties,glitch::core::detail::sidedcollection::SValueTraits>::remove(
           a1,
           a2,
           0);
}


// ===== 6e205c `global constructor keyed to'.._source_glitch_video_IShaderCode.cpp =====
void `global constructor keyed to'.._source_glitch_video_IShaderCode.cpp()
{
  dword_9F8328 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8324 = 1056964608;
}


// ===== 6e207c glitch::video::IShaderCode::~IShaderCode() =====
void __fastcall glitch::video::IShaderCode::~IShaderCode(glitch::video::IShaderCode *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_98B208;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 7);
  if ( v2 != v1 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 6e20c8 glitch::video::IShaderCode::~IShaderCode() =====
void __fastcall glitch::video::IShaderCode::~IShaderCode(glitch::video::IShaderCode *this)
{
  glitch::video::IShaderCode::~IShaderCode(this);
  LC_API_FREE_0(this);
}


// ===== 6e20e4 glitch::video::IShaderCode::~IShaderCode() =====
void __fastcall glitch::video::IShaderCode::~IShaderCode(glitch::video::IShaderCode *this)
{
  char *v1; // r1
  char *v2; // r0

  *(_DWORD *)this = off_98B208;
  v1 = (char *)this + 8;
  v2 = *((char **)this + 7);
  if ( v2 != v1 )
  {
    if ( v2 )
      GlitchFree(v2);
  }
}


// ===== 6e2130 glitch::video::IShaderCode::IShaderCode(char const*) =====
glitch::video::IShaderCode *__fastcall glitch::video::IShaderCode::IShaderCode(
        glitch::video::IShaderCode *this,
        char *a2)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_98B208;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 2,
    a2);
  return this;
}


// ===== 6e2178 glitch::video::IShaderCode::IShaderCode(char const*) =====
glitch::video::IShaderCode *__fastcall glitch::video::IShaderCode::IShaderCode(
        glitch::video::IShaderCode *this,
        char *a2)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_98B208;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::basic_string(
    (_DWORD *)this + 2,
    a2);
  return this;
}


// ===== 6e21c0 glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(char const*) =====
_DWORD *__fastcall glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(
        _DWORD *this,
        const char *a2)
{
  *(this + 3) = 0;
  *(this + 1) = 0;
  *this = off_98B228;
  *(this + 2) = 0;
  return this;
}


// ===== 6e21f4 glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(char const*) =====
_DWORD *__fastcall glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(
        _DWORD *this,
        const char *a2)
{
  *(this + 3) = 0;
  *(this + 1) = 0;
  *this = off_98B228;
  *(this + 2) = 0;
  return this;
}


// ===== 6e2228 `global constructor keyed to'.._source_glitch_collada_CColladaAnimationSetTransformationTemplate.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaAnimationSetTransformationTemplate.cpp()
{
  dword_9F8334 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8330 = 1056964608;
}


// ===== 6e2248 glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate() =====
void __fastcall glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate(
        glitch::collada::CAnimationSetTransformationTemplate *this)
{
  *(_DWORD *)this = off_98B228;
  glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate(this);
}


// ===== 6e227c glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate() =====
void __fastcall glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate(
        glitch::collada::CAnimationSetTransformationTemplate *this)
{
  glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate(this);
  LC_API_FREE_0(this);
}


// ===== 6e2298 glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate() =====
void __fastcall glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate(
        glitch::collada::CAnimationSetTransformationTemplate *this)
{
  *(_DWORD *)this = off_98B228;
  glitch::collada::IAnimationSetTemplate::~IAnimationSetTemplate(this);
}


// ===== 6e22cc glitch::collada::CAnimationSetTransformationTemplate::isAnimationExist(glitch::collada::SChannel const*) =====
int __fastcall glitch::collada::CAnimationSetTransformationTemplate::isAnimationExist(int a1, int a2)
{
  int v2; // r3
  int v5; // r4
  unsigned int v6; // r3
  int v7; // r3
  int result; // r0
  int v9; // r2
  int v10; // r0
  const char *v11; // r0

  v2 = *(_DWORD *)(a1 + 4);
  if ( !((unsigned int)(*(_DWORD *)(a1 + 8) - v2) >> 2) )
    return 0;
  v5 = 0;
  while ( 1 )
  {
    v10 = *(_DWORD *)(*(_DWORD *)(v2 + 4 * v5) + 8);
    v11 = (const char *)(*(int (__fastcall **)(int))(*(_DWORD *)v10 + 84))(v10);
    if ( LC_API_STRCMP_0(*(const char **)(a2 + 4), v11) )
      goto LABEL_10;
    v6 = *(_DWORD *)(a2 + 8);
    if ( v6 > 0xD )
      goto LABEL_10;
    v7 = 1 << v6;
    result = 1;
    if ( (v7 & 0x3C00) != 0 )
      break;
    if ( (v7 & 0x3E0) != 0 )
    {
      v2 = *(_DWORD *)(a1 + 4);
      v9 = *(_DWORD *)(v2 + 4 * v5);
      if ( *(_DWORD *)(v9 + 4) == 5 )
        goto LABEL_13;
LABEL_8:
      if ( ++v5 >= (unsigned int)((*(_DWORD *)(a1 + 8) - v2) >> 2) )
        return 0;
    }
    else
    {
      if ( (v7 & 0x1E) != 0 )
      {
        v2 = *(_DWORD *)(a1 + 4);
        v9 = *(_DWORD *)(v2 + 4 * v5);
        result = *(_DWORD *)(v9 + 4);
        if ( result == 1 )
          goto LABEL_13;
        goto LABEL_8;
      }
LABEL_10:
      v2 = *(_DWORD *)(a1 + 4);
      if ( ++v5 >= (unsigned int)((*(_DWORD *)(a1 + 8) - v2) >> 2) )
        return 0;
    }
  }
  v2 = *(_DWORD *)(a1 + 4);
  v9 = *(_DWORD *)(v2 + 4 * v5);
  if ( *(_DWORD *)(v9 + 4) != 10 )
    goto LABEL_8;
LABEL_13:
  *(_BYTE *)v9 = result;
  return result;
}


// ===== 6e23d0 glitch::collada::CAnimationSetTransformationTemplate::getDefaultValue(glitch::collada::SChannel const*,void **) =====
int __fastcall glitch::collada::CAnimationSetTransformationTemplate::getDefaultValue(int a1, int a2, _DWORD *a3)
{
  int v3; // r4
  int v7; // r0

  v3 = *(_DWORD *)(a1 + 4);
  if ( v3 == *(_DWORD *)(a1 + 8) )
    return 0;
  while ( 1 )
  {
    v7 = *(_DWORD *)(*(_DWORD *)v3 + 8);
    v3 += 4;
    if ( glitch::collada::CColladaDatabase::getDefaultValue((glitch::collada::CColladaDatabase *)(v7 + 332), a2, a3) )
      break;
    if ( v3 == *(_DWORD *)(a1 + 8) )
      return 0;
  }
  return 1;
}


// ===== 6e2434 std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(glitch::collada::SAnimationTemplate **,glitch::collada::SAnimationTemplate * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(
        int a1,
        int a2,
        _DWORD *a3)
{
  unsigned int v6; // r3
  unsigned int v7; // r6
  int v8; // r6
  _DWORD *v9; // r0
  void *v10; // r1
  _DWORD *v11; // r5
  size_t v12; // r8
  _DWORD *v13; // r8
  _DWORD *v14; // r8

  v6 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x3FFFFFFF || v6 > v7 )
  {
    v8 = -1;
    v9 = (_DWORD *)glitch::core::allocProcessBuffer((glitch::core *)0xFFFFFFFC, a2);
    v10 = *(void **)a1;
    v11 = v9;
    v12 = a2 - *(_DWORD *)a1;
    if ( !v12 )
    {
      v13 = v9;
      goto LABEL_11;
    }
  }
  else
  {
    v8 = v7;
    v9 = (_DWORD *)glitch::core::allocProcessBuffer((glitch::core *)(v8 * 4), a2);
    v10 = *(void **)a1;
    v11 = v9;
    v12 = a2 - *(_DWORD *)a1;
    if ( !v12 )
    {
      v13 = v9;
      goto LABEL_11;
    }
  }
  v13 = (char *)memmove(v9, v10, v12) + v12;
LABEL_11:
  *v13 = *a3;
  v14 = v13 + 1;
  if ( *(_DWORD *)a1 )
    glitch::core::releaseProcessBuffer(*(glitch::core **)a1, v10);
  *(_DWORD *)(a1 + 8) = &v11[v8];
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + 4) = v14;
}


// ===== 6e24e8 glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(glitch::collada::CSceneNode *) =====
void __fastcall glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(
        glitch::collada::CAnimationSetTransformationTemplate *this,
        glitch::collada::CSceneNode *a2)
{
  _DWORD *v4; // r1
  _DWORD *v5; // r1
  _DWORD *v6; // r1
  char *v7; // r5
  char *i; // r6
  char *v9; // t1
  glitch::collada::CSceneNode *v10; // r1
  _DWORD *v11; // [sp+4h] [bp-4h] BYREF

  v11 = operator new(0x10u, 0);
  *(_BYTE *)v11 = 0;
  v11[1] = 1;
  v11[2] = a2;
  v4 = *((_DWORD **)this + 2);
  if ( v4 == *((_DWORD **)this + 3) )
  {
    std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(
      (int)this + 4,
      (int)v4,
      &v11);
  }
  else
  {
    *v4 = v11;
    *((_DWORD *)this + 2) += 4;
  }
  v11 = operator new(0x10u, 0);
  *(_BYTE *)v11 = 0;
  v11[1] = 5;
  v11[2] = a2;
  v5 = *((_DWORD **)this + 2);
  if ( v5 == *((_DWORD **)this + 3) )
  {
    std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(
      (int)this + 4,
      (int)v5,
      &v11);
  }
  else
  {
    *v5 = v11;
    *((_DWORD *)this + 2) += 4;
  }
  v11 = operator new(0x10u, 0);
  *(_BYTE *)v11 = 0;
  v11[1] = 10;
  v11[2] = a2;
  v6 = *((_DWORD **)this + 2);
  if ( v6 == *((_DWORD **)this + 3) )
  {
    std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(
      (int)this + 4,
      (int)v6,
      &v11);
  }
  else
  {
    *v6 = v11;
    *((_DWORD *)this + 2) += 4;
  }
  v9 = *((char **)a2 + 61);
  v7 = (char *)a2 + 244;
  for ( i = v9; v7 != i; i = *(char **)i )
  {
    if ( i )
      v10 = (glitch::collada::CSceneNode *)(i - 4);
    else
      v10 = nullptr;
    glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(this, v10);
  }
}


// ===== 6e264c glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CSceneNode *) =====
glitch::collada::CAnimationSetTransformationTemplate *__fastcall glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(
        glitch::collada::CAnimationSetTransformationTemplate *this,
        glitch::collada::CSceneNode *a2)
{
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_98B228;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(this, a2);
  return this;
}


// ===== 6e2690 glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CSceneNode *) =====
glitch::collada::CAnimationSetTransformationTemplate *__fastcall glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(
        glitch::collada::CAnimationSetTransformationTemplate *this,
        glitch::collada::CSceneNode *a2)
{
  *((_DWORD *)this + 3) = 0;
  *(_DWORD *)this = off_98B228;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(this, a2);
  return this;
}


// ===== 6e26d4 glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(glitch::collada::SNode &) =====
void __fastcall glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(int a1, int a2)
{
  _DWORD *v4; // r1
  _DWORD *v5; // r1
  _DWORD *v6; // r1
  int v7; // r6
  int v8; // r7
  _DWORD v9[2]; // [sp+4h] [bp-8h] BYREF

  v9[0] = operator new(0x10u, 0);
  *(_BYTE *)v9[0] = 0;
  *(_DWORD *)(v9[0] + 4) = 1;
  v4 = *(_DWORD **)(a1 + 8);
  if ( v4 == *(_DWORD **)(a1 + 12) )
  {
    std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(
      a1 + 4,
      (int)v4,
      v9);
  }
  else
  {
    *v4 = v9[0];
    *(_DWORD *)(a1 + 8) += 4;
  }
  v9[0] = operator new(0x10u, 0);
  *(_BYTE *)v9[0] = 0;
  *(_DWORD *)(v9[0] + 4) = 5;
  v5 = *(_DWORD **)(a1 + 8);
  if ( v5 == *(_DWORD **)(a1 + 12) )
  {
    std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(
      a1 + 4,
      (int)v5,
      v9);
  }
  else
  {
    *v5 = v9[0];
    *(_DWORD *)(a1 + 8) += 4;
  }
  v9[0] = operator new(0x10u, 0);
  *(_BYTE *)v9[0] = 0;
  *(_DWORD *)(v9[0] + 4) = 10;
  v6 = *(_DWORD **)(a1 + 8);
  if ( v6 == *(_DWORD **)(a1 + 12) )
  {
    std::vector<glitch::collada::SAnimationTemplate *,glitch::core::SProcessBufferAllocator<glitch::collada::SAnimationTemplate *>>::_M_insert_overflow(
      a1 + 4,
      (int)v6,
      v9);
  }
  else
  {
    *v6 = v9[0];
    *(_DWORD *)(a1 + 8) += 4;
  }
  if ( *(int *)(a2 + 56) > 0 )
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ++v8;
      glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(a1, *(_DWORD *)(a2 + 60) + v7);
      v7 += 80;
    }
    while ( v8 < *(_DWORD *)(a2 + 56) );
  }
}


// ===== 6e2830 glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CColladaDatabase *) =====
glitch::collada::CAnimationSetTransformationTemplate *__fastcall glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(
        glitch::collada::CAnimationSetTransformationTemplate *this,
        glitch::collada::CColladaDatabase *a2)
{
  int v2; // r8
  int VisualScene; // r6
  int v6; // r4
  int v7; // r5

  v2 = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_98B228;
  *((_DWORD *)this + 2) = 0;
  for ( *((_DWORD *)this + 3) = 0; v2 < *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)a2 + 36) + 32) + 152); ++v2 )
  {
    VisualScene = glitch::collada::CColladaDatabase::getVisualScene(a2, v2);
    if ( *(int *)(VisualScene + 8) > 0 )
    {
      v6 = 0;
      v7 = 0;
      do
      {
        ++v7;
        glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(
          (int)this,
          *(_DWORD *)(VisualScene + 12) + v6);
        v6 += 80;
      }
      while ( v7 < *(_DWORD *)(VisualScene + 8) );
    }
  }
  return this;
}


// ===== 6e28f0 glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CColladaDatabase *) =====
glitch::collada::CAnimationSetTransformationTemplate *__fastcall glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(
        glitch::collada::CAnimationSetTransformationTemplate *this,
        glitch::collada::CColladaDatabase *a2)
{
  int v2; // r8
  int VisualScene; // r6
  int v6; // r4
  int v7; // r5

  v2 = 0;
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_98B228;
  *((_DWORD *)this + 2) = 0;
  for ( *((_DWORD *)this + 3) = 0; v2 < *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)a2 + 36) + 32) + 152); ++v2 )
  {
    VisualScene = glitch::collada::CColladaDatabase::getVisualScene(a2, v2);
    if ( *(int *)(VisualScene + 8) > 0 )
    {
      v6 = 0;
      v7 = 0;
      do
      {
        ++v7;
        glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(
          (int)this,
          *(_DWORD *)(VisualScene + 12) + v6);
        v6 += 80;
      }
      while ( v7 < *(_DWORD *)(VisualScene + 8) );
    }
  }
  return this;
}


// ===== 6e29b0 glitch::collada::CAnimationTrackEx::~CAnimationTrackEx() =====
void __fastcall glitch::collada::CAnimationTrackEx::~CAnimationTrackEx(glitch::collada::CAnimationTrackEx *this)
{
  ;
}


// ===== 6e29b4 `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrack.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrack.cpp()
{
  dword_9F8340 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F833C = 1056964608;
}


// ===== 6e29d4 glitch::collada::CAnimationTrackEx::retrieveValue(void *,void *) =====
void *__fastcall glitch::collada::CAnimationTrackEx::retrieveValue(
        glitch::collada::CAnimationTrackEx *this,
        void *a2,
        void *a3)
{
  size_t v5; // r3

  v5 = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *))(*(_DWORD *)this + 8))(this);
  return memcpy(a3, a2, v5);
}


// ===== 6e2a04 glitch::collada::CAnimationTrackEx::~CAnimationTrackEx() =====
void __fastcall glitch::collada::CAnimationTrackEx::~CAnimationTrackEx(glitch::collada::CAnimationTrackEx *this)
{
  LC_API_FREE_0(this);
}


// ===== 6e2a18 glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,float,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::applyValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        int *a6,
        float a7,
        bool a8)
{
  int v8; // r7
  int result; // r0
  int v13; // [sp+10h] [bp-8h] BYREF
  int v14; // [sp+14h] [bp-4h] BYREF

  v8 = *a6;
  v14 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v14, (float *)&v13, v8) & a8) != 0 )
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *, glitch::collada::animation_track::CApplicatorInfo *, _DWORD))(*(_DWORD *)this + 88))(
               this,
               a2,
               v14,
               v14 + 1,
               v13,
               a4,
               a5,
               LODWORD(a7));
  else
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *, glitch::collada::animation_track::CApplicatorInfo *, _DWORD))(*(_DWORD *)this + 92))(
               this,
               a2,
               v14,
               a4,
               a5,
               LODWORD(a7));
  *a6 = v14;
  return result;
}


// ===== 6e2ad8 glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::applyValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        int *a6,
        bool a7)
{
  int v7; // r7
  int result; // r0
  int v12; // [sp+10h] [bp-Ch] BYREF
  int v13; // [sp+14h] [bp-8h] BYREF

  v7 = *a6;
  v13 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v13, (float *)&v12, v7) & a7) != 0 )
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *, glitch::collada::animation_track::CApplicatorInfo *))(*(_DWORD *)this + 64))(
               this,
               a2,
               v13,
               v13 + 1,
               v12,
               a4,
               a5);
  else
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *, glitch::collada::animation_track::CApplicatorInfo *))(*(_DWORD *)this + 72))(
               this,
               a2,
               v13,
               a4,
               a5);
  *a6 = v13;
  return result;
}


// ===== 6e2b8c glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&,int,void *,int &,float,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::getValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        int *a5,
        float a6,
        bool a7)
{
  int v7; // r7
  int result; // r0
  int v12; // [sp+10h] [bp-Ch] BYREF
  int v13; // [sp+14h] [bp-8h] BYREF

  v7 = *a5;
  v13 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v13, (float *)&v12, v7) & a7) != 0 )
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *, _DWORD))(*(_DWORD *)this + 56))(
               this,
               a2,
               v13,
               v13 + 1,
               v12,
               a4,
               LODWORD(a6));
  else
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *, _DWORD))(*(_DWORD *)this + 60))(
               this,
               a2,
               v13,
               a4,
               LODWORD(a6));
  *a5 = v13;
  return result;
}


// ===== 6e2c40 glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&,int,void *,int &,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::getValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        int *a5,
        bool a6)
{
  int v6; // r7
  int result; // r0
  int v11; // [sp+8h] [bp-8h] BYREF
  int v12; // [sp+Ch] [bp-4h] BYREF

  v6 = *a5;
  v12 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v12, (float *)&v11, v6) & a6) != 0 )
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *))(*(_DWORD *)this + 32))(
               this,
               a2,
               v12,
               v12 + 1,
               v11,
               a4);
  else
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *))(*(_DWORD *)this + 40))(
               this,
               a2,
               v12,
               a4);
  *a5 = v12;
  return result;
}


// ===== 6e2ce8 glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&,int,int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::applyValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        void *a5,
        glitch::collada::animation_track::CApplicatorInfo *a6,
        int *a7,
        bool a8)
{
  int v8; // lr
  unsigned __int8 KeyFrameNo; // r10
  int result; // r0
  int v14; // [sp+14h] [bp-10h] BYREF
  int v15; // [sp+18h] [bp-Ch] BYREF
  int v16; // [sp+1Ch] [bp-8h] BYREF

  v8 = *a7;
  v16 = 0;
  KeyFrameNo = glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a4, &v16, (float *)&v15, v8);
  v14 = 0;
  glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v14);
  if ( (KeyFrameNo & a8) != 0 )
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, int, void *))(*(_DWORD *)this + 68))(
               this,
               a2,
               v14,
               v16,
               v16 + 1,
               v15,
               a5);
  else
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, void *))(*(_DWORD *)this + 76))(
               this,
               a2,
               v14,
               v16,
               a5);
  *a7 = v16;
  return result;
}


// ===== 6e2dbc glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&,int,int,void *,int &,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::getValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        void *a5,
        int *a6,
        bool a7)
{
  int v7; // lr
  unsigned __int8 KeyFrameNo; // r10
  int result; // r0
  int v13; // [sp+14h] [bp-10h] BYREF
  int v14; // [sp+18h] [bp-Ch] BYREF
  int v15; // [sp+1Ch] [bp-8h] BYREF

  v7 = *a6;
  v15 = 0;
  KeyFrameNo = glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a4, &v15, (float *)&v14, v7);
  v13 = 0;
  glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v13);
  if ( (KeyFrameNo & a7) != 0 )
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, int, void *))(*(_DWORD *)this + 36))(
               this,
               a2,
               v13,
               v15,
               v15 + 1,
               v14,
               a5);
  else
    result = (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, void *))(*(_DWORD *)this + 44))(
               this,
               a2,
               v13,
               v15,
               a5);
  *a6 = v15;
  return result;
}


// ===== 6e2e90 glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,float,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::applyValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        float a6,
        bool a7)
{
  int v11; // [sp+10h] [bp-Ch] BYREF
  int v12; // [sp+14h] [bp-8h] BYREF

  v12 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v12, (float *)&v11) & a7) != 0 )
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *, glitch::collada::animation_track::CApplicatorInfo *, _DWORD))(*(_DWORD *)this + 88))(
             this,
             a2,
             v12,
             v12 + 1,
             v11,
             a4,
             a5,
             LODWORD(a6));
  else
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *, glitch::collada::animation_track::CApplicatorInfo *, _DWORD))(*(_DWORD *)this + 92))(
             this,
             a2,
             v12,
             a4,
             a5,
             LODWORD(a6));
}


// ===== 6e2f3c glitch::collada::CAnimationTrackEx::applyValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::applyValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        bool a6)
{
  int v10; // [sp+10h] [bp-8h] BYREF
  int v11; // [sp+14h] [bp-4h] BYREF

  v11 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v11, (float *)&v10) & a6) != 0 )
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *, glitch::collada::animation_track::CApplicatorInfo *))(*(_DWORD *)this + 64))(
             this,
             a2,
             v11,
             v11 + 1,
             v10,
             a4,
             a5);
  else
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *, glitch::collada::animation_track::CApplicatorInfo *))(*(_DWORD *)this + 72))(
             this,
             a2,
             v11,
             a4,
             a5);
}


// ===== 6e2fdc glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&,int,void *,float,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::getValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        float a5,
        bool a6)
{
  int v10; // [sp+10h] [bp-8h] BYREF
  int v11; // [sp+14h] [bp-4h] BYREF

  v11 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v11, (float *)&v10) & a6) != 0 )
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *, _DWORD))(*(_DWORD *)this + 56))(
             this,
             a2,
             v11,
             v11 + 1,
             v10,
             a4,
             LODWORD(a5));
  else
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *, _DWORD))(*(_DWORD *)this + 60))(
             this,
             a2,
             v11,
             a4,
             LODWORD(a5));
}


// ===== 6e307c glitch::collada::CAnimationTrackEx::getValue(glitch::collada::SAnimationAccessor const&,int,void *,bool) =====
int __fastcall glitch::collada::CAnimationTrackEx::getValue(
        glitch::collada::CAnimationTrackEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        bool a5)
{
  int v9; // [sp+8h] [bp-Ch] BYREF
  int v10; // [sp+Ch] [bp-8h] BYREF

  v10 = 0;
  if ( (glitch::collada::SAnimationAccessor::findKeyFrameNo(a2, 0, a3, &v10, (float *)&v9) & a5) != 0 )
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, int, int, void *))(*(_DWORD *)this + 32))(
             this,
             a2,
             v10,
             v10 + 1,
             v9,
             a4);
  else
    return (*(int (__fastcall **)(glitch::collada::CAnimationTrackEx *, const glitch::collada::SAnimationAccessor *, int, void *))(*(_DWORD *)this + 40))(
             this,
             a2,
             v10,
             a4);
}


// ===== 6e3110 glitch::collada::animation_track::CFloatEx::getValueSize(void) =====
int __fastcall glitch::collada::animation_track::CFloatEx::getValueSize(
        glitch::collada::animation_track::CFloatEx *this)
{
  return 4;
}


// ===== 6e3118 glitch::collada::animation_track::CFloatEx::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CFloatEx::getIdentityValue(
        glitch::collada::animation_track::CFloatEx *this,
        _DWORD *a2)
{
  *a2 = 0;
}


// ===== 6e3124 glitch::collada::animation_track::CFloatEx::getBlendedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getBlendedValue(
        glitch::collada::animation_track::CFloatEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5)
{
  float result; // r0
  int v6; // r7
  float v7; // r10
  int v8; // r8

  result = 0.0;
  *a5 = 0.0;
  if ( a4 > 0 )
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0;
    do
    {
      ++v8;
      v7 = v7 + (float)(*(float *)&a2[v6 * 4] * a3[v6]);
      result = v7;
      *a5 = v7;
      ++v6;
    }
    while ( v8 != a4 );
  }
  return result;
}


// ===== 6e3184 glitch::collada::animation_track::CFloatEx::getAddedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getAddedValue(
        glitch::collada::animation_track::CFloatEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5)
{
  float result; // r0
  int v6; // r7
  float v7; // r10
  int v8; // r8

  result = 0.0;
  *a5 = 0.0;
  if ( a4 > 0 )
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0;
    do
    {
      ++v8;
      v7 = v7 + (float)(*(float *)&a2[v6 * 4] * a3[v6]);
      result = v7;
      *a5 = v7;
      ++v6;
    }
    while ( v8 != a4 );
  }
  return result;
}


// ===== 6e31e4 glitch::collada::animation_track::CFloatEx::~CFloatEx() =====
void __fastcall glitch::collada::animation_track::CFloatEx::~CFloatEx(glitch::collada::animation_track::CFloatEx *this)
{
  ;
}


// ===== 6e31e8 `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackFloat.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackFloat.cpp()
{
  dword_9F834C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8348 = 1056964608;
  glitch::collada::animation_track::CFloatEx::s_Instance = (int)off_98B2D8;
  return _aeabi_atexit(
           (int)&glitch::collada::animation_track::CFloatEx::s_Instance,
           (int)glitch::collada::animation_track::CFloatEx::~CFloatEx,
           (int)&_dso_handle);
}


// ===== 6e3258 glitch::collada::animation_track::CFloatEx::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
void *__fastcall glitch::collada::animation_track::CFloatEx::applyValue(
        glitch::collada::animation_track::CFloatEx *this,
        void *a2,
        void *a3,
        glitch::collada::animation_track::CApplicatorInfo *a4)
{
  size_t v6; // r3

  v6 = (*(int (__fastcall **)(glitch::collada::animation_track::CFloatEx *))(*(_DWORD *)this + 8))(this);
  return memcpy(a3, a2, v6);
}


// ===== 6e3288 glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CFloatEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        float *a4,
        void *a5)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, 0);
  result = *(float *)(*(_DWORD *)(Output + 4) + 4 * a3) - *(float *)(*(_DWORD *)(Output + 4) + 4 * (_DWORD)a2);
  *a4 = result;
  return result;
}


// ===== 6e32b8 glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getKeyBasedValue(
        glitch::collada::animation_track::CFloatEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float *a5)
{
  return glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(a2, a3, a4, a5, a5);
}


// ===== 6e32cc glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
int __fastcall glitch::collada::animation_track::CFloatEx::getKeyBasedValue(
        glitch::collada::animation_track::CFloatEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4)
{
  int result; // r0

  result = glitch::collada::SAnimationAccessor::getOutput(a2, 0);
  *a4 = *(_DWORD *)(*(_DWORD *)(result + 4) + 4 * a3);
  return result;
}


// ===== 6e32f4 glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CFloatEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float *a6,
        void *a7)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, 0);
  result = (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a3)
                 + (float)(*(float *)&a5
                         * (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a4)
                                 - *(float *)(*(_DWORD *)(Output + 4) + 4 * a3))))
         - *(float *)(*(_DWORD *)(Output + 4) + 4 * (_DWORD)a2);
  *a6 = result;
  return result;
}


// ===== 6e3350 glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getKeyBasedValue(
        glitch::collada::animation_track::CFloatEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        int a5,
        int a6,
        float *a7)
{
  return glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a7, a7);
}


// ===== 6e3374 glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CFloatEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        float a4,
        float *a5,
        void *a6)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, 0);
  result = *(float *)(*(_DWORD *)(Output + 4) + 4 * (_DWORD)a2)
         + (float)(a4
                 * (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a3)
                         - *(float *)(*(_DWORD *)(Output + 4) + 4 * (_DWORD)a2)));
  *a5 = result;
  return result;
}


// ===== 6e33c4 glitch::collada::animation_track::CFloatEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CFloatEx::getKeyBasedValue(
        glitch::collada::animation_track::CFloatEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CFloatEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a6);
}


// ===== 6e33e0 glitch::collada::animation_track::CFloatEx::~CFloatEx() =====
void __fastcall glitch::collada::animation_track::CFloatEx::~CFloatEx(glitch::collada::animation_track::CFloatEx *this)
{
  LC_API_FREE_0(this);
}


// ===== 6e33f4 glitch::collada::animation_track::CTextureTransformEx::retrieveValue(void *,void *) =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::retrieveValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        void *a2,
        void *a3)
{
  ;
}


// ===== 6e33f8 glitch::collada::animation_track::CTextureTransformEx::getValueSize(void) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::getValueSize(
        glitch::collada::animation_track::CTextureTransformEx *this)
{
  return 20;
}


// ===== 6e3400 glitch::collada::animation_track::CTextureTransformEx::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::getIdentityValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        _DWORD *a2)
{
  *a2 = 0;
  a2[3] = 1065353216;
  a2[4] = 1065353216;
  a2[2] = 0;
  a2[1] = 0;
}


// ===== 6e3420 glitch::collada::animation_track::CTextureTransformEx::getBlendedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CTextureTransformEx::getBlendedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5)
{
  float v5; // r3
  int v6; // r6
  int v7; // r7
  float v8; // r5
  float *v9; // r4
  float v10; // r11
  float v11; // r1
  float v12; // r9
  float v13; // r0
  float v14; // r1
  float v15; // r10
  float v16; // r0
  float v17; // r1
  float result; // r0
  float v20; // [sp+8h] [bp-1Ch]
  float v21; // [sp+Ch] [bp-18h]
  float v22; // [sp+10h] [bp-14h]
  float v23; // [sp+14h] [bp-10h]

  if ( a4 <= 0 )
  {
    v5 = 1.0;
    v20 = 0.0;
    v22 = 0.0;
    v21 = 1.0;
    v23 = 0.0;
  }
  else
  {
    v5 = 1.0;
    v6 = 0;
    v20 = 0.0;
    v22 = 0.0;
    v21 = 1.0;
    v23 = 0.0;
    v7 = 0;
    do
    {
      v8 = a3[v7];
      v9 = (float *)&a2[v6];
      v10 = v8 * *(float *)&a2[v6];
      ++v7;
      *(float *)&a2[v6] = v10;
      v11 = *(float *)&a2[v6 + 8];
      v12 = v8 * *(float *)&a2[v6 + 4];
      v9[1] = v8 * v9[1];
      v13 = v8 * v11;
      v14 = *(float *)&a2[v6 + 12];
      v15 = v13;
      v9[2] = v13;
      v16 = v8 * v14;
      v17 = *(float *)&a2[v6 + 16];
      v9[3] = v16;
      v9[4] = v8 * v17;
      v23 = v23 + v10;
      v22 = v22 + v12;
      v20 = v20 + v15;
      v21 = v21 + v16;
      result = v5 + (float)(v8 * v17);
      v5 = result;
      v6 += 20;
    }
    while ( v7 != a4 );
  }
  *a5 = v23;
  a5[4] = v5;
  a5[3] = v21;
  a5[2] = v20;
  a5[1] = v22;
  return result;
}


// ===== 6e358c glitch::collada::animation_track::CTextureTransformEx::getAddedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CTextureTransformEx::getAddedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5)
{
  float v5; // r3
  int v6; // r6
  int v7; // r7
  float v8; // r5
  float *v9; // r4
  float v10; // r11
  float v11; // r1
  float v12; // r9
  float v13; // r0
  float v14; // r1
  float v15; // r10
  float v16; // r0
  float v17; // r1
  float result; // r0
  float v20; // [sp+8h] [bp-1Ch]
  float v21; // [sp+Ch] [bp-18h]
  float v22; // [sp+10h] [bp-14h]
  float v23; // [sp+14h] [bp-10h]

  if ( a4 <= 0 )
  {
    v5 = 1.0;
    v20 = 0.0;
    v22 = 0.0;
    v23 = 1.0;
    v21 = 0.0;
  }
  else
  {
    v5 = 1.0;
    v6 = 0;
    v20 = 0.0;
    v22 = 0.0;
    v23 = 1.0;
    v21 = 0.0;
    v7 = 0;
    do
    {
      v8 = a3[v7];
      v9 = (float *)&a2[v6];
      v10 = v8 * *(float *)&a2[v6];
      ++v7;
      *(float *)&a2[v6] = v10;
      v11 = *(float *)&a2[v6 + 8];
      v12 = v8 * *(float *)&a2[v6 + 4];
      v9[1] = v8 * v9[1];
      v13 = v8 * v11;
      v14 = *(float *)&a2[v6 + 12];
      v15 = v13;
      v9[2] = v13;
      v16 = v8 * v14;
      v17 = *(float *)&a2[v6 + 16];
      v9[3] = v16;
      v9[4] = v8 * v17;
      v21 = v21 + v10;
      v22 = v22 + v12;
      v20 = v20 + v15;
      v23 = v23 + v16;
      result = v5 + (float)(v8 * v17);
      v5 = result;
      v6 += 20;
    }
    while ( v7 != a4 );
  }
  *a5 = v21;
  a5[4] = v5;
  a5[3] = v23;
  a5[2] = v20;
  a5[1] = v22;
  return result;
}


// ===== 6e36f8 glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float a5,
        void *a6)
{
  ;
}


// ===== 6e36fc glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4)
{
  ;
}


// ===== 6e3700 glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float a6,
        void *a7)
{
  ;
}


// ===== 6e3704 glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        void *a5)
{
  ;
}


// ===== 6e3708 glitch::collada::animation_track::CTextureTransformEx::~CTextureTransformEx() =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::~CTextureTransformEx(
        glitch::collada::animation_track::CTextureTransformEx *this)
{
  ;
}


// ===== 6e370c `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackOffsetUV.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackOffsetUV.cpp()
{
  dword_9F835C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8358 = 1056964608;
  glitch::collada::animation_track::CTextureTransformEx::s_Instance = (int)off_98B370;
  return _aeabi_atexit(
           (int)&glitch::collada::animation_track::CTextureTransformEx::s_Instance,
           (int)glitch::collada::animation_track::CTextureTransformEx::~CTextureTransformEx,
           (int)&_dso_handle);
}


// ===== 6e377c glitch::core::buildTextureTransform<float>(float,glitch::core::vector2d<float> const&,glitch::core::vector2d<float> const&,glitch::core::vector2d<float> const&) =====
int __fastcall glitch::core::buildTextureTransform<float>(int a1, float x, float *a3, float *a4, float *a5)
{
  float v9; // r8
  float v10; // r0
  float v11; // r10
  float v12; // r0

  v9 = cosf(x);
  v10 = sinf(x);
  *(_BYTE *)(a1 + 64) = 0;
  v11 = v10;
  *(float *)a1 = *a5 * v9;
  *(float *)(a1 + 4) = a5[1] * v10;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(float *)(a1 + 16) = COERCE_FLOAT(LODWORD(v10) + 0x80000000) * *a5;
  v12 = a5[1] * v9;
  *(_DWORD *)(a1 + 24) = 0;
  *(float *)(a1 + 20) = v12;
  *(_DWORD *)(a1 + 28) = 0;
  *(float *)(a1 + 32) = (float)((float)((float)(*a3 - (float)(v9 * *a3)) + (float)(v11 * a3[1])) * *a5) + *a4;
  *(float *)(a1 + 36) = (float)((float)((float)(a3[1] - (float)(v11 * *a3)) - (float)(v9 * a3[1])) * a5[1]) + a4[1];
  *(_DWORD *)(a1 + 40) = 1065353216;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 1065353216;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  return a1;
}


// ===== 6e38c4 glitch::collada::animation_track::CTextureTransformEx::applyValueEx(void *,glitch::collada::animation_track::CTextureTransformEx::SData &,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::applyValueEx(_DWORD *a1, float *a2, int a3)
{
  float v5; // r0
  float v6; // r6
  float v7; // r7
  float v8; // r10
  _BYTE v10[68]; // [sp+Ch] [bp-60h] BYREF
  float v11[2]; // [sp+50h] [bp-1Ch] BYREF
  float v12[2]; // [sp+58h] [bp-14h] BYREF
  float v13[3]; // [sp+60h] [bp-Ch] BYREF

  v5 = a2[2] / 180.0;
  v6 = a2[1];
  v7 = *a2;
  v8 = a2[4];
  v11[0] = a2[3];
  v13[1] = 0.5;
  v12[0] = v7;
  v12[1] = v6;
  v11[1] = v8;
  v13[0] = 0.5;
  glitch::core::buildTextureTransform<float>((int)v10, v5 * 3.1416, v13, v12, v11);
  return glitch::video::detail::IMaterialParameters<glitch::video::CMaterial,glitch::ISharedMemoryBlockHeader<glitch::video::CMaterial>>::setParameter(
           a1,
           *(unsigned __int16 *)(a3 + 8),
           0,
           v10);
}


// ===== 6e395c glitch::collada::animation_track::CTextureTransformEx::applyBlendedValueEx(void *,float *,int,void *) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::applyBlendedValueEx(
        glitch::collada::animation_track::CTextureTransformEx *this,
        float *a2,
        float *a3,
        _DWORD *a4,
        void *a5)
{
  int v5; // r6
  float *v6; // r7
  float v7; // r5
  float *v8; // r4
  float v9; // r11
  float v10; // r9
  float v11; // r10
  float v12; // r8
  float v13; // r0
  float v16; // [sp+14h] [bp-18h] BYREF
  float v17; // [sp+18h] [bp-14h]
  float v18; // [sp+1Ch] [bp-10h]
  float v19; // [sp+20h] [bp-Ch]
  float v20; // [sp+24h] [bp-8h]

  v18 = 0.0;
  v20 = 1.0;
  v16 = 0.0;
  v17 = 0.0;
  v19 = 1.0;
  if ( (int)a3 > 0 )
  {
    v5 = 0;
    v6 = nullptr;
    do
    {
      v7 = a2[(_DWORD)v6];
      v6 = (float *)((char *)v6 + 1);
      v8 = (float *)((char *)this + v5);
      v9 = v7 * *(float *)((char *)this + v5);
      *(float *)((char *)this + v5) = v9;
      v10 = *(float *)((char *)this + v5 + 4) * v7;
      v8[1] = v8[1] * v7;
      v11 = *(float *)((char *)this + v5 + 8) * v7;
      v8[2] = v8[2] * v7;
      v12 = *(float *)((char *)this + v5 + 12) * v7;
      v8[3] = v8[3] * v7;
      v13 = *(float *)((char *)this + v5 + 16) * v7;
      v8[4] = v13;
      v16 = v16 + v9;
      v17 = v17 + v10;
      v18 = v18 + v11;
      v19 = v19 + v12;
      v20 = v20 + v13;
      v5 += 20;
    }
    while ( v6 != a3 );
  }
  return glitch::collada::animation_track::CTextureTransformEx::applyValueEx(a4, &v16, 0);
}


// ===== 6e3a90 glitch::collada::animation_track::CTextureTransformEx::applyAddedValue(void *,float *,int,void *) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::applyAddedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        glitch::collada::animation_track::CTextureTransformEx *a2,
        float *a3,
        float *a4,
        _DWORD *a5)
{
  return glitch::collada::animation_track::CTextureTransformEx::applyBlendedValueEx(a2, a3, a4, a5, a5);
}


// ===== 6e3aa4 glitch::collada::animation_track::CTextureTransformEx::applyBlendedValue(void *,float *,int,void *) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::applyBlendedValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        glitch::collada::animation_track::CTextureTransformEx *a2,
        float *a3,
        float *a4,
        _DWORD *a5)
{
  return glitch::collada::animation_track::CTextureTransformEx::applyBlendedValueEx(a2, a3, a4, a5, a5);
}


// ===== 6e3ab8 glitch::collada::animation_track::CTextureTransformEx::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::applyValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        float *a2,
        _DWORD *a3,
        glitch::collada::animation_track::CApplicatorInfo *a4)
{
  return glitch::collada::animation_track::CTextureTransformEx::applyValueEx(a3, a2, 0);
}


// ===== 6e3ac4 glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        int a6,
        float *a7,
        void *a8)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, (int)a2);
  result = (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a4)
                 + (float)(*(float *)&a6
                         * (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a5)
                                 - *(float *)(*(_DWORD *)(Output + 4) + 4 * a4))))
         - *(float *)(*(_DWORD *)(Output + 4) + 4 * a3);
  *a7 = result;
  return result;
}


// ===== 6e3b1c glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        float *a5,
        void *a6)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, (int)a2);
  result = *(float *)(*(_DWORD *)(Output + 4) + 4 * a4) - *(float *)(*(_DWORD *)(Output + 4) + 4 * a3);
  *a5 = result;
  return result;
}


// ===== 6e3b48 glitch::collada::animation_track::CTextureTransformEx::getValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *,int &,bool) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::getValueEx(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        void *a5,
        int *a6,
        bool a7)
{
  int v10; // r6
  _DWORD *DefaultValue; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r3
  int result; // r0
  const glitch::collada::SAnimationAccessor *v16; // r9
  const glitch::collada::SAnimationAccessor *v17; // r4
  void *v18; // [sp+4h] [bp-30h]
  void *v19; // [sp+Ch] [bp-28h]
  int v21; // [sp+20h] [bp-14h] BYREF
  int v22; // [sp+24h] [bp-10h] BYREF
  int v23; // [sp+28h] [bp-Ch] BYREF
  float v24[2]; // [sp+2Ch] [bp-8h] BYREF

  v10 = (unsigned __int8)a6;
  DefaultValue = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(this);
  v12 = DefaultValue[1];
  v13 = DefaultValue[2];
  v14 = DefaultValue[3];
  *a4 = *DefaultValue;
  a4[1] = v12;
  a4[2] = v13;
  a4[3] = v14;
  a4[4] = DefaultValue[4];
  result = glitch::collada::SAnimationAccessor::getChannelsCount(this);
  v16 = (const glitch::collada::SAnimationAccessor *)result;
  if ( result > 0 )
  {
    v17 = nullptr;
    while ( 2 )
    {
      v23 = 0;
      v10 = (glitch::collada::SAnimationAccessor::findKeyFrameNo(this, (int)v17, a3, &v23, (float *)&v22) & v10) != 0;
      v21 = 0;
      glitch::collada::SAnimationAccessor::findKeyFrameNo(this, (int)v17, (int)a2, &v21);
      if ( v10 )
        glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(
          this,
          v17,
          v21,
          v23,
          v23 + 1,
          v22,
          v24,
          v19);
      else
        glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(this, v17, v21, v23, v24, v18);
      result = glitch::collada::SAnimationAccessor::getType(this, (int)v17) - 87;
      switch ( result )
      {
        case 0:
          v17 = (const glitch::collada::SAnimationAccessor *)((char *)v17 + 1);
          *a4 = LODWORD(v24[0]);
          if ( v17 != v16 )
            continue;
          return result;
        case 1:
          v17 = (const glitch::collada::SAnimationAccessor *)((char *)v17 + 1);
          a4[1] = LODWORD(v24[0]);
          if ( v17 != v16 )
            continue;
          return result;
        case 2:
          a4[2] = LODWORD(v24[0]);
          goto LABEL_7;
        case 3:
          v17 = (const glitch::collada::SAnimationAccessor *)((char *)v17 + 1);
          a4[3] = LODWORD(v24[0]);
          if ( v17 != v16 )
            continue;
          return result;
        case 4:
          v17 = (const glitch::collada::SAnimationAccessor *)((char *)v17 + 1);
          a4[4] = LODWORD(v24[0]);
          if ( v17 != v16 )
            continue;
          return result;
        default:
LABEL_7:
          v17 = (const glitch::collada::SAnimationAccessor *)((char *)v17 + 1);
          if ( v17 == v16 )
            return result;
          continue;
      }
    }
  }
  return result;
}


// ===== 6e3d08 glitch::collada::animation_track::CTextureTransformEx::getValue(glitch::collada::SAnimationAccessor const&,int,int,void *,int &,bool) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::getValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        _DWORD *a5,
        int *a6,
        bool a7)
{
  return glitch::collada::animation_track::CTextureTransformEx::getValueEx(a2, a3, a4, a5, a6, (int *)a7, a7);
}


// ===== 6e3d30 glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float *a6,
        void *a7)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, (int)a2);
  result = *(float *)(*(_DWORD *)(Output + 4) + 4 * a3)
         + (float)(*(float *)&a5
                 * (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a4) - *(float *)(*(_DWORD *)(Output + 4) + 4 * a3)));
  *a6 = result;
  return result;
}


// ===== 6e3d78 glitch::collada::animation_track::CTextureTransformEx::getValueEx(glitch::collada::SAnimationAccessor const&,int,void *,int &,bool) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::getValueEx(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        _DWORD *a3,
        void *a4,
        int *a5,
        bool a6)
{
  int v8; // r6
  _DWORD *DefaultValue; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r3
  int result; // r0
  const glitch::collada::SAnimationAccessor *v14; // r8
  const glitch::collada::SAnimationAccessor *v15; // r4
  bool v16; // zf
  int v17; // r11
  _DWORD *v18; // [sp+8h] [bp-1Ch]
  int v19; // [sp+14h] [bp-10h] BYREF
  int v20; // [sp+18h] [bp-Ch] BYREF
  float v21[2]; // [sp+1Ch] [bp-8h] BYREF

  v18 = a3;
  v8 = (unsigned __int8)a5;
  DefaultValue = (_DWORD *)glitch::collada::SAnimationAccessor::getDefaultValue(this);
  v10 = DefaultValue[1];
  v11 = DefaultValue[2];
  v12 = DefaultValue[3];
  *v18 = *DefaultValue;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = DefaultValue[4];
  result = glitch::collada::SAnimationAccessor::getChannelsCount(this);
  v14 = (const glitch::collada::SAnimationAccessor *)result;
  if ( result > 0 )
  {
    v15 = nullptr;
    while ( 2 )
    {
      v20 = 0;
      v16 = (glitch::collada::SAnimationAccessor::findKeyFrameNo(this, (int)v15, (int)a2, &v20, (float *)&v19) & v8) == 0;
      v8 = !v16;
      if ( v16 )
      {
        v17 = v20;
        v21[0] = *(float *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, (int)v15) + 4) + 4 * v17);
      }
      else
      {
        glitch::collada::animation_track::CTextureTransformEx::getKeyBasedValueEx(
          this,
          v15,
          v20,
          v20 + 1,
          v19,
          v21,
          v18);
      }
      result = glitch::collada::SAnimationAccessor::getType(this, (int)v15) - 87;
      switch ( result )
      {
        case 0:
          v15 = (const glitch::collada::SAnimationAccessor *)((char *)v15 + 1);
          *v18 = LODWORD(v21[0]);
          if ( v15 != v14 )
            continue;
          return result;
        case 1:
          v15 = (const glitch::collada::SAnimationAccessor *)((char *)v15 + 1);
          v18[1] = LODWORD(v21[0]);
          if ( v15 != v14 )
            continue;
          return result;
        case 2:
          v18[2] = LODWORD(v21[0]);
          goto LABEL_10;
        case 3:
          v15 = (const glitch::collada::SAnimationAccessor *)((char *)v15 + 1);
          v18[3] = LODWORD(v21[0]);
          if ( v15 != v14 )
            continue;
          return result;
        case 4:
          v15 = (const glitch::collada::SAnimationAccessor *)((char *)v15 + 1);
          v18[4] = LODWORD(v21[0]);
          if ( v15 != v14 )
            continue;
          return result;
        default:
LABEL_10:
          v15 = (const glitch::collada::SAnimationAccessor *)((char *)v15 + 1);
          if ( v15 == v14 )
            return result;
          continue;
      }
    }
  }
  return result;
}


// ===== 6e3efc glitch::collada::animation_track::CTextureTransformEx::applyValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,bool) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::applyValueEx(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        _DWORD *a3,
        int a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        int *a6,
        bool a7)
{
  bool v10; // [sp+4h] [bp-20h]
  float v11[6]; // [sp+Ch] [bp-18h] BYREF

  v11[4] = 1.0;
  memset(v11, 0, 12);
  v11[3] = 1.0;
  glitch::collada::animation_track::CTextureTransformEx::getValueEx(this, a2, v11, a5, (int *)(unsigned __int8)a6, v10);
  return glitch::collada::animation_track::CTextureTransformEx::applyValueEx(a3, v11, a4);
}


// ===== 6e3f58 glitch::collada::animation_track::CTextureTransformEx::applyValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *,int &,bool) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::applyValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        _DWORD *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        int *a6,
        bool a7)
{
  return glitch::collada::animation_track::CTextureTransformEx::applyValueEx(
           a2,
           a3,
           a4,
           (int)a5,
           (glitch::collada::animation_track::CApplicatorInfo *)a6,
           (int *)a7,
           a7);
}


// ===== 6e3f80 glitch::collada::animation_track::CTextureTransformEx::getValue(glitch::collada::SAnimationAccessor const&,int,void *,int &,bool) =====
int __fastcall glitch::collada::animation_track::CTextureTransformEx::getValue(
        glitch::collada::animation_track::CTextureTransformEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        _DWORD *a4,
        void *a5,
        int *a6)
{
  return glitch::collada::animation_track::CTextureTransformEx::getValueEx(
           a2,
           a3,
           a4,
           a5,
           (int *)(unsigned __int8)a6,
           (bool)a6);
}


// ===== 6e3f9c glitch::collada::animation_track::CTextureTransformEx::~CTextureTransformEx() =====
void __fastcall glitch::collada::animation_track::CTextureTransformEx::~CTextureTransformEx(
        glitch::collada::animation_track::CTextureTransformEx *this)
{
  LC_API_FREE_0(this);
}


// ===== 6e3fb0 glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(
        float this,
        float *a2,
        float *a3,
        float *a4,
        void *a5)
{
  float v5; // r8
  float v6; // r7
  float v7; // r10
  float v8; // r9
  int v9; // r5
  float *i; // r4
  float v11; // r6
  float v12; // r4
  float v13; // r7
  float v14; // [sp+Ch] [bp-10h]

  v14 = this;
  if ( (int)a3 <= 2 )
  {
    if ( a3 == (float *)((char *)&dword_0 + 2) )
    {
      v12 = a2[1] / (float)(a2[1] + *a2);
      v13 = *(float *)(LODWORD(this) + 4)
          + (float)(v12 * (float)(*(float *)(LODWORD(this) + 16) - *(float *)(LODWORD(this) + 4)));
      this = *(float *)LODWORD(this) + (float)(v12 * (float)(*(float *)(LODWORD(this) + 12) - *(float *)LODWORD(this)));
      a4[2] = *(float *)(LODWORD(v14) + 8)
            + (float)(v12 * (float)(*(float *)(LODWORD(v14) + 20) - *(float *)(LODWORD(v14) + 8)));
      *a4 = this;
      a4[1] = v13;
    }
    else if ( a3 == (float *)((char *)&dword_0 + 1) )
    {
      *a4 = *(float *)LODWORD(this);
      a4[1] = *(float *)(LODWORD(this) + 4);
      a4[2] = *(float *)(LODWORD(this) + 8);
    }
  }
  else
  {
    v5 = *(float *)LODWORD(this);
    v6 = *(float *)(LODWORD(this) + 4);
    v7 = *(float *)(LODWORD(this) + 8);
    v8 = *a2;
    v9 = 12;
    for ( i = (float *)(&dword_0 + 1); i != a3; i = (float *)((char *)i + 1) )
    {
      v8 = v8 + a2[(_DWORD)i];
      v11 = a2[(_DWORD)i] / v8;
      v5 = v5 + (float)(v11 * (float)(*(float *)(LODWORD(v14) + v9) - v5));
      v6 = v6 + (float)(v11 * (float)(*(float *)(LODWORD(v14) + v9 + 4) - v6));
      this = v7 + (float)(v11 * (float)(*(float *)(LODWORD(v14) + v9 + 8) - v7));
      v7 = this;
      v9 += 12;
    }
    a4[2] = this;
    *a4 = v5;
    a4[1] = v6;
  }
  return this;
}


// ===== 6e41ec glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(void *,float *,int,void *,float) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(
        glitch::collada::animation_track::CVector3dEx *this,
        float *a2,
        float *a3,
        float *a4,
        void *a5,
        float a6)
{
  float v7; // r7
  float result; // r0
  void *v9; // [sp+0h] [bp-10h]
  float v10; // [sp+4h] [bp-Ch] BYREF
  float v11; // [sp+8h] [bp-8h]
  float v12; // [sp+Ch] [bp-4h]

  v12 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(*(float *)&this, a2, a3, &v10, v9);
  v7 = (float)((float)(1.0 - *(float *)&a5) * a4[1]) + (float)(*(float *)&a5 * v11);
  result = (float)((float)(1.0 - *(float *)&a5) * *a4) + (float)(*(float *)&a5 * v10);
  a4[2] = (float)((float)(1.0 - *(float *)&a5) * a4[2]) + (float)(*(float *)&a5 * v12);
  *a4 = result;
  a4[1] = v7;
  return result;
}


// ===== 6e42b4 glitch::collada::animation_track::CVector3dEx::getValueSize(void) =====
int __fastcall glitch::collada::animation_track::CVector3dEx::getValueSize(
        glitch::collada::animation_track::CVector3dEx *this)
{
  return 12;
}


// ===== 6e42bc glitch::collada::animation_track::CVector3dEx::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVector3dEx::getIdentityValue(
        glitch::collada::animation_track::CVector3dEx *this,
        _DWORD *a2)
{
  a2[2] = 0;
  *a2 = 0;
  a2[1] = 0;
}


// ===== 6e42d0 glitch::collada::animation_track::CVector3dEx::getBlendedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getBlendedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        glitch::collada::animation_track::CVector3dEx *a2,
        float *a3,
        float *a4,
        float *a5)
{
  return glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(*(float *)&a2, a3, a4, a5, a5);
}


// ===== 6e42e4 glitch::collada::animation_track::CVector3dEx::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVector3dEx::getAddedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        float *a2,
        float *a3,
        int a4,
        float *a5)
{
  float v5; // r8
  float v6; // r10
  float v7; // r9
  int v9; // r6
  float v10; // r7

  if ( a4 > 0 )
  {
    v5 = 0.0;
    v9 = 0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v10 = a3[v9++];
      v7 = v7 + (float)(v10 * *a2);
      v6 = v6 + (float)(v10 * a2[1]);
      v5 = v5 + (float)(v10 * a2[2]);
      a2 += 3;
    }
    while ( v9 != a4 );
  }
  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }
  a5[2] = v5;
  *a5 = v7;
  a5[1] = v6;
}


// ===== 6e4390 glitch::collada::animation_track::CVector3dEx::getBlendedValue(void *,float *,int,void *,float) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getBlendedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        glitch::collada::animation_track::CVector3dEx *a2,
        float *a3,
        float *a4,
        float *a5,
        void *a6)
{
  return glitch::collada::animation_track::CVector3dEx::getBlendedValueEx(a2, a3, a4, a5, a6, *(float *)&a6);
}


// ===== 6e43ac glitch::collada::animation_track::CVector3dEx::~CVector3dEx() =====
void __fastcall glitch::collada::animation_track::CVector3dEx::~CVector3dEx(
        glitch::collada::animation_track::CVector3dEx *this)
{
  ;
}


// ===== 6e43b0 `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackVector3d.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackVector3d.cpp()
{
  dword_9F836C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8368 = 1056964608;
  glitch::collada::animation_track::CVector3dEx::s_Instance = (int)off_98B410;
  return _aeabi_atexit(
           (int)&glitch::collada::animation_track::CVector3dEx::s_Instance,
           (int)glitch::collada::animation_track::CVector3dEx::~CVector3dEx,
           (int)&_dso_handle);
}


// ===== 6e4420 glitch::collada::animation_track::CVector3dEx::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
void *__fastcall glitch::collada::animation_track::CVector3dEx::applyValue(
        glitch::collada::animation_track::CVector3dEx *this,
        void *a2,
        void *a3,
        glitch::collada::animation_track::CApplicatorInfo *a4)
{
  size_t v6; // r3

  v6 = (*(int (__fastcall **)(glitch::collada::animation_track::CVector3dEx *))(*(_DWORD *)this + 8))(this);
  return memcpy(a3, a2, v6);
}


// ===== 6e4450 glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
int __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CVector3dEx *this,
        int a2,
        _DWORD *a3,
        void *a4)
{
  int result; // r0
  int v7; // r3
  char *v8; // r4
  int v9; // r2
  char *v10; // r4

  result = glitch::collada::SAnimationAccessor::getOutput(this, 0);
  a2 *= 12;
  v7 = a2 & 3;
  v8 = (char *)(*(_DWORD *)(result + 4) + a2);
  v9 = *(_DWORD *)&v8[v7];
  v10 = &v8[v7];
  *a3 = v9;
  a3[1] = *((_DWORD *)v10 + 1);
  a3[2] = *((_DWORD *)v10 + 2);
  return result;
}


// ===== 6e4498 glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,float) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        float *a4,
        float a5)
{
  float v6; // r7
  float result; // r0
  float v8; // [sp+4h] [bp-Ch] BYREF
  float v9; // [sp+8h] [bp-8h]
  float v10; // [sp+Ch] [bp-4h]

  v10 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(a2, (int)a3, &v8, a4);
  v6 = (float)((float)(1.0 - a5) * a4[1]) + (float)(a5 * v9);
  result = (float)((float)(1.0 - a5) * *a4) + (float)(a5 * v8);
  a4[2] = (float)((float)(1.0 - a5) * a4[2]) + (float)(a5 * v10);
  *a4 = result;
  a4[1] = v6;
  return result;
}


// ===== 6e4568 glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
int __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        _DWORD *a4)
{
  return glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(a2, (int)a3, a4, a4);
}


// ===== 6e4578 glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        float a4,
        float *a5,
        void *a6)
{
  int v9; // r8
  float *v10; // r2
  int v11; // r8
  int v12; // r5
  float v13; // r11
  float result; // r0

  v9 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, 0) + 4);
  a3 *= 12;
  v10 = (float *)(v9 + 12 * (_DWORD)a2);
  v11 = v9 + a3;
  v12 = a3 & 3;
  v13 = v10[1] + (float)(a4 * (float)(*(float *)(v11 + v12 + 4) - v10[1]));
  result = *v10 + (float)(a4 * (float)(*(float *)(v11 + v12) - *v10));
  a5[2] = v10[2] + (float)(a4 * (float)(*(float *)(v11 + v12 + 8) - v10[2]));
  *a5 = result;
  a5[1] = v13;
  return result;
}


// ===== 6e464c glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,float) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        float a4,
        float *a5,
        void *a6,
        float a7)
{
  float v7; // r7
  float result; // r0
  void *v9; // [sp+4h] [bp-14h]
  float v10; // [sp+Ch] [bp-Ch] BYREF
  float v11; // [sp+10h] [bp-8h]
  float v12; // [sp+14h] [bp-4h]

  v12 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(this, a2, a3, a4, &v10, v9);
  v7 = (float)((float)(1.0 - *(float *)&a6) * a5[1]) + (float)(*(float *)&a6 * v11);
  result = (float)((float)(1.0 - *(float *)&a6) * *a5) + (float)(*(float *)&a6 * v10);
  a5[2] = (float)((float)(1.0 - *(float *)&a6) * a5[2]) + (float)(*(float *)&a6 * v12);
  *a5 = result;
  a5[1] = v7;
  return result;
}


// ===== 6e4718 glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,float) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float a5,
        float *a6,
        void *a7)
{
  return glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a7, *(float *)&a7);
}


// ===== 6e473c glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a6);
}


// ===== 6e4758 glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CVector3dEx *this,
        int a2,
        int a3,
        float *a4,
        void *a5)
{
  int v8; // r7
  char *v9; // r8
  float *v10; // r7
  int v11; // r4
  float v12; // r11
  float result; // r0

  v8 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, 0) + 4);
  a2 *= 12;
  v9 = (char *)(v8 + a2);
  v10 = (float *)(v8 + 12 * a3);
  v11 = a2 & 3;
  v12 = v10[1] - *(float *)&v9[v11 + 4];
  result = *v10 - *(float *)&v9[v11];
  a4[2] = v10[2] - *(float *)&v9[v11 + 8];
  *a4 = result;
  a4[1] = v12;
  return result;
}


// ===== 6e47d4 glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float *a5)
{
  return glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(a2, (int)a3, a4, a5, a5);
}


// ===== 6e47e8 glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        int a5,
        float *a6,
        void *a7)
{
  int v10; // r12
  float *v11; // r5
  float *v12; // r10
  float *v13; // r8
  float v14; // r11
  float result; // r0

  v10 = *(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, 0) + 4);
  v11 = (float *)(v10 + 12 * a3);
  v12 = (float *)(v10 + 12 * a4);
  v13 = (float *)(v10 + 12 * (_DWORD)a2);
  v14 = (float)(v11[1] + (float)(*(float *)&a5 * (float)(v12[1] - v11[1]))) - v13[1];
  result = (float)(*v11 + (float)(*(float *)&a5 * (float)(*v12 - *v11))) - *v13;
  a6[2] = (float)(v11[2] + (float)(*(float *)&a5 * (float)(v12[2] - v11[2]))) - v13[2];
  *a6 = result;
  a6[1] = v14;
  return result;
}


// ===== 6e4904 glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CVector3dEx::getKeyBasedValue(
        glitch::collada::animation_track::CVector3dEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        int a5,
        int a6,
        float *a7)
{
  return glitch::collada::animation_track::CVector3dEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a7, a7);
}


// ===== 6e4928 glitch::collada::animation_track::CVector3dEx::~CVector3dEx() =====
void __fastcall glitch::collada::animation_track::CVector3dEx::~CVector3dEx(
        glitch::collada::animation_track::CVector3dEx *this)
{
  LC_API_FREE_0(this);
}


// ===== 6e493c glitch::collada::animation_track::CVisibilityEx::retrieveValue(void *,void *) =====
void __fastcall glitch::collada::animation_track::CVisibilityEx::retrieveValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        _BYTE *a2,
        _BYTE *a3)
{
  *a3 = a2[284] & 1;
}


// ===== 6e494c glitch::collada::animation_track::CVisibilityEx::getValueSize(void) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::getValueSize(
        glitch::collada::animation_track::CVisibilityEx *this)
{
  return 4;
}


// ===== 6e4954 glitch::collada::animation_track::CVisibilityEx::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CVisibilityEx::getIdentityValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        _DWORD *a2)
{
  *a2 = 1;
}


// ===== 6e4960 glitch::collada::animation_track::CVisibilityEx::getBlendedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVisibilityEx::getBlendedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        char *a2,
        float *a3,
        int a4,
        _DWORD *a5)
{
  int v5; // r7
  int v6; // r8

  *a5 = 1;
  if ( a4 > 0 )
  {
    v5 = 0;
    v6 = 0;
    while ( 1 )
    {
      ++v6;
      if ( a3[v5] != 0.0 && !*(_DWORD *)&a2[v5 * 4] )
        break;
      ++v5;
      if ( v6 == a4 )
        return;
    }
    *a5 = 0;
  }
}


// ===== 6e49c4 glitch::collada::animation_track::CVisibilityEx::getAddedValue(void *,float *,int,void *) =====
void __fastcall glitch::collada::animation_track::CVisibilityEx::getAddedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        char *a2,
        float *a3,
        int a4,
        _DWORD *a5)
{
  int v5; // r7
  int v6; // r8

  v5 = 0;
  *a5 = 0;
  if ( a4 > 0 )
  {
    v6 = 0;
    while ( 1 )
    {
      ++v6;
      if ( a3[v5] != 0.0 && *(_DWORD *)&a2[v5 * 4] == 1 )
        break;
      ++v5;
      if ( v6 == a4 )
        return;
    }
    *a5 = 1;
  }
}


// ===== 6e4a24 glitch::collada::animation_track::CVisibilityEx::~CVisibilityEx() =====
void __fastcall glitch::collada::animation_track::CVisibilityEx::~CVisibilityEx(
        glitch::collada::animation_track::CVisibilityEx *this)
{
  ;
}


// ===== 6e4a28 `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackVisibility.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackVisibility.cpp()
{
  dword_9F837C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8378 = 1056964608;
  glitch::collada::animation_track::CVisibilityEx::s_Instance = (int)off_98B4A8;
  return _aeabi_atexit(
           (int)&glitch::collada::animation_track::CVisibilityEx::s_Instance,
           (int)glitch::collada::animation_track::CVisibilityEx::~CVisibilityEx,
           (int)&_dso_handle);
}


// ===== 6e4a98 glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *) =====
bool __fastcall glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        _BOOL4 *a3,
        void *a4)
{
  _BOOL4 result; // r0

  result = *(float *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, 0) + 4) + 4 * (_DWORD)a2) >= 1.0;
  *a3 = result;
  return result;
}


// ===== 6e4acc glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
bool __fastcall glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        glitch::collada::SAnimationAccessor *a4,
        _BOOL4 *a5)
{
  return glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(a2, a4, a5, a4);
}


// ===== 6e4adc glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
bool __fastcall glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        _BOOL4 *a4)
{
  return glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(a2, a3, a4, a4);
}


// ===== 6e4aec glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
bool __fastcall glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        _BOOL4 *a5,
        void *a6)
{
  _BOOL4 result; // r0

  result = *(float *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, 0) + 4) + 4 * (_DWORD)a2) >= 1.0;
  *a5 = result;
  return result;
}


// ===== 6e4b20 glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
bool __fastcall glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        glitch::collada::SAnimationAccessor *a4,
        int a5,
        void *a6,
        _BOOL4 *a7)
{
  return glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(a2, a4, a5, (int)a6, a7, a6);
}


// ===== 6e4b3c glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
bool __fastcall glitch::collada::animation_track::CVisibilityEx::getKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        int a5,
        _BOOL4 *a6)
{
  return glitch::collada::animation_track::CVisibilityEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a6);
}


// ===== 6e4b58 glitch::collada::animation_track::CVisibilityEx::~CVisibilityEx() =====
void __fastcall glitch::collada::animation_track::CVisibilityEx::~CVisibilityEx(
        glitch::collada::animation_track::CVisibilityEx *this)
{
  LC_API_FREE_0(this);
}


// ===== 6e4b6c glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        _DWORD *a5,
        void *a6,
        glitch::collada::animation_track::CApplicatorInfo *a7)
{
  bool v7; // r1

  v7 = *(float *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, 0) + 4) + 4 * (_DWORD)a2) >= 1.0;
  return (*(int (__fastcall **)(_DWORD *, bool))(*a5 + 72))(a5, v7);
}


// ===== 6e4bb4 glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        glitch::collada::SAnimationAccessor *a4,
        int a5,
        void *a6,
        glitch::collada::animation_track::CApplicatorInfo *a7,
        glitch::collada::animation_track::CApplicatorInfo *a8)
{
  return glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(a2, a4, a5, (int)a6, a7, a8, a7);
}


// ===== 6e4bd8 glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        int a5,
        _DWORD *a6,
        glitch::collada::animation_track::CApplicatorInfo *a7)
{
  return glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(a2, a3, a4, a5, a6, a7, a7);
}


// ===== 6e4bfc glitch::collada::animation_track::CVisibilityEx::applyBlendedValueEx(void *,float *,int,void *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyBlendedValueEx(
        glitch::collada::animation_track::CVisibilityEx *this,
        char *a2,
        float *a3,
        int a4,
        void *a5)
{
  int result; // r0
  int v10; // r5
  float *v11; // r6

  result = (*(int (__fastcall **)(int, int))(*(_DWORD *)a4 + 72))(a4, 1);
  if ( (int)a3 > 0 )
  {
    v10 = 0;
    v11 = nullptr;
    while ( 1 )
    {
      result = *(float *)&a2[v10] == 0.0;
      v11 = (float *)((char *)v11 + 1);
      if ( *(float *)&a2[v10] != 0.0 && !*(_DWORD *)((char *)this + v10) )
        break;
      v10 += 4;
      if ( v11 == a3 )
        return result;
    }
    return (*(int (__fastcall **)(int))(*(_DWORD *)a4 + 72))(a4);
  }
  return result;
}


// ===== 6e4c7c glitch::collada::animation_track::CVisibilityEx::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyBlendedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        glitch::collada::animation_track::CVisibilityEx *a2,
        float *a3,
        float *a4,
        void *a5,
        glitch::collada::animation_track::CApplicatorInfo *a6)
{
  return glitch::collada::animation_track::CVisibilityEx::applyBlendedValueEx(a2, (char *)a3, a4, (int)a5, a5);
}


// ===== 6e4c90 glitch::collada::animation_track::CVisibilityEx::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        unsigned __int8 *a2,
        void *a3,
        glitch::collada::animation_track::CApplicatorInfo *a4)
{
  return (*(int (__fastcall **)(void *, _DWORD))(*(_DWORD *)a3 + 72))(a3, *a2);
}


// ===== 6e4cac glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        void *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5)
{
  bool v6; // r1

  v6 = *(float *)(*(_DWORD *)(glitch::collada::SAnimationAccessor::getOutput(this, 0) + 4) + 4 * (_DWORD)a2) >= 1.0;
  return (*(int (__fastcall **)(int, bool))(*(_DWORD *)a3 + 72))(a3, v6);
}


// ===== 6e4cf4 glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        glitch::collada::SAnimationAccessor *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5,
        glitch::collada::animation_track::CApplicatorInfo *a6)
{
  return glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(a2, a4, (int)a5, a6, a5);
}


// ===== 6e4d08 glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        glitch::collada::animation_track::CApplicatorInfo *a5)
{
  return glitch::collada::animation_track::CVisibilityEx::applyKeyBasedValueEx(a2, a3, a4, a5, a5);
}


// ===== 6e4d1c glitch::collada::animation_track::CVisibilityEx::applyAddedValueEx(void *,float *,int,void *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyAddedValueEx(
        glitch::collada::animation_track::CVisibilityEx *this,
        char *a2,
        float *a3,
        int a4,
        void *a5)
{
  int result; // r0
  int v10; // r5
  float *v11; // r6

  result = (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)a4 + 72))(a4, 0);
  if ( (int)a3 > 0 )
  {
    v10 = 0;
    v11 = nullptr;
    while ( 1 )
    {
      result = *(float *)&a2[v10] == 0.0;
      v11 = (float *)((char *)v11 + 1);
      if ( *(float *)&a2[v10] != 0.0 && !*(_DWORD *)((char *)this + v10) )
        break;
      v10 += 4;
      if ( v11 == a3 )
        return result;
    }
    return (*(int (__fastcall **)(int, int))(*(_DWORD *)a4 + 72))(a4, 1);
  }
  return result;
}


// ===== 6e4da0 glitch::collada::animation_track::CVisibilityEx::applyAddedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CVisibilityEx::applyAddedValue(
        glitch::collada::animation_track::CVisibilityEx *this,
        glitch::collada::animation_track::CVisibilityEx *a2,
        float *a3,
        float *a4,
        void *a5,
        glitch::collada::animation_track::CApplicatorInfo *a6)
{
  return glitch::collada::animation_track::CVisibilityEx::applyAddedValueEx(a2, (char *)a3, a4, (int)a5, a5);
}


// ===== 6e4db4 glitch::collada::animation_track::CWeightEx::getValueSize(void) =====
int __fastcall glitch::collada::animation_track::CWeightEx::getValueSize(
        glitch::collada::animation_track::CWeightEx *this)
{
  return 4;
}


// ===== 6e4dbc glitch::collada::animation_track::CWeightEx::getIdentityValue(void *) =====
void __fastcall glitch::collada::animation_track::CWeightEx::getIdentityValue(
        glitch::collada::animation_track::CWeightEx *this,
        _DWORD *a2)
{
  *a2 = 0;
}


// ===== 6e4dc8 glitch::collada::animation_track::CWeightEx::getBlendedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::getBlendedValue(
        glitch::collada::animation_track::CWeightEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5)
{
  float result; // r0
  int v6; // r7
  float v7; // r10
  int v8; // r8

  result = 0.0;
  *a5 = 0.0;
  if ( a4 > 0 )
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0;
    do
    {
      ++v8;
      v7 = v7 + (float)(*(float *)&a2[v6 * 4] * a3[v6]);
      result = v7;
      *a5 = v7;
      ++v6;
    }
    while ( v8 != a4 );
  }
  return result;
}


// ===== 6e4e28 glitch::collada::animation_track::CWeightEx::getAddedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::getAddedValue(
        glitch::collada::animation_track::CWeightEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5)
{
  float result; // r0
  int v6; // r7
  float v7; // r10
  int v8; // r8

  result = 0.0;
  *a5 = 0.0;
  if ( a4 > 0 )
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0;
    do
    {
      ++v8;
      v7 = v7 + (float)(*(float *)&a2[v6 * 4] * a3[v6]);
      result = v7;
      *a5 = v7;
      ++v6;
    }
    while ( v8 != a4 );
  }
  return result;
}


// ===== 6e4e88 glitch::collada::animation_track::CWeightEx::applyBlendedValue(void *,float *,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::applyBlendedValue(
        glitch::collada::animation_track::CWeightEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5,
        glitch::collada::animation_track::CApplicatorInfo *a6)
{
  float result; // r0
  int v7; // r7
  float v8; // r10
  int v9; // r8

  result = 0.0;
  *a5 = 0.0;
  if ( a4 > 0 )
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0;
    do
    {
      ++v9;
      v8 = v8 + (float)(*(float *)&a2[v7 * 4] * a3[v7]);
      result = v8;
      *a5 = v8;
      ++v7;
    }
    while ( v9 != a4 );
  }
  return result;
}


// ===== 6e4ee8 glitch::collada::animation_track::CWeightEx::applyAddedValue(void *,float *,int,void *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::applyAddedValue(
        glitch::collada::animation_track::CWeightEx *this,
        char *a2,
        float *a3,
        int a4,
        float *a5)
{
  float result; // r0
  int v6; // r7
  float v7; // r10
  int v8; // r8

  result = 0.0;
  *a5 = 0.0;
  if ( a4 > 0 )
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0;
    do
    {
      ++v8;
      v7 = v7 + (float)(*(float *)&a2[v6 * 4] * a3[v6]);
      result = v7;
      *a5 = v7;
      ++v6;
    }
    while ( v8 != a4 );
  }
  return result;
}


// ===== 6e4f48 glitch::collada::animation_track::CWeightEx::~CWeightEx() =====
void __fastcall glitch::collada::animation_track::CWeightEx::~CWeightEx(
        glitch::collada::animation_track::CWeightEx *this)
{
  ;
}


// ===== 6e4f4c `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackWeight.cpp =====
int `global constructor keyed to'.._source_glitch_collada_CColladaAnimationTrackWeight.cpp()
{
  dword_9F838C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8388 = 1056964608;
  glitch::collada::animation_track::CWeightEx::s_Instance = (int)off_98B548;
  return _aeabi_atexit(
           (int)&glitch::collada::animation_track::CWeightEx::s_Instance,
           (int)glitch::collada::animation_track::CWeightEx::~CWeightEx,
           (int)&_dso_handle);
}


// ===== 6e4fbc glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        float *a4,
        void *a5)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, 0);
  result = *(float *)(*(_DWORD *)(Output + 4) + 4 * a3) - *(float *)(*(_DWORD *)(Output + 4) + 4 * (_DWORD)a2);
  *a4 = result;
  return result;
}


// ===== 6e4fec glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float *a5,
        glitch::collada::animation_track::CApplicatorInfo *a6)
{
  return glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(a2, a3, a4, a5, a5);
}


// ===== 6e5000 glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,void *) =====
int __fastcall glitch::collada::animation_track::CWeightEx::getKeyBasedValue(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        int a4,
        _DWORD *a5)
{
  int result; // r0

  result = glitch::collada::SAnimationAccessor::getOutput(a2, 0);
  *a5 = *(_DWORD *)(*(_DWORD *)(result + 4) + 4 * a4);
  return result;
}


// ===== 6e5028 glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        float a4,
        float *a5,
        void *a6)
{
  int Output; // r0
  float result; // r0

  Output = glitch::collada::SAnimationAccessor::getOutput(this, 0);
  result = *(float *)(*(_DWORD *)(Output + 4) + 4 * (_DWORD)a2)
         + (float)(a4
                 * (float)(*(float *)(*(_DWORD *)(Output + 4) + 4 * a3)
                         - *(float *)(*(_DWORD *)(Output + 4) + 4 * (_DWORD)a2)));
  *a5 = result;
  return result;
}


// ===== 6e5078 glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float a5,
        float *a6,
        glitch::collada::animation_track::CApplicatorInfo *a7)
{
  return glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a6);
}


// ===== 6e5094 glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::getKeyBasedValue(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        glitch::collada::SAnimationAccessor *a4,
        int a5,
        void *a6,
        float *a7)
{
  return glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(a2, a4, a5, *(float *)&a6, a7, a6);
}


// ===== 6e50b0 glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,int,float,void *) =====
float __fastcall glitch::collada::animation_track::CWeightEx::getKeyBasedValue(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        glitch::collada::SAnimationAccessor *a3,
        int a4,
        float a5,
        float *a6)
{
  return glitch::collada::animation_track::CWeightEx::getKeyBasedValueEx(a2, a3, a4, a5, a6, a6);
}


// ===== 6e50cc glitch::collada::animation_track::CWeightEx::applyValue(void *,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
void *__fastcall glitch::collada::animation_track::CWeightEx::applyValue(
        glitch::collada::animation_track::CWeightEx *this,
        void *a2,
        void *a3,
        glitch::collada::animation_track::CApplicatorInfo *a4)
{
  size_t v6; // r3

  v6 = (*(int (__fastcall **)(glitch::collada::animation_track::CWeightEx *))(*(_DWORD *)this + 8))(this);
  return memcpy(a3, a2, v6);
}


// ===== 6e50fc glitch::collada::animation_track::CWeightEx::~CWeightEx() =====
void __fastcall glitch::collada::animation_track::CWeightEx::~CWeightEx(
        glitch::collada::animation_track::CWeightEx *this)
{
  LC_API_FREE_0(this);
}


// ===== 6e5110 glitch::collada::animation_track::CWeightEx::getKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *) =====
int __fastcall glitch::collada::animation_track::CWeightEx::getKeyBasedValue(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4)
{
  int result; // r0

  result = glitch::collada::SAnimationAccessor::getOutput(a2, 0);
  *a4 = *(_DWORD *)(*(_DWORD *)(result + 4) + 4 * a3);
  return result;
}


// ===== 6e5138 glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&,int,void *,glitch::collada::animation_track::CApplicatorInfo *) =====
int __fastcall glitch::collada::animation_track::CWeightEx::applyKeyBasedValue(
        glitch::collada::animation_track::CWeightEx *this,
        const glitch::collada::SAnimationAccessor *a2,
        int a3,
        _DWORD *a4,
        glitch::collada::animation_track::CApplicatorInfo *a5)
{
  int result; // r0

  result = glitch::collada::SAnimationAccessor::getOutput(a2, 0);
  *a4 = *(_DWORD *)(*(_DWORD *)(result + 4) + 4 * a3);
  return result;
}


// ===== 6e5160 glitch::collada::CCameraSceneNode::getTargetNode(void) =====
int __fastcall glitch::collada::CCameraSceneNode::getTargetNode(glitch::collada::CCameraSceneNode *this)
{
  return *((_DWORD *)this + 228);
}


// ===== 6e5168 glitch::collada::CCameraSceneNode::getType(void) =====
int __fastcall glitch::collada::CCameraSceneNode::getType(glitch::collada::CCameraSceneNode *this)
{
  return 1667588452;
}


// ===== 6e5174 glitch::collada::CCameraSceneNode::getUID(void) =====
int __fastcall glitch::collada::CCameraSceneNode::getUID(glitch::collada::CCameraSceneNode *this)
{
  return **((_DWORD **)this + 229);
}


// ===== 6e5180 `global constructor keyed to'.._source_glitch_collada_CColladaCameraSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaCameraSceneNode.cpp()
{
  dword_9F839C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F8398 = 1056964608;
}


// ===== 6e51a0 glitch::scene::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall glitch::scene::CCameraSceneNode::~CCameraSceneNode(glitch::scene::CCameraSceneNode *this, int *a2)
{
  int v2; // r2
  int v3; // lr

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  *((_DWORD *)this + 76) = off_975580;
  v3 = a2[1];
  *(_DWORD *)this = v3;
  *(_DWORD *)((char *)this + *(_DWORD *)(v3 - 28)) = a2[5];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[6];
  *((_DWORD *)this + 76) = off_95C300;
  glitch::scene::ISceneNode::~ISceneNode(this, a2 + 2);
}


// ===== 6e5238 glitch::collada::CCameraSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::collada::CCameraSceneNode::onRegisterSceneNode(glitch::collada::CCameraSceneNode *this)
{
  _DWORD *v1; // r1
  int v3; // r3
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r0
  float *v9; // r5
  _DWORD v10[4]; // [sp+0h] [bp-28h] BYREF
  float v11[3]; // [sp+10h] [bp-18h] BYREF
  _DWORD v12[3]; // [sp+1Ch] [bp-Ch] BYREF

  v1 = *((_DWORD **)this + 228);
  if ( v1 )
  {
    glitch::scene::ISceneNode::getAbsolutePosition(v12, v1);
    v3 = v12[2];
    v4 = v12[0];
    *((_DWORD *)this + 79) = v12[1];
    *((_DWORD *)this + 78) = v4;
    *((_DWORD *)this + 80) = v3;
    (*(void (__fastcall **)(glitch::collada::CCameraSceneNode *, _DWORD))(*(_DWORD *)this + 184))(this, 0);
    glitch::scene::ISceneNode::getAbsolutePosition(v11, this);
    glitch::core::quaternion::set(
      (glitch::core::quaternion *)v10,
      *((float *)this + 78) - v11[0],
      *((float *)this + 79) - v11[1],
      *((float *)this + 80) - v11[2]);
    v5 = v10[2];
    v6 = v10[3];
    v7 = v10[0];
    *((_DWORD *)this + 47) = v10[1];
    *((_DWORD *)this + 48) = v5;
    *((_DWORD *)this + 46) = v7;
    *((_DWORD *)this + 49) = v6;
  }
  else
  {
    v9 = (float *)(*(int (__fastcall **)(glitch::collada::CCameraSceneNode *))(*(_DWORD *)this + 56))(this);
    *((float *)this + 78) = (float)((float)((float)(*v9 * 0.0) + (float)(v9[4] * 0.0)) + (float)(v9[8] * -100.0))
                          + v9[12];
    *((float *)this + 79) = (float)((float)((float)(v9[1] * 0.0) + (float)(v9[5] * 0.0)) + (float)(v9[9] * -100.0))
                          + v9[13];
    *((float *)this + 80) = (float)((float)((float)(v9[2] * 0.0) + (float)(v9[6] * 0.0)) + (float)(v9[10] * -100.0))
                          + v9[14];
  }
  return glitch::scene::CCameraSceneNode::onRegisterSceneNode((glitch::scene::CCameraSceneNode ***)this);
}


// ===== 6e5410 `non-virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode(
        glitch::collada::CCameraSceneNode *this)
{
  glitch::collada::CCameraSceneNode::~CCameraSceneNode((glitch::collada::CCameraSceneNode *)((char *)this - 304));
}


// ===== 6e5418 glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall glitch::collada::CCameraSceneNode::~CCameraSceneNode(glitch::collada::CCameraSceneNode *this)
{
  _DWORD *v1; // r2

  v1 = *((_DWORD **)this + 228);
  *(_DWORD *)this = off_98B5FC;
  *((_DWORD *)this + 230) = off_98B77C;
  *((_DWORD *)this + 76) = off_98B760;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  *((_DWORD *)this + 228) = 0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 226);
  glitch::scene::CCameraSceneNode::~CCameraSceneNode(this, (int *)off_98B78C);
}


// ===== 6e549c `non-virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `non-virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode(
        glitch::collada::CCameraSceneNode *this)
{
  glitch::collada::CCameraSceneNode::~CCameraSceneNode((glitch::collada::CCameraSceneNode *)((char *)this - 304));
}


// ===== 6e54a4 glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall glitch::collada::CCameraSceneNode::~CCameraSceneNode(glitch::collada::CCameraSceneNode *this)
{
  glitch::collada::CCameraSceneNode::~CCameraSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6e54c0 glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall glitch::collada::CCameraSceneNode::~CCameraSceneNode(glitch::collada::CCameraSceneNode *this, int *a2)
{
  int v2; // r3
  _DWORD *v5; // r2

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[10];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[11];
  v5 = *((_DWORD **)this + 228);
  *((_DWORD *)this + 76) = off_98B760;
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
  *((_DWORD *)this + 228) = 0;
  glitch::collada::CColladaDatabase::~CColladaDatabase((glitch::IReferenceCounted **)this + 226);
  glitch::scene::CCameraSceneNode::~CCameraSceneNode(this, a2 + 1);
}


// ===== 6e5550 glitch::collada::CCameraSceneNode::CCameraSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SCamera &) =====
int __fastcall glitch::collada::CCameraSceneNode::CCameraSceneNode(int a1, _DWORD *a2, int a3)
{
  int v6; // r3
  int v7; // r2
  int v8; // r3
  float v9; // r0
  float v10; // r0
  int v12; // r3
  _DWORD v13[3]; // [sp+Ch] [bp-40h] BYREF
  _DWORD v14[3]; // [sp+18h] [bp-34h] BYREF
  _DWORD v15[3]; // [sp+24h] [bp-28h] BYREF
  _DWORD v16[3]; // [sp+30h] [bp-1Ch] BYREF
  _DWORD v17[4]; // [sp+3Ch] [bp-10h] BYREF

  *(_DWORD *)(a1 + 924) = 1;
  *(_DWORD *)(a1 + 920) = off_95B720;
  *(_DWORD *)a1 = off_98BC24;
  *(int *)((char *)&elf_hash_bucket[175] + a1) = (int)off_98BC44;
  v16[2] = 1120403456;
  v16[1] = 0;
  memset(v17, 0, 12);
  v16[0] = 0;
  glitch::scene::CCameraSceneNode::CCameraSceneNode(a1, (int *)off_98B78C, -1, (int)v17, v16, 0);
  v6 = *a2;
  *(_DWORD *)(a1 + 904) = *a2;
  *(_DWORD *)(a1 + 908) = a2[1];
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 4);
    if ( v7 )
      *(_DWORD *)(v6 + 4) = v7 + 1;
  }
  *(_DWORD *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 900) = &unk_9F6F08;
  *(_DWORD *)a1 = off_98B5FC;
  *(_DWORD *)(a1 + 920) = off_98B77C;
  *(_DWORD *)(a1 + 304) = off_98B760;
  *(_DWORD *)(a1 + 916) = a3;
  *(_DWORD *)(a1 + 900) = *(_DWORD *)a3;
  v8 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a2 + 36) + 32) + 12);
  switch ( v8 )
  {
    case 1:
      v14[1] = 1065353216;
      v14[2] = 0;
      v14[0] = 0;
      glitch::scene::CCameraSceneNode::setUpVector((_DWORD *)a1, v14);
      a3 = *(_DWORD *)(a1 + 916);
      break;
    case 0:
      v15[2] = 0;
      v15[1] = 0;
      v15[0] = 1065353216;
      glitch::scene::CCameraSceneNode::setUpVector((_DWORD *)a1, v15);
      a3 = *(_DWORD *)(a1 + 916);
      if ( *(_DWORD *)(a3 + 4) )
        goto LABEL_13;
      goto LABEL_10;
    case 2:
      v13[1] = 0;
      v13[2] = 1065353216;
      v13[0] = 0;
      glitch::scene::CCameraSceneNode::setUpVector((_DWORD *)a1, v13);
      a3 = *(_DWORD *)(a1 + 916);
      break;
  }
  if ( *(_DWORD *)(a3 + 4) )
  {
LABEL_13:
    v12 = *(_DWORD *)(a1 + 916);
    *(_BYTE *)(a1 + 308) = 1;
    glitch::scene::CCameraSceneNode::setAspectRatio((glitch::scene::CCameraSceneNode *)a1, *(float *)(v12 + 12));
    glitch::scene::CCameraSceneNode::setMAG(
      (glitch::scene::CCameraSceneNode *)a1,
      *(float *)(*(_DWORD *)(a1 + 916) + 8) / *(float *)(*(_DWORD *)(a1 + 916) + 12));
    goto LABEL_11;
  }
LABEL_10:
  v9 = tanf((float)(*(float *)(a3 + 8) * 0.017453) * 0.5) / *(float *)(a3 + 12);
  v10 = atanf(v9);
  glitch::scene::CCameraSceneNode::setFOV((glitch::scene::CCameraSceneNode *)a1, v10 + v10);
LABEL_11:
  glitch::scene::CCameraSceneNode::setNearValue(
    (glitch::scene::CCameraSceneNode *)a1,
    *(float *)(*(_DWORD *)(a1 + 916) + 16));
  glitch::scene::CCameraSceneNode::setFarValue(
    (glitch::scene::CCameraSceneNode *)a1,
    *(float *)(*(_DWORD *)(a1 + 916) + 20));
  return a1;
}


// ===== 6e57b0 glitch::collada::CCameraSceneNode::CCameraSceneNode(glitch::collada::CColladaDatabase const&,glitch::collada::SCamera &) =====
int __fastcall glitch::collada::CCameraSceneNode::CCameraSceneNode(int a1, int *a2, _DWORD *a3, int a4)
{
  int v8; // r2
  int v9; // r1
  int v10; // r3
  int v11; // r3
  float v12; // r0
  float v13; // r0
  int v15; // r3
  _DWORD v16[3]; // [sp+Ch] [bp-40h] BYREF
  _DWORD v17[3]; // [sp+18h] [bp-34h] BYREF
  _DWORD v18[3]; // [sp+24h] [bp-28h] BYREF
  _DWORD v19[3]; // [sp+30h] [bp-1Ch] BYREF
  _DWORD v20[4]; // [sp+3Ch] [bp-10h] BYREF

  v19[2] = 1120403456;
  v19[1] = 0;
  memset(v20, 0, 12);
  v19[0] = 0;
  glitch::scene::CCameraSceneNode::CCameraSceneNode(a1, a2 + 1, -1, (int)v20, v19, 0);
  v8 = *a3;
  *(_DWORD *)(a1 + 904) = *a3;
  *(_DWORD *)(a1 + 908) = a3[1];
  if ( v8 )
  {
    v9 = *(_DWORD *)(v8 + 4);
    if ( v9 )
      *(_DWORD *)(v8 + 4) = v9 + 1;
  }
  *(_DWORD *)(a1 + 900) = &unk_9F6F08;
  v10 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v10 - 28)) = a2[10];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[11];
  *(_DWORD *)(a1 + 304) = off_98B760;
  *(_DWORD *)(a1 + 912) = 0;
  *(_DWORD *)(a1 + 916) = a4;
  *(_DWORD *)(a1 + 900) = *(_DWORD *)a4;
  v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*a3 + 36) + 32) + 12);
  switch ( v11 )
  {
    case 1:
      v17[1] = 1065353216;
      v17[2] = 0;
      v17[0] = 0;
      glitch::scene::CCameraSceneNode::setUpVector((_DWORD *)a1, v17);
      a4 = *(_DWORD *)(a1 + 916);
      break;
    case 0:
      v18[2] = 0;
      v18[1] = 0;
      v18[0] = 1065353216;
      glitch::scene::CCameraSceneNode::setUpVector((_DWORD *)a1, v18);
      a4 = *(_DWORD *)(a1 + 916);
      if ( *(_DWORD *)(a4 + 4) )
        goto LABEL_13;
      goto LABEL_10;
    case 2:
      v16[1] = 0;
      v16[2] = 1065353216;
      v16[0] = 0;
      glitch::scene::CCameraSceneNode::setUpVector((_DWORD *)a1, v16);
      a4 = *(_DWORD *)(a1 + 916);
      break;
  }
  if ( *(_DWORD *)(a4 + 4) )
  {
LABEL_13:
    v15 = *(_DWORD *)(a1 + 916);
    *(_BYTE *)(a1 + 308) = 1;
    glitch::scene::CCameraSceneNode::setAspectRatio((glitch::scene::CCameraSceneNode *)a1, *(float *)(v15 + 12));
    glitch::scene::CCameraSceneNode::setMAG(
      (glitch::scene::CCameraSceneNode *)a1,
      *(float *)(*(_DWORD *)(a1 + 916) + 8) / *(float *)(*(_DWORD *)(a1 + 916) + 12));
    goto LABEL_11;
  }
LABEL_10:
  v12 = tanf((float)(*(float *)(a4 + 8) * 0.017453) * 0.5) / *(float *)(a4 + 12);
  v13 = atanf(v12);
  glitch::scene::CCameraSceneNode::setFOV((glitch::scene::CCameraSceneNode *)a1, v13 + v13);
LABEL_11:
  glitch::scene::CCameraSceneNode::setNearValue(
    (glitch::scene::CCameraSceneNode *)a1,
    *(float *)(*(_DWORD *)(a1 + 916) + 16));
  glitch::scene::CCameraSceneNode::setFarValue(
    (glitch::scene::CCameraSceneNode *)a1,
    *(float *)(*(_DWORD *)(a1 + 916) + 20));
  return a1;
}


// ===== 6e59ec `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode(
        glitch::collada::CCameraSceneNode *this)
{
  glitch::collada::CCameraSceneNode::~CCameraSceneNode((glitch::collada::CCameraSceneNode *)((char *)this
                                                                                           + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6e59fc `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode(
        glitch::collada::CCameraSceneNode *this)
{
  glitch::collada::CCameraSceneNode::~CCameraSceneNode((glitch::collada::CCameraSceneNode *)((char *)this
                                                                                           + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6e5a0c `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode(
        glitch::collada::CCameraSceneNode *this)
{
  glitch::collada::CCameraSceneNode::~CCameraSceneNode((glitch::collada::CCameraSceneNode *)((char *)this
                                                                                           + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6e5a1c `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCameraSceneNode::~CCameraSceneNode(
        glitch::collada::CCameraSceneNode *this)
{
  glitch::collada::CCameraSceneNode::~CCameraSceneNode((glitch::collada::CCameraSceneNode *)((char *)this
                                                                                           + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6e5a2c glitch::collada::CCoronasSceneNode::getType(void) =====
int __fastcall glitch::collada::CCoronasSceneNode::getType(glitch::collada::CCoronasSceneNode *this)
{
  return 1936618083;
}


// ===== 6e5a38 glitch::collada::CCoronasSceneNode::getBoundingBox(void) =====
char *__fastcall glitch::collada::CCoronasSceneNode::getBoundingBox(glitch::collada::CCoronasSceneNode *this)
{
  return (char *)this + 336;
}


// ===== 6e5a40 glitch::collada::CCoronasSceneNode::setSize(glitch::core::dimension2d<float> const&) =====
bool __fastcall glitch::collada::CCoronasSceneNode::setSize(int a1, _DWORD *a2)
{
  float v3; // r0
  _BOOL4 result; // r0

  *(_DWORD *)(a1 + 328) = *a2;
  v3 = *(float *)(a1 + 328);
  *(_DWORD *)(a1 + 332) = a2[1];
  if ( v3 == 0.0 )
    *(_DWORD *)(a1 + 328) = 1065353216;
  result = *(float *)(a1 + 332) == 0.0;
  if ( *(float *)(a1 + 332) == 0.0 )
    *(_DWORD *)(a1 + 332) = 1065353216;
  return result;
}


// ===== 6e5a90 glitch::collada::CCoronasSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::CCoronasSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Width", a1[82], 0);
  (*(void (__fastcall **)(int, char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(a2, "Height", a1[83], 0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 280))(a2, "VColor", a1[99], 0);
}


// ===== 6e5b0c glitch::collada::CCoronasSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::collada::CCoronasSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  a1[82] = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 112))(a2, "Width");
  a1[83] = (*(int (__fastcall **)(int, char *))(*(_DWORD *)a2 + 112))(a2, "Height");
  a1[99] = (*(int (__fastcall **)(int, const char *))(*(_DWORD *)a2 + 292))(a2, "VColor");
  return (*(int (__fastcall **)(_DWORD *, _DWORD *))(*a1 + 244))(a1, a1 + 82);
}


// ===== 6e5ba8 `global constructor keyed to'.._source_glitch_collada_CColladaCoronasSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_collada_CColladaCoronasSceneNode.cpp()
{
  dword_9F83A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83A4 = 1056964608;
}


// ===== 6e5bc8 glitch::collada::CCoronasSceneNode::isBlocked(void) =====
int __fastcall glitch::collada::CCoronasSceneNode::isBlocked(glitch::collada::CCoronasSceneNode *this)
{
  int result; // r0
  _DWORD v3[6]; // [sp+0h] [bp-30h] BYREF
  _DWORD v4[3]; // [sp+18h] [bp-18h] BYREF
  _DWORD v5[3]; // [sp+24h] [bp-Ch] BYREF

  result = *((_DWORD *)this + 76);
  if ( result )
  {
    glitch::scene::ISceneNode::getAbsolutePosition(v5, *(_DWORD **)(*((_DWORD *)this + 68) + 228));
    glitch::scene::ISceneNode::getAbsolutePosition(v4, this);
    v3[0] = v4[0];
    v3[1] = v4[1];
    v3[2] = v4[2];
    v3[3] = v5[0];
    v3[4] = v5[1];
    v3[5] = v5[2];
    return (*((int (__fastcall **)(_DWORD *))this + 76))(v3);
  }
  return result;
}


// ===== 6e5c40 glitch::collada::CCoronasSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::collada::CCoronasSceneNode::onRegisterSceneNode(glitch::collada::CCoronasSceneNode *this)
{
  if ( !glitch::collada::CCoronasSceneNode::isBlocked(this) )
    (*(void (__fastcall **)(_DWORD, glitch::collada::CCoronasSceneNode *, char *, int, int, _DWORD, int))(**((_DWORD **)this + 68) + 36))(
      *((_DWORD *)this + 68),
      this,
      (char *)this + 360,
      1,
      3,
      0,
      0x7FFFFFFF);
  return 1;
}


// ===== 6e5c98 glitch::core::float2stringc(float) =====
glitch::core *__fastcall glitch::core::float2stringc(glitch::core *this, int a2)
{
  char *v4; // r5
  size_t v5; // r0
  void *v6; // r1

  v4 = (char *)glitch::core::allocProcessBuffer((glitch::core *)((char *)&dword_20 + 1), a2);
  snprintf(v4, 0x20u, "%f", *(float *)&a2);
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  v5 = LC_API_STRLEN_0(v4);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    this,
    v4,
    &v4[v5]);
  if ( v4 )
    glitch::core::releaseProcessBuffer((glitch::core *)v4, v6);
  return this;
}


// ===== 6e5d14 glitch::collada::CCoronasSceneNode::render(void *) =====
void __fastcall glitch::collada::CCoronasSceneNode::render(glitch::collada::CCoronasSceneNode *this, void *a2)
{
  int v2; // r3
  _DWORD *v4; // r11
  int v5; // r5
  bool v6; // zf
  int v7; // r3
  float *v8; // r7
  float *v9; // r8
  float *v10; // r0
  float v11; // r10
  float v12; // r3
  float v13; // r2
  float v14; // r1
  float v15; // r11
  float v16; // r0
  float v17; // r11
  float v18; // r0
  float *v19; // r0
  float v20; // r11
  float *v21; // r10
  float v22; // r11
  float v23; // r0
  float *v24; // r0
  float v25; // r11
  float v26; // r11
  float v27; // r10
  float v28; // r8
  float v29; // r7
  float v30; // r11
  float v31; // r10
  float v32; // r0
  float v33; // r0
  int v34; // r8
  float v35; // r10
  float v36; // r8
  float v37; // r7
  int v38; // r7
  glitch::video::CMaterial *v39; // r0
  int Technique; // r2
  void (__fastcall *v41)(int, glitch::video::CVertexStreams **, glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted **); // r12
  glitch::video::CVertexStreams *v42; // r4
  float v43; // [sp+Ch] [bp-200h]
  float v44; // [sp+10h] [bp-1FCh]
  float v45; // [sp+10h] [bp-1FCh]
  float v46; // [sp+18h] [bp-1F4h]
  float v47; // [sp+18h] [bp-1F4h]
  float v48; // [sp+18h] [bp-1F4h]
  int v49; // [sp+1Ch] [bp-1F0h]
  float v50; // [sp+20h] [bp-1ECh]
  float v51; // [sp+24h] [bp-1E8h]
  float v52; // [sp+28h] [bp-1E4h]
  float v53; // [sp+28h] [bp-1E4h]
  float v54; // [sp+2Ch] [bp-1E0h]
  float v55; // [sp+30h] [bp-1DCh]
  float v56; // [sp+34h] [bp-1D8h]
  float v57; // [sp+3Ch] [bp-1D0h]
  float v58; // [sp+40h] [bp-1CCh]
  float v59; // [sp+44h] [bp-1C8h]
  float v60; // [sp+48h] [bp-1C4h]
  float v61; // [sp+4Ch] [bp-1C0h]
  float v62; // [sp+50h] [bp-1BCh]
  float v63; // [sp+54h] [bp-1B8h]
  float v65; // [sp+74h] [bp-198h]
  float v66; // [sp+78h] [bp-194h]
  float v67; // [sp+7Ch] [bp-190h]
  float v68; // [sp+84h] [bp-188h] BYREF
  float v69; // [sp+88h] [bp-184h]
  float v70; // [sp+8Ch] [bp-180h]
  float v71; // [sp+94h] [bp-178h]
  float v72; // [sp+98h] [bp-174h]
  float v73; // [sp+9Ch] [bp-170h]
  float v74; // [sp+A4h] [bp-168h]
  float v75; // [sp+A8h] [bp-164h]
  float v76; // [sp+ACh] [bp-160h]
  float v77; // [sp+B4h] [bp-158h]
  float v78; // [sp+B8h] [bp-154h]
  float v79; // [sp+BCh] [bp-150h]
  int v80; // [sp+C0h] [bp-14Ch]
  char v81; // [sp+C4h] [bp-148h]
  float v82; // [sp+C8h] [bp-144h] BYREF
  float v83; // [sp+CCh] [bp-140h]
  float v84; // [sp+D0h] [bp-13Ch]
  float v85; // [sp+D8h] [bp-134h]
  float v86; // [sp+DCh] [bp-130h]
  float v87; // [sp+E0h] [bp-12Ch]
  float v88; // [sp+E8h] [bp-124h]
  float v89; // [sp+ECh] [bp-120h]
  float v90; // [sp+F0h] [bp-11Ch]
  float v91; // [sp+F8h] [bp-114h]
  float v92; // [sp+FCh] [bp-110h]
  float v93; // [sp+100h] [bp-10Ch]
  int v94; // [sp+104h] [bp-108h]
  char v95; // [sp+108h] [bp-104h]
  float v96; // [sp+10Ch] [bp-100h] BYREF
  float v97; // [sp+110h] [bp-FCh]
  float v98; // [sp+114h] [bp-F8h]
  float v99; // [sp+11Ch] [bp-F0h]
  float v100; // [sp+120h] [bp-ECh]
  float v101; // [sp+124h] [bp-E8h]
  float v102; // [sp+12Ch] [bp-E0h]
  float v103; // [sp+130h] [bp-DCh]
  float v104; // [sp+134h] [bp-D8h]
  float v105; // [sp+13Ch] [bp-D0h]
  float v106; // [sp+140h] [bp-CCh]
  float v107; // [sp+144h] [bp-C8h]
  int v108; // [sp+148h] [bp-C4h]
  char v109; // [sp+14Ch] [bp-C0h]
  glitch::IReferenceCounted *v110[5]; // [sp+150h] [bp-BCh] BYREF
  __int16 v111; // [sp+164h] [bp-A8h]
  __int16 v112; // [sp+166h] [bp-A6h]
  float v113[4]; // [sp+168h] [bp-A4h] BYREF
  float v114; // [sp+178h] [bp-94h] BYREF
  float v115; // [sp+17Ch] [bp-90h]
  float v116; // [sp+180h] [bp-8Ch]
  float v117; // [sp+184h] [bp-88h] BYREF
  float v118; // [sp+188h] [bp-84h]
  float v119; // [sp+18Ch] [bp-80h]
  float v120[3]; // [sp+190h] [bp-7Ch] BYREF
  float v121[3]; // [sp+19Ch] [bp-70h] BYREF
  float v122; // [sp+1A8h] [bp-64h] BYREF
  float v123; // [sp+1ACh] [bp-60h]
  float v124; // [sp+1B0h] [bp-5Ch]
  float v125; // [sp+1B4h] [bp-58h] BYREF
  float v126; // [sp+1B8h] [bp-54h]
  float v127; // [sp+1BCh] [bp-50h]
  float v128; // [sp+1C0h] [bp-4Ch] BYREF
  float v129; // [sp+1C4h] [bp-48h]
  float v130; // [sp+1C8h] [bp-44h]
  glitch::IReferenceCounted *v131; // [sp+1CCh] [bp-40h] BYREF
  glitch::video::CVertexStreams *v132; // [sp+1D0h] [bp-3Ch] BYREF
  _BYTE v133[16]; // [sp+1D4h] [bp-38h] BYREF
  _BYTE *v134; // [sp+1E4h] [bp-28h]
  void *p; // [sp+1E8h] [bp-24h]
  _DWORD v136[4]; // [sp+1ECh] [bp-20h] BYREF
  _BYTE *v137; // [sp+1FCh] [bp-10h]
  void *v138; // [sp+200h] [bp-Ch]

  v2 = *((_DWORD *)this + 68);
  v4 = *(_DWORD **)(v2 + 228);
  v5 = *(_DWORD *)(v2 + 20);
  v6 = v4 == nullptr;
  if ( v4 )
    v6 = v5 == 0;
  v7 = v6;
  v49 = v7;
  if ( !v6 )
  {
    v8 = (float *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 112))(v5, 2);
    v9 = (float *)(*(int (__fastcall **)(int, int))(*(_DWORD *)v5 + 112))(v5, v49);
    LC_API_MEMSET_0(&v96, v49, 0x40u);
    v109 = 1;
    v96 = 1.0;
    v100 = 1.0;
    v104 = 1.0;
    v108 = 1065353216;
    glitch::core::CMatrix4<float>::getInverse(v8, &v96);
    LC_API_MEMSET_0(&v82, v49, 0x40u);
    v95 = 1;
    v82 = 1.0;
    v86 = 1.0;
    v90 = 1.0;
    v94 = 1065353216;
    glitch::core::CMatrix4<float>::getInverse(v9, &v82);
    glitch::scene::ISceneNode::getAbsolutePosition(&v128, this);
    glitch::scene::ISceneNode::getAbsolutePosition(&v125, v4);
    v10 = (float *)(*(int (__fastcall **)(_DWORD *))(*v4 + 264))(v4);
    v11 = v10[2];
    v44 = v126 - v10[1];
    v122 = v125 - *v10;
    v123 = v44;
    v124 = v127 - v11;
    glitch::core::vector3d<float>::normalize(&v122);
    v12 = v124;
    v13 = v123;
    v14 = v122;
    *((float *)this + 125) = v124;
    *((float *)this + 98) = v12;
    *((float *)this + 107) = v12;
    *((float *)this + 116) = v12;
    *((float *)this + 124) = v13;
    *((float *)this + 97) = v13;
    *((float *)this + 106) = v13;
    *((float *)this + 115) = v13;
    *((float *)this + 123) = v14;
    *((float *)this + 96) = v14;
    *((float *)this + 105) = v14;
    *((float *)this + 114) = v14;
    v15 = (float)((float)((float)(v96 * 0.0) + (float)(v99 * 0.0)) + (float)(v102 * 0.0)) + v105;
    v16 = (float)((float)((float)(v97 * 0.0) + (float)(v100 * 0.0)) + (float)(v103 * 0.0)) + v106;
    v46 = (float)((float)((float)(v98 * 0.0) + (float)(v101 * 0.0)) + (float)(v104 * 0.0)) + v107;
    v65 = (float)((float)((float)(v15 * v82) + (float)(v16 * v85)) + (float)(v46 * v88)) + v91;
    v66 = (float)((float)((float)(v15 * v83) + (float)(v16 * v86)) + (float)(v46 * v89)) + v92;
    v67 = (float)((float)((float)(v15 * v84) + (float)(v16 * v87)) + (float)(v46 * v90)) + v93;
    v17 = v105 + (float)((float)(v102 * 0.0) + (float)(v96 + (float)(v99 * 0.0)));
    v18 = v106 + (float)((float)(v103 * 0.0) + (float)(v97 + (float)(v100 * 0.0)));
    v47 = v107 + (float)((float)(v104 * 0.0) + (float)(v98 + (float)(v101 * 0.0)));
    v121[0] = (float)(v91 + (float)((float)((float)(v82 * v17) + (float)(v85 * v18)) + (float)(v88 * v47))) - v65;
    v121[1] = (float)(v92 + (float)((float)((float)(v83 * v17) + (float)(v86 * v18)) + (float)(v89 * v47))) - v66;
    v121[2] = (float)(v93 + (float)((float)((float)(v84 * v17) + (float)(v87 * v18)) + (float)(v90 * v47))) - v67;
    v19 = glitch::core::vector3d<float>::normalize(v121);
    v20 = *((float *)this + 82);
    v21 = v19;
    v50 = (float)(v20 * *v19) + (float)(v20 * *v19);
    v51 = (float)(v20 * v21[1]) + (float)(v20 * v21[1]);
    v52 = (float)(v20 * v21[2]) + (float)(v20 * v21[2]);
    v22 = (float)((float)((float)(v96 * 0.0) + v99) + (float)(v102 * 0.0)) + v105;
    v23 = (float)((float)((float)(v97 * 0.0) + v100) + (float)(v103 * 0.0)) + v106;
    v48 = (float)((float)((float)(v98 * 0.0) + v101) + (float)(v104 * 0.0)) + v107;
    v120[0] = (float)((float)((float)((float)(v22 * v82) + (float)(v23 * v85)) + (float)(v48 * v88)) + v91) - v65;
    v120[1] = (float)((float)((float)((float)(v22 * v83) + (float)(v23 * v86)) + (float)(v48 * v89)) + v92) - v66;
    v120[2] = (float)((float)((float)((float)(v22 * v84) + (float)(v23 * v87)) + (float)(v48 * v90)) + v93) - v67;
    v24 = glitch::core::vector3d<float>::normalize(v120);
    v25 = *((float *)this + 83);
    v57 = (float)(v25 * *v24) + (float)(v25 * *v24);
    v58 = (float)(v25 * v24[1]) + (float)(v25 * v24[1]);
    v59 = (float)(v25 * v24[2]) + (float)(v25 * v24[2]);
    v54 = (float)((float)((float)(v128 * *v9) + (float)(v129 * v9[4])) + (float)(v130 * v9[8])) + v9[12];
    v55 = (float)((float)((float)(v128 * v9[1]) + (float)(v129 * v9[5])) + (float)(v130 * v9[9])) + v9[13];
    v26 = (float)((float)((float)(v128 * v9[2]) + (float)(v129 * v9[6])) + (float)(v130 * v9[10])) + v9[14];
    v45 = (float)((float)((float)(v54 * v8[2]) + (float)(v55 * v8[6])) + (float)(v26 * v8[10])) + v8[14];
    v27 = 1.0 / v45;
    v28 = (float)(v27
                * (float)((float)((float)((float)(v54 * *v8) + (float)(v55 * v8[4])) + (float)(v26 * v8[8])) + v8[12]))
        + (float)(v27
                * (float)((float)((float)((float)(v54 * *v8) + (float)(v55 * v8[4])) + (float)(v26 * v8[8])) + v8[12]));
    v43 = (float)(v54 * v8[1]) + (float)(v55 * v8[5]);
    v29 = (float)(v27 * (float)((float)(v43 + (float)(v26 * v8[9])) + v8[13]))
        + (float)(v27 * (float)((float)(v43 + (float)(v26 * v8[9])) + v8[13]));
    v128 = v28;
    v129 = v29;
    v130 = (float)(v27 * v45) + (float)(v27 * v45);
    v30 = (float)((float)((float)(v28 * v96) + (float)(v29 * v99)) + (float)(v102 * 0.0)) + v105;
    v31 = (float)((float)((float)(v28 * v97) + (float)(v29 * v100)) + (float)(v103 * 0.0)) + v106;
    v32 = (float)((float)((float)(v28 * v98) + (float)(v29 * v101)) + (float)(v104 * 0.0)) + v107;
    v60 = (float)((float)((float)((float)(v30 * v82) + (float)(v31 * v85)) + (float)(v32 * v88)) + v91) - v122;
    v61 = (float)((float)((float)((float)(v30 * v83) + (float)(v31 * v86)) + (float)(v32 * v89)) + v92) - v123;
    v62 = (float)((float)((float)((float)(v30 * v84) + (float)(v31 * v87)) + (float)(v32 * v90)) + v93) - v124;
    LC_API_MEMSET_0(&v68, v49, 0x40u);
    v81 = 1;
    v80 = 1065353216;
    v68 = 1.0;
    v72 = 1.0;
    v76 = 1.0;
    glitch::scene::ISceneNode::getAbsolutePosition(&v117, this);
    v33 = sqrt((float)((float)((float)((float)(v117 - v125) * (float)(v117 - v125))
                             + (float)((float)(v118 - v126) * (float)(v118 - v126)))
                     + (float)((float)(v119 - v127) * (float)(v119 - v127))));
    *(float *)&v34 = (float)((float)((float)(v33 / 50.0) * 3.1416) * *((float *)this + 77)) + *((float *)this + 78);
    v114 = v122;
    v115 = v123;
    v116 = v124;
    if ( *(float *)&v34 < 0.0 )
    {
      LODWORD(v114) = LODWORD(v122) + 0x80000000;
      LODWORD(v115) = LODWORD(v123) + 0x80000000;
      LODWORD(v116) = LODWORD(v124) + 0x80000000;
    }
    v137 = v136;
    v138 = v136;
    std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
      v136,
      0x10u);
    *v137 = 0;
    glitch::core::float2stringc((glitch::core *)v133, v34);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
      v136,
      p,
      v134);
    if ( p != v133 && p )
      GlitchFree(p);
    std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_append(
      v136,
      "\n",
      "");
    glitch::os::Printer::log((int)v138, 1);
    v113[3] = 1.0;
    memset(v113, 0, 12);
    glitch::core::quaternion::fromAngleAxis(v113, *(float *)&v34, &v114);
    glitch::core::quaternion::getMatrix(v113, (int)&v68);
    v56 = (float)((float)((float)(v50 * v68) + (float)(v51 * v71)) + (float)(v52 * v74)) + v77;
    v63 = (float)((float)((float)(v50 * v69) + (float)(v51 * v72)) + (float)(v52 * v75)) + v78;
    v53 = (float)((float)((float)(v50 * v70) + (float)(v51 * v73)) + (float)(v52 * v76)) + v79;
    v35 = v77 + (float)((float)((float)(v57 * v68) + (float)(v58 * v71)) + (float)(v59 * v74));
    v36 = v78 + (float)((float)((float)(v57 * v69) + (float)(v58 * v72)) + (float)(v59 * v75));
    v37 = v79 + (float)((float)((float)(v57 * v70) + (float)(v58 * v73)) + (float)(v59 * v76));
    *((float *)this + 91) = (float)(v60 + v56) - v35;
    *((float *)this + 92) = (float)(v61 + v63) - v36;
    *((float *)this + 93) = (float)(v62 + v53) - v37;
    *((float *)this + 100) = (float)(v60 + v56) + v35;
    *((float *)this + 101) = (float)(v61 + v63) + v36;
    *((float *)this + 102) = (float)(v62 + v53) + v37;
    *((float *)this + 109) = (float)(v60 - v56) - v35;
    *((float *)this + 110) = (float)(v61 - v63) - v36;
    *((float *)this + 111) = (float)(v62 - v53) - v37;
    *((float *)this + 118) = (float)(v60 - v56) + v35;
    *((float *)this + 119) = (float)(v61 - v63) + v36;
    *((float *)this + 120) = (float)(v62 - v53) + v37;
    if ( a2 )
    {
      v38 = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 256))(v5);
      (*(void (__fastcall **)(int, int, int *))(*(_DWORD *)v5 + 108))(v5, 1, glitch::core::IdentityMatrix);
      v39 = *((glitch::video::CMaterial **)this + 90);
      if ( v39 )
        Technique = glitch::video::CMaterial::getTechnique(v39);
      else
        Technique = 255;
      glitch::video::IVideoDriver::setMaterial(v5, (glitch::video::CMaterial **)this + 90, Technique, 0);
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 260))(v5, 7);
      v132 = *((glitch::video::CVertexStreams **)this + 127);
      if ( v132 )
        ++*(_DWORD *)v132;
      v112 = 4;
      v110[0] = nullptr;
      v110[1] = nullptr;
      v110[2] = (glitch::IReferenceCounted *)byte_4;
      v110[3] = nullptr;
      v110[4] = (glitch::IReferenceCounted *)byte_4;
      v111 = 255;
      v41 = *(void (__fastcall **)(int, glitch::video::CVertexStreams **, glitch::IReferenceCounted **, _DWORD, glitch::IReferenceCounted **))(*(_DWORD *)v5 + 88);
      v131 = nullptr;
      v41(v5, &v132, v110, 0, &v131);
      if ( v131 )
        glitch::IReferenceCounted::drop(v131);
      if ( v110[0] )
        glitch::IReferenceCounted::drop(v110[0]);
      v42 = v132;
      if ( v132 )
      {
        v6 = (*(_DWORD *)v132)-- == 1;
        if ( v6 )
        {
          glitch::video::CVertexStreams::~CVertexStreams(v42);
          LC_API_FREE_0(v42);
        }
      }
      (*(void (__fastcall **)(int, int))(*(_DWORD *)v5 + 260))(v5, v38);
    }
    if ( v138 != v136 )
    {
      if ( v138 )
        GlitchFree(v138);
    }
  }
}


// ===== 6e703c glitch::collada::CCoronasSceneNode::~CCoronasSceneNode() =====
void __fastcall glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(glitch::collada::CCoronasSceneNode *this)
{
  glitch::video::CVertexStreams *v1; // r6

  v1 = *((glitch::video::CVertexStreams **)this + 127);
  *(_DWORD *)this = off_98BC6C;
  *((_DWORD *)this + 129) = off_98BD74;
  if ( v1 )
  {
    if ( (*(_DWORD *)v1)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v1);
      LC_API_FREE_0(v1);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 90);
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_98BD84);
}


// ===== 6e70c8 glitch::collada::CCoronasSceneNode::~CCoronasSceneNode() =====
void __fastcall glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(glitch::collada::CCoronasSceneNode *this)
{
  glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6e70e4 glitch::collada::CCoronasSceneNode::~CCoronasSceneNode() =====
void __fastcall glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(
        glitch::collada::CCoronasSceneNode *this,
        int *a2)
{
  int v2; // r3
  glitch::video::CVertexStreams *v5; // r6

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[5];
  v5 = *((glitch::video::CVertexStreams **)this + 127);
  if ( v5 )
  {
    if ( (*(_DWORD *)v5)-- == 1 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v5);
      LC_API_FREE_0(v5);
    }
  }
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr((glitch::video::CMaterial **)this + 90);
  glitch::scene::ISceneNode::~ISceneNode(this, a2 + 1);
}


// ===== 6e7164 glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::video::IVideoDriver *,int,glitch::core::vector3d<float> const&,boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::dimension2d<float> const&,glitch::video::SColor) =====
_DWORD *__fastcall glitch::collada::CCoronasSceneNode::CCoronasSceneNode(
        _DWORD *a1,
        int a2,
        int a3,
        int a4,
        glitch::video::CMaterial **a5,
        _DWORD *a6,
        int a7)
{
  _DWORD *v8; // r3
  glitch::video::CVertexStreams *v9; // r3
  glitch::video::CVertexStreams *v10; // r5
  bool v11; // zf
  glitch::video::CVertexStreams *v12; // r5
  glitch::video::CMaterial *v13; // r3
  glitch::video::CMaterial *v14; // r2
  glitch::IReferenceCounted *v15; // r0
  _DWORD v18[4]; // [sp+18h] [bp-3Ch] BYREF
  _DWORD v19[3]; // [sp+28h] [bp-2Ch] BYREF
  _DWORD v20[3]; // [sp+34h] [bp-20h] BYREF
  glitch::video::CMaterial *v21; // [sp+40h] [bp-14h] BYREF
  glitch::video::CMaterial *v22; // [sp+44h] [bp-10h] BYREF
  glitch::IReferenceCounted *v23; // [sp+48h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v24; // [sp+4Ch] [bp-8h] BYREF

  a1[130] = 1;
  *a1 = off_98BEDC;
  a1[129] = off_95B720;
  *(int *)((char *)&elf_hash_bucket[74] + (_DWORD)a1) = (int)off_98BEFC;
  memset(v20, 0, sizeof(v20));
  memset(v18, 0, 12);
  v18[3] = 1065353216;
  v19[0] = 1065353216;
  v19[1] = 1065353216;
  v19[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode((int)a1, (int *)off_98BD84, -1, v20, v18, v19);
  a1[86] = -1082130432;
  a1[84] = -1082130432;
  *a1 = off_98BC6C;
  a1[90] = 0;
  a1[85] = -1082130432;
  a1[129] = off_98BD74;
  a1[89] = 1065353216;
  a1[82] = 0;
  a1[83] = 0;
  a1[87] = 1065353216;
  a1[88] = 1065353216;
  v8 = a1 + 91;
  do
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v8[5] = 0;
    v8[6] = 0;
    v8[7] = 0;
    v8 += 9;
  }
  while ( v8 != a1 + 127 );
  a1[127] = 0;
  a1[82] = *a6;
  a1[83] = a6[1];
  glitch::video::CVertexStreams::allocate(&v24, 1u, 0x60000u);
  v9 = v24;
  if ( v24 )
    ++*(_DWORD *)v24;
  v10 = (glitch::video::CVertexStreams *)a1[127];
  a1[127] = v9;
  if ( v10 )
  {
    v11 = (*(_DWORD *)v10)-- == 1;
    if ( v11 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v10);
      LC_API_FREE_0(v10);
    }
  }
  v12 = v24;
  if ( v24 )
  {
    v11 = (*(_DWORD *)v24)-- == 1;
    if ( v11 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v12);
      LC_API_FREE_0(v12);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, _DWORD *, _DWORD))(*(_DWORD *)a2 + 120))(
    &v23,
    a2,
    0,
    4,
    144,
    a1 + 91,
    0);
  glitch::video::CVertexStreams::setupStreams(a1[127], &v23, -1);
  *(_DWORD *)(a1[127] + 8) = 4;
  a1[126] = a7;
  a1[121] = 0;
  a1[122] = 1065353216;
  a1[99] = a7;
  a1[94] = 1065353216;
  a1[95] = 1065353216;
  a1[108] = a7;
  a1[103] = 1065353216;
  a1[104] = 0;
  a1[117] = a7;
  a1[112] = 0;
  a1[113] = 0;
  v13 = *a5;
  v22 = *a5;
  if ( v22 )
  {
    ++*(_DWORD *)v13;
    v13 = v22;
    v21 = v22;
    if ( v22 )
    {
      ++*(_DWORD *)v22;
      v13 = v21;
    }
  }
  v14 = (glitch::video::CMaterial *)a1[90];
  a1[90] = v13;
  v21 = v14;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v21);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v22);
  v15 = v23;
  a1[76] = 0;
  if ( v15 )
    glitch::IReferenceCounted::drop(v15);
  return a1;
}


// ===== 6e7488 glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::video::IVideoDriver *,int,glitch::core::vector3d<float> const&,boost::intrusive_ptr<glitch::video::CMaterial>,glitch::core::dimension2d<float> const&,glitch::video::SColor) =====
int *__fastcall glitch::collada::CCoronasSceneNode::CCoronasSceneNode(
        int *a1,
        int *a2,
        int a3,
        int a4,
        int a5,
        glitch::video::CMaterial **a6,
        int *a7,
        int a8)
{
  int v10; // r3
  int *v11; // r3
  glitch::video::CVertexStreams *v12; // r3
  glitch::video::CVertexStreams *v13; // r5
  bool v14; // zf
  glitch::video::CVertexStreams *v15; // r5
  glitch::video::CMaterial *v16; // r3
  glitch::video::CMaterial *v17; // r2
  glitch::IReferenceCounted *v18; // r0
  _DWORD v21[4]; // [sp+20h] [bp-3Ch] BYREF
  _DWORD v22[3]; // [sp+30h] [bp-2Ch] BYREF
  _DWORD v23[3]; // [sp+3Ch] [bp-20h] BYREF
  glitch::video::CMaterial *v24; // [sp+48h] [bp-14h] BYREF
  glitch::video::CMaterial *v25; // [sp+4Ch] [bp-10h] BYREF
  glitch::IReferenceCounted *v26; // [sp+50h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v27; // [sp+54h] [bp-8h] BYREF

  memset(v23, 0, sizeof(v23));
  memset(v21, 0, 12);
  v21[3] = 1065353216;
  v22[0] = 1065353216;
  v22[1] = 1065353216;
  v22[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode((int)a1, a2 + 1, -1, v23, v21, v22);
  v10 = *a2;
  *a1 = *a2;
  *(int *)((char *)a1 + *(_DWORD *)(v10 - 28)) = a2[4];
  v11 = a1 + 91;
  *(int *)((char *)a1 + *(_DWORD *)(*a1 - 12)) = a2[5];
  a1[86] = -1082130432;
  a1[89] = 1065353216;
  a1[90] = 0;
  a1[82] = 0;
  a1[83] = 0;
  a1[84] = -1082130432;
  a1[85] = -1082130432;
  a1[87] = 1065353216;
  a1[88] = 1065353216;
  do
  {
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = 0;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = 0;
    v11 += 9;
  }
  while ( v11 != a1 + 127 );
  a1[127] = 0;
  a1[82] = *a7;
  a1[83] = a7[1];
  glitch::video::CVertexStreams::allocate(&v27, 1u, 0x60000u);
  v12 = v27;
  if ( v27 )
    ++*(_DWORD *)v27;
  v13 = (glitch::video::CVertexStreams *)a1[127];
  a1[127] = (int)v12;
  if ( v13 )
  {
    v14 = (*(_DWORD *)v13)-- == 1;
    if ( v14 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v13);
      LC_API_FREE_0(v13);
    }
  }
  v15 = v27;
  if ( v27 )
  {
    v14 = (*(_DWORD *)v27)-- == 1;
    if ( v14 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v15);
      LC_API_FREE_0(v15);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, int *, _DWORD))(*(_DWORD *)a3 + 120))(
    &v26,
    a3,
    0,
    4,
    144,
    a1 + 91,
    0);
  glitch::video::CVertexStreams::setupStreams(a1[127], &v26, -1);
  *(_DWORD *)(a1[127] + 8) = 4;
  a1[126] = a8;
  a1[121] = 0;
  a1[122] = 1065353216;
  a1[99] = a8;
  a1[94] = 1065353216;
  a1[95] = 1065353216;
  a1[108] = a8;
  a1[103] = 1065353216;
  a1[104] = 0;
  a1[117] = a8;
  a1[112] = 0;
  a1[113] = 0;
  v16 = *a6;
  v25 = *a6;
  if ( v25 )
  {
    ++*(_DWORD *)v16;
    v16 = v25;
    v24 = v25;
    if ( v25 )
    {
      ++*(_DWORD *)v25;
      v16 = v24;
    }
  }
  v17 = (glitch::video::CMaterial *)a1[90];
  a1[90] = (int)v16;
  v24 = v17;
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v24);
  boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v25);
  v18 = v26;
  a1[76] = 0;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  return a1;
}


// ===== 6e7778 glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SCoronas &,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CCoronasSceneNode::CCoronasSceneNode(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD *v8; // r3
  int v9; // r12
  int v10; // r2
  glitch::video::CVertexStreams *v11; // r3
  glitch::video::CVertexStreams *v12; // r5
  bool v13; // zf
  glitch::video::CVertexStreams *v14; // r5
  glitch::IReferenceCounted *v15; // r0
  _DWORD v17[4]; // [sp+10h] [bp-34h] BYREF
  _DWORD v18[3]; // [sp+20h] [bp-24h] BYREF
  glitch::IReferenceCounted *v19[3]; // [sp+2Ch] [bp-18h] BYREF
  glitch::IReferenceCounted *v20; // [sp+38h] [bp-Ch] BYREF
  glitch::video::CVertexStreams *v21; // [sp+3Ch] [bp-8h] BYREF

  *(_DWORD *)(a1 + 520) = 1;
  *(_DWORD *)a1 = off_98BEDC;
  *(_DWORD *)(a1 + 516) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[74] + a1) = (int)off_98BEFC;
  memset(v19, 0, sizeof(v19));
  memset(v17, 0, 12);
  v17[3] = 1065353216;
  v18[0] = 1065353216;
  v18[1] = 1065353216;
  v18[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, (int *)off_98BD84, -1, v19, v17, v18);
  *(_DWORD *)a1 = off_98BC6C;
  *(_DWORD *)(a1 + 516) = off_98BD74;
  v8 = (_DWORD *)(a1 + 364);
  *(_DWORD *)(a1 + 308) = *(_DWORD *)(a4 + 16);
  *(_DWORD *)(a1 + 312) = *(_DWORD *)(a4 + 20);
  *(_DWORD *)(a1 + 316) = *(_DWORD *)(a4 + 24);
  v9 = *(_DWORD *)(a4 + 28);
  *(_DWORD *)(a1 + 344) = -1082130432;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 320) = v9;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = -1082130432;
  *(_DWORD *)(a1 + 340) = -1082130432;
  *(_DWORD *)(a1 + 348) = 1065353216;
  *(_DWORD *)(a1 + 352) = 1065353216;
  do
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v8[5] = 0;
    v8[6] = 0;
    v8[7] = 0;
    v8 += 9;
  }
  while ( v8 != (_DWORD *)(a1 + 508) );
  *(_DWORD *)(a1 + 508) = 0;
  *(_DWORD *)(a1 + 512) = a5;
  glitch::scene::ISceneNode::setName((glitch::scene::ISceneNode *)a1, *(char **)(a4 + 4));
  v10 = *(unsigned __int8 *)(a4 + 32);
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_BYTE *)(a1 + 324) = v10 != 0;
  *(_DWORD *)(a1 + 332) = 1065353216;
  *(_DWORD *)(a1 + 328) = *(_DWORD *)(a4 + 8);
  *(_DWORD *)(a1 + 332) = *(_DWORD *)(a4 + 12);
  glitch::video::CVertexStreams::allocate(&v21, 1u, 0x60000u);
  v11 = v21;
  if ( v21 )
    ++*(_DWORD *)v21;
  v12 = *(glitch::video::CVertexStreams **)(a1 + 508);
  *(_DWORD *)(a1 + 508) = v11;
  if ( v12 )
  {
    v13 = (*(_DWORD *)v12)-- == 1;
    if ( v13 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v12);
      LC_API_FREE_0(v12);
    }
  }
  v14 = v21;
  if ( v21 )
  {
    v13 = (*(_DWORD *)v21)-- == 1;
    if ( v13 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v14);
      LC_API_FREE_0(v14);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, int, _DWORD))(*(_DWORD *)a3 + 120))(
    &v20,
    a3,
    0,
    4,
    144,
    a1 + 364,
    0);
  glitch::video::CVertexStreams::setupStreams(*(_DWORD *)(a1 + 508), &v20, -1);
  *(_DWORD *)(*(_DWORD *)(a1 + 508) + 8) = 4;
  v15 = v20;
  v13 = v20 == nullptr;
  *(_DWORD *)(a1 + 452) = 1065353216;
  *(_BYTE *)(a1 + 504) = -1;
  *(_DWORD *)(a1 + 488) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_BYTE *)(a1 + 399) = -1;
  *(_BYTE *)(a1 + 398) = -1;
  *(_BYTE *)(a1 + 397) = -1;
  *(_BYTE *)(a1 + 396) = -1;
  *(_DWORD *)(a1 + 376) = 1065353216;
  *(_DWORD *)(a1 + 380) = 1065353216;
  *(_BYTE *)(a1 + 435) = -1;
  *(_BYTE *)(a1 + 434) = -1;
  *(_BYTE *)(a1 + 433) = -1;
  *(_BYTE *)(a1 + 432) = -1;
  *(_DWORD *)(a1 + 412) = 1065353216;
  *(_DWORD *)(a1 + 416) = 0;
  *(_BYTE *)(a1 + 471) = -1;
  *(_BYTE *)(a1 + 470) = -1;
  *(_BYTE *)(a1 + 469) = -1;
  *(_BYTE *)(a1 + 468) = -1;
  *(_DWORD *)(a1 + 448) = 0;
  *(_BYTE *)(a1 + 507) = -1;
  *(_BYTE *)(a1 + 506) = -1;
  *(_BYTE *)(a1 + 505) = -1;
  *(_DWORD *)(a1 + 484) = 0;
  if ( !v13 )
    glitch::IReferenceCounted::drop(v15);
  return a1;
}


// ===== 6e7a80 glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::collada::CColladaDatabase const&,glitch::video::IVideoDriver *,glitch::collada::SCoronas &,glitch::collada::CRootSceneNode *) =====
int __fastcall glitch::collada::CCoronasSceneNode::CCoronasSceneNode(int a1, int *a2, int a3, int a4, int a5, int a6)
{
  int v9; // r3
  _DWORD *v10; // r3
  int v11; // r12
  int v12; // r2
  glitch::video::CVertexStreams *v13; // r3
  glitch::video::CVertexStreams *v14; // r5
  bool v15; // zf
  glitch::video::CVertexStreams *v16; // r5
  glitch::IReferenceCounted *v17; // r0
  _DWORD v19[4]; // [sp+10h] [bp-30h] BYREF
  _DWORD v20[3]; // [sp+20h] [bp-20h] BYREF
  glitch::IReferenceCounted *v21[3]; // [sp+2Ch] [bp-14h] BYREF
  glitch::IReferenceCounted *v22; // [sp+38h] [bp-8h] BYREF
  glitch::video::CVertexStreams *v23; // [sp+3Ch] [bp-4h] BYREF

  memset(v21, 0, sizeof(v21));
  memset(v19, 0, 12);
  v19[3] = 1065353216;
  v20[0] = 1065353216;
  v20[1] = 1065353216;
  v20[2] = 1065353216;
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 1, -1, v21, v19, v20);
  v9 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v9 - 28)) = a2[4];
  v10 = (_DWORD *)(a1 + 364);
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[5];
  *(_DWORD *)(a1 + 308) = *(_DWORD *)(a5 + 16);
  *(_DWORD *)(a1 + 312) = *(_DWORD *)(a5 + 20);
  *(_DWORD *)(a1 + 316) = *(_DWORD *)(a5 + 24);
  v11 = *(_DWORD *)(a5 + 28);
  *(_DWORD *)(a1 + 344) = -1082130432;
  *(_DWORD *)(a1 + 356) = 1065353216;
  *(_DWORD *)(a1 + 320) = v11;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 336) = -1082130432;
  *(_DWORD *)(a1 + 340) = -1082130432;
  *(_DWORD *)(a1 + 348) = 1065353216;
  *(_DWORD *)(a1 + 352) = 1065353216;
  do
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
    v10[6] = 0;
    v10[7] = 0;
    v10 += 9;
  }
  while ( v10 != (_DWORD *)(a1 + 508) );
  *(_DWORD *)(a1 + 508) = 0;
  *(_DWORD *)(a1 + 512) = a6;
  glitch::scene::ISceneNode::setName((glitch::scene::ISceneNode *)a1, *(char **)(a5 + 4));
  v12 = *(unsigned __int8 *)(a5 + 32);
  *(_DWORD *)(a1 + 328) = 1065353216;
  *(_BYTE *)(a1 + 324) = v12 != 0;
  *(_DWORD *)(a1 + 332) = 1065353216;
  *(_DWORD *)(a1 + 328) = *(_DWORD *)(a5 + 8);
  *(_DWORD *)(a1 + 332) = *(_DWORD *)(a5 + 12);
  glitch::video::CVertexStreams::allocate(&v23, 1u, 0x60000u);
  v13 = v23;
  if ( v23 )
    ++*(_DWORD *)v23;
  v14 = *(glitch::video::CVertexStreams **)(a1 + 508);
  *(_DWORD *)(a1 + 508) = v13;
  if ( v14 )
  {
    v15 = (*(_DWORD *)v14)-- == 1;
    if ( v15 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v14);
      LC_API_FREE_0(v14);
    }
  }
  v16 = v23;
  if ( v23 )
  {
    v15 = (*(_DWORD *)v23)-- == 1;
    if ( v15 )
    {
      glitch::video::CVertexStreams::~CVertexStreams(v16);
      LC_API_FREE_0(v16);
    }
  }
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int, _DWORD, int, int, int, _DWORD))(*(_DWORD *)a4 + 120))(
    &v22,
    a4,
    0,
    4,
    144,
    a1 + 364,
    0);
  glitch::video::CVertexStreams::setupStreams(*(_DWORD *)(a1 + 508), &v22, -1);
  *(_DWORD *)(*(_DWORD *)(a1 + 508) + 8) = 4;
  v17 = v22;
  v15 = v22 == nullptr;
  *(_DWORD *)(a1 + 452) = 1065353216;
  *(_BYTE *)(a1 + 504) = -1;
  *(_DWORD *)(a1 + 488) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_BYTE *)(a1 + 399) = -1;
  *(_BYTE *)(a1 + 398) = -1;
  *(_BYTE *)(a1 + 397) = -1;
  *(_BYTE *)(a1 + 396) = -1;
  *(_DWORD *)(a1 + 376) = 1065353216;
  *(_DWORD *)(a1 + 380) = 1065353216;
  *(_BYTE *)(a1 + 435) = -1;
  *(_BYTE *)(a1 + 434) = -1;
  *(_BYTE *)(a1 + 433) = -1;
  *(_BYTE *)(a1 + 432) = -1;
  *(_DWORD *)(a1 + 412) = 1065353216;
  *(_DWORD *)(a1 + 416) = 0;
  *(_BYTE *)(a1 + 471) = -1;
  *(_BYTE *)(a1 + 470) = -1;
  *(_BYTE *)(a1 + 469) = -1;
  *(_BYTE *)(a1 + 468) = -1;
  *(_DWORD *)(a1 + 448) = 0;
  *(_BYTE *)(a1 + 507) = -1;
  *(_BYTE *)(a1 + 506) = -1;
  *(_BYTE *)(a1 + 505) = -1;
  *(_DWORD *)(a1 + 484) = 0;
  if ( !v15 )
    glitch::IReferenceCounted::drop(v17);
  return a1;
}


// ===== 6e7d4c `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(
        glitch::collada::CCoronasSceneNode *this)
{
  glitch::collada::CCoronasSceneNode::~CCoronasSceneNode((glitch::collada::CCoronasSceneNode *)((char *)this
                                                                                              + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6e7d5c `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(
        glitch::collada::CCoronasSceneNode *this)
{
  glitch::collada::CCoronasSceneNode::~CCoronasSceneNode((glitch::collada::CCoronasSceneNode *)((char *)this
                                                                                              + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6e7d6c `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(
        glitch::collada::CCoronasSceneNode *this)
{
  glitch::collada::CCoronasSceneNode::~CCoronasSceneNode((glitch::collada::CCoronasSceneNode *)((char *)this
                                                                                              + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6e7d7c `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode() =====
void __fastcall `virtual thunk to'glitch::collada::CCoronasSceneNode::~CCoronasSceneNode(
        glitch::collada::CCoronasSceneNode *this)
{
  glitch::collada::CCoronasSceneNode::~CCoronasSceneNode((glitch::collada::CCoronasSceneNode *)((char *)this
                                                                                              + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6e7d8c `virtual thunk to'glitch::collada::CCoronasSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::CCoronasSceneNode::deserializeAttributes(_DWORD *a1, int a2)
{
  return glitch::collada::CCoronasSceneNode::deserializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 20)), a2);
}


// ===== 6e7d9c `virtual thunk to'glitch::collada::CCoronasSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::collada::CCoronasSceneNode::serializeAttributes(_DWORD *a1, int a2)
{
  return glitch::collada::CCoronasSceneNode::serializeAttributes((_DWORD *)((char *)a1 + *(_DWORD *)(*a1 - 16)), a2);
}


// ===== 6e7dac adler32_0 =====
int __fastcall adler32_0(unsigned int a1, unsigned __int8 *a2, unsigned int a3)
{
  unsigned __int8 *v3; // r3
  unsigned int v4; // r4
  unsigned int v5; // r5
  unsigned __int8 *v6; // r6
  unsigned int v7; // r4
  unsigned int v8; // r11
  unsigned int v9; // r12
  unsigned int v10; // r0
  unsigned int v11; // r1
  unsigned int v12; // r9
  unsigned int v13; // r5
  unsigned int v14; // r4
  unsigned int v15; // r12
  unsigned int v16; // r0
  int v17; // r1
  int v18; // r5
  int v19; // r9
  int v20; // r5
  int v21; // r4
  int v22; // r12
  int v23; // r11
  int v24; // r0
  int v25; // r1
  int v26; // r5
  int j; // r1
  int v29; // r0
  unsigned int v30; // r0
  unsigned int v31; // r0
  unsigned __int8 *v32; // r1
  unsigned int v33; // r4
  int v34; // r7
  unsigned int v35; // lr
  unsigned int v36; // r12
  unsigned int v37; // r6
  int v38; // r5
  int v39; // lr
  int v40; // r6
  int v41; // r12
  int v42; // r4
  int v43; // r5
  int v44; // r6
  int v45; // lr
  int v46; // r12
  int v47; // r4
  int v48; // r6
  int v49; // r5
  int v50; // lr
  int v51; // r12
  int v52; // lr
  unsigned int v53; // r2
  unsigned int v54; // r1
  unsigned int v55; // r0
  int i; // r2
  int v57; // r1

  v3 = a2;
  v4 = (unsigned __int16)a1;
  v5 = HIWORD(a1);
  if ( a3 == 1 )
  {
    v4 = *a2 + (unsigned __int16)a1;
    if ( v4 > 0xFFF0 )
      v4 -= 65521;
    v30 = v4 + v5;
    if ( v4 + v5 > 0xFFF0 )
      v30 -= 65521;
    return v4 | (v30 << 16);
  }
  if ( a2 )
  {
    if ( a3 > 0xF )
    {
      if ( a3 > 0x15AF )
      {
        do
        {
          a3 -= 5552;
          v6 = v3 + 5552;
          do
          {
            v7 = v4 + *v3;
            v8 = v7 + v3[1];
            v9 = v8 + v3[2];
            v10 = v9 + v3[3];
            v11 = v10 + v3[4];
            v12 = v11 + v3[5];
            v13 = v7 + v5 + v8 + v9 + v10 + v11;
            v14 = v12 + v3[6];
            v15 = v14 + v3[7];
            v16 = v15 + v3[8];
            v17 = v16 + v3[9];
            v18 = v13 + v12 + v14 + v15 + v16;
            v19 = v17 + v3[10];
            v20 = v18 + v17;
            v21 = v19 + v3[11];
            v22 = v21 + v3[12];
            v23 = v3[15];
            v24 = v22 + v3[13];
            v25 = v24 + v3[14];
            v26 = v20 + v19 + v21 + v22 + v24;
            v3 += 16;
            v4 = v25 + v23;
            v5 = v26 + v25 + v25 + v23;
          }
          while ( v3 != v6 );
          v4 %= 0xFFF1u;
          v5 %= 0xFFF1u;
        }
        while ( a3 > 0x15AF );
        if ( !a3 )
          return v4 | (v5 << 16);
        if ( a3 <= 0xF )
          goto LABEL_25;
      }
      v31 = a3;
      v32 = v3;
      do
      {
        v33 = v4 + *v32;
        v34 = v32[3];
        v35 = v33 + v32[1];
        v36 = v35 + v32[2];
        v37 = v33 + v5 + v35;
        v38 = v36 + v34 + v32[4];
        v39 = v38 + v32[5];
        v40 = v37 + v36 + v36 + v34 + v38;
        v41 = v39 + v32[6];
        v42 = v41 + v32[7];
        v43 = v42 + v32[8];
        v44 = v40 + v39 + v41 + v42;
        v45 = v43 + v32[9];
        v46 = v45 + v32[10];
        v47 = v46 + v32[11];
        v48 = v44 + v43 + v45 + v46;
        v49 = v47 + v32[12];
        v50 = v49 + v32[13];
        v51 = v50 + v32[14];
        v31 -= 16;
        v52 = v48 + v47 + v49 + v50;
        v4 = v51 + v32[15];
        v5 = v52 + v51 + v4;
        v32 += 16;
      }
      while ( v31 > 0xF );
      v53 = a3 - 16;
      v54 = (v53 & 0xFFFFFFF0) + 16;
      a3 = v53 & 0xF;
      v3 += v54;
      if ( a3 )
      {
LABEL_25:
        v55 = a3;
        for ( i = 0; i != v55; ++i )
        {
          v57 = v3[i];
          v4 += v57;
          v5 += v4;
        }
      }
      v4 %= 0xFFF1u;
      v5 %= 0xFFF1u;
      return v4 | (v5 << 16);
    }
    if ( a3 )
    {
      for ( j = 0; j != a3; ++j )
      {
        v29 = v3[j];
        v4 += v29;
        v5 += v4;
      }
    }
    v30 = v5 % 0xFFF1;
    if ( v4 > 0xFFF0 )
      v4 -= 65521;
    return v4 | (v30 << 16);
  }
  return 1;
}


// ===== 6e80c4 adler32_combine =====
int __fastcall adler32_combine(unsigned int a1, unsigned int a2, unsigned int a3)
{
  unsigned int v3; // r12
  unsigned int v4; // r2
  unsigned int v5; // r3

  v3 = a3 % 0xFFF1;
  v4 = (unsigned __int16)a1 + 65520 + (unsigned __int16)a2;
  v5 = HIWORD(a1) + 65521 + HIWORD(a2) - v3 + (unsigned __int16)a1 * v3 % 0xFFF1;
  if ( v4 > 0xFFF1 )
  {
    v4 -= 65521;
    if ( v4 > 0xFFF1 )
      v4 -= 65521;
  }
  if ( v5 > 0x1FFE2 )
    v5 -= 131042;
  if ( v5 > 0xFFF1 )
    v5 -= 65521;
  return v4 | (v5 << 16);
}


// ===== 6e8168 get_crc_table =====
void *get_crc_table()
{
  return &crc_table;
}


// ===== 6e8178 crc32 =====
int __fastcall crc32(int a1, char *a2, unsigned int a3)
{
  unsigned int v4; // r0
  char v5; // t1
  char *v6; // r6
  unsigned int v7; // r5
  char *v8; // r12
  unsigned int v9; // r0
  int v10; // r10
  unsigned int v11; // r4
  unsigned int v12; // r0
  unsigned int v13; // r4
  unsigned int v14; // r0
  unsigned int v15; // r4
  unsigned int v16; // r0
  int v17; // r8
  unsigned int v18; // r4
  unsigned int v19; // r2
  int v20; // r12
  int v21; // r1
  unsigned int v22; // r2
  int i; // r3
  char v24; // r1

  if ( !a2 )
    return 0;
  v4 = ~a1;
  if ( !a3 )
    return ~v4;
  while ( ((unsigned __int8)a2 & 3) != 0 )
  {
    v5 = *a2++;
    --a3;
    v4 = crc_table[(unsigned __int8)(v4 ^ v5)] ^ (v4 >> 8);
    if ( !a3 )
      return ~v4;
  }
  v6 = a2;
  if ( a3 > 0x1F )
  {
    v7 = a3;
    v8 = a2;
    do
    {
      v9 = v4 ^ *(_DWORD *)v8;
      v10 = crc_table[(unsigned __int8)v9 + 768];
      v11 = v10 ^ crc_table[HIBYTE(v9)] ^ *((_DWORD *)v8 + 1) ^ crc_table[BYTE1(v9) + 512] ^ crc_table[BYTE2(v9) + 256];
      v12 = crc_table[(unsigned __int8)(v10
                                      ^ LOBYTE(crc_table[HIBYTE(v9)])
                                      ^ v8[4]
                                      ^ LOBYTE(crc_table[BYTE1(v9) + 512])
                                      ^ LOBYTE(crc_table[BYTE2(v9) + 256]))
                    + 768]
          ^ crc_table[HIBYTE(v11)]
          ^ *((_DWORD *)v8 + 2)
          ^ crc_table[BYTE1(v11) + 512]
          ^ crc_table[BYTE2(v11) + 256];
      v13 = crc_table[(unsigned __int8)v12 + 768]
          ^ crc_table[HIBYTE(v12)]
          ^ *((_DWORD *)v8 + 3)
          ^ crc_table[BYTE1(v12) + 512]
          ^ crc_table[BYTE2(v12) + 256];
      v14 = crc_table[(unsigned __int8)(LOBYTE(crc_table[(unsigned __int8)v12 + 768])
                                      ^ LOBYTE(crc_table[HIBYTE(v12)])
                                      ^ v8[12]
                                      ^ LOBYTE(crc_table[BYTE1(v12) + 512])
                                      ^ LOBYTE(crc_table[BYTE2(v12) + 256]))
                    + 768]
          ^ crc_table[HIBYTE(v13)]
          ^ *((_DWORD *)v8 + 4)
          ^ crc_table[BYTE1(v13) + 512]
          ^ crc_table[BYTE2(v13) + 256];
      v15 = crc_table[(unsigned __int8)v14 + 768]
          ^ crc_table[HIBYTE(v14)]
          ^ *((_DWORD *)v8 + 5)
          ^ crc_table[BYTE1(v14) + 512]
          ^ crc_table[BYTE2(v14) + 256];
      v16 = crc_table[(unsigned __int8)(LOBYTE(crc_table[(unsigned __int8)v14 + 768])
                                      ^ LOBYTE(crc_table[HIBYTE(v14)])
                                      ^ v8[20]
                                      ^ LOBYTE(crc_table[BYTE1(v14) + 512])
                                      ^ LOBYTE(crc_table[BYTE2(v14) + 256]))
                    + 768]
          ^ crc_table[HIBYTE(v15)]
          ^ *((_DWORD *)v8 + 6)
          ^ crc_table[BYTE1(v15) + 512]
          ^ crc_table[BYTE2(v15) + 256];
      v17 = crc_table[(unsigned __int8)v16 + 768];
      v18 = v17
          ^ crc_table[HIBYTE(v16)]
          ^ *((_DWORD *)v8 + 7)
          ^ crc_table[BYTE1(v16) + 512]
          ^ crc_table[BYTE2(v16) + 256];
      v7 -= 32;
      v4 = crc_table[HIBYTE(v18)]
         ^ crc_table[(unsigned __int8)(v17
                                     ^ LOBYTE(crc_table[HIBYTE(v16)])
                                     ^ v8[28]
                                     ^ LOBYTE(crc_table[BYTE1(v16) + 512])
                                     ^ LOBYTE(crc_table[BYTE2(v16) + 256]))
                   + 768]
         ^ crc_table[BYTE1(v18) + 512]
         ^ crc_table[BYTE2(v18) + 256];
      v8 += 32;
    }
    while ( v7 > 0x1F );
    v19 = a3 - 32;
    v6 = &a2[(v19 & 0xFFFFFFE0) + 32];
    a3 = v19 & 0x1F;
  }
  if ( a3 > 3 )
  {
    v20 = 0;
    do
    {
      v21 = *(_DWORD *)&v6[v20];
      v20 += 4;
      v4 = crc_table[(v4 ^ v21) >> 24]
         ^ crc_table[(unsigned __int8)(v4 ^ v21) + 768]
         ^ crc_table[(unsigned __int8)((unsigned __int16)(v4 ^ v21) >> 8) + 512]
         ^ crc_table[(unsigned __int8)((v4 ^ v21) >> 16) + 256];
    }
    while ( a3 - v20 > 3 );
    v22 = a3 - 4;
    v6 += (v22 & 0xFFFFFFFC) + 4;
    a3 = v22 & 3;
  }
  if ( !a3 )
    return ~v4;
  for ( i = 0; i != a3; ++i )
  {
    v24 = v6[i];
    v4 = crc_table[(unsigned __int8)(v4 ^ v24)] ^ (v4 >> 8);
  }
  return ~v4;
}


// ===== 6e8890 crc32_combine =====
unsigned int __fastcall crc32_combine(unsigned int result, int a2, int a3)
{
  int m; // r5
  unsigned int v4; // r12
  int v5; // r3
  int i; // r8
  unsigned int v7; // r3
  int v8; // r4
  int j; // r8
  unsigned int v10; // r3
  int v11; // r4
  int k; // r8
  unsigned int v13; // r3
  int v14; // r4
  int v15; // r3
  unsigned int v16; // r8
  int v17; // r2
  unsigned int v18; // r3
  int v19; // r0
  int v20; // r3
  unsigned int v21; // r0
  _DWORD v22[31]; // [sp+0h] [bp-104h] BYREF
  _BYTE v23[132]; // [sp+7Ch] [bp-88h] BYREF

  if ( a3 )
  {
    v22[0] = -306674912;
    v4 = (unsigned int)v22;
    v5 = 1;
    do
    {
      *(_DWORD *)(v4 + 4) = v5;
      v4 += 4;
      v5 *= 2;
    }
    while ( (_BYTE *)v4 != v23 );
    for ( i = 0; i != 32; ++i )
    {
      v7 = v22[i];
      if ( v7 )
      {
        v4 = 0;
        v8 = 0;
        do
        {
          if ( (v7 & 1) != 0 )
            m = *(_DWORD *)((char *)v22 + v4);
          v4 += 4;
          if ( (v7 & 1) != 0 )
            v8 ^= m;
          v7 >>= 1;
        }
        while ( v7 );
      }
      else
      {
        v8 = 0;
      }
      *(_DWORD *)&v23[i * 4 + 4] = v8;
    }
    for ( j = 0; j != 32; ++j )
    {
      v10 = *(_DWORD *)&v23[j * 4 + 4];
      if ( v10 )
      {
        v4 = 0;
        v11 = 0;
        do
        {
          if ( (v10 & 1) != 0 )
            m = *(_DWORD *)&v23[v4 + 4];
          v4 += 4;
          if ( (v10 & 1) != 0 )
            v11 ^= m;
          v10 >>= 1;
        }
        while ( v10 );
      }
      else
      {
        v11 = 0;
      }
      v22[j] = v11;
    }
    while ( 1 )
    {
      for ( k = 0; k != 32; ++k )
      {
        v13 = v22[k];
        if ( v13 )
        {
          v4 = 0;
          v14 = 0;
          do
          {
            if ( (v13 & 1) != 0 )
              m = *(_DWORD *)((char *)v22 + v4);
            v4 += 4;
            if ( (v13 & 1) != 0 )
              v14 ^= m;
            v13 >>= 1;
          }
          while ( v13 );
        }
        else
        {
          v14 = 0;
        }
        *(_DWORD *)&v23[k * 4 + 4] = v14;
      }
      if ( (a3 & 1) != 0 && result )
      {
        v15 = 0;
        v16 = 0;
        do
        {
          if ( (result & 1) != 0 )
            v4 = *(_DWORD *)&v23[v15 + 4];
          v15 += 4;
          if ( (result & 1) != 0 )
            v16 ^= v4;
          result >>= 1;
        }
        while ( result );
        v17 = a3 >> 1;
        if ( !v17 )
          return v16 ^ a2;
      }
      else
      {
        v17 = a3 >> 1;
        v16 = result;
        if ( !v17 )
          return v16 ^ a2;
      }
      for ( m = 0; m != 128; m += 4 )
      {
        v18 = *(_DWORD *)&v23[m + 4];
        if ( v18 )
        {
          v19 = 0;
          v4 = 0;
          do
          {
            if ( (v18 & 1) != 0 )
              v14 = *(_DWORD *)&v23[v19 + 4];
            v19 += 4;
            if ( (v18 & 1) != 0 )
              v4 ^= v14;
            v18 >>= 1;
          }
          while ( v18 );
        }
        else
        {
          v4 = 0;
        }
        *(_DWORD *)((char *)v22 + m) = v4;
      }
      if ( (v17 & 1) != 0 && v16 )
      {
        v20 = 0;
        v21 = 0;
        do
        {
          if ( (v16 & 1) != 0 )
            v4 = v22[v20];
          ++v20;
          if ( (v16 & 1) != 0 )
            v21 ^= v4;
          v16 >>= 1;
        }
        while ( v16 );
        v16 = v21;
      }
      a3 = v17 >> 1;
      if ( !a3 )
        return v16 ^ a2;
      result = v16;
    }
  }
  return result;
}


// ===== 6e8a78 deflateSetHeader =====
int __fastcall deflateSetHeader(int a1, int a2)
{
  int v3; // r3

  if ( !a1 )
    return -2;
  v3 = *(_DWORD *)(a1 + 28);
  if ( !v3 || *(_DWORD *)(v3 + 24) != 2 )
    return -2;
  *(_DWORD *)(v3 + 28) = a2;
  return 0;
}


// ===== 6e8aac deflatePrime =====
int __fastcall deflatePrime(int a1, int a2, __int16 a3)
{
  int v4; // r3

  if ( !a1 )
    return -2;
  v4 = *(_DWORD *)(a1 + 28);
  if ( !v4 )
    return -2;
  *(_DWORD *)(v4 + 5820) = a2;
  *(_WORD *)(*(_DWORD *)(a1 + 28) + 5816) = a3 & ~(-1 << a2);
  return 0;
}


// ===== 6e8aec deflateTune =====
int __fastcall deflateTune(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD *v6; // r0

  if ( !a1 )
    return -2;
  v6 = *(_DWORD **)(a1 + 28);
  if ( !v6 )
    return -2;
  v6[35] = a2;
  v6[32] = a3;
  v6[31] = a5;
  v6[36] = a4;
  return 0;
}


// ===== 6e8b24 deflateEnd =====
int __fastcall deflateEnd(int a1)
{
  _DWORD *v3; // r3
  int v4; // r5
  bool v5; // zf
  bool v6; // zf
  bool v7; // zf

  if ( !a1 )
    return -2;
  v3 = *(_DWORD **)(a1 + 28);
  if ( !v3 )
    return -2;
  v4 = v3[1];
  v5 = v4 == 69;
  if ( v4 != 69 )
    v5 = v4 == 42;
  if ( !v5 )
  {
    v6 = v4 == 91;
    if ( v4 != 91 )
      v6 = v4 == 73;
    if ( !v6 )
    {
      v7 = v4 == 113;
      if ( v4 != 113 )
        v7 = v4 == 103;
      if ( !v7 && v4 != 666 )
        return -2;
    }
  }
  if ( v3[2] )
  {
    (*(void (__fastcall **)(_DWORD))(a1 + 36))(*(_DWORD *)(a1 + 40));
    v3 = *(_DWORD **)(a1 + 28);
  }
  if ( v3[17] )
  {
    (*(void (__fastcall **)(_DWORD))(a1 + 36))(*(_DWORD *)(a1 + 40));
    v3 = *(_DWORD **)(a1 + 28);
  }
  if ( v3[16] )
  {
    (*(void (__fastcall **)(_DWORD))(a1 + 36))(*(_DWORD *)(a1 + 40));
    v3 = *(_DWORD **)(a1 + 28);
  }
  if ( v3[14] )
  {
    (*(void (__fastcall **)(_DWORD))(a1 + 36))(*(_DWORD *)(a1 + 40));
    v3 = *(_DWORD **)(a1 + 28);
  }
  (*(void (__fastcall **)(_DWORD, _DWORD *))(a1 + 36))(*(_DWORD *)(a1 + 40), v3);
  *(_DWORD *)(a1 + 28) = 0;
  if ( v4 == 113 )
    return -3;
  else
    return 0;
}


// ===== 6e8c14 longest_match =====
unsigned __int8 *__fastcall longest_match(_DWORD *a1, unsigned int a2)
{
  unsigned int v2; // r9
  int v3; // r6
  unsigned int v4; // r4
  int v5; // r3
  unsigned int v6; // r2
  bool v7; // cf
  unsigned int v8; // r12
  unsigned int v9; // r4
  unsigned __int8 *v10; // r5
  int v11; // r8
  int v12; // r11
  int v13; // r7
  int v14; // r10
  int v15; // r4
  unsigned __int8 *v16; // r0
  int v17; // r2
  unsigned __int8 *v18; // r10
  int v19; // r6
  unsigned __int8 *v20; // r4
  unsigned __int8 *v21; // r8
  int v22; // r2
  int v23; // t1
  unsigned __int8 *v24; // r8
  unsigned __int8 *result; // r0
  unsigned __int8 *v26; // [sp+Ch] [bp-1Ch]
  unsigned int v27; // [sp+10h] [bp-18h]
  int v28; // [sp+14h] [bp-14h]
  unsigned int v29; // [sp+18h] [bp-10h]
  unsigned int v30; // [sp+1Ch] [bp-Ch]

  v3 = a1[11];
  v4 = a1[27];
  v5 = a1[14];
  v6 = a1[30];
  v7 = v3 - 262 >= v4;
  v8 = a1[31];
  v26 = (unsigned __int8 *)(v5 + v4);
  if ( v3 - 262 < v4 )
    v2 = v4 + 262;
  v9 = v4 + 256;
  if ( !v7 )
    v2 -= v3;
  v27 = v5 + v9 + 2;
  v10 = (unsigned __int8 *)a1[30];
  if ( v7 )
    v2 = 0;
  v11 = v26[v6 - 1];
  v12 = a1[16];
  v13 = a1[13];
  v14 = a1[36];
  v29 = a1[29];
  if ( v6 >= a1[35] )
    v8 >>= 2;
  if ( a1[36] >= v29 )
    v14 = a1[29];
  v15 = v26[v6];
  v28 = v14;
  v30 = v27 - 258;
  while ( 1 )
  {
    v16 = (unsigned __int8 *)(v5 + a2);
    v17 = v10[v5 + a2];
    v18 = v10;
    if ( v17 != v15 )
    {
      v17 = v15;
      v19 = v11;
      goto LABEL_12;
    }
    v19 = v10[(_DWORD)v16 - 1];
    if ( v19 != v11 )
    {
      v19 = v11;
      goto LABEL_12;
    }
    if ( *v16 == *v26 && v16[1] == v26[1] )
    {
      v20 = v26 + 2;
      v21 = (unsigned __int8 *)(v5 + a2);
      while ( 1 )
      {
        if ( v20[1] != v21[3] )
        {
          v17 = v10[v5 + a2];
          ++v20;
          goto LABEL_32;
        }
        if ( v20[2] != v21[4] )
          break;
        if ( v20[3] != v21[5] )
        {
          v17 = v10[v5 + a2];
          v20 += 3;
          goto LABEL_32;
        }
        if ( v20[4] != v21[6] )
        {
          v17 = v10[v5 + a2];
          v20 += 4;
          goto LABEL_32;
        }
        if ( v20[5] != v21[7] )
        {
          v17 = v10[v5 + a2];
          v20 += 5;
          goto LABEL_32;
        }
        if ( v20[6] != v21[8] )
        {
          v17 = v10[v5 + a2];
          v20 += 6;
          goto LABEL_32;
        }
        if ( v20[7] != v21[9] )
        {
          v17 = v10[v5 + a2];
          v20 += 7;
          goto LABEL_32;
        }
        v22 = v21[10];
        v23 = v20[8];
        v20 += 8;
        v21 += 8;
        if ( v23 != v22 || v27 <= (unsigned int)v20 )
        {
          v17 = v10[v5 + a2];
          goto LABEL_32;
        }
      }
      v17 = v10[v5 + a2];
      v20 += 2;
LABEL_32:
      v24 = &v20[258 - v27];
      v26 = (unsigned __int8 *)(v27 - 258);
      if ( (int)v10 < (int)v24 )
        break;
    }
LABEL_12:
    a2 = *(unsigned __int16 *)(v12 + 2 * (a2 & v13));
    if ( v2 >= a2 )
      goto LABEL_36;
    if ( !--v8 )
      goto LABEL_36;
    v15 = v17;
    v11 = v19;
  }
  a1[28] = a2;
  if ( (int)v24 < v28 )
  {
    v18 = &v20[258 - v27];
    v10 = v18;
    v19 = v24[v30 - 1];
    v17 = v24[v30];
    goto LABEL_12;
  }
  v18 = &v20[258 - v27];
LABEL_36:
  result = (unsigned __int8 *)v29;
  if ( (unsigned int)v18 < v29 )
    return v18;
  return result;
}


// ===== 6e8ec8 longest_match_fast =====
int __fastcall longest_match_fast(_DWORD *a1, int a2)
{
  int v2; // r3
  int v3; // r2
  int v4; // r5
  int v5; // r4
  unsigned int v6; // r12
  int v7; // r2
  unsigned __int8 *v8; // r3
  unsigned __int8 *v10; // r2
  int v11; // r4
  int v12; // t1
  int v13; // r2
  unsigned int v14; // r3

  v2 = a1[14];
  v3 = a1[27];
  v4 = *(unsigned __int8 *)(v2 + a2);
  v5 = *(unsigned __int8 *)(v2 + v3);
  v6 = v2 + v3 + 258;
  v7 = v2 + v3;
  v8 = (unsigned __int8 *)(v2 + a2);
  if ( v4 != v5 || v8[1] != *(unsigned __int8 *)(v7 + 1) )
    return 2;
  v10 = (unsigned __int8 *)(v7 + 2);
  while ( 1 )
  {
    if ( v10[1] != v8[3] )
    {
      ++v10;
      goto LABEL_14;
    }
    if ( v10[2] != v8[4] )
    {
      v10 += 2;
      goto LABEL_14;
    }
    if ( v10[3] != v8[5] )
    {
      v10 += 3;
      goto LABEL_14;
    }
    if ( v10[4] != v8[6] )
    {
      v10 += 4;
      goto LABEL_14;
    }
    if ( v10[5] != v8[7] )
    {
      v10 += 5;
      goto LABEL_14;
    }
    if ( v10[6] != v8[8] )
    {
      v10 += 6;
      goto LABEL_14;
    }
    if ( v10[7] != v8[9] )
      break;
    v11 = v8[10];
    v12 = v10[8];
    v10 += 8;
    v8 += 8;
    if ( v12 != v11 || v6 <= (unsigned int)v10 )
      goto LABEL_14;
  }
  v10 += 7;
LABEL_14:
  v13 = (int)&v10[258 - v6];
  if ( v13 <= 2 )
    return 2;
  v14 = a1[29];
  a1[28] = a2;
  if ( v13 >= v14 )
    return v14;
  else
    return v13;
}


// ===== 6e9008 deflateCopy =====
int __fastcall deflateCopy(_DWORD *a1, int *a2)
{
  bool v2; // zf
  int v4; // r5
  int v6; // r6
  int *v7; // lr
  int v8; // r0
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r3
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r1
  char *v21; // r0
  char *v22; // r7
  int v23; // r8
  void *v24; // r0
  int v25; // r3
  int v26; // r1
  int v27; // r0

  v2 = a1 == nullptr;
  if ( a1 )
    v2 = a2 == nullptr;
  v4 = v2;
  if ( v2 )
    return -2;
  v6 = a2[7];
  if ( !v6 )
    return -2;
  v7 = a2;
  v8 = *a2;
  v9 = a2[1];
  v10 = v7[2];
  v11 = v7[3];
  v7 += 4;
  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  v12 = *v7;
  v13 = v7[1];
  v14 = v7[2];
  v15 = v7[3];
  v7 += 4;
  a1[4] = v12;
  a1[5] = v13;
  a1[6] = v14;
  a1[7] = v15;
  v16 = *v7;
  v17 = v7[1];
  v18 = v7[2];
  v19 = v7[3];
  v7 += 4;
  a1[8] = v16;
  a1[9] = v17;
  a1[10] = v18;
  a1[11] = v19;
  v20 = v7[1];
  a1[12] = *v7;
  a1[13] = v20;
  v21 = (char *)((int (__fastcall *)(_DWORD, int, int))a1[8])(a1[10], 1, 5824);
  v22 = v21;
  if ( v21 )
  {
    a1[7] = v21;
    memcpy(v21, (const void *)v6, 0x16C0u);
    *(_DWORD *)v22 = a1;
    *((_DWORD *)v22 + 14) = ((int (__fastcall *)(_DWORD, _DWORD, int))a1[8])(a1[10], *((_DWORD *)v22 + 11), 2);
    *((_DWORD *)v22 + 16) = ((int (__fastcall *)(_DWORD, _DWORD, int))a1[8])(a1[10], *((_DWORD *)v22 + 11), 2);
    *((_DWORD *)v22 + 17) = ((int (__fastcall *)(_DWORD, _DWORD, int))a1[8])(a1[10], *((_DWORD *)v22 + 19), 2);
    v23 = ((int (__fastcall *)(_DWORD, _DWORD, int))a1[8])(a1[10], *((_DWORD *)v22 + 1447), 4);
    v24 = *((void **)v22 + 14);
    *((_DWORD *)v22 + 2) = v23;
    if ( v24 && *((_DWORD *)v22 + 16) && *((_DWORD *)v22 + 17) && v23 )
    {
      memcpy(v24, *(const void **)(v6 + 56), 2 * *((_DWORD *)v22 + 11));
      memcpy(*((void **)v22 + 16), *(const void **)(v6 + 64), 2 * *((_DWORD *)v22 + 11));
      memcpy(*((void **)v22 + 17), *(const void **)(v6 + 68), 2 * *((_DWORD *)v22 + 19));
      memcpy(*((void **)v22 + 2), *(const void **)(v6 + 8), *((_DWORD *)v22 + 3));
      v25 = *((_DWORD *)v22 + 1447);
      v26 = *((_DWORD *)v22 + 2);
      v27 = *(_DWORD *)(v6 + 16) - *(_DWORD *)(v6 + 8);
      *((_DWORD *)v22 + 1449) = v23 + (v25 & 0xFFFFFFFE);
      *((_DWORD *)v22 + 1446) = v26 + 3 * v25;
      *((_DWORD *)v22 + 710) = v22 + 148;
      *((_DWORD *)v22 + 716) = v22 + 2684;
      *((_DWORD *)v22 + 4) = v26 + v27;
      *((_DWORD *)v22 + 713) = v22 + 2440;
      return v4;
    }
    deflateEnd((int)a1);
  }
  return -4;
}


// ===== 6e91e0 flush_pending =====
void *__fastcall flush_pending(void *result)
{
  int v1; // r3
  _DWORD *v2; // r4
  size_t v3; // r5
  int v4; // r3
  int v5; // r3
  size_t v6; // r2
  _DWORD *v7; // r3

  v1 = *((_DWORD *)result + 7);
  v2 = result;
  v3 = *(_DWORD *)(v1 + 20);
  if ( v3 >= *((_DWORD *)result + 4) )
    v3 = *((_DWORD *)result + 4);
  if ( v3 )
  {
    result = memcpy(*((void **)result + 3), *(const void **)(v1 + 16), v3);
    v4 = v2[7];
    v2[3] += v3;
    *(_DWORD *)(v4 + 16) += v3;
    v5 = v2[7];
    v6 = v2[4] - v3;
    v2[5] += v3;
    v2[4] = v6;
    *(_DWORD *)(v5 + 20) -= v3;
    v7 = (_DWORD *)v2[7];
    if ( !v7[5] )
      v7[4] = v7[2];
  }
  return result;
}


// ===== 6e9270 fill_window =====
unsigned int __fastcall fill_window(unsigned int result)
{
  size_t v1; // r5
  unsigned int v2; // r8
  unsigned int v3; // r4
  size_t i; // r2
  int v5; // r3
  int v6; // r2
  int v7; // r1
  int v8; // t1
  unsigned int v9; // r3
  unsigned int v10; // r7
  int v11; // r6
  unsigned int v12; // r3
  bool v13; // cf
  int v14; // r11
  int v15; // r9
  int v16; // r8
  int v17; // r2
  int v18; // r3
  unsigned int v19; // r3
  int v20; // r3
  int v21; // r2
  size_t v22; // r0
  size_t v23; // r1
  int v24; // r2
  size_t v25; // r0
  __int16 v26; // r1
  size_t v27; // r2
  int v28; // r3
  __int16 v29; // r1
  int v30; // r2

  v1 = *(_DWORD *)(result + 44);
  v2 = *(_DWORD *)(result + 116);
  v3 = result;
  for ( i = v1; ; i = *(_DWORD *)(v3 + 44) )
  {
    v9 = *(_DWORD *)(v3 + 108);
    v10 = *(_DWORD *)(v3 + 60) - v2 - v9;
    if ( v9 >= v1 - 262 + i )
      break;
    v11 = *(_DWORD *)v3;
    v12 = *(_DWORD *)(*(_DWORD *)v3 + 4);
    if ( !v12 )
      return result;
LABEL_9:
    v13 = v10 >= v12;
    if ( v10 >= v12 )
      v10 = v12;
    v14 = *(_DWORD *)(v3 + 56);
    v15 = *(_DWORD *)(v3 + 108);
    v16 = *(_DWORD *)(v3 + 116);
    if ( v13 )
    {
      v17 = *(_DWORD *)(v11 + 28);
      *(_DWORD *)(v11 + 4) = 0;
      v18 = *(_DWORD *)(v17 + 24);
      if ( v18 != 1 )
        goto LABEL_14;
    }
    else
    {
      if ( !v10 )
        goto LABEL_3;
      v30 = *(_DWORD *)(v11 + 28);
      *(_DWORD *)(v11 + 4) = v12 - v10;
      v18 = *(_DWORD *)(v30 + 24);
      if ( v18 != 1 )
      {
LABEL_14:
        if ( v18 == 2 )
          *(_DWORD *)(v11 + 48) = crc32(*(_DWORD *)(v11 + 48), *(char **)v11, v10);
        goto LABEL_16;
      }
    }
    *(_DWORD *)(v11 + 48) = adler32_0(*(_DWORD *)(v11 + 48), *(unsigned __int8 **)v11, v10);
LABEL_16:
    result = (unsigned int)memcpy((void *)(v14 + v16 + v15), *(const void **)v11, v10);
    v19 = *(_DWORD *)v11 + v10;
    *(_DWORD *)(v11 + 8) += v10;
    *(_DWORD *)v11 = v19;
    v16 = *(_DWORD *)(v3 + 116);
LABEL_3:
    v2 = v16 + v10;
    *(_DWORD *)(v3 + 116) = v2;
    if ( v2 > 2 )
    {
      v5 = *(_DWORD *)(v3 + 56);
      v6 = *(_DWORD *)(v3 + 108);
      result = *(_DWORD *)(v3 + 88);
      v7 = *(_DWORD *)(v3 + 84);
      v8 = *(unsigned __int8 *)(v5 + v6);
      *(_DWORD *)(v3 + 72) = v8;
      *(_DWORD *)(v3 + 72) = (*(unsigned __int8 *)(v5 + v6 + 1) ^ (v8 << result)) & v7;
      if ( v2 > 0x105 )
        return result;
    }
    if ( !*(_DWORD *)(*(_DWORD *)v3 + 4) )
      return result;
  }
  memcpy(*(void **)(v3 + 56), (const void *)(*(_DWORD *)(v3 + 56) + v1), v1);
  v20 = *(_DWORD *)(v3 + 76);
  v21 = *(_DWORD *)(v3 + 68);
  v22 = *(_DWORD *)(v3 + 108) - v1;
  v23 = *(_DWORD *)(v3 + 92) - v1;
  *(_DWORD *)(v3 + 112) -= v1;
  *(_DWORD *)(v3 + 108) = v22;
  *(_DWORD *)(v3 + 92) = v23;
  v24 = v21 + 2 * v20;
  do
  {
    v25 = *(unsigned __int16 *)(v24 - 2);
    v26 = 0;
    if ( v1 <= v25 )
      v26 = v25 - v1;
    --v20;
    *(_WORD *)(v24 - 2) = v26;
    v24 -= 2;
  }
  while ( v20 );
  v27 = v1;
  v28 = *(_DWORD *)(v3 + 64) + 2 * v1;
  do
  {
    result = *(unsigned __int16 *)(v28 - 2);
    v29 = 0;
    if ( v1 <= result )
      v29 = result - v1;
    --v27;
    *(_WORD *)(v28 - 2) = v29;
    v28 -= 2;
  }
  while ( v27 );
  v11 = *(_DWORD *)v3;
  v10 += v1;
  v12 = *(_DWORD *)(*(_DWORD *)v3 + 4);
  if ( v12 )
    goto LABEL_9;
  return result;
}


// ===== 6e9488 deflateSetDictionary =====
int __fastcall deflateSetDictionary(int a1, unsigned __int8 *a2, unsigned int a3)
{
  unsigned __int8 *v3; // r4
  unsigned int v4; // r6
  int v6; // r7
  bool v7; // zf
  int v8; // r3
  size_t v9; // r5
  bool v10; // cc
  unsigned __int8 *v11; // r1
  int v12; // r0
  int v13; // r2
  int v14; // r12
  size_t v15; // r5
  size_t v16; // r3
  int v17; // r0
  int v18; // r6
  int v19; // r1
  int v20; // r4
  int v21; // r2
  int v22; // r6
  int v23; // r2

  v3 = a2;
  v4 = a3;
  if ( !a1 )
    return -2;
  v6 = *(_DWORD *)(a1 + 28);
  v7 = v6 == 0;
  if ( v6 )
    v7 = a2 == nullptr;
  if ( v7 )
    return -2;
  v8 = *(_DWORD *)(v6 + 24);
  if ( v8 == 2 )
    return -2;
  if ( v8 == 1 )
  {
    if ( *(_DWORD *)(v6 + 4) == 42 )
      goto LABEL_20;
    return -2;
  }
  if ( v8 )
LABEL_20:
    *(_DWORD *)(a1 + 48) = adler32_0(*(_DWORD *)(a1 + 48), a2, a3);
  if ( v4 > 2 )
  {
    v9 = *(_DWORD *)(v6 + 44) - 262;
    v10 = v4 > v9;
    if ( v4 <= v9 )
      v9 = v4;
    else
      v4 -= v9;
    if ( v10 )
      v3 += v4;
    memcpy(*(void **)(v6 + 56), v3, v9);
    v11 = *(unsigned __int8 **)(v6 + 56);
    *(_DWORD *)(v6 + 108) = v9;
    *(_DWORD *)(v6 + 92) = v9;
    v12 = *v11;
    v13 = *(_DWORD *)(v6 + 88);
    v14 = *(_DWORD *)(v6 + 84);
    *(_DWORD *)(v6 + 72) = v12;
    v15 = v9 - 3;
    v16 = 0;
    v17 = (v11[1] ^ (v12 << v13)) & v14;
    *(_DWORD *)(v6 + 72) = v17;
    while ( 1 )
    {
      v18 = v11[v16 + 2];
      v19 = *(_DWORD *)(v6 + 52);
      v20 = *(_DWORD *)(v6 + 64);
      v21 = v18 ^ (v17 << v13);
      v22 = *(_DWORD *)(v6 + 68);
      v23 = v21 & v14;
      *(_DWORD *)(v6 + 72) = v23;
      *(_WORD *)(v20 + 2 * (v16 & v19)) = *(_WORD *)(v22 + 2 * v23);
      *(_WORD *)(*(_DWORD *)(v6 + 68) + 2 * *(_DWORD *)(v6 + 72)) = v16++;
      if ( v15 < v16 )
        break;
      v17 = *(_DWORD *)(v6 + 72);
      v11 = *(unsigned __int8 **)(v6 + 56);
      v13 = *(_DWORD *)(v6 + 88);
      v14 = *(_DWORD *)(v6 + 84);
    }
  }
  return 0;
}


// ===== 6e95c8 deflate =====
int __fastcall deflate(_DWORD *a1, int a2)
{
  int result; // r0
  int v5; // r6
  _BOOL4 v6; // r3
  int v7; // r2
  int v8; // r10
  int v9; // r11
  unsigned int v10; // r3
  int v11; // r3
  bool v12; // zf
  int v13; // r2
  int v14; // r0
  bool v15; // zf
  int v16; // r8
  int v17; // r3
  int v18; // r1
  int v19; // r3
  int v20; // r2
  int v21; // r1
  int v22; // r3
  int v23; // r0
  int v24; // r3
  int v25; // r3
  unsigned int v26; // r2
  __int16 v27; // r0
  unsigned int v28; // r2
  int v29; // r1
  int v30; // r3
  int v31; // r3
  int v32; // r2
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r1
  int v37; // r3
  _DWORD *v38; // r0
  unsigned int v39; // r12
  unsigned int v40; // r1
  unsigned int v41; // r2
  _DWORD *v42; // r12
  unsigned int v43; // r1
  unsigned int v44; // r2
  int v45; // r9
  int v46; // r0
  int v47; // r10
  int v48; // r12
  int v49; // r0
  int v50; // r10
  _DWORD *v51; // r12
  unsigned int v52; // r1
  unsigned int v53; // r2
  int v54; // r9
  int v55; // r0
  int v56; // r10
  int v57; // r12
  int v58; // r0
  int v59; // r10
  int v60; // r3
  int v61; // r2
  int v62; // r2
  int *v63; // r3
  int v64; // r12
  int v65; // r9
  int v66; // r0
  int v67; // r3
  char v68; // r1
  char v69; // r12
  char v70; // r1
  char v71; // r0
  char v72; // r1
  char v73; // r3
  int v74; // r1
  int v75; // r3
  int v76; // r0
  int v77; // r1
  int v78; // r2
  int v79; // r3
  int v80; // r1
  int v81; // r1
  int v82; // r3
  int v83; // r3
  int v84; // r12
  int v85; // r2
  int v86; // r0
  int v87; // r1
  int v88; // r3
  int v89; // r12
  int v90; // r0
  int v91; // r0
  int v92; // r1
  int v93; // r12
  int v94; // r2
  int v95; // r0
  int v96; // r2
  int v97; // r0
  int v98; // [sp+14h] [bp-8h]

  if ( !a1 )
    return -2;
  v5 = a1[7];
  v6 = v5 == 0;
  if ( a2 > 4 )
    v6 = 1;
  if ( v6 || a2 < 0 )
    return -2;
  if ( !a1[3] || !*a1 && a1[1] || ((v7 = *(_DWORD *)(v5 + 4), v7 == 666) ? (v8 = a2 != 4) : (v8 = 0), v8) )
  {
    a1[6] = "stream error";
    return -2;
  }
  if ( !a1[4] )
    goto LABEL_105;
  v9 = *(_DWORD *)(v5 + 40);
  *(_DWORD *)v5 = a1;
  *(_DWORD *)(v5 + 40) = a2;
  if ( v7 == 42 )
  {
    if ( *(_DWORD *)(v5 + 24) == 2 )
    {
      a1[12] = crc32(0, nullptr, 0);
      v60 = *(_DWORD *)(v5 + 20);
      v61 = v60 + 1;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v60) = 31;
      v60 += 2;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v61) = -117;
      v62 = v60 + 1;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v60) = 8;
      v63 = *(int **)(v5 + 28);
      *(_DWORD *)(v5 + 20) = v62;
      if ( !v63 )
      {
        v91 = v62 + 1;
        v92 = v62 + 2;
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v62) = 0;
        v93 = v62 + 3;
        v94 = v62 + 4;
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v91) = 0;
        v95 = v94 + 1;
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v92) = 0;
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v93) = 0;
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v94) = 0;
        v96 = *(_DWORD *)(v5 + 132);
        *(_DWORD *)(v5 + 20) = v95;
        if ( v96 == 9 )
        {
          LOBYTE(v63) = 2;
        }
        else if ( *(int *)(v5 + 136) > 1 || v96 <= 1 )
        {
          LOBYTE(v63) = 4;
        }
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v95) = (_BYTE)v63;
        v97 = v95 + 1;
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v97) = 3;
        v10 = v97 + 1;
        *(_DWORD *)(v5 + 4) = 113;
        *(_DWORD *)(v5 + 20) = v97 + 1;
        goto LABEL_21;
      }
      v64 = v63[4];
      v65 = *v63;
      v98 = v63[7];
      v66 = v63[11];
      v67 = v63[9];
      if ( v66 )
        v68 = 2;
      else
        v68 = 0;
      if ( v65 )
        ++v68;
      if ( v64 )
        v69 = 4;
      else
        v69 = 0;
      v70 = v68 + v69;
      if ( v98 )
        v71 = 8;
      else
        v71 = 0;
      v72 = v70 + v71;
      if ( v67 )
        v73 = 16;
      else
        v73 = 0;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v62) = v72 + v73;
      v74 = *(_DWORD *)(v5 + 28);
      v75 = v62 + 1;
      *(_DWORD *)(v5 + 20) = v62 + 1;
      v76 = *(_DWORD *)(v74 + 4);
      v77 = v62 + 2;
      v78 = v62 + 3;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v75) = v76;
      v79 = *(_DWORD *)(v5 + 28);
      *(_DWORD *)(v5 + 20) = v77;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v77) = BYTE1(*(_DWORD *)(v79 + 4));
      v80 = *(_DWORD *)(v5 + 28);
      *(_DWORD *)(v5 + 20) = v78;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v78) = *(_WORD *)(v80 + 6);
      v81 = *(_DWORD *)(v5 + 28);
      *(_DWORD *)(v5 + 20) = v78 + 1;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v78 + 1) = *(_BYTE *)(v81 + 7);
      v82 = *(_DWORD *)(v5 + 132);
      *(_DWORD *)(v5 + 20) = v78 + 2;
      if ( v82 == 9 )
      {
        LOBYTE(v8) = 2;
      }
      else if ( *(int *)(v5 + 136) > 1 || v82 <= 1 )
      {
        LOBYTE(v8) = 4;
      }
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v78 + 2) = v8;
      v83 = *(_DWORD *)(v5 + 28);
      v84 = v78 + 3;
      *(_DWORD *)(v5 + 20) = v78 + 3;
      v85 = v78 + 4;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v84) = *(_DWORD *)(v83 + 12);
      v38 = *(_DWORD **)(v5 + 28);
      *(_DWORD *)(v5 + 20) = v84 + 1;
      if ( v38[4] )
      {
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v85) = v38[5];
        v86 = *(_DWORD *)(v5 + 28);
        *(_DWORD *)(v5 + 20) = v85 + 1;
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v85 + 1) = BYTE1(*(_DWORD *)(v86 + 20));
        v38 = *(_DWORD **)(v5 + 28);
        *(_DWORD *)(v5 + 20) = v85 + 2;
      }
      if ( v38[11] )
      {
        a1[12] = crc32(a1[12], *(char **)(v5 + 8), *(_DWORD *)(v5 + 20));
        v38 = *(_DWORD **)(v5 + 28);
      }
      *(_DWORD *)(v5 + 32) = 0;
      *(_DWORD *)(v5 + 4) = 69;
      goto LABEL_76;
    }
    if ( *(int *)(v5 + 136) > 1 || (v37 = *(_DWORD *)(v5 + 132), v37 <= 1) )
    {
      v24 = 0;
    }
    else if ( v37 > 5 )
    {
      if ( v37 == 6 )
        v24 = 128;
      else
        v24 = 192;
    }
    else
    {
      v24 = 64;
    }
    v25 = v24 | ((*(_DWORD *)(v5 + 48) << 12) - 30720);
    LOWORD(v26) = 4229;
    if ( *(_DWORD *)(v5 + 108) )
      v25 |= 0x20u;
    HIWORD(v26) = 2114;
    v27 = v25 + 31;
    v28 = v25
        - 31
        * ((unsigned int)(((v26 * (unsigned __int64)(unsigned int)v25) >> 32)
                        + ((unsigned int)(v25 - ((v26 * (unsigned __int64)(unsigned int)v25) >> 32)) >> 1)) >> 4);
    v29 = *(_DWORD *)(v5 + 20);
    v30 = *(_DWORD *)(v5 + 8);
    LOWORD(v28) = v27 - v28;
    *(_DWORD *)(v5 + 4) = 113;
    *(_BYTE *)(v30 + v29++) = BYTE1(v28);
    v31 = v29 + 1;
    *(_BYTE *)(*(_DWORD *)(v5 + 8) + v29) = v28;
    v32 = *(_DWORD *)(v5 + 108);
    *(_DWORD *)(v5 + 20) = v29 + 1;
    if ( v32 )
    {
      v33 = a1[12];
      v34 = v31 + 1;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v31) = HIBYTE(v33);
      v35 = v31 + 2;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v34) = BYTE2(v33);
      *(_DWORD *)(v5 + 20) = v35;
      v36 = a1[12] << 16;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v35) = HIBYTE(v36);
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v35 + 1) = BYTE2(v36);
      *(_DWORD *)(v5 + 20) = v35 + 2;
    }
    a1[12] = adler32_0(0, nullptr, 0);
    v7 = *(_DWORD *)(v5 + 4);
  }
  if ( v7 != 69 )
  {
    v10 = *(_DWORD *)(v5 + 20);
LABEL_18:
    if ( v7 != 73 )
      goto LABEL_19;
    v38 = *(_DWORD **)(v5 + 28);
    goto LABEL_93;
  }
  v38 = *(_DWORD **)(v5 + 28);
LABEL_76:
  if ( v38[4] )
  {
    v39 = *(_DWORD *)(v5 + 32);
    v10 = *(_DWORD *)(v5 + 20);
    v40 = v10;
    if ( v39 < *((unsigned __int16 *)v38 + 10) )
    {
      v41 = *(_DWORD *)(v5 + 20);
      while ( 1 )
      {
        if ( *(_DWORD *)(v5 + 12) == v41 )
        {
          if ( v38[11] && v41 > v10 )
            a1[12] = crc32(a1[12], (char *)(*(_DWORD *)(v5 + 8) + v10), v41 - v10);
          flush_pending(a1);
          v10 = *(_DWORD *)(v5 + 20);
          v40 = v10;
          if ( v10 == *(_DWORD *)(v5 + 12) )
          {
            v38 = *(_DWORD **)(v5 + 28);
            break;
          }
          v39 = *(_DWORD *)(v5 + 32);
          v38 = *(_DWORD **)(v5 + 28);
          v41 = *(_DWORD *)(v5 + 20);
        }
        *(_BYTE *)(*(_DWORD *)(v5 + 8) + v41) = *(_BYTE *)(v38[4] + v39);
        v38 = *(_DWORD **)(v5 + 28);
        ++v41;
        v39 = *(_DWORD *)(v5 + 32) + 1;
        *(_DWORD *)(v5 + 20) = v41;
        *(_DWORD *)(v5 + 32) = v39;
        if ( *((unsigned __int16 *)v38 + 10) <= v39 )
        {
          v10 = v41;
          break;
        }
      }
    }
    if ( v38[11] && v40 < v10 )
    {
      a1[12] = crc32(a1[12], (char *)(*(_DWORD *)(v5 + 8) + v40), v10 - v40);
      v10 = *(_DWORD *)(v5 + 20);
      v38 = *(_DWORD **)(v5 + 28);
    }
    if ( *(_DWORD *)(v5 + 32) != v38[5] )
    {
      v7 = *(_DWORD *)(v5 + 4);
      goto LABEL_18;
    }
    *(_DWORD *)(v5 + 32) = 0;
    *(_DWORD *)(v5 + 4) = 73;
  }
  else
  {
    *(_DWORD *)(v5 + 4) = 73;
    v10 = *(_DWORD *)(v5 + 20);
  }
LABEL_93:
  v42 = v38;
  if ( !v38[7] )
  {
    *(_DWORD *)(v5 + 4) = 91;
    goto LABEL_113;
  }
  v43 = v10;
  v44 = v10;
  while ( 1 )
  {
    if ( v44 != *(_DWORD *)(v5 + 12) )
    {
      v10 = *(_DWORD *)(v5 + 20);
      goto LABEL_95;
    }
    if ( v42[11] && v43 < v44 )
      a1[12] = crc32(a1[12], (char *)(*(_DWORD *)(v5 + 8) + v43), v44 - v43);
    flush_pending(a1);
    v10 = *(_DWORD *)(v5 + 20);
    v43 = v10;
    if ( v10 == *(_DWORD *)(v5 + 12) )
      break;
    v42 = *(_DWORD **)(v5 + 28);
LABEL_95:
    v45 = v42[7];
    v46 = *(_DWORD *)(v5 + 32);
    v47 = *(_DWORD *)(v5 + 8);
    v44 = v10 + 1;
    v48 = v46 + 1;
    v49 = *(unsigned __int8 *)(v45 + v46);
    *(_DWORD *)(v5 + 32) = v48;
    *(_BYTE *)(v47 + v10) = v49;
    *(_DWORD *)(v5 + 20) = v10 + 1;
    if ( !v49 )
    {
      v50 = 0;
      ++v10;
      goto LABEL_107;
    }
    v42 = *(_DWORD **)(v5 + 28);
  }
  v50 = 1;
LABEL_107:
  if ( *(_DWORD *)(*(_DWORD *)(v5 + 28) + 44) && v43 < v10 )
  {
    a1[12] = crc32(a1[12], (char *)(*(_DWORD *)(v5 + 8) + v43), v10 - v43);
    v10 = *(_DWORD *)(v5 + 20);
  }
  if ( v50 )
  {
    v7 = *(_DWORD *)(v5 + 4);
LABEL_19:
    if ( v7 != 91 )
    {
LABEL_20:
      if ( v7 == 103 )
      {
        v38 = *(_DWORD **)(v5 + 28);
        goto LABEL_134;
      }
      goto LABEL_21;
    }
    v38 = *(_DWORD **)(v5 + 28);
  }
  else
  {
    v38 = *(_DWORD **)(v5 + 28);
    *(_DWORD *)(v5 + 32) = 0;
    *(_DWORD *)(v5 + 4) = 91;
  }
LABEL_113:
  v51 = v38;
  if ( !v38[9] )
  {
    *(_DWORD *)(v5 + 4) = 103;
    goto LABEL_134;
  }
  v52 = v10;
  v53 = v10;
  while ( 2 )
  {
    if ( v53 != *(_DWORD *)(v5 + 12) )
    {
      v10 = *(_DWORD *)(v5 + 20);
LABEL_115:
      v54 = v51[9];
      v55 = *(_DWORD *)(v5 + 32);
      v56 = *(_DWORD *)(v5 + 8);
      v53 = v10 + 1;
      v57 = v55 + 1;
      v58 = *(unsigned __int8 *)(v54 + v55);
      *(_DWORD *)(v5 + 32) = v57;
      *(_BYTE *)(v56 + v10) = v58;
      *(_DWORD *)(v5 + 20) = v10 + 1;
      if ( !v58 )
      {
        v59 = 0;
        ++v10;
        goto LABEL_125;
      }
      v51 = *(_DWORD **)(v5 + 28);
      continue;
    }
    break;
  }
  if ( v51[11] && v52 < v53 )
    a1[12] = crc32(a1[12], (char *)(*(_DWORD *)(v5 + 8) + v52), v53 - v52);
  flush_pending(a1);
  v10 = *(_DWORD *)(v5 + 20);
  v52 = v10;
  if ( v10 != *(_DWORD *)(v5 + 12) )
  {
    v51 = *(_DWORD **)(v5 + 28);
    goto LABEL_115;
  }
  v59 = 1;
LABEL_125:
  if ( *(_DWORD *)(*(_DWORD *)(v5 + 28) + 44) && v52 < v10 )
  {
    a1[12] = crc32(a1[12], (char *)(*(_DWORD *)(v5 + 8) + v52), v10 - v52);
    v10 = *(_DWORD *)(v5 + 20);
  }
  if ( v59 )
    v7 = *(_DWORD *)(v5 + 4);
  else
    v7 = 103;
  if ( v59 )
    goto LABEL_20;
  *(_DWORD *)(v5 + 4) = v7;
  v38 = *(_DWORD **)(v5 + 28);
LABEL_134:
  if ( v38[11] )
  {
    if ( v10 + 2 <= *(_DWORD *)(v5 + 12)
      || (flush_pending(a1), v10 = *(_DWORD *)(v5 + 20), v10 + 2 <= *(_DWORD *)(v5 + 12)) )
    {
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v10) = a1[12];
      *(_DWORD *)(v5 + 20) = v10 + 1;
      *(_BYTE *)(*(_DWORD *)(v5 + 8) + v10 + 1) = BYTE1(a1[12]);
      *(_DWORD *)(v5 + 20) = v10 + 2;
      a1[12] = crc32(0, nullptr, 0);
      *(_DWORD *)(v5 + 4) = 113;
      v10 = *(_DWORD *)(v5 + 20);
    }
  }
  else
  {
    *(_DWORD *)(v5 + 4) = 113;
  }
LABEL_21:
  if ( v10 )
  {
    flush_pending(a1);
    result = a1[4];
    if ( result )
    {
      v11 = a1[1];
      goto LABEL_29;
    }
    goto LABEL_44;
  }
  v11 = a1[1];
  v12 = a2 == v9;
  if ( a2 <= v9 )
    v12 = v11 == 0;
  if ( v12 )
  {
    if ( a2 == 4 )
    {
      v11 = 0;
      goto LABEL_29;
    }
    goto LABEL_105;
  }
LABEL_29:
  v13 = *(_DWORD *)(v5 + 4);
  if ( v13 == 666 )
  {
    if ( !v11 )
    {
LABEL_31:
      if ( *(_DWORD *)(v5 + 116) )
        goto LABEL_34;
      if ( a2 )
      {
        if ( v13 != 666 )
          goto LABEL_34;
LABEL_51:
        if ( a2 == 4 )
        {
          v17 = *(_DWORD *)(v5 + 24);
          if ( v17 <= 0 )
            return 1;
          if ( v17 == 2 )
          {
            v87 = *(_DWORD *)(v5 + 20);
            v88 = v87 + 2;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v87) = a1[12];
            *(_DWORD *)(v5 + 20) = v87 + 1;
            v89 = v87 + 3;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v87 + 1) = BYTE1(a1[12]);
            *(_DWORD *)(v5 + 20) = v87 + 2;
            v90 = v87 + 4;
            v87 += 5;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v88) = *((_WORD *)a1 + 25);
            *(_DWORD *)(v5 + 20) = v88 + 1;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v89) = *((_BYTE *)a1 + 51);
            *(_DWORD *)(v5 + 20) = v90;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v90) = a1[2];
            *(_DWORD *)(v5 + 20) = v87;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v87) = BYTE1(a1[2]);
            *(_DWORD *)(v5 + 20) = v87 + 1;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v87 + 1) = *((_WORD *)a1 + 5);
            *(_DWORD *)(v5 + 20) = v87 + 2;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v87 + 2) = *((_BYTE *)a1 + 11);
            *(_DWORD *)(v5 + 20) = v87 + 3;
          }
          else
          {
            v18 = a1[12];
            v19 = *(_DWORD *)(v5 + 20);
            v20 = v19 + 1;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v19) = HIBYTE(v18);
            v19 += 2;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v20) = BYTE2(v18);
            *(_DWORD *)(v5 + 20) = v19;
            v21 = a1[12] << 16;
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v19) = HIBYTE(v21);
            *(_BYTE *)(*(_DWORD *)(v5 + 8) + v19 + 1) = BYTE2(v21);
            *(_DWORD *)(v5 + 20) = v19 + 2;
          }
          flush_pending(a1);
          v22 = *(_DWORD *)(v5 + 24);
          v23 = *(_DWORD *)(v5 + 20);
          if ( v22 > 0 )
            *(_DWORD *)(v5 + 24) = -v22;
          return v23 == 0;
        }
      }
      return 0;
    }
LABEL_105:
    a1[6] = "buffer error";
    return -5;
  }
  if ( !v11 )
    goto LABEL_31;
LABEL_34:
  v14 = (*((int (__fastcall **)(int, int))&configuration_table + 3 * *(_DWORD *)(v5 + 132) + 2))(v5, a2);
  if ( (unsigned int)(v14 - 2) <= 1 )
    *(_DWORD *)(v5 + 4) = 666;
  v15 = v14 == 0;
  if ( v14 )
    v15 = v14 == 2;
  v16 = v15;
  if ( v15 )
  {
    result = a1[4];
    if ( !result )
      goto LABEL_44;
    return 0;
  }
  if ( v14 != 1 )
    goto LABEL_51;
  if ( a2 == 1 )
  {
    tr_align(v5);
  }
  else
  {
    tr_stored_block(v5, v16, v16, v16);
    if ( a2 == 3 )
    {
      *(_WORD *)(*(_DWORD *)(v5 + 68) + 2 * *(_DWORD *)(v5 + 76) - 2) = v16;
      LC_API_MEMSET_0(*(void **)(v5 + 68), v16, 2 * (*(_DWORD *)(v5 + 76) + 0x7FFFFFFF));
    }
  }
  flush_pending(a1);
  result = a1[4];
  if ( result )
    goto LABEL_51;
LABEL_44:
  *(_DWORD *)(v5 + 40) = -1;
  return result;
}


// ===== 6ea188 deflateParams =====
int __fastcall deflateParams(_DWORD *a1, unsigned int a2, int a3)
{
  int v3; // r4
  int result; // r0
  _DWORD *v5; // r5
  _BOOL4 v6; // r3
  int v7; // r1
  unsigned __int16 *v8; // r1
  int v9; // r6
  int v10; // r3
  int v11; // r12
  int v12; // r1
  int v13; // [sp+4h] [bp-4h]

  v3 = a2;
  if ( !a1 )
    return -2;
  v5 = (_DWORD *)a1[7];
  if ( !v5 )
    return -2;
  if ( a2 == -1 )
  {
    v6 = 0;
    v3 = 6;
  }
  else
  {
    v6 = a2 > 9;
  }
  if ( v6 | ((unsigned int)a3 >> 31) || a3 > 4 )
    return -2;
  v7 = v5[33];
  if ( *((_DWORD *)&configuration_table + 3 * v3 + 2) != *((_DWORD *)&configuration_table + 3 * v7 + 2) && a1[2] )
  {
    v13 = a3;
    result = deflate(a1, 1);
    v7 = v5[33];
    a3 = v13;
  }
  else
  {
    result = 0;
  }
  if ( v7 != v3 )
  {
    v8 = (unsigned __int16 *)((char *)&configuration_table + 12 * v3);
    v9 = *v8;
    v10 = v8[3];
    v11 = v8[1];
    v12 = v8[2];
    v5[35] = v9;
    v5[32] = v11;
    v5[36] = v12;
    v5[31] = v10;
    v5[33] = v3;
  }
  v5[34] = a3;
  return result;
}


// ===== 6ea280 deflate_slow =====
int __fastcall deflate_slow(_DWORD *a1, int a2)
{
  unsigned int v2; // r3
  unsigned int v4; // r5
  int v5; // r3
  int v6; // r5
  int v7; // r2
  int v8; // r1
  unsigned int v9; // r0
  int v10; // r3
  int v11; // r2
  int v12; // r3
  unsigned __int8 *matched; // r0
  int v14; // r0
  int v15; // r12
  unsigned __int16 v16; // r3
  unsigned int v17; // r2
  char *v18; // r3
  int v19; // r3
  int v20; // r0
  unsigned int v21; // r3
  int v22; // r0
  int v23; // r5
  int v24; // r1
  int v25; // r1
  int v26; // r3
  int v27; // r3
  unsigned int v28; // r3
  bool v29; // zf
  int v30; // r2
  void *v31; // r0
  int v33; // r1
  int v34; // r2
  int v35; // r2
  int v36; // r3
  int v37; // r1
  void *v38; // r0
  int v39; // r0
  int v40; // r1
  int v41; // r2
  int v42; // r1
  void *v43; // r0
  int v44; // [sp+4h] [bp-20h]
  int v45; // [sp+8h] [bp-1Ch]
  int v46; // [sp+8h] [bp-1Ch]
  __int16 v47; // [sp+Ch] [bp-18h]
  int v48; // [sp+Ch] [bp-18h]

  v2 = a1[29];
  v4 = 0;
LABEL_2:
  if ( v2 > 0x105 )
  {
LABEL_3:
    v5 = a1[27];
    v6 = a1[17];
    v7 = (*(unsigned __int8 *)(a1[14] + v5 + 2) ^ (a1[18] << a1[22])) & a1[21];
    v8 = a1[13];
    a1[18] = v7;
    v4 = *(unsigned __int16 *)(v6 + 2 * v7);
    *(_WORD *)(a1[16] + 2 * (v8 & v5)) = v4;
    *(_WORD *)(a1[17] + 2 * a1[18]) = *((_WORD *)a1 + 54);
    goto LABEL_4;
  }
  while ( 1 )
  {
    fill_window((unsigned int)a1);
    v28 = a1[29];
    v29 = v28 == 261;
    if ( v28 <= 0x105 )
      v29 = a2 == 0;
    if ( v29 )
      return 0;
    if ( !v28 )
      break;
    if ( v28 > 2 )
      goto LABEL_3;
LABEL_4:
    v9 = a1[24];
    v10 = a1[28];
    a1[30] = v9;
    a1[25] = v10;
    a1[24] = 2;
    if ( !v4 || v9 >= a1[32] )
      goto LABEL_10;
    v11 = a1[27];
    if ( a1[11] - 262 >= v11 - v4 )
    {
      v12 = a1[34];
      if ( (unsigned int)(v12 - 2) <= 1 )
      {
        if ( v12 != 3 || v11 - v4 != 1 )
          goto LABEL_45;
        matched = (unsigned __int8 *)longest_match_fast(a1, v4);
        a1[24] = matched;
        if ( (unsigned int)matched <= 5 )
        {
LABEL_48:
          if ( a1[34] == 1 )
          {
            v11 = a1[27];
LABEL_51:
            v9 = a1[30];
            a1[24] = 2;
            goto LABEL_11;
          }
          if ( matched == (_BYTE *)&dword_0 + 3 )
          {
            v11 = a1[27];
            if ( (unsigned int)(v11 - a1[28]) <= 0x1000 )
            {
              v9 = a1[30];
              goto LABEL_11;
            }
            goto LABEL_51;
          }
          v11 = a1[27];
LABEL_45:
          v9 = a1[30];
          goto LABEL_11;
        }
      }
      else
      {
        matched = longest_match(a1, v4);
        a1[24] = matched;
        if ( (unsigned int)matched <= 5 )
          goto LABEL_48;
      }
      v9 = a1[30];
LABEL_10:
      v11 = a1[27];
    }
LABEL_11:
    if ( v9 <= 2 || a1[24] > v9 )
    {
      if ( a1[26] )
      {
        v33 = *(unsigned __int8 *)(a1[14] + v11 - 1);
        *(_WORD *)(a1[1449] + 2 * a1[1448]) = 0;
        v34 = a1[1448];
        *(_BYTE *)(a1[1446] + v34) = v33;
        a1[1448] = v34 + 1;
        ++LOWORD(a1[v33 + 37]);
        if ( v34 + 1 == a1[1447] - 1 )
        {
          v36 = a1[23];
          if ( v36 < 0 )
            v37 = 0;
          else
            v37 = a1[14] + v36;
          tr_flush_block(a1, v37, a1[27] - v36, 0);
          v38 = (void *)*a1;
          a1[23] = a1[27];
          flush_pending(v38);
        }
        v35 = *a1;
        v2 = a1[29] - 1;
        ++a1[27];
        a1[29] = v2;
        if ( !*(_DWORD *)(v35 + 16) )
          return 0;
      }
      else
      {
        v2 = a1[29] - 1;
        a1[27] = v11 + 1;
        a1[26] = 1;
        a1[29] = v2;
      }
      goto LABEL_2;
    }
    v14 = (unsigned __int8)(v9 - 3);
    v47 = v11 - 1 - a1[25];
    v45 = length_code[v14];
    v44 = a1[29];
    *(_WORD *)(a1[1449] + 2 * a1[1448]) = v47;
    v15 = v45;
    v46 = a1[1448] + 1;
    *(_BYTE *)(a1[1446] + a1[1448]) = v14;
    a1[1448] = v46;
    ++LOWORD(a1[v15 + 294]);
    v16 = v47 - 1;
    v17 = v11 + v44 - 3;
    if ( (unsigned __int16)(v47 - 1) <= 0xFFu )
      v18 = (char *)dist_code[v16];
    else
      v18 = (char *)&dist_code[v16 >> 7];
    if ( (unsigned __int16)(v47 - 1) > 0xFFu )
      v18 = (char *)(unsigned __int8)v18[256];
    ++LOWORD(a1[(_DWORD)(v18 + 610)]);
    v19 = a1[30];
    v20 = a1[1447] - 1;
    a1[29] = a1[29] + 1 - v19;
    a1[30] = v19 - 2;
    v48 = v20;
    do
    {
      v21 = a1[27] + 1;
      a1[27] = v21;
      if ( v17 >= v21 )
      {
        v22 = a1[17];
        v23 = (*(unsigned __int8 *)(a1[14] + v21 + 2) ^ (a1[18] << a1[22])) & a1[21];
        v24 = a1[13];
        a1[18] = v23;
        v4 = *(unsigned __int16 *)(v22 + 2 * v23);
        *(_WORD *)(a1[16] + 2 * (v21 & v24)) = v4;
        *(_WORD *)(a1[17] + 2 * a1[18]) = *((_WORD *)a1 + 54);
      }
      v25 = a1[30] - 1;
      v29 = a1[30] == 1;
      a1[30] = v25;
    }
    while ( !v29 );
    v26 = a1[27];
    a1[26] = v25;
    v27 = v26 + 1;
    a1[24] = 2;
    a1[27] = v27;
    if ( v46 == v48 )
    {
      v30 = a1[23];
      if ( v30 >= 0 )
        v25 = a1[14] + v30;
      tr_flush_block(a1, v25, v27 - v30, 0);
      v31 = (void *)*a1;
      a1[23] = a1[27];
      flush_pending(v31);
      if ( !*(_DWORD *)(*a1 + 16) )
        return 0;
    }
    if ( a1[29] > 0x105u )
      goto LABEL_3;
  }
  if ( a1[26] )
  {
    v39 = *(unsigned __int8 *)(a1[14] + a1[27] - 1);
    *(_WORD *)(a1[1449] + 2 * a1[1448]) = 0;
    v40 = a1[1448];
    *(_BYTE *)(a1[1446] + v40) = v39;
    a1[1448] = v40 + 1;
    ++LOWORD(a1[v39 + 37]);
    a1[26] = 0;
  }
  v41 = a1[23];
  if ( v41 < 0 )
    v42 = 0;
  else
    v42 = a1[14];
  if ( v41 >= 0 )
    v42 += v41;
  tr_flush_block(a1, v42, a1[27] - v41, a2 == 4);
  v43 = (void *)*a1;
  a1[23] = a1[27];
  flush_pending(v43);
  if ( *(_DWORD *)(*a1 + 16) )
  {
    if ( a2 == 4 )
      return 3;
    else
      return 1;
  }
  else
  {
    if ( a2 != 4 )
      return 0;
    return 2;
  }
}


// ===== 6ea834 deflate_fast =====
int __fastcall deflate_fast(_DWORD *a1, int a2)
{
  unsigned int v2; // r5
  int v4; // r3
  int v5; // r2
  int v6; // r1
  int v7; // r0
  unsigned __int8 *matched; // r0
  int v9; // r3
  __int16 v10; // r3
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v14; // r12
  int v15; // r1
  unsigned int v16; // r3
  bool v17; // cc
  int v18; // r2
  int v19; // r3
  unsigned int v20; // r3
  unsigned int v21; // r0
  _BOOL4 v22; // r2
  unsigned int v23; // r1
  int v24; // r1
  int v25; // r5
  int v26; // r3
  int v27; // r12
  int v28; // r1
  int v29; // r0
  int v30; // r12
  int v31; // r3
  int v32; // r1
  void *v33; // r0
  int v35; // r1
  int v36; // r2
  int v37; // r1
  int v38; // r1
  int v39; // r1
  unsigned int v40; // r3
  int v41; // t1
  int v42; // r12
  int v43; // r0
  unsigned int v44; // r1
  bool v45; // zf
  int v46; // r2
  void *v47; // r0

  v2 = 0;
  while ( 1 )
  {
    if ( a1[29] > 0x105u )
    {
LABEL_3:
      v4 = a1[27];
      v5 = a1[17];
      v6 = (*(unsigned __int8 *)(a1[14] + v4 + 2) ^ (a1[18] << a1[22])) & a1[21];
      v7 = a1[13];
      a1[18] = v6;
      v2 = *(unsigned __int16 *)(v5 + 2 * v6);
      *(_WORD *)(a1[16] + 2 * (v7 & v4)) = v2;
      *(_WORD *)(a1[17] + 2 * a1[18]) = *((_WORD *)a1 + 54);
      goto LABEL_4;
    }
    fill_window((unsigned int)a1);
    v44 = a1[29];
    v45 = v44 == 261;
    if ( v44 <= 0x105 )
      v45 = a2 == 0;
    if ( v45 )
      return 0;
    if ( !v44 )
      break;
    if ( v44 > 2 )
      goto LABEL_3;
LABEL_4:
    if ( v2 )
    {
      v9 = a1[27];
      if ( a1[11] - 262 < v9 - v2 )
        goto LABEL_39;
      v38 = a1[34];
      if ( (unsigned int)(v38 - 2) <= 1 )
      {
        if ( v38 == 3 && v9 - v2 == 1 )
        {
          matched = (unsigned __int8 *)longest_match_fast(a1, v2);
          v9 = a1[27];
          a1[24] = matched;
          goto LABEL_6;
        }
LABEL_39:
        matched = (unsigned __int8 *)a1[24];
        goto LABEL_6;
      }
      matched = longest_match(a1, v2);
      v9 = a1[27];
      a1[24] = matched;
    }
    else
    {
      matched = (unsigned __int8 *)a1[24];
      v9 = a1[27];
    }
LABEL_6:
    if ( (unsigned int)matched <= 2 )
    {
      v35 = *(unsigned __int8 *)(a1[14] + v9);
      *(_WORD *)(a1[1449] + 2 * a1[1448]) = 0;
      v36 = a1[1448];
      *(_BYTE *)(a1[1446] + v36) = v35;
      a1[1448] = v36 + 1;
      ++LOWORD(a1[v35 + 37]);
      v37 = a1[27] + 1;
      v22 = v36 + 1 == a1[1447] - 1;
      --a1[29];
      a1[27] = v37;
    }
    else
    {
      v10 = v9 - a1[28];
      v11 = (unsigned __int8)((_BYTE)matched - 3);
      *(_WORD *)(a1[1449] + 2 * a1[1448]) = v10;
      v12 = length_code[v11];
      v13 = a1[1448];
      v14 = v13 + 1;
      *(_BYTE *)(a1[1446] + v13) = v11;
      v15 = (int)&a1[v12 + 293];
      a1[1448] = v13 + 1;
      v16 = (unsigned __int16)(v10 - 1);
      ++*(_WORD *)(v15 + 4);
      v17 = v16 > 0xFF;
      if ( v16 <= 0xFF )
        v11 = 6860;
      else
        v15 = 6860;
      if ( v16 <= 0xFF )
        v18 = *(int *)((char *)&__GLOBAL_OFFSET_TABLE_ + v11);
      else
        v18 = *(int *)((char *)&__GLOBAL_OFFSET_TABLE_ + v15);
      if ( v16 <= 0xFF )
        v19 = *(unsigned __int8 *)(v18 + v16);
      else
        v19 = v18 + (v16 >> 7);
      if ( v17 )
        v19 = *(unsigned __int8 *)(v19 + 256);
      ++LOWORD(a1[v19 + 610]);
      v20 = a1[24];
      v21 = a1[32];
      v22 = v14 == a1[1447] - 1;
      v23 = a1[29] - v20;
      a1[29] = v23;
      if ( v20 > v21 || v23 <= 2 )
      {
        v39 = a1[14];
        v40 = v20 + a1[27];
        a1[24] = 0;
        a1[27] = v40;
        v41 = *(unsigned __int8 *)(v39 + v40);
        v42 = a1[22];
        v43 = a1[21];
        a1[18] = v41;
        a1[18] = (*(unsigned __int8 *)(v39 + v40 + 1) ^ (v41 << v42)) & v43;
      }
      else
      {
        a1[24] = v20 - 1;
        do
        {
          v24 = a1[14];
          v25 = a1[18];
          v26 = a1[27] + 1;
          a1[27] = v26;
          v27 = *(unsigned __int8 *)(v24 + v26 + 2);
          v28 = a1[17];
          v29 = (v27 ^ (v25 << a1[22])) & a1[21];
          v30 = a1[13];
          a1[18] = v29;
          v2 = *(unsigned __int16 *)(v28 + 2 * v29);
          *(_WORD *)(a1[16] + 2 * (v26 & v30)) = v2;
          *(_WORD *)(a1[17] + 2 * a1[18]) = *((_WORD *)a1 + 54);
          v45 = a1[24]-- == 1;
        }
        while ( !v45 );
        ++a1[27];
      }
    }
    if ( v22 )
    {
      v31 = a1[23];
      v32 = v31 < 0 ? 0 : a1[14];
      if ( v31 >= 0 )
        v32 += v31;
      tr_flush_block(a1, v32, a1[27] - v31, 0);
      v33 = (void *)*a1;
      a1[23] = a1[27];
      flush_pending(v33);
      if ( !*(_DWORD *)(*a1 + 16) )
        return 0;
    }
  }
  v46 = a1[23];
  if ( v46 >= 0 )
    v44 = a1[14] + v46;
  tr_flush_block(a1, v44, a1[27] - v46, a2 == 4);
  v47 = (void *)*a1;
  a1[23] = a1[27];
  flush_pending(v47);
  if ( *(_DWORD *)(*a1 + 16) )
  {
    if ( a2 == 4 )
      return 3;
    else
      return 1;
  }
  else
  {
    if ( a2 != 4 )
      return 0;
    return 2;
  }
}


// ===== 6eac84 deflate_stored =====
int __fastcall deflate_stored(_DWORD *a1, int a2)
{
  unsigned int v2; // r5
  unsigned int v5; // r3
  int v6; // r2
  int v7; // r0
  unsigned int v8; // r3
  int v9; // r1
  unsigned int v10; // r2
  int v11; // r3
  int v12; // r1
  void *v13; // r0
  unsigned int v14; // r2
  unsigned int v15; // r3
  bool v16; // cc
  void *v17; // r0
  int v19; // r1
  int v20; // r2
  void *v21; // r0

  v2 = a1[3] - 5;
  if ( v2 > 0xFFFE )
    v2 = 0xFFFF;
  while ( 1 )
  {
    v5 = a1[29];
    if ( v5 <= 1 )
    {
      fill_window((unsigned int)a1);
      v5 = a1[29];
      if ( a2 )
        v19 = 0;
      else
        v19 = v5 == 0;
      if ( v19 )
        return 0;
      if ( !v5 )
        break;
    }
    v6 = a1[27];
    v7 = a1[23];
    a1[29] = 0;
    v8 = v5 + v6;
    a1[27] = v8;
    v9 = v7;
    v10 = v2 + v7;
    if ( !v8 || v8 >= v10 )
    {
      if ( v7 >= 0 )
        v9 = a1[14];
      v11 = v8 - v10;
      if ( v7 >= 0 )
        v12 = v9 + v7;
      else
        v12 = 0;
      a1[29] = v11;
      a1[27] = v10;
      tr_flush_block(a1, v12, v2, 0);
      v13 = (void *)*a1;
      a1[23] = a1[27];
      flush_pending(v13);
      if ( !*(_DWORD *)(*a1 + 16) )
        return 0;
      v8 = a1[27];
      v9 = a1[23];
    }
    v14 = v8 - v9;
    v15 = a1[11] - 262;
    if ( v15 <= v14 )
    {
      v16 = v9 < 0;
      if ( v9 < 0 )
        v9 = 0;
      else
        v15 = a1[14];
      if ( !v16 )
        v9 += v15;
      tr_flush_block(a1, v9, v14, 0);
      v17 = (void *)*a1;
      a1[23] = a1[27];
      flush_pending(v17);
      if ( !*(_DWORD *)(*a1 + 16) )
        return 0;
    }
  }
  v20 = a1[23];
  if ( v20 >= 0 )
    v19 = a1[14] + v20;
  tr_flush_block(a1, v19, a1[27] - v20, a2 == 4);
  v21 = (void *)*a1;
  a1[23] = a1[27];
  flush_pending(v21);
  if ( *(_DWORD *)(*a1 + 16) )
  {
    if ( a2 == 4 )
      return 3;
    else
      return 1;
  }
  else
  {
    if ( a2 != 4 )
      return 0;
    return 2;
  }
}


// ===== 6eae30 deflateBound =====
unsigned int __fastcall deflateBound(int a1, int a2)
{
  bool v2; // zf
  unsigned int result; // r0
  int v5; // r2

  v2 = a1 == 0;
  result = a2 + 11 + ((unsigned int)(a2 + 7) >> 3) + ((unsigned int)(a2 + 63) >> 6);
  if ( !v2 )
  {
    v5 = *(_DWORD *)(a1 + 28);
    if ( v5 )
    {
      if ( *(_DWORD *)(v5 + 48) == 15 && *(_DWORD *)(v5 + 80) == 15 )
        return compressBound(a2);
    }
  }
  return result;
}


// ===== 6eae78 deflateReset =====
int __fastcall deflateReset(_DWORD *a1)
{
  int v3; // r5
  int v4; // r2
  int v5; // r1
  bool v6; // zf
  bool v7; // nf
  int v8; // r3
  int v9; // r0
  int v10; // r3
  unsigned __int16 *v11; // r2
  int v12; // r0
  int v13; // r12
  int v14; // r1
  int v15; // r2

  if ( !a1 )
    return -2;
  v3 = a1[7];
  if ( !v3 || !a1[8] || !a1[9] )
    return -2;
  a1[11] = 2;
  a1[5] = 0;
  a1[2] = 0;
  a1[6] = 0;
  v4 = *(_DWORD *)(v3 + 24);
  v5 = *(_DWORD *)(v3 + 8);
  *(_DWORD *)(v3 + 20) = 0;
  v6 = v4 == 0;
  v7 = v4 < 0;
  if ( v4 < 0 )
    v4 = -v4;
  *(_DWORD *)(v3 + 16) = v5;
  if ( v7 )
  {
    *(_DWORD *)(v3 + 24) = v4;
LABEL_16:
    v8 = 42;
    goto LABEL_13;
  }
  if ( !v6 )
    goto LABEL_16;
  v8 = 113;
LABEL_13:
  *(_DWORD *)(v3 + 4) = v8;
  if ( v4 == 2 )
    v9 = crc32(0, nullptr, 0);
  else
    v9 = adler32_0(0, nullptr, 0);
  a1[12] = v9;
  *(_DWORD *)(v3 + 40) = 0;
  tr_init(v3);
  v10 = *(_DWORD *)(v3 + 68) + 2 * *(_DWORD *)(v3 + 76);
  *(_DWORD *)(v3 + 60) = 2 * *(_DWORD *)(v3 + 44);
  *(_WORD *)(v10 - 2) = 0;
  LC_API_MEMSET_0(*(void **)(v3 + 68), 0, 2 * (*(_DWORD *)(v3 + 76) + 0x7FFFFFFF));
  v11 = (unsigned __int16 *)((char *)&configuration_table + 12 * *(_DWORD *)(v3 + 132));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v15 = v11[2];
  *(_DWORD *)(v3 + 140) = v12;
  *(_DWORD *)(v3 + 128) = v13;
  *(_DWORD *)(v3 + 144) = v15;
  *(_DWORD *)(v3 + 124) = v14;
  *(_DWORD *)(v3 + 96) = 2;
  *(_DWORD *)(v3 + 72) = 0;
  *(_DWORD *)(v3 + 108) = 0;
  *(_DWORD *)(v3 + 92) = 0;
  *(_DWORD *)(v3 + 116) = 0;
  *(_DWORD *)(v3 + 120) = 2;
  *(_DWORD *)(v3 + 104) = 0;
  return 0;
}


// ===== 6eafd8 deflateInit2_ =====
int __fastcall deflateInit2_(_DWORD *a1, int a2, int a3, int a4, int a5, int a6, char *a7, int a8)
{
  int v8; // r6
  int v11; // r0
  bool v12; // zf
  int v13; // r0
  int v14; // r9
  bool v15; // zf
  _BOOL4 v16; // r2
  int v17; // r2
  _DWORD *v18; // r0
  int v19; // r3
  _DWORD *v20; // r10
  int v21; // r2
  int v22; // r0
  int v23; // r3
  int v24; // r1
  int v25; // [sp+0h] [bp-Ch]

  v8 = a2;
  if ( !a7 )
    return -6;
  v11 = *a7;
  v12 = v11 == 49;
  if ( v11 == 49 )
    v12 = a8 == 56;
  if ( !v12 )
    return -6;
  if ( !a1 )
    return -2;
  v13 = a1[8];
  a1[6] = 0;
  if ( !v13 )
  {
    a1[10] = 0;
    a1[8] = zcalloc_0;
  }
  if ( !a1[9] )
    a1[9] = zcfree_0;
  if ( a2 == -1 )
    v8 = 6;
  if ( a4 >= 0 )
  {
    if ( a4 > 15 )
    {
      a4 -= 16;
      v14 = 2;
    }
    else
    {
      v14 = 1;
    }
  }
  else
  {
    a4 = -a4;
    v14 = 0;
  }
  v15 = a5 == 9;
  if ( (unsigned int)(a5 - 1) <= 8 )
    v15 = a3 == 8;
  if ( !v15 )
    return -2;
  v16 = a4 <= 7;
  if ( a4 > 15 )
    v16 = 1;
  if ( v16 || (v8 > 9) | ((unsigned int)v8 >> 31) )
    return -2;
  v17 = (unsigned int)a6 >> 31;
  if ( a6 > 4 )
    v17 = 1;
  if ( v17 )
    return -2;
  v25 = a4;
  v18 = (_DWORD *)((int (__fastcall *)(_DWORD, int, int))a1[8])(a1[10], 1, 5824);
  v19 = v25;
  if ( v25 == 8 )
    v19 = 9;
  v20 = v18;
  if ( v18 )
  {
    v21 = 1 << (a5 + 7);
    a1[7] = v18;
    v18[6] = v14;
    v18[12] = v19;
    v18[21] = v21 - 1;
    v18[13] = (1 << v19) - 1;
    v18[20] = a5 + 7;
    v18[19] = v21;
    v18[7] = 0;
    *v18 = a1;
    v18[11] = 1 << v19;
    v18[22] = (a5 + 9) / 3u;
    v18[14] = ((int (__fastcall *)(_DWORD, int, int))a1[8])(a1[10], 1 << v19, 2);
    v20[16] = ((int (__fastcall *)(_DWORD, _DWORD, int))a1[8])(a1[10], v20[11], 2);
    v20[17] = ((int (__fastcall *)(_DWORD, _DWORD, int))a1[8])(a1[10], v20[19], 2);
    v20[1447] = 1 << (a5 + 6);
    v22 = ((int (__fastcall *)(_DWORD))a1[8])(a1[10]);
    v23 = v20[1447];
    v24 = v20[14];
    v20[2] = v22;
    v20[3] = 4 * v23;
    if ( v24 && v20[16] && v20[17] && v22 )
    {
      v20[1449] = v22 + (v23 & 0xFFFFFFFE);
      v20[1446] = v22 + 3 * v23;
      *((_BYTE *)v20 + 36) = 8;
      v20[33] = v8;
      v20[34] = a6;
      return deflateReset(a1);
    }
    v20[1] = 666;
    a1[6] = "insufficient memory";
    deflateEnd((int)a1);
  }
  return -4;
}


// ===== 6eb2a0 deflateInit_ =====
int __fastcall deflateInit_(_DWORD *a1, int a2, char *a3, int a4)
{
  return deflateInit2_(a1, a2, 8, 15, 8, 0, a3, a4);
}


// ===== 6eb2d0 inflate_fast =====
_DWORD *__fastcall inflate_fast(_DWORD *result, int a2)
{
  _DWORD *v2; // r6
  int v3; // r10
  _BYTE *v4; // r4
  unsigned int v5; // r3
  unsigned int v6; // r2
  int v7; // r5
  int v8; // r11
  int v9; // r12
  unsigned int v10; // r3
  unsigned int v11; // r2
  int i; // r8
  int v13; // r1
  int v14; // r8
  int v15; // r10
  unsigned int v16; // r8
  bool v17; // cf
  unsigned int v18; // r1
  unsigned int v19; // r2
  unsigned int v20; // r1
  unsigned int v21; // r10
  unsigned int v22; // r1
  int v23; // r1
  int j; // r9
  char v25; // r10
  int v26; // r9
  int v27; // r8
  int v28; // r11
  unsigned int v29; // r10
  unsigned int v30; // r9
  unsigned int v31; // r8
  _BYTE *v32; // r8
  unsigned int v33; // r10
  _BYTE *v34; // r11
  unsigned int v35; // r9
  _BYTE *v36; // r8
  unsigned int v37; // r1
  char v38; // t1
  char v39; // t1
  char v40; // r8
  _BYTE *v41; // r11
  unsigned int v42; // r3
  unsigned int v43; // r2
  char v44; // t1
  char v45; // r10
  _BYTE *v46; // r8
  bool v47; // cc
  _BYTE *v48; // r10
  unsigned int v49; // r9
  unsigned int v50; // r11
  _BYTE *v51; // r1
  _BYTE *v52; // r8
  char v53; // t1
  _BYTE *v54; // r11
  char v55; // r8
  _BYTE *v56; // r8
  unsigned int v57; // r1
  char v58; // t1
  unsigned int v59; // [sp+0h] [bp-40h]
  _BYTE *v60; // [sp+4h] [bp-3Ch]
  int v61; // [sp+8h] [bp-38h]
  unsigned int v62; // [sp+Ch] [bp-34h]
  int v63; // [sp+10h] [bp-30h]
  unsigned int v64; // [sp+14h] [bp-2Ch]
  int v65; // [sp+18h] [bp-28h]
  int v66; // [sp+1Ch] [bp-24h]
  _BYTE *v67; // [sp+20h] [bp-20h]
  int v68; // [sp+24h] [bp-1Ch]
  unsigned int v69; // [sp+28h] [bp-18h]
  unsigned int v70; // [sp+30h] [bp-10h]
  unsigned int v71; // [sp+34h] [bp-Ch]
  unsigned int v72; // [sp+38h] [bp-8h]
  unsigned int v73; // [sp+3Ch] [bp-4h]

  v2 = (_DWORD *)result[7];
  v3 = result[4];
  v66 = v2[10];
  v4 = (_BYTE *)(result[3] - 1);
  v64 = v2[12];
  v65 = v2[13];
  v69 = v2[11];
  v5 = v2[14];
  v6 = v2[15];
  v7 = v2[20];
  v59 = *result - 1;
  v67 = &v4[v3 - a2];
  v60 = &v4[v3 - 257];
  v63 = (1 << v2[21]) - 1;
  v8 = (1 << v2[22]) - 1;
  v68 = v65 - 1;
  v62 = v59 + result[1] - 5;
  v61 = v8;
  v9 = v2[19];
  do
  {
    if ( v6 <= 0xE )
    {
      v10 = v5 + (*(unsigned __int8 *)(v59 + 1) << v6);
      v11 = v6 + 8;
      v5 = v10 + (*(unsigned __int8 *)(v59 + 2) << v11);
      v59 += 2;
      v6 = v11 + 8;
    }
    for ( i = v5 & v63; ; i = (((1 << v13) - 1) & v5) + v16 )
    {
      v13 = *(unsigned __int8 *)(v9 + 4 * i);
      v14 = v9 + 4 * i;
      v15 = *(unsigned __int8 *)(v14 + 1);
      v16 = *(unsigned __int16 *)(v14 + 2);
      v6 -= v15;
      v5 >>= v15;
      if ( !v13 )
      {
        *++v4 = v16;
        goto LABEL_10;
      }
      if ( (v13 & 0x10) != 0 )
        break;
      if ( (v13 & 0x40) != 0 )
      {
        if ( (v13 & 0x20) != 0 )
        {
          *v2 = 11;
        }
        else
        {
          result[6] = "invalid literal/length code";
          *v2 = 27;
        }
        goto LABEL_14;
      }
    }
    v21 = v13 & 0xF;
    v22 = v16;
    if ( v21 )
    {
      if ( v21 > v6 )
      {
        v8 = v59 + 1;
        v5 += *(unsigned __int8 *)(v59 + 1) << v6;
      }
      v23 = v5 & ((1 << v21) - 1);
      v5 >>= v21;
      if ( v21 > v6 )
      {
        v6 += 8;
        v59 = v8;
      }
      v22 = v16 + v23;
      v6 -= v21;
    }
    if ( v6 <= 0xE )
    {
      v42 = v5 + (*(unsigned __int8 *)(v59 + 1) << v6);
      v43 = v6 + 8;
      v5 = v42 + (*(unsigned __int8 *)(v59 + 2) << v43);
      v59 += 2;
      v6 = v43 + 8;
    }
    for ( j = v5 & v61; ; j = (((1 << v25) - 1) & v5) + v28 )
    {
      v25 = *(_BYTE *)(v7 + 4 * j);
      v26 = v7 + 4 * j;
      v27 = *(unsigned __int8 *)(v26 + 1);
      v28 = *(unsigned __int16 *)(v26 + 2);
      v6 -= v27;
      v5 >>= v27;
      if ( (v25 & 0x10) != 0 )
        break;
      if ( (v25 & 0x40) != 0 )
      {
        result[6] = "invalid distance code";
        *v2 = 27;
        goto LABEL_14;
      }
    }
    v29 = v25 & 0xF;
    if ( v29 > v6 )
    {
      v30 = v59 + 1;
      v5 += *(unsigned __int8 *)(v59 + 1) << v6;
      v6 += 8;
      ++v59;
      if ( v29 > v6 )
      {
        v5 += *(unsigned __int8 *)(v30 + 1) << v6;
        v59 = v30 + 1;
        v6 += 8;
      }
    }
    v31 = (v5 & ((1 << v29) - 1)) + v28;
    v6 -= v29;
    v5 >>= v29;
    if ( v31 <= v4 - v67 )
    {
      v32 = &v4[-v31];
      do
      {
        v22 -= 3;
        v4[1] = v32[1];
        v4[2] = v32[2];
        v44 = v32[3];
        v32 += 3;
        v4[3] = v44;
        v4 += 3;
      }
      while ( v22 > 2 );
      if ( v22 )
      {
        v45 = v32[1];
        v46 = v32 + 1;
        *++v4 = v45;
        if ( v22 == 2 )
          *++v4 = v46[1];
      }
      goto LABEL_10;
    }
    v33 = v31 - (v4 - v67);
    if ( v69 < v33 )
    {
      result[6] = "invalid distance too far back";
      *v2 = 27;
      break;
    }
    if ( v64 )
    {
      if ( v64 < v33 )
      {
        v47 = v22 > v33 - v64;
        v70 = v33 - v64;
        v48 = (_BYTE *)(v68 + v64 + v66 - v33);
        if ( v47 )
        {
          v49 = v70;
          v50 = v22 - v70;
          v51 = v48;
          v73 = v31;
          v52 = v4;
          do
          {
            v53 = *++v51;
            --v49;
            *++v52 = v53;
          }
          while ( v49 );
          v22 = v50;
          v17 = v64 >= v50;
          v34 = (_BYTE *)(v65 - 1);
          v4 += v70;
          if ( !v17 )
          {
            v22 -= v64;
            v54 = v4;
            do
            {
              v55 = *(_BYTE *)(v65 + v49++);
              *++v54 = v55;
            }
            while ( v64 != v49 );
            v4 += v64;
            v34 = &v4[-v73];
          }
        }
        else
        {
          v34 = v48;
        }
        goto LABEL_38;
      }
      v34 = (_BYTE *)(v68 + v64 - v33);
      if ( v22 > v33 )
      {
        v72 = v31;
        v35 = v22 - v33;
        v71 = v31 - (v4 - v67);
        v56 = v4;
        v57 = v33;
        do
        {
          v58 = *++v34;
          --v57;
          *++v56 = v58;
        }
        while ( v57 );
        goto LABEL_37;
      }
    }
    else
    {
      v34 = (_BYTE *)(v68 + v66 - v33);
      if ( v22 > v33 )
      {
        v72 = v31;
        v35 = v22 - v33;
        v71 = v31 - (v4 - v67);
        v36 = v4;
        v37 = v33;
        do
        {
          v38 = *++v34;
          --v37;
          *++v36 = v38;
        }
        while ( v37 );
LABEL_37:
        v22 = v35;
        v4 += v71;
        v34 = &v4[-v72];
      }
    }
LABEL_38:
    while ( v22 > 2 )
    {
      v22 -= 3;
      v4[1] = v34[1];
      v4[2] = v34[2];
      v39 = v34[3];
      v34 += 3;
      v4[3] = v39;
      v4 += 3;
    }
    if ( v22 )
    {
      v40 = v34[1];
      v41 = v34 + 1;
      *++v4 = v40;
      if ( v22 == 2 )
        *++v4 = v41[1];
    }
LABEL_10:
    v8 = v59;
    v17 = v4 >= v60;
    if ( v4 < v60 )
      v17 = v59 >= v62;
  }
  while ( !v17 );
LABEL_14:
  v18 = v6 >> 3;
  v19 = v6 - 8 * (v6 >> 3);
  v20 = v59 - v18;
  result[4] = v60 + 257 - v4;
  *result = v20 + 1;
  result[3] = v4 + 1;
  result[1] = v62 + 5 - v20;
  v2[15] = v19;
  v2[14] = v5 & ~(-1 << v19);
  return result;
}


// ===== 6eb830 _tr_init =====
int __fastcall tr_init(int result)
{
  int i; // r3
  int v2; // r2
  int j; // r3
  int v4; // r2
  int k; // r3
  int v6; // r1

  *(_DWORD *)(result + 5812) = 8;
  *(_DWORD *)(result + 2864) = result + 2684;
  *(_DWORD *)(result + 2840) = result + 148;
  *(_DWORD *)(result + 2852) = result + 2440;
  *(_DWORD *)(result + 2860) = &static_d_desc;
  *(_DWORD *)(result + 2872) = &static_bl_desc;
  *(_WORD *)(result + 5816) = 0;
  *(_DWORD *)(result + 5820) = 0;
  *(_DWORD *)(result + 2848) = &static_l_desc;
  for ( i = 0; i != 1144; i += 4 )
  {
    v2 = result + i;
    *(_WORD *)(v2 + 148) = 0;
  }
  for ( j = 0; j != 120; j += 4 )
  {
    v4 = result + j;
    *(_WORD *)(v4 + 2440) = 0;
  }
  for ( k = 0; k != 76; k += 4 )
  {
    v6 = result + k;
    *(_WORD *)(v6 + 2684) = 0;
  }
  *(_DWORD *)(result + 5792) = 0;
  *(_WORD *)(result + 1172) = 1;
  *(_DWORD *)(result + 5804) = 0;
  *(_DWORD *)(result + 5800) = 0;
  *(_DWORD *)(result + 5808) = 0;
  return result;
}


// ===== 6eb928 pqdownheap =====
int __fastcall pqdownheap(int a1, int a2, int a3)
{
  int v3; // r3
  int v4; // r4
  int v5; // r12
  int v6; // r2
  unsigned __int16 *v7; // r8
  int v8; // r4
  int v9; // r12
  unsigned int v10; // r5
  unsigned int v11; // r2
  bool v12; // zf
  int v13; // r6
  unsigned int v14; // r7
  unsigned int v15; // r5
  unsigned int v16; // r2
  int result; // r0
  unsigned __int8 *v18; // [sp+4h] [bp-14h]
  int v19; // [sp+10h] [bp-8h]

  v3 = a3 + 726;
  v4 = *(_DWORD *)(a1 + 5200);
  v5 = *(_DWORD *)(a1 + 4 * (a3 + 726) + 4);
  v6 = 2 * a3;
  v19 = v5;
  if ( v6 <= v4 )
  {
    v7 = (unsigned __int16 *)(a2 + 4 * v5);
    v18 = (unsigned __int8 *)(a1 + v5 + 5208);
    while ( v4 > v6 )
    {
      v9 = v6 + 1;
      v13 = *(_DWORD *)(a1 + 4 * (v6 + 1) + 2908);
      v8 = *(_DWORD *)(a1 + 4 * v6 + 2908);
      v14 = *(unsigned __int16 *)(a2 + 4 * v13);
      v15 = *(unsigned __int16 *)(a2 + 4 * v8);
      if ( v14 < v15
        || v14 == v15 && *(unsigned __int8 *)(a1 + v13 + 5208) <= (unsigned int)*(unsigned __int8 *)(a1 + v8 + 5208) )
      {
        v10 = *(unsigned __int16 *)(a2 + 4 * v13);
        v8 = *(_DWORD *)(a1 + 4 * (v6 + 1) + 2908);
LABEL_4:
        v11 = *v7;
        v12 = v10 == v11;
        if ( v10 > v11 )
          goto LABEL_12;
        goto LABEL_5;
      }
      v9 = v6;
      v16 = *v7;
      v12 = v15 == v16;
      if ( v15 > v16 )
        goto LABEL_12;
LABEL_5:
      if ( v12 )
      {
        if ( *v18 <= (unsigned int)*(unsigned __int8 *)(a1 + v8 + 5208) )
          goto LABEL_12;
        *(_DWORD *)(a1 + 4 * v3 + 4) = v8;
        v4 = *(_DWORD *)(a1 + 5200);
        v6 = 2 * v9;
        if ( v4 < 2 * v9 )
        {
LABEL_17:
          v3 = v9 + 726;
          goto LABEL_12;
        }
      }
      else
      {
        *(_DWORD *)(a1 + 4 * v3 + 4) = v8;
        v4 = *(_DWORD *)(a1 + 5200);
        v6 = 2 * v9;
        if ( v4 < 2 * v9 )
          goto LABEL_17;
      }
      v3 = v9 + 726;
    }
    v8 = *(_DWORD *)(a1 + 4 * v6 + 2908);
    v9 = v6;
    v10 = *(unsigned __int16 *)(a2 + 4 * v8);
    goto LABEL_4;
  }
LABEL_12:
  result = a1 + 4 * v3;
  *(_DWORD *)(result + 4) = v19;
  return result;
}


// ===== 6eba98 build_tree =====
int __fastcall build_tree(_DWORD *a1, int *a2)
{
  int *v2; // r3
  int v3; // r2
  int v4; // r5
  int v5; // r6
  int v6; // r7
  int v8; // r3
  int v9; // r8
  int v10; // r1
  int v11; // r0
  bool v12; // zf
  int v13; // r10
  int v14; // r2
  int v15; // r3
  int v16; // r9
  int v17; // r1
  int v18; // r3
  int v19; // r2
  int v20; // r7
  int v21; // r2
  char *v22; // r11
  int v23; // r8
  int v24; // r3
  int v25; // r7
  int v26; // r1
  int v27; // r3
  int v28; // r3
  unsigned int v29; // r1
  unsigned int v30; // r12
  int v31; // r3
  int v32; // r1
  int v33; // r2
  int v34; // r0
  int *v35; // r3
  int v36; // r12
  int v37; // r8
  int v38; // r7
  char *v39; // r3
  int v40; // r3
  int v41; // r2
  int v42; // r0
  int v43; // r6
  int v44; // r5
  int v45; // r3
  char *v46; // r1
  bool v47; // cc
  int v48; // r0
  int v49; // r5
  int v50; // r1
  int v51; // r6
  int v52; // r0
  _WORD *v53; // r9
  int v54; // r1
  int v55; // r2
  int v56; // r3
  int v57; // r1
  int v58; // r11
  int v59; // r2
  int v60; // r3
  int v61; // r5
  int v62; // r6
  int v63; // r0
  int v64; // r5
  char *v65; // r2
  __int16 *v66; // r4
  int result; // r0
  __int16 v68; // r3
  __int16 v69; // t1
  int v70; // r12
  int v71; // r4
  int v72; // r3
  _BYTE *v73; // r0
  unsigned int v74; // r2
  unsigned int v75; // r1
  char *v76; // [sp+4h] [bp-50h]
  int v77; // [sp+10h] [bp-44h]
  int v78; // [sp+10h] [bp-44h]
  char *v79; // [sp+10h] [bp-44h]
  int v81; // [sp+14h] [bp-40h]
  int v82; // [sp+18h] [bp-3Ch]
  int v83; // [sp+1Ch] [bp-38h]
  int v84; // [sp+20h] [bp-34h]
  int v85; // [sp+24h] [bp-30h]
  int v86; // [sp+28h] [bp-2Ch]
  int v87; // [sp+2Ch] [bp-28h]
  char v88; // [sp+30h] [bp-24h] BYREF
  _BYTE v89[6]; // [sp+4Eh] [bp-6h] BYREF

  v2 = (int *)a2[2];
  v3 = 0;
  v4 = *a2;
  v5 = v2[3];
  v6 = *v2;
  a1[1301] = 573;
  a1[1300] = 0;
  if ( v5 > 0 )
  {
    v8 = 0;
    v9 = -1;
    do
    {
      v10 = *(unsigned __int16 *)(v4 + v3);
      v11 = (int)a1 + v8 + 5184;
      v12 = v10 == 0;
      if ( *(_WORD *)(v4 + v3) )
        v10 = a1[1300];
      else
        v11 = v4 + v3;
      if ( !v12 )
      {
        v9 = v8;
        a1[1300] = ++v10;
        a1[v10 + 727] = v8;
      }
      ++v8;
      if ( v12 )
        *(_WORD *)(v11 + 2) = v10;
      else
        *(_BYTE *)(v11 + 24) = 0;
      v3 += 4;
    }
    while ( v8 != v5 );
    v84 = v9;
  }
  else
  {
    v84 = -1;
  }
  v13 = v84;
  while ( 1 )
  {
    v14 = a1[1300];
    v15 = 0;
    v16 = v14 + 1;
    if ( v14 > 1 )
      break;
    while ( 1 )
    {
      if ( v13 > 1 )
        v17 = 0;
      else
        v17 = v13 + 1;
      a1[1300] = v16;
      a1[v16 + 727] = v17;
      if ( v13 <= 1 )
      {
        v15 = 4 * v17;
        v13 = v17;
      }
      *(_WORD *)(v4 + v15) = 1;
      *((_BYTE *)a1 + v17 + 5208) = 0;
      v18 = v6 + v15;
      --a1[1450];
      if ( !v6 )
        break;
      a1[1451] -= *(unsigned __int16 *)(v18 + 2);
      v19 = a1[1300];
      v15 = 0;
      v16 = v19 + 1;
      if ( v19 > 1 )
        goto LABEL_23;
    }
  }
LABEL_23:
  a2[1] = v13;
  v20 = a1[1300] / 2;
  if ( v20 > 0 )
  {
    do
      pqdownheap((int)a1, v4, v20--);
    while ( v20 );
  }
  v21 = a1[1300];
  v22 = (char *)a1 + v5;
  v77 = v4 + 4 * v5;
  v23 = 0;
  do
  {
    v24 = a1[v21 + 727];
    a1[1300] = v21 - 1;
    v25 = a1[728];
    a1[728] = v24;
    pqdownheap((int)a1, v4, 1);
    v26 = a1[728];
    v27 = a1[1301] - 2;
    a1[a1[1301] + 726] = v25;
    a1[1301] = v27;
    a1[v27 + 727] = v26;
    v28 = 4 * v26;
    *(_WORD *)(v77 + 4 * v23) = *(_WORD *)(v4 + 4 * v26) + *(_WORD *)(v4 + 4 * v25);
    v29 = *((unsigned __int8 *)a1 + v26 + 5208);
    v30 = *((unsigned __int8 *)a1 + v25 + 5208);
    v31 = v4 + v28;
    if ( v29 >= v30 )
      LOBYTE(v30) = v29;
    v22[v23 + 5208] = v30 + 1;
    *(_WORD *)(v31 + 2) = v5;
    *(_WORD *)(v4 + 4 * v25 + 2) = v5;
    a1[728] = v5;
    pqdownheap((int)a1, v4, 1);
    v21 = a1[1300];
    ++v5;
    ++v23;
  }
  while ( v21 > 1 );
  v32 = a1[728];
  v33 = 0;
  v34 = a1[1301] - 1;
  a1[1301] = v34;
  a1[v34 + 727] = v32;
  v35 = (int *)a2[2];
  v36 = *a2;
  v37 = a2[1];
  v38 = v35[4];
  v81 = *v35;
  v83 = v35[1];
  v82 = v35[2];
  do
  {
    v39 = (char *)a1 + v33;
    v33 += 2;
    *((_WORD *)v39 + 1438) = 0;
  }
  while ( v33 != 32 );
  *(_WORD *)(v36 + 4 * v32 + 2) = 0;
  v40 = a1[1301];
  v85 = v40;
  v86 = v40 + 1;
  if ( v40 + 1 <= 572 )
  {
    v41 = (int)&a1[v40 + 727];
    v78 = 0;
    v87 = v4;
    do
    {
      v42 = *(_DWORD *)(v41 + 4);
      v43 = 4 * v42;
      v44 = v36 + 4 * v42;
      v45 = *(unsigned __int16 *)(v36 + 4 * *(unsigned __int16 *)(v44 + 2) + 2) + 1;
      if ( v38 < v45 )
      {
        v45 = v38;
        ++v78;
      }
      v46 = (char *)a1 + 2 * v45 + 2872;
      *(_WORD *)(v44 + 2) = v45;
      if ( v37 >= v42 )
      {
        v47 = v82 <= v42;
        v76 = (char *)(v42 - v82);
        v48 = *((unsigned __int16 *)v46 + 2);
        v49 = v48 + 1;
        *((_WORD *)v46 + 2) = v48 + 1;
        if ( v47 )
        {
          v46 = v76;
          v49 = v83;
        }
        else
        {
          v48 = 0;
        }
        if ( v47 )
          v48 = *(_DWORD *)(v49 + 4 * (_DWORD)v46);
        v50 = *(unsigned __int16 *)(v36 + v43);
        a1[1450] += v50 * (v48 + v45);
        v51 = v81 + v43;
        if ( v81 )
          a1[1451] += v50 * (v48 + *(unsigned __int16 *)(v51 + 2));
      }
      v41 += 4;
    }
    while ( (_DWORD *)v41 != a1 + 1299 );
    v4 = v87;
    if ( v78 )
    {
      v52 = v78;
      v53 = (_WORD *)a1 + v38 + 1437;
      do
      {
        LOWORD(v54) = *v53;
        if ( *v53 )
        {
          v55 = v38 - 1;
        }
        else
        {
          v56 = (int)a1 + 2 * v38 + 2876;
          v55 = v38 - 1;
          do
          {
            v54 = *(unsigned __int16 *)(v56 - 4);
            --v55;
            v56 -= 2;
          }
          while ( !v54 );
        }
        *((_WORD *)a1 + v55 + 1438) = v54 - 1;
        v52 -= 2;
        *((_WORD *)a1 + v55 + 1439) += 2;
        --*((_WORD *)a1 + v38 + 1438);
      }
      while ( v52 > 0 );
      v57 = v86 - v85 + 572;
      if ( v38 )
      {
        v79 = (char *)a1 + 2 * v38;
        v58 = 0;
        do
        {
          v59 = *(unsigned __int16 *)&v79[v58 + 2876];
          if ( *(_WORD *)&v79[v58 + 2876] )
          {
            v60 = (int)&a1[v57 + 727];
            do
            {
              v61 = *(_DWORD *)(v60 - 4);
              --v57;
              v60 -= 4;
              v62 = 4 * v61;
              v63 = v36 + 4 * v61;
              if ( v37 >= v61 )
              {
                v64 = *(unsigned __int16 *)(v63 + 2);
                --v59;
                if ( v64 != v38 )
                {
                  a1[1450] += *(unsigned __int16 *)(v36 + v62) * (v38 - v64);
                  *(_WORD *)(v63 + 2) = v38;
                }
              }
            }
            while ( v59 );
          }
          --v38;
          v58 -= 2;
        }
        while ( v38 );
        v4 = v87;
      }
    }
  }
  v65 = &v88;
  v66 = (__int16 *)(a1 + 719);
  result = (int)v89;
  v68 = 0;
  do
  {
    v69 = *v66++;
    v68 = 2 * (v68 + v69);
    *((_WORD *)v65 + 1) = v68;
    v65 += 2;
  }
  while ( v65 != v89 );
  if ( v13 != -1 )
  {
    v70 = 0;
    v71 = 0;
    do
    {
      v72 = *(unsigned __int16 *)(v4 + v70 + 2);
      if ( *(_WORD *)(v4 + v70 + 2) )
      {
        v73 = &v89[2 * v72 + 2];
        v74 = *((unsigned __int16 *)v73 - 16);
        v75 = 0;
        *((_WORD *)v73 - 16) = v74 + 1;
        do
        {
          result = v74 & 1;
          --v72;
          v74 >>= 1;
          v75 = 2 * (result | v75);
        }
        while ( v72 );
        *(_WORD *)(v4 + v70) = v75 >> 1;
      }
      ++v71;
      v70 += 4;
    }
    while ( v71 <= v13 );
  }
  return result;
}


// ===== 6ec0a0 scan_tree =====
_WORD *__fastcall scan_tree(_WORD *result, int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  int v5; // r4
  int v6; // r2
  int v7; // r7
  int v8; // r5
  int v9; // r8
  int v10; // r6
  __int16 v11; // r12
  __int16 v12; // r12

  v3 = *(unsigned __int16 *)(a2 + 2);
  if ( *(_WORD *)(a2 + 2) )
    v4 = 7;
  else
    v4 = 138;
  if ( *(_WORD *)(a2 + 2) )
    v5 = 4;
  else
    v5 = 3;
  *(_WORD *)(a2 + 4 * a3 + 6) = -1;
  if ( a3 >= 0 )
  {
    v6 = a3 + 2;
    v7 = 1;
    v8 = 0;
    v9 = -1;
    while ( 1 )
    {
      ++v8;
      v10 = *(unsigned __int16 *)(a2 + 4 * v7 + 2);
      if ( v8 < v4 && v3 == v10 )
        goto LABEL_12;
      if ( v8 < v5 )
        break;
      if ( !v3 )
      {
        if ( v8 > 10 )
          v11 = result[1378];
        else
          v11 = result[1376];
        v12 = v11 + 1;
        if ( v8 > 10 )
          result[1378] = v12;
        else
          result[1376] = v12;
LABEL_10:
        if ( !v10 )
          goto LABEL_11;
        goto LABEL_21;
      }
      if ( v9 != v3 )
        ++result[2 * v3 + 1342];
      ++result[1374];
      if ( !v10 )
      {
LABEL_11:
        v9 = v3;
        v5 = 3;
        v4 = 138;
        v8 = v10;
LABEL_12:
        if ( ++v7 == v6 )
          return result;
        goto LABEL_13;
      }
LABEL_21:
      ++v7;
      if ( v3 == v10 )
      {
        v9 = v10;
        v5 = 3;
        v4 = 6;
      }
      else
      {
        v9 = v3;
        v5 = 4;
        v4 = 7;
      }
      v8 = 0;
      if ( v7 == v6 )
        return result;
LABEL_13:
      v3 = v10;
    }
    result[2 * v3 + 1342] += v8;
    goto LABEL_10;
  }
  return result;
}


// ===== 6ec1e4 send_tree =====
int __fastcall send_tree(int result, int a2, int a3)
{
  int v3; // r3
  int v4; // r1
  int v5; // r5
  int v6; // r10
  int v7; // r4
  int v8; // r7
  int v9; // r6
  int v10; // r8
  int v11; // r1
  unsigned __int16 *v12; // r9
  unsigned __int16 *v13; // r8
  int v14; // r6
  int v15; // r7
  int v16; // r11
  int v17; // r1
  int v18; // r1
  bool v19; // cf
  int v20; // r5
  int v21; // r1
  int v22; // r5
  int v23; // r1
  int v24; // r6
  int v25; // r1
  int v26; // r5
  int v27; // r6
  int v28; // r7
  int v29; // r11
  int v30; // r5
  int v31; // r5
  int v32; // r7
  int v33; // r1
  int v34; // r5
  int v35; // r4
  int v36; // r7
  int v37; // r9
  int v38; // r11
  int v39; // r1
  int v40; // r1
  int v41; // r4
  int v42; // r5
  int v43; // r6
  int v44; // r4
  int v45; // r7
  int v46; // r1
  int v47; // r1
  int v48; // r4
  int v49; // r1
  int v50; // r7
  int v51; // r5
  int v52; // r11
  int v53; // r1
  int v54; // r1
  int v55; // r5
  int v56; // r4
  int v57; // r7
  int v58; // r6
  int v59; // r4
  int v60; // r9
  int v61; // r1
  int v62; // r1
  int v63; // r1
  int v64; // r4
  int v65; // r1
  int v66; // r7
  int v67; // r5
  int v68; // r11
  int v69; // r1
  int v70; // r1
  int v71; // r5
  int v72; // r4
  int v73; // r7
  int v74; // r6
  int v75; // r4
  int v76; // r9
  int v77; // r1
  int v78; // r1
  __int16 v79; // r6
  __int16 v80; // r7
  int v81; // r1
  int v82; // r1
  __int16 v83; // r5
  __int16 v84; // r7
  int v86; // [sp+4h] [bp-Ch]
  int v87; // [sp+8h] [bp-8h]

  v3 = *(unsigned __int16 *)(a2 + 2);
  if ( *(_WORD *)(a2 + 2) )
    v4 = 7;
  else
    v4 = 138;
  if ( v3 )
    v5 = 4;
  else
    v5 = 3;
  if ( a3 >= 0 )
  {
    v86 = a3 + 2;
    v6 = 1;
    v7 = 0;
    v8 = -1;
    while ( 1 )
    {
      v9 = v7 + 1;
      v10 = *(unsigned __int16 *)(a2 + 4 * v6 + 2);
      if ( v7 + 1 < v4 && v3 == v10 )
        goto LABEL_22;
      if ( v9 >= v5 )
        break;
      v11 = result + 4 * (v3 + 670);
      v12 = (unsigned __int16 *)(v11 + 4);
      v87 = *(unsigned __int16 *)(a2 + 4 * v6 + 2);
      v13 = (unsigned __int16 *)(v11 + 6);
      do
      {
        while ( 1 )
        {
          v20 = *v13;
          v21 = *(_DWORD *)(result + 5820);
          if ( v21 <= 16 - v20 )
            break;
          v14 = *v12;
          v15 = *(_DWORD *)(result + 20);
          v16 = *(_DWORD *)(result + 8);
          v17 = *(unsigned __int16 *)(result + 5816) | (v14 << v21);
          *(_WORD *)(result + 5816) = v17;
          *(_BYTE *)(v16 + v15++) = v17;
          *(_BYTE *)(*(_DWORD *)(result + 8) + v15) = HIBYTE(*(_WORD *)(result + 5816));
          v18 = *(_DWORD *)(result + 5820);
          *(_DWORD *)(result + 20) = v15 + 1;
          v19 = v7-- != 0;
          *(_WORD *)(result + 5816) = v14 >> (16 - v18);
          *(_DWORD *)(result + 5820) = v18 - 16 + v20;
          if ( !v19 )
            goto LABEL_17;
        }
        v22 = v20 + v21;
        v19 = v7-- != 0;
        v23 = *(unsigned __int16 *)(result + 5816) | (*v12 << v21);
        *(_DWORD *)(result + 5820) = v22;
        *(_WORD *)(result + 5816) = v23;
      }
      while ( v19 );
LABEL_17:
      v10 = v87;
      if ( v87 )
      {
LABEL_18:
        if ( v3 == v10 )
        {
          v8 = v10;
          v5 = 3;
          v4 = 6;
        }
        else
        {
          v8 = v3;
          v5 = 4;
          v4 = 7;
        }
        v9 = 0;
LABEL_22:
        if ( ++v6 == v86 )
          return result;
        goto LABEL_23;
      }
LABEL_34:
      v8 = v3;
      ++v6;
      v5 = 3;
      v4 = 138;
      v9 = v10;
      if ( v6 == v86 )
        return result;
LABEL_23:
      v7 = v9;
      v3 = v10;
    }
    if ( v3 )
    {
      if ( v8 == v3 )
      {
        v33 = *(_DWORD *)(result + 5820);
        v34 = *(unsigned __int16 *)(result + 5816);
      }
      else
      {
        v24 = result + 4 * (v3 + 670);
        v25 = *(unsigned __int16 *)(v24 + 6);
        v26 = *(_DWORD *)(result + 5820);
        if ( v26 <= 16 - v25 )
        {
          v79 = *(_WORD *)(v24 + 4);
          v80 = *(_WORD *)(result + 5816);
          v33 = v25 + v26;
          *(_DWORD *)(result + 5820) = v33;
          v34 = (unsigned __int16)(v80 | (v79 << v26));
          *(_WORD *)(result + 5816) = v34;
        }
        else
        {
          v27 = *(unsigned __int16 *)(v24 + 4);
          v28 = *(_DWORD *)(result + 20);
          v29 = *(_DWORD *)(result + 8);
          v30 = *(unsigned __int16 *)(result + 5816) | (v27 << v26);
          *(_WORD *)(result + 5816) = v30;
          *(_BYTE *)(v29 + v28) = v30;
          v31 = v28 + 1;
          *(_BYTE *)(*(_DWORD *)(result + 8) + v31) = HIBYTE(*(_WORD *)(result + 5816));
          v32 = *(_DWORD *)(result + 5820);
          *(_DWORD *)(result + 20) = v31 + 1;
          v33 = v32 - 16 + v25;
          v34 = (unsigned __int16)(v27 >> (16 - v32));
          *(_WORD *)(result + 5816) = v34;
          *(_DWORD *)(result + 5820) = v33;
        }
        v9 = v7;
      }
      v35 = *(unsigned __int16 *)(result + 2750);
      if ( 16 - v35 >= v33 )
      {
        v41 = v35 + *(_DWORD *)(result + 5820);
        v42 = (unsigned __int16)(v34 | (*(_WORD *)(result + 2748) << v33));
      }
      else
      {
        v36 = *(unsigned __int16 *)(result + 2748);
        v37 = *(_DWORD *)(result + 20);
        v38 = *(_DWORD *)(result + 8);
        v39 = v34 | (v36 << v33);
        *(_WORD *)(result + 5816) = v39;
        *(_BYTE *)(v38 + v37++) = v39;
        *(_BYTE *)(*(_DWORD *)(result + 8) + v37) = HIBYTE(*(_WORD *)(result + 5816));
        v40 = *(_DWORD *)(result + 5820);
        *(_DWORD *)(result + 20) = v37 + 1;
        v41 = v40 - 16 + v35;
        v42 = (unsigned __int16)(v36 >> (16 - v40));
      }
      *(_WORD *)(result + 5816) = v42;
      *(_DWORD *)(result + 5820) = v41;
      if ( v41 <= 14 )
      {
        v63 = *(_DWORD *)(result + 5820);
        *(_WORD *)(result + 5816) = v42 | (((_WORD)v9 - 3) << v41);
        *(_DWORD *)(result + 5820) = v63 + 2;
      }
      else
      {
        v43 = v9 - 3;
        v44 = v42 | (v43 << v41);
        v45 = *(_DWORD *)(result + 20);
        v46 = *(_DWORD *)(result + 8);
        *(_WORD *)(result + 5816) = v44;
        *(_BYTE *)(v46 + v45) = v44;
        *(_BYTE *)(*(_DWORD *)(result + 8) + v45 + 1) = HIBYTE(*(_WORD *)(result + 5816));
        v47 = *(_DWORD *)(result + 5820);
        *(_DWORD *)(result + 20) = v45 + 2;
        *(_WORD *)(result + 5816) = (int)(unsigned __int16)v43 >> (16 - v47);
        *(_DWORD *)(result + 5820) = v47 - 14;
      }
LABEL_33:
      if ( v10 )
        goto LABEL_18;
      goto LABEL_34;
    }
    if ( v9 > 10 )
    {
      v64 = *(unsigned __int16 *)(result + 2758);
      v65 = *(_DWORD *)(result + 5820);
      if ( v65 <= 16 - v64 )
      {
        v83 = *(_WORD *)(result + 2756);
        v84 = *(_WORD *)(result + 5816);
        v72 = v64 + v65;
        *(_DWORD *)(result + 5820) = v72;
        v73 = (unsigned __int16)(v84 | (v83 << v65));
        *(_WORD *)(result + 5816) = v73;
      }
      else
      {
        v66 = *(unsigned __int16 *)(result + 2756);
        v67 = *(_DWORD *)(result + 20);
        v68 = *(_DWORD *)(result + 8);
        v69 = *(unsigned __int16 *)(result + 5816) | (v66 << v65);
        *(_WORD *)(result + 5816) = v69;
        *(_BYTE *)(v68 + v67) = v69;
        v70 = v67 + 1;
        *(_BYTE *)(*(_DWORD *)(result + 8) + v70) = HIBYTE(*(_WORD *)(result + 5816));
        v71 = *(_DWORD *)(result + 5820);
        *(_DWORD *)(result + 20) = v70 + 1;
        v72 = v71 - 16 + v64;
        v73 = (unsigned __int16)(v66 >> (16 - v71));
        *(_WORD *)(result + 5816) = v73;
        *(_DWORD *)(result + 5820) = v72;
      }
      if ( v72 <= 9 )
      {
        v82 = *(_DWORD *)(result + 5820);
        *(_WORD *)(result + 5816) = v73 | (((_WORD)v9 - 11) << v72);
        *(_DWORD *)(result + 5820) = v82 + 7;
      }
      else
      {
        v74 = v9 - 11;
        v75 = v73 | (v74 << v72);
        v76 = *(_DWORD *)(result + 20);
        v77 = *(_DWORD *)(result + 8);
        *(_WORD *)(result + 5816) = v75;
        *(_BYTE *)(v77 + v76) = v75;
        *(_BYTE *)(*(_DWORD *)(result + 8) + v76 + 1) = HIBYTE(*(_WORD *)(result + 5816));
        v78 = *(_DWORD *)(result + 5820);
        *(_DWORD *)(result + 20) = v76 + 2;
        *(_WORD *)(result + 5816) = (int)(unsigned __int16)v74 >> (16 - v78);
        *(_DWORD *)(result + 5820) = v78 - 9;
      }
      goto LABEL_33;
    }
    v48 = *(unsigned __int16 *)(result + 2754);
    v49 = *(_DWORD *)(result + 5820);
    if ( v49 <= 16 - v48 )
    {
      v56 = v48 + v49;
      v57 = (unsigned __int16)(*(_WORD *)(result + 5816) | (*(_WORD *)(result + 2752) << v49));
      *(_DWORD *)(result + 5820) = v56;
      *(_WORD *)(result + 5816) = v57;
      if ( v56 > 13 )
        goto LABEL_39;
    }
    else
    {
      v50 = *(unsigned __int16 *)(result + 2752);
      v51 = *(_DWORD *)(result + 20);
      v52 = *(_DWORD *)(result + 8);
      v53 = *(unsigned __int16 *)(result + 5816) | (v50 << v49);
      *(_WORD *)(result + 5816) = v53;
      *(_BYTE *)(v52 + v51) = v53;
      v54 = v51 + 1;
      *(_BYTE *)(*(_DWORD *)(result + 8) + v54) = HIBYTE(*(_WORD *)(result + 5816));
      v55 = *(_DWORD *)(result + 5820);
      *(_DWORD *)(result + 20) = v54 + 1;
      v56 = v55 - 16 + v48;
      v57 = (unsigned __int16)(v50 >> (16 - v55));
      *(_WORD *)(result + 5816) = v57;
      *(_DWORD *)(result + 5820) = v56;
      if ( v56 > 13 )
      {
LABEL_39:
        v58 = v9 - 3;
        v59 = v57 | (v58 << v56);
        v60 = *(_DWORD *)(result + 20);
        v61 = *(_DWORD *)(result + 8);
        *(_WORD *)(result + 5816) = v59;
        *(_BYTE *)(v61 + v60) = v59;
        *(_BYTE *)(*(_DWORD *)(result + 8) + v60 + 1) = HIBYTE(*(_WORD *)(result + 5816));
        v62 = *(_DWORD *)(result + 5820);
        *(_DWORD *)(result + 20) = v60 + 2;
        *(_WORD *)(result + 5816) = (int)(unsigned __int16)v58 >> (16 - v62);
        *(_DWORD *)(result + 5820) = v62 - 13;
        goto LABEL_33;
      }
    }
    v81 = *(_DWORD *)(result + 5820);
    *(_WORD *)(result + 5816) = v57 | (((_WORD)v9 - 3) << v56);
    *(_DWORD *)(result + 5820) = v81 + 3;
    goto LABEL_33;
  }
  return result;
}


// ===== 6ec790 _tr_align =====
int __fastcall tr_align(int result)
{
  int v1; // r2
  int v2; // r1
  int v3; // r2
  int v4; // r5
  int v5; // r2
  int v6; // r1
  int v7; // r4
  int v8; // r1
  int v9; // r7
  int v10; // r3
  int v11; // r1
  int v12; // r3
  int v13; // r3
  int v14; // r1
  int v15; // r1
  int v16; // r6
  int v17; // r2
  int v18; // r1
  int v19; // r2
  int v20; // r2
  int v21; // r1
  int v22; // r4
  unsigned int v23; // r12
  int v24; // r1
  int v25; // r3
  int v26; // r1
  int v27; // r12
  int v28; // r3
  int v29; // r4
  unsigned int v30; // r12
  int v31; // r3
  int v32; // r1
  int v33; // r3
  int v34; // r12
  int v35; // r3
  int v36; // r1
  int v37; // r2

  v1 = *(_DWORD *)(result + 5820);
  if ( v1 <= 13 )
  {
    v8 = v1 + 3;
    LOWORD(v7) = *(_WORD *)(result + 5816) | (2 << v1);
  }
  else
  {
    v2 = *(_DWORD *)(result + 20);
    v3 = *(unsigned __int16 *)(result + 5816) | (2 << v1);
    v4 = *(_DWORD *)(result + 8);
    *(_WORD *)(result + 5816) = v3;
    *(_BYTE *)(v4 + v2) = v3;
    v5 = v2 + 1;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v5) = HIBYTE(*(_WORD *)(result + 5816));
    v6 = *(_DWORD *)(result + 5820);
    *(_DWORD *)(result + 20) = v5 + 1;
    v7 = 2 >> (16 - v6);
    v8 = v6 - 13;
  }
  *(_WORD *)(result + 5816) = v7;
  *(_DWORD *)(result + 5820) = v8;
  if ( v8 > 9 )
  {
    v9 = *(_DWORD *)(result + 8);
    v10 = *(_DWORD *)(result + 20);
    *(_WORD *)(result + 5816) = v7;
    *(_BYTE *)(v9 + v10) = v7;
    v11 = v10 + 1;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v11) = HIBYTE(*(_WORD *)(result + 5816));
    v12 = *(_DWORD *)(result + 5820);
    *(_DWORD *)(result + 20) = v11 + 1;
    v13 = v12 - 9;
    *(_WORD *)(result + 5816) = 0;
    *(_DWORD *)(result + 5820) = v13;
    if ( v13 != 16 )
      goto LABEL_5;
LABEL_16:
    v25 = *(_DWORD *)(result + 20);
    v26 = v25 + 1;
    v27 = v25 + 2;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v25) = *(_WORD *)(result + 5816);
    v13 = 0;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v26) = HIBYTE(*(_WORD *)(result + 5816));
    *(_DWORD *)(result + 20) = v27;
    *(_WORD *)(result + 5816) = 0;
    *(_DWORD *)(result + 5820) = 0;
    goto LABEL_7;
  }
  v13 = *(_DWORD *)(result + 5820) + 7;
  *(_WORD *)(result + 5816) = v7;
  *(_DWORD *)(result + 5820) = v13;
  if ( v13 == 16 )
    goto LABEL_16;
LABEL_5:
  if ( v13 > 7 )
  {
    v28 = *(_DWORD *)(result + 20);
    v29 = v28 + 1;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v28) = *(_WORD *)(result + 5816);
    v30 = *(unsigned __int16 *)(result + 5816);
    v31 = *(_DWORD *)(result + 5820);
    *(_DWORD *)(result + 20) = v29;
    v13 = v31 - 8;
    *(_WORD *)(result + 5816) = v30 >> 8;
    *(_DWORD *)(result + 5820) = v13;
  }
LABEL_7:
  if ( *(_DWORD *)(result + 5812) + 11 - v13 > 8 )
    goto LABEL_14;
  if ( v13 > 13 )
  {
    v32 = *(_DWORD *)(result + 20);
    v33 = *(unsigned __int16 *)(result + 5816) | (2 << v13);
    v34 = *(_DWORD *)(result + 8);
    *(_WORD *)(result + 5816) = v33;
    *(_BYTE *)(v34 + v32) = v33;
    v35 = v32 + 1;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v35) = HIBYTE(*(_WORD *)(result + 5816));
    v36 = *(_DWORD *)(result + 5820);
    *(_DWORD *)(result + 20) = v35 + 1;
    v13 = 2 >> (16 - v36);
    v15 = v36 - 13;
    *(_WORD *)(result + 5816) = v13;
  }
  else
  {
    v14 = *(_DWORD *)(result + 5820);
    LOWORD(v13) = *(_WORD *)(result + 5816) | (2 << v13);
    *(_WORD *)(result + 5816) = v13;
    v15 = v14 + 3;
  }
  *(_DWORD *)(result + 5820) = v15;
  if ( v15 > 9 )
  {
    v16 = *(_DWORD *)(result + 8);
    v17 = *(_DWORD *)(result + 20);
    *(_WORD *)(result + 5816) = v13;
    *(_BYTE *)(v16 + v17) = v13;
    v18 = v17 + 1;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v18) = HIBYTE(*(_WORD *)(result + 5816));
    v19 = *(_DWORD *)(result + 5820);
    *(_DWORD *)(result + 20) = v18 + 1;
    v20 = v19 - 9;
    *(_WORD *)(result + 5816) = 0;
    *(_DWORD *)(result + 5820) = v20;
    if ( v20 != 16 )
      goto LABEL_12;
LABEL_20:
    v37 = *(_DWORD *)(result + 20);
    *(_WORD *)(*(_DWORD *)(result + 8) + v37) = *(_WORD *)(result + 5816);
    *(_DWORD *)(result + 5820) = 0;
    *(_DWORD *)(result + 20) = v37 + 2;
    *(_WORD *)(result + 5816) = 0;
    goto LABEL_14;
  }
  v20 = *(_DWORD *)(result + 5820) + 7;
  *(_WORD *)(result + 5816) = v13;
  *(_DWORD *)(result + 5820) = v20;
  if ( v20 == 16 )
    goto LABEL_20;
LABEL_12:
  if ( v20 > 7 )
  {
    v21 = *(_DWORD *)(result + 20);
    v22 = v21 + 1;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v21) = *(_WORD *)(result + 5816);
    v23 = *(unsigned __int16 *)(result + 5816);
    v24 = *(_DWORD *)(result + 5820);
    *(_DWORD *)(result + 20) = v22;
    *(_WORD *)(result + 5816) = v23 >> 8;
    *(_DWORD *)(result + 5820) = v24 - 8;
  }
LABEL_14:
  *(_DWORD *)(result + 5812) = 7;
  return result;
}


// ===== 6ecb58 _tr_tally =====
bool __fastcall tr_tally(_DWORD *a1, int a2, int a3)
{
  int v3; // r4
  unsigned int v4; // r1
  int v5; // r3
  bool v6; // cc
  unsigned __int8 *v7; // r3

  *(_WORD *)(a1[1449] + 2 * a1[1448]) = a2;
  v3 = a1[1448];
  *(_BYTE *)(a1[1446] + v3) = a3;
  a1[1448] = v3 + 1;
  if ( a2 )
  {
    v4 = a2 - 1;
    v5 = length_code[a3];
    ++a1[1452];
    v6 = v4 > 0xFF;
    ++LOWORD(a1[v5 + 294]);
    v7 = dist_code;
    if ( v4 <= 0xFF )
      v7 = (unsigned __int8 *)dist_code[v4];
    else
      v4 = (unsigned int)&dist_code[v4 >> 7];
    if ( v6 )
      v7 = (unsigned __int8 *)*(unsigned __int8 *)(v4 + 256);
    ++LOWORD(a1[(_DWORD)(v7 + 610)]);
  }
  else
  {
    ++LOWORD(a1[a3 + 37]);
  }
  return v3 + 1 == a1[1447] - 1;
}


// ===== 6ecc48 compress_block =====
int __fastcall compress_block(int result, int a2, int a3)
{
  int v3; // r3
  int v4; // r12
  unsigned __int16 *v5; // r1
  int v6; // r2
  int v7; // r2
  unsigned int v8; // r2
  int v9; // r6
  int v10; // r5
  int v11; // r7
  int v12; // r9
  int v13; // r6
  int v14; // r3
  int v15; // r3
  int v16; // r5
  int v17; // r6
  int v18; // r7
  int v19; // r11
  int v20; // r7
  int v21; // r3
  int v22; // r12
  int v23; // r3
  int v24; // r11
  int v25; // r12
  int v26; // r9
  char *v27; // r3
  Elf32_Dyn **v28; // r7
  int v29; // r6
  int v30; // r11
  int v31; // r9
  int v32; // r3
  int v33; // r11
  unsigned int v34; // r5
  Elf32_Dyn **v35; // r6
  int v36; // r3
  int v37; // r6
  int v38; // r6
  int v39; // r3
  int v40; // r7
  int v41; // r9
  int v42; // r11
  int v43; // r11
  char *v44; // r6
  int v45; // r7
  unsigned int v46; // r5
  int v47; // r3
  int v48; // r9
  int v49; // r6
  int v50; // r3
  int v51; // r9
  int v52; // r11
  int v53; // r5
  int v54; // r6
  int v55; // r7
  int v56; // r3
  int v57; // r12
  int v58; // [sp+4h] [bp-24h]
  int v59; // [sp+Ch] [bp-1Ch]

  if ( *(_DWORD *)(result + 5792) )
  {
    v3 = *(_DWORD *)(result + 5820);
    v4 = *(unsigned __int16 *)(result + 5816);
    v8 = 0;
    do
    {
      v16 = *(unsigned __int16 *)(*(_DWORD *)(result + 5796) + 2 * v8);
      v17 = *(unsigned __int8 *)(*(_DWORD *)(result + 5784) + v8++);
      if ( v16 )
      {
        v59 = length_code[v17];
        v18 = 4 * (v59 + 257);
        v19 = *(unsigned __int16 *)(a2 + v18 + 2);
        if ( 16 - v19 >= v3 )
        {
          v25 = (unsigned __int16)(v4 | (*(_WORD *)(a2 + v18) << v3));
          v24 = v19 + *(_DWORD *)(result + 5820);
          *(_DWORD *)(result + 5820) = v24;
          *(_WORD *)(result + 5816) = v25;
        }
        else
        {
          v58 = *(unsigned __int16 *)(a2 + v18);
          v20 = *(_DWORD *)(result + 20);
          v21 = v4 | (v58 << v3);
          *(_WORD *)(result + 5816) = v21;
          *(_BYTE *)(*(_DWORD *)(result + 8) + v20) = v21;
          *(_BYTE *)(*(_DWORD *)(result + 8) + v20 + 1) = HIBYTE(*(_WORD *)(result + 5816));
          v22 = *(_DWORD *)(result + 5820);
          *(_DWORD *)(result + 20) = v20 + 2;
          v23 = v58 >> (16 - v22);
          v24 = v22 - 16 + v19;
          v25 = (unsigned __int16)v23;
          *(_DWORD *)(result + 5820) = v24;
          *(_WORD *)(result + 5816) = v23;
        }
        v26 = v59;
        v27 = (char *)&static_ltree + 4 * v59;
        v28 = *((Elf32_Dyn ***)v27 + 288);
        if ( v28 )
        {
          v26 = *((_DWORD *)v27 + 317);
          v29 = v17 - v26;
          if ( 16 - (int)v28 >= v24 )
          {
            v25 |= v29 << v24;
            v52 = *(_DWORD *)(result + 5820);
            v25 = (unsigned __int16)v25;
            *(_WORD *)(result + 5816) = v25;
            v24 = (int)v28 + v52;
            *(_DWORD *)(result + 5820) = v24;
          }
          else
          {
            v30 = v25 | (v29 << v24);
            v31 = *(_DWORD *)(result + 20);
            v32 = *(_DWORD *)(result + 8);
            *(_WORD *)(result + 5816) = v30;
            *(_BYTE *)(v32 + v31++) = v30;
            *(_BYTE *)(*(_DWORD *)(result + 8) + v31) = HIBYTE(*(_WORD *)(result + 5816));
            v33 = *(_DWORD *)(result + 5820);
            v26 = v31 + 1;
            v25 = (int)(unsigned __int16)v29 >> (16 - v33);
            v24 = (int)v28 + v33 - 16;
            v25 = (unsigned __int16)v25;
            *(_DWORD *)(result + 20) = v26;
            *(_DWORD *)(result + 5820) = v24;
            *(_WORD *)(result + 5816) = v25;
          }
        }
        v34 = v16 - 1;
        if ( v34 <= 0xFF )
        {
          v35 = (Elf32_Dyn **)(elf_hash_bucket + 6640);
          v28 = &__GLOBAL_OFFSET_TABLE_;
        }
        else
        {
          v35 = &__GLOBAL_OFFSET_TABLE_;
          v26 = 6860;
        }
        if ( v34 <= 0xFF )
          v36 = *(int *)((char *)v35 + (_DWORD)v28);
        else
          v36 = *(int *)((char *)v35 + v26);
        if ( v34 <= 0xFF )
          v37 = *(unsigned __int8 *)(v36 + v34);
        else
          v37 = *(unsigned __int8 *)(v36 + (v34 >> 7) + 256);
        v38 = 4 * v37;
        v39 = *(unsigned __int16 *)(a3 + v38 + 2);
        if ( 16 - v39 >= v24 )
        {
          v4 = (unsigned __int16)(v25 | (*(_WORD *)(a3 + v38) << v24));
          v3 = v39 + *(_DWORD *)(result + 5820);
        }
        else
        {
          v40 = *(_DWORD *)(result + 20);
          v41 = *(unsigned __int16 *)(a3 + v38);
          v42 = v25 | (v41 << v24);
          *(_WORD *)(result + 5816) = v42;
          *(_BYTE *)(*(_DWORD *)(result + 8) + v40) = v42;
          *(_BYTE *)(*(_DWORD *)(result + 8) + v40 + 1) = HIBYTE(*(_WORD *)(result + 5816));
          v43 = *(_DWORD *)(result + 5820);
          *(_DWORD *)(result + 20) = v40 + 2;
          v3 = v43 - 16 + v39;
          v4 = (unsigned __int16)(v41 >> (16 - v43));
        }
        *(_DWORD *)(result + 5820) = v3;
        *(_WORD *)(result + 5816) = v4;
        v44 = (char *)&static_ltree + v38;
        v45 = *((_DWORD *)v44 + 346);
        if ( v45 )
        {
          v46 = v34 - *((_DWORD *)v44 + 376);
          if ( 16 - v45 >= v3 )
          {
            v51 = *(_DWORD *)(result + 5820);
            v4 = (unsigned __int16)(v4 | ((_WORD)v46 << v3));
            *(_WORD *)(result + 5816) = v4;
            v3 = v45 + v51;
            *(_DWORD *)(result + 5820) = v45 + v51;
          }
          else
          {
            v47 = v4 | (v46 << v3);
            v48 = *(_DWORD *)(result + 20);
            v49 = *(_DWORD *)(result + 8);
            *(_WORD *)(result + 5816) = v47;
            *(_BYTE *)(v49 + v48++) = v47;
            *(_BYTE *)(*(_DWORD *)(result + 8) + v48) = HIBYTE(*(_WORD *)(result + 5816));
            v50 = *(_DWORD *)(result + 5820);
            v4 = (int)(unsigned __int16)v46 >> (16 - v50);
            v3 = v50 - 16 + v45;
            v4 = (unsigned __int16)v4;
            *(_DWORD *)(result + 20) = v48 + 1;
            *(_DWORD *)(result + 5820) = v3;
            *(_WORD *)(result + 5816) = v4;
          }
        }
      }
      else
      {
        v9 = 4 * v17;
        v10 = *(unsigned __int16 *)(a2 + v9 + 2);
        if ( 16 - v10 >= v3 )
        {
          v4 |= *(unsigned __int16 *)(a2 + v9) << v3;
          v3 = v10 + *(_DWORD *)(result + 5820);
        }
        else
        {
          v11 = *(unsigned __int16 *)(a2 + v9);
          v12 = *(_DWORD *)(result + 8);
          v13 = *(_DWORD *)(result + 20);
          v14 = v4 | (v11 << v3);
          *(_WORD *)(result + 5816) = v14;
          *(_BYTE *)(v12 + v13) = v14;
          *(_BYTE *)(*(_DWORD *)(result + 8) + v13 + 1) = HIBYTE(*(_WORD *)(result + 5816));
          v15 = *(_DWORD *)(result + 5820);
          *(_DWORD *)(result + 20) = v13 + 2;
          v4 = v11 >> (16 - v15);
          v3 = v15 - 16 + v10;
        }
        v4 = (unsigned __int16)v4;
        *(_DWORD *)(result + 5820) = v3;
        *(_WORD *)(result + 5816) = v4;
      }
    }
    while ( v8 < *(_DWORD *)(result + 5792) );
  }
  else
  {
    v3 = *(_DWORD *)(result + 5820);
    v4 = *(unsigned __int16 *)(result + 5816);
  }
  v5 = (unsigned __int16 *)(a2 + 1024);
  v6 = v5[1];
  if ( 16 - v6 < v3 )
  {
    v53 = *v5;
    v54 = *(_DWORD *)(result + 20);
    v55 = *(_DWORD *)(result + 8);
    v56 = v4 | (v53 << v3);
    *(_WORD *)(result + 5816) = v56;
    *(_BYTE *)(v55 + v54++) = v56;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v54) = HIBYTE(*(_WORD *)(result + 5816));
    v57 = *(_DWORD *)(result + 5820);
    *(_DWORD *)(result + 20) = v54 + 1;
    *(_WORD *)(result + 5816) = v53 >> (16 - v57);
    *(_DWORD *)(result + 5820) = v57 - 16 + v6;
  }
  else
  {
    v7 = v6 + *(_DWORD *)(result + 5820);
    *(_WORD *)(result + 5816) = v4 | (*v5 << v3);
    *(_DWORD *)(result + 5820) = v7;
  }
  *(_DWORD *)(result + 5812) = v5[1];
  return result;
}


// ===== 6ed148 _tr_stored_block =====
int __fastcall tr_stored_block(int result, int a2, int a3, int a4)
{
  int v4; // r12
  __int16 v5; // r7
  int v6; // r5
  int v7; // r4
  int v8; // r4
  int v9; // r3
  int v10; // r12
  int v11; // r3
  char v12; // r5
  int v13; // r3
  int v14; // r5
  int v15; // r7
  int v16; // r12
  int v17; // r12
  int v18; // r5
  int v19; // r3

  v4 = *(_DWORD *)(result + 5820);
  if ( v4 > 13 )
  {
    v14 = *(_DWORD *)(result + 20);
    v15 = *(_DWORD *)(result + 8);
    v16 = *(unsigned __int16 *)(result + 5816) | (a4 << v4);
    *(_WORD *)(result + 5816) = v16;
    *(_BYTE *)(v15 + v14) = v16;
    v17 = v14 + 1;
    *(_BYTE *)(*(_DWORD *)(result + 8) + v17) = HIBYTE(*(_WORD *)(result + 5816));
    v18 = *(_DWORD *)(result + 5820);
    v19 = (int)(unsigned __int16)a4 >> (16 - v18);
    v6 = v18 - 13;
    *(_WORD *)(result + 5816) = v19;
    *(_DWORD *)(result + 20) = v17 + 1;
    *(_DWORD *)(result + 5820) = v6;
  }
  else
  {
    v5 = *(_WORD *)(result + 5816);
    v6 = v4 + 3;
    *(_DWORD *)(result + 5820) = v4 + 3;
    *(_WORD *)(result + 5816) = v5 | ((_WORD)a4 << v4);
  }
  if ( v6 <= 8 )
  {
    if ( v6 > 0 )
    {
      v13 = *(_DWORD *)(result + 20);
      *(_BYTE *)(*(_DWORD *)(result + 8) + v13) = *(_WORD *)(result + 5816);
      *(_DWORD *)(result + 20) = v13 + 1;
    }
  }
  else
  {
    v7 = *(_DWORD *)(result + 20);
    *(_WORD *)(*(_DWORD *)(result + 8) + v7) = *(_WORD *)(result + 5816);
    *(_DWORD *)(result + 20) = v7 + 2;
  }
  v8 = *(_DWORD *)(result + 20);
  v9 = *(_DWORD *)(result + 8);
  *(_DWORD *)(result + 5812) = 8;
  v10 = 0;
  *(_WORD *)(result + 5816) = 0;
  *(_DWORD *)(result + 5820) = 0;
  *(_BYTE *)(v9 + v8++) = a3;
  *(_BYTE *)(*(_DWORD *)(result + 8) + v8++) = BYTE1(a3);
  *(_BYTE *)(*(_DWORD *)(result + 8) + v8++) = ~(_BYTE)a3;
  v11 = v8 + 1;
  *(_BYTE *)(*(_DWORD *)(result + 8) + v8) = (unsigned __int16)~(_WORD)a3 >> 8;
  *(_DWORD *)(result + 20) = v8 + 1;
  if ( a3 )
  {
    do
    {
      v12 = *(_BYTE *)(a2 + v10++);
      *(_BYTE *)(*(_DWORD *)(result + 8) + v11++) = v12;
      *(_DWORD *)(result + 20) = v11;
    }
    while ( a3 != v10 );
  }
  return result;
}


// ===== 6ed2d0 _tr_flush_block =====
int __fastcall tr_flush_block(_DWORD *a1, int a2, unsigned int a3, int a4)
{
  int v5; // r0
  int v6; // r6
  unsigned int v9; // r3
  int j; // r7
  int v11; // r7
  int v12; // r0
  _BOOL4 v13; // r1
  int v14; // r1
  bool v15; // zf
  int v16; // r2
  int v17; // r0
  int v18; // r2
  unsigned __int16 *v19; // r2
  int i; // r3
  int v21; // r1
  unsigned __int16 *v22; // r2
  int v23; // r1
  int v24; // r1
  int v25; // r3
  int v26; // r1
  int v27; // r0
  int v28; // r7
  unsigned __int16 v29; // r12
  int v30; // r3
  int v31; // r2
  int v32; // r0
  int v33; // r3
  int v34; // lr
  int v35; // r3
  int v36; // r2
  int v37; // r3
  int v38; // r2
  int v39; // r0
  int v40; // r3
  int v41; // r12
  int v42; // r3
  int v43; // r2
  int v44; // r2
  int v45; // r0
  int v46; // r1
  int v47; // r1
  int v48; // r3
  int v49; // r6
  int v50; // r12
  int v51; // r8
  int v52; // r2
  int v53; // lr
  int v54; // r2
  int v55; // r6
  int v56; // r1
  int v57; // r2
  int k; // r3
  _DWORD *v59; // r2
  int m; // r3
  _DWORD *v61; // r2
  int result; // r0
  int n; // r3
  _DWORD *v64; // r1
  int v65; // r3
  int v66; // r1
  int v67; // r3
  int v68; // r0
  int v69; // r2
  int v70; // lr
  int v71; // r2
  int v72; // r3
  int v73; // r1
  int v74; // lr
  int v75; // r1
  int v76; // r3
  int v77; // lr
  bool v78; // nf
  int v79; // r2
  int v80; // r3
  int v81; // [sp+0h] [bp-Ch]
  int v82; // [sp+4h] [bp-8h]

  v5 = a1[33];
  v6 = a3;
  if ( v5 <= 0 )
    a3 += 5;
  if ( v5 > 0 )
  {
    if ( v6 && *(_DWORD *)(*a1 + 44) == 2 )
    {
      v11 = (int)(a1 + 37);
      v19 = (unsigned __int16 *)(a1 + 37);
      i = 0;
      while ( 1 )
      {
        v21 = *v19;
        v19 += 2;
        if ( v21 )
          break;
        if ( ++i == 9 )
        {
          v22 = (unsigned __int16 *)(a1 + 51);
          for ( i = 14; i != 32; ++i )
          {
            v23 = *v22;
            v22 += 2;
            if ( v23 )
              break;
          }
          break;
        }
      }
      *(_DWORD *)(*a1 + 44) = i == 32;
    }
    else
    {
      v11 = (int)(a1 + 37);
    }
    build_tree(a1, a1 + 710);
    build_tree(a1, a1 + 713);
    scan_tree(a1, v11, a1[711]);
    scan_tree(a1, (int)(a1 + 610), a1[714]);
    build_tree(a1, a1 + 716);
    for ( j = 18; j != 2; --j )
    {
      if ( HIWORD(a1[bl_order[j] + 671]) )
        break;
    }
    v12 = a1[1450] + 14 + 3 * (j + 1);
    v9 = (unsigned int)(v12 + 10) >> 3;
    a3 = (unsigned int)(a1[1451] + 10) >> 3;
    a1[1450] = v12;
    if ( v9 >= a3 )
      v9 = a3;
  }
  else
  {
    v9 = a3;
    j = 0;
  }
  v13 = v6 + 4 <= v9;
  if ( !a2 )
    v13 = 0;
  if ( v13 )
  {
    tr_stored_block((int)a1, a2, v6, a4);
    goto LABEL_42;
  }
  v14 = a1[34];
  v15 = v14 == 4;
  if ( v14 != 4 )
    v15 = a3 == v9;
  if ( v15 )
  {
    v16 = a1[1455];
    if ( v16 > 13 )
    {
      v68 = a1[5];
      v69 = *((unsigned __int16 *)a1 + 2908) | ((a4 + 2) << v16);
      v70 = a1[2];
      *((_WORD *)a1 + 2908) = v69;
      *(_BYTE *)(v70 + v68++) = v69;
      *(_BYTE *)(a1[2] + v68) = HIBYTE(*((_WORD *)a1 + 2908));
      v71 = a1[1455];
      *((_WORD *)a1 + 2908) = (int)(unsigned __int16)(a4 + 2) >> (16 - v71);
      a1[1455] = v71 - 13;
      a1[5] = v68 + 1;
    }
    else
    {
      v17 = v16 + 3;
      v18 = *((unsigned __int16 *)a1 + 2908) | ((a4 + 2) << v16);
      a1[1455] = v17;
      *((_WORD *)a1 + 2908) = v18;
    }
    compress_block((int)a1, (int)&static_ltree, (int)&static_dtree);
    goto LABEL_42;
  }
  v24 = a1[1455];
  if ( v24 > 13 )
  {
    v72 = a1[5];
    v73 = *((unsigned __int16 *)a1 + 2908) | ((a4 + 4) << v24);
    v74 = a1[2];
    *((_WORD *)a1 + 2908) = v73;
    *(_BYTE *)(v74 + v72) = v73;
    v75 = v72 + 1;
    *(_BYTE *)(a1[2] + v75) = HIBYTE(*((_WORD *)a1 + 2908));
    v76 = a1[1455];
    v77 = v75 + 1;
    v26 = (int)(unsigned __int16)(a4 + 4) >> (16 - v76);
    v25 = v76 - 13;
    v26 = (unsigned __int16)v26;
    a1[5] = v77;
    *((_WORD *)a1 + 2908) = v26;
    a1[1455] = v25;
    v27 = a1[711];
    v28 = j + 1;
    v82 = v27;
    v81 = a1[714];
    if ( v25 > 11 )
    {
LABEL_32:
      v29 = v27 - 256;
      v30 = v26 | ((v27 - 256) << v25);
      v31 = a1[5];
      v32 = a1[2];
      *((_WORD *)a1 + 2908) = v30;
      *(_BYTE *)(v32 + v31++) = v30;
      *(_BYTE *)(a1[2] + v31) = HIBYTE(*((_WORD *)a1 + 2908));
      v33 = a1[1455];
      v34 = v31 + 1;
      v36 = (int)v29 >> (16 - v33);
      v35 = v33 - 11;
      v36 = (unsigned __int16)v36;
      a1[5] = v34;
      *((_WORD *)a1 + 2908) = v36;
      a1[1455] = v35;
      if ( v35 > 11 )
        goto LABEL_33;
LABEL_59:
      v43 = (unsigned __int16)(v36 | ((_WORD)v81 << v35));
      v42 = a1[1455] + 5;
      v78 = a1[1455] - 7 < 0;
      *((_WORD *)a1 + 2908) = v43;
      a1[1455] = v42;
      if ( !(v78 ^ __OFSUB__(v42, 12) | (v42 == 12)) )
        goto LABEL_34;
LABEL_61:
      v79 = v43 | ((v28 - 4) << v42);
      v80 = a1[1455];
      *((_WORD *)a1 + 2908) = v79;
      a1[1455] = v80 + 4;
      goto LABEL_35;
    }
  }
  else
  {
    v25 = v24 + 3;
    v26 = (unsigned __int16)(*((_WORD *)a1 + 2908) | (((_WORD)a4 + 4) << v24));
    *((_WORD *)a1 + 2908) = v26;
    a1[1455] = v25;
    v27 = a1[711];
    v28 = j + 1;
    v82 = v27;
    v81 = a1[714];
    if ( v25 > 11 )
      goto LABEL_32;
  }
  v36 = (unsigned __int16)(v26 | (((_WORD)v82 - 256) << v25));
  v35 = a1[1455] + 5;
  v78 = a1[1455] - 6 < 0;
  *((_WORD *)a1 + 2908) = v36;
  a1[1455] = v35;
  if ( v78 ^ __OFSUB__(v35, 11) | (v35 == 11) )
    goto LABEL_59;
LABEL_33:
  v37 = v36 | (v81 << v35);
  v38 = a1[5];
  v39 = a1[2];
  *((_WORD *)a1 + 2908) = v37;
  *(_BYTE *)(v39 + v38++) = v37;
  *(_BYTE *)(a1[2] + v38) = HIBYTE(*((_WORD *)a1 + 2908));
  v40 = a1[1455];
  v41 = v38 + 1;
  v43 = (int)(unsigned __int16)v81 >> (16 - v40);
  v42 = v40 - 11;
  v43 = (unsigned __int16)v43;
  a1[5] = v41;
  *((_WORD *)a1 + 2908) = v43;
  a1[1455] = v42;
  if ( v42 <= 12 )
    goto LABEL_61;
LABEL_34:
  v44 = v43 | ((v28 - 4) << v42);
  v45 = a1[5];
  v46 = a1[2];
  *((_WORD *)a1 + 2908) = v44;
  *(_BYTE *)(v46 + v45++) = v44;
  *(_BYTE *)(a1[2] + v45) = HIBYTE(*((_WORD *)a1 + 2908));
  v47 = a1[1455];
  *((_WORD *)a1 + 2908) = (int)(unsigned __int16)(v28 - 4) >> (16 - v47);
  a1[1455] = v47 - 12;
  a1[5] = v45 + 1;
LABEL_35:
  if ( v28 > 0 )
  {
    v48 = 0;
    do
    {
      while ( 1 )
      {
        v54 = a1[1455];
        if ( v54 <= 13 )
          break;
        v49 = a1[5];
        v50 = HIWORD(a1[bl_order[v48] + 671]);
        v51 = a1[2];
        v52 = *((unsigned __int16 *)a1 + 2908) | (v50 << v54);
        *((_WORD *)a1 + 2908) = v52;
        *(_BYTE *)(v51 + v49) = v52;
        *(_BYTE *)(a1[2] + v49 + 1) = HIBYTE(*((_WORD *)a1 + 2908));
        v53 = a1[1455];
        a1[5] = v49 + 2;
        ++v48;
        *((_WORD *)a1 + 2908) = v50 >> (16 - v53);
        a1[1455] = v53 - 13;
        if ( v28 <= v48 )
          goto LABEL_40;
      }
      v55 = v54 + 3;
      v56 = HIWORD(a1[bl_order[v48++] + 671]);
      v57 = *((unsigned __int16 *)a1 + 2908) | (v56 << v54);
      a1[1455] = v55;
      *((_WORD *)a1 + 2908) = v57;
    }
    while ( v28 > v48 );
  }
LABEL_40:
  send_tree((int)a1, (int)(a1 + 37), v82);
  send_tree((int)a1, (int)(a1 + 610), v81);
  compress_block((int)a1, (int)(a1 + 37), (int)(a1 + 610));
LABEL_42:
  for ( k = 0; k != 286; ++k )
  {
    v59 = &a1[k];
    *((_WORD *)v59 + 74) = 0;
  }
  for ( m = 0; m != 30; ++m )
  {
    v61 = &a1[m];
    result = 0;
    *((_WORD *)v61 + 1220) = 0;
  }
  for ( n = 0; n != 19; ++n )
  {
    v64 = &a1[n];
    *((_WORD *)v64 + 1342) = 0;
  }
  a1[1448] = 0;
  *((_WORD *)a1 + 586) = 1;
  a1[1451] = 0;
  a1[1450] = 0;
  a1[1452] = 0;
  if ( a4 )
  {
    v65 = a1[1455];
    if ( v65 <= 8 )
    {
      if ( v65 > 0 )
      {
        v67 = a1[5];
        result = *((unsigned __int16 *)a1 + 2908);
        *(_BYTE *)(a1[2] + v67) = result;
        a1[5] = v67 + 1;
      }
    }
    else
    {
      v66 = a1[5];
      result = v66 + 2;
      *(_WORD *)(a1[2] + v66) = *((_WORD *)a1 + 2908);
      a1[5] = v66 + 2;
    }
    a1[1455] = 0;
    *((_WORD *)a1 + 2908) = 0;
  }
  return result;
}


// ===== 6ed9fc start_pass_coef =====
int __fastcall start_pass_coef(_DWORD *a1, int a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r2
  int result; // r0
  int v6; // r0
  int v7; // r0

  v2 = (_DWORD *)a1[82];
  v2[2] = 0;
  v4 = (_DWORD *)a1[82];
  if ( (int)a1[57] <= 1 )
  {
    v6 = a1[58];
    if ( v4[2] >= (unsigned int)(a1[56] - 1) )
      v7 = *(_DWORD *)(v6 + 72);
    else
      v7 = *(_DWORD *)(v6 + 12);
    v4[5] = v7;
    result = 0;
    v4[4] = 0;
    v4[3] = 0;
    if ( a2 != 2 )
    {
LABEL_5:
      if ( a2 == 3 )
      {
        if ( !v2[16] )
        {
          *(_DWORD *)(*a1 + 20) = 4;
          result = (*(int (__fastcall **)(_DWORD *))*a1)(a1);
        }
        v2[1] = compress_first_pass;
      }
      else if ( a2 )
      {
        *(_DWORD *)(*a1 + 20) = 4;
        return (*(int (__fastcall **)(_DWORD *))*a1)(a1);
      }
      else
      {
        if ( v2[16] )
        {
          *(_DWORD *)(*a1 + 20) = 4;
          result = (*(int (__fastcall **)(_DWORD *))*a1)(a1);
        }
        v2[1] = compress_data;
      }
      return result;
    }
  }
  else
  {
    v4[5] = 1;
    result = 0;
    v4[4] = 0;
    v4[3] = 0;
    if ( a2 != 2 )
      goto LABEL_5;
  }
  if ( !v2[16] )
  {
    *(_DWORD *)(*a1 + 20) = 4;
    result = (*(int (__fastcall **)(_DWORD *))*a1)(a1);
  }
  v2[1] = compress_output;
  return result;
}


// ===== 6edb5c compress_output =====
int __fastcall compress_output(_DWORD *a1)
{
  _DWORD *v1; // r4
  int v2; // r6
  _DWORD *i; // r7
  int v5; // r3
  int v6; // r2
  int v7; // r9
  _DWORD *v8; // r11
  int v9; // r1
  int v10; // r12
  int v11; // r3
  int v12; // r0
  int v13; // r10
  int v14; // r7
  _DWORD *v15; // r8
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // lr
  int result; // r0
  _DWORD *v21; // r3
  int v22; // r2
  int v23; // r2
  unsigned int v24; // [sp+8h] [bp-24h]
  int j; // [sp+Ch] [bp-20h]
  int v26; // [sp+10h] [bp-1Ch]
  _DWORD v27[5]; // [sp+18h] [bp-14h]

  v1 = (_DWORD *)a1[82];
  v2 = 0;
  for ( i = a1;
        ;
        v27[v2++] = (*(int (__fastcall **)(_DWORD *, _DWORD, int))(a1[1] + 32))(
                      a1,
                      v1[*(_DWORD *)(i[57] + 4) + 16],
                      v1[2] * *(_DWORD *)(i[57] + 12)) )
  {
    ++i;
    if ( v2 >= a1[57] )
      break;
  }
  v26 = v1[4];
  v5 = v1[5];
  for ( j = 4 * v26; ; j += 4 )
  {
    if ( v26 >= v5 )
    {
      ++v1[2];
      v21 = (_DWORD *)a1[82];
      if ( (int)a1[57] <= 1 )
      {
        v22 = a1[58];
        if ( v21[2] >= (unsigned int)(a1[56] - 1) )
          v23 = *(_DWORD *)(v22 + 72);
        else
          v23 = *(_DWORD *)(v22 + 12);
        v21[5] = v23;
      }
      else
      {
        v21[5] = 1;
      }
      v21[4] = 0;
      v21[3] = 0;
      return 1;
    }
    v24 = v1[3];
    if ( v24 < a1[62] )
      break;
LABEL_22:
    v1[3] = 0;
    ++v26;
  }
  while ( 1 )
  {
    v6 = a1[57];
    if ( v6 > 0 )
    {
      v7 = 0;
      v8 = a1;
      v9 = 0;
      do
      {
        v10 = v8[58];
        v11 = *(_DWORD *)(v10 + 56);
        v12 = *(_DWORD *)(v10 + 52);
        if ( v11 > 0 )
        {
          v13 = v24 * (v12 << 7);
          v14 = 0;
          v15 = (_DWORD *)(v27[v7] + j);
          do
          {
            if ( v12 > 0 )
            {
              v16 = *v15 + v13;
              v17 = 0;
              v18 = &v1[v9];
              do
              {
                v18[v17 + 6] = v16;
                v12 = *(_DWORD *)(v10 + 52);
                ++v17;
                ++v9;
                v16 += 128;
              }
              while ( v12 > v17 );
              v11 = *(_DWORD *)(v10 + 56);
            }
            ++v14;
            ++v15;
          }
          while ( v11 > v14 );
          v6 = a1[57];
        }
        ++v7;
        ++v8;
      }
      while ( v6 > v7 );
    }
    result = (*(int (__fastcall **)(_DWORD *, _DWORD *))(a1[87] + 4))(a1, v1 + 6);
    if ( !result )
      break;
    if ( a1[62] <= ++v24 )
    {
      v5 = v1[5];
      goto LABEL_22;
    }
  }
  v1[3] = v24;
  v1[4] = v26;
  return result;
}


// ===== 6edd80 jinit_c_coef_controller =====
_DWORD *__fastcall jinit_c_coef_controller(int a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v5; // r7
  int *v6; // r4
  int v7; // r6
  int (__fastcall *v8)(int, int, _DWORD, int, int, int); // r8
  int v9; // r10
  int v10; // r0
  _DWORD *v11; // r3
  _DWORD *v12; // r2

  result = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 328) = result;
  v5 = result;
  *result = start_pass_coef;
  if ( a2 )
  {
    v6 = *(int **)(a1 + 68);
    if ( *(int *)(a1 + 60) > 0 )
    {
      v7 = 0;
      do
      {
        v8 = *(int (__fastcall **)(int, int, _DWORD, int, int, int))(*(_DWORD *)(a1 + 4) + 20);
        v9 = jround_up(v6[7], v6[2]);
        v10 = jround_up(v6[8], v6[3]);
        result = (_DWORD *)v8(a1, 1, 0, v9, v10, v6[3]);
        v5[16] = result;
        ++v7;
        v6 += 21;
        ++v5;
      }
      while ( *(_DWORD *)(a1 + 60) > v7 );
    }
  }
  else
  {
    result = (_DWORD *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)(a1 + 4) + 4))(a1, 1, 1280);
    v11 = v5;
    v12 = result + 320;
    do
    {
      v11[6] = result;
      result += 32;
      ++v11;
    }
    while ( result != v12 );
    v5[16] = 0;
  }
  return result;
}


// ===== 6ede80 compress_first_pass =====
int __fastcall compress_first_pass(int *a1, int a2)
{
  int *v2; // r7
  _DWORD *v3; // r11
  int v4; // r9
  unsigned int v5; // r6
  unsigned int v6; // r4
  unsigned int v7; // r10
  int v8; // r5
  int v9; // r6
  int v10; // r4
  char *v11; // r4
  __int16 v12; // r1
  int i; // r3
  int v14; // r2
  bool v15; // cc
  int v16; // r1
  unsigned int v17; // r5
  int v18; // r2
  int v19; // r6
  int v20; // r11
  int v21; // r7
  char *v22; // r5
  int v23; // r9
  int v24; // r12
  int v25; // r10
  int v26; // r9
  __int16 v27; // r0
  int j; // r3
  int v29; // r2
  _DWORD *v31; // [sp+10h] [bp-2Ch]
  size_t v33; // [sp+1Ch] [bp-20h]
  int v34; // [sp+20h] [bp-1Ch]
  int v35; // [sp+20h] [bp-1Ch]
  int v36; // [sp+24h] [bp-18h]
  int v37; // [sp+28h] [bp-14h]
  int v38; // [sp+2Ch] [bp-10h]
  unsigned int v39; // [sp+30h] [bp-Ch]
  unsigned int v40; // [sp+34h] [bp-8h]
  int *v41; // [sp+34h] [bp-8h]

  v39 = a1[56] - 1;
  v2 = a1;
  v38 = a1[82];
  v3 = (_DWORD *)a1[17];
  if ( a1[15] > 0 )
  {
    v36 = 0;
    v37 = a1[82];
    while ( 1 )
    {
      v4 = (*(int (__fastcall **)(int *, _DWORD, int, _DWORD, int))(v2[1] + 32))(
             v2,
             *(_DWORD *)(v37 + 64),
             *(_DWORD *)(v38 + 8) * v3[3],
             v3[3],
             1);
      v5 = *(_DWORD *)(v38 + 8);
      if ( v39 <= v5 )
      {
        v16 = v3[8] % v3[3];
        if ( !v16 )
          v16 = v3[3];
        v34 = v16;
      }
      else
      {
        v34 = v3[3];
      }
      v6 = v3[2];
      v7 = v3[7];
      v8 = v7 % v6;
      if ( (int)(v7 % v6) > 0 )
        v8 = v6 - v7 % v6;
      if ( v34 > 0 )
      {
        v9 = 0;
        v40 = v3[2];
        do
        {
          v10 = *(_DWORD *)(v4 + v9);
          (*(void (__fastcall **)(int *, _DWORD *, _DWORD, int, int, _DWORD, unsigned int))(v2[86] + 4))(
            v2,
            v3,
            *(_DWORD *)(a2 + 4 * v36),
            v10,
            2 * v9,
            0,
            v7);
          if ( v8 > 0 )
          {
            v11 = (char *)(v10 + (v7 << 7));
            jzero_far(v11, v8 << 7);
            v12 = *((_WORD *)v11 - 64);
            for ( i = 0; i != v8; ++i )
            {
              v14 = i << 7;
              *(_WORD *)&v11[v14] = v12;
            }
          }
          v9 += 4;
        }
        while ( v9 != 4 * v34 );
        v6 = v40;
        v5 = *(_DWORD *)(v38 + 8);
      }
      if ( v5 == v39 )
      {
        v17 = v8 + v7;
        v18 = v34;
        v19 = v17 / v6;
        if ( v34 < v3[3] )
        {
          v31 = v3;
          v41 = v2;
          v33 = v17 << 7;
          v35 = v4 + 4 * v34;
          v20 = v18;
          v21 = 0;
          do
          {
            v22 = *(char **)(v35 + v21);
            v23 = *(_DWORD *)(v35 + v21 - 4);
            jzero_far(v22, v33);
            if ( v19 )
            {
              v24 = 0;
              v25 = 0;
              v26 = v23 + ((v6 - 1) << 7);
              do
              {
                v27 = *(_WORD *)(v26 + v24);
                if ( (int)v6 > 0 )
                {
                  for ( j = 0; j != v6; ++j )
                  {
                    v29 = j << 7;
                    *(_WORD *)&v22[v24 + v29] = v27;
                  }
                }
                ++v25;
                v24 += v6 << 7;
              }
              while ( v25 != v19 );
            }
            ++v20;
            v21 += 4;
          }
          while ( v31[3] > v20 );
          v3 = v31;
          v2 = v41;
        }
      }
      v15 = v2[15] <= ++v36;
      v37 += 4;
      if ( v15 )
        break;
      v3 += 21;
    }
  }
  return compress_output(v2);
}


// ===== 6ee13c compress_data =====
int __fastcall compress_data(_DWORD *a1, int a2)
{
  _DWORD *v2; // r5
  _DWORD *v3; // r10
  int v4; // r3
  int v5; // r11
  int v6; // r3
  int v7; // r7
  _DWORD *v8; // r9
  _DWORD *v9; // r4
  int v10; // r10
  int v11; // r8
  int v12; // r6
  int v13; // r2
  _WORD **v14; // r3
  int v15; // r1
  _WORD *v16; // r2
  __int16 v17; // r0
  int v18; // r2
  bool v19; // cc
  int result; // r0
  int i; // r3
  _WORD *v23; // r2
  _DWORD *v24; // r3
  int v25; // r2
  int v26; // r2
  unsigned int v27; // [sp+14h] [bp-28h]
  int v28; // [sp+18h] [bp-24h]
  int v30; // [sp+20h] [bp-1Ch]
  _DWORD *v31; // [sp+24h] [bp-18h]
  unsigned int v32; // [sp+28h] [bp-14h]
  unsigned int v33; // [sp+2Ch] [bp-10h]
  int v34; // [sp+30h] [bp-Ch]

  v2 = (_DWORD *)a1[82];
  v3 = a1;
  v34 = v2[4];
  v33 = a1[62] - 1;
  v27 = a1[56] - 1;
  v4 = v2[5];
  v5 = 8 * v34;
  while ( v34 < v4 )
  {
    v32 = v2[3];
    if ( v33 < v32 )
      goto LABEL_26;
    do
    {
      v6 = v3[57];
      if ( v6 <= 0 )
        goto LABEL_23;
      v30 = 0;
      v31 = v3;
      v7 = 0;
      v8 = v3;
      do
      {
        v9 = (_DWORD *)v31[58];
        if ( v33 <= v32 )
          v10 = v9[17];
        else
          v10 = v9[13];
        v28 = v9[16] * v32;
        if ( (int)v9[14] > 0 )
        {
          v11 = v34;
          v12 = 0;
          while ( v27 > v2[2] || v9[18] > v11 )
          {
            (*(void (__fastcall **)(_DWORD *, _DWORD *, _DWORD, _DWORD, int, int, int))(v8[86] + 4))(
              v8,
              v9,
              *(_DWORD *)(a2 + 4 * v9[1]),
              v2[v7 + 6],
              v5 + 8 * v12,
              v28,
              v10);
            v13 = v9[13];
            if ( v10 >= v13 || (jzero_far((void *)v2[v7 + 6 + v10], (v13 - v10) << 7), v13 = v9[13], v10 >= v13) )
            {
LABEL_11:
              ++v12;
              v7 += v13;
              ++v11;
              if ( v9[14] <= v12 )
                goto LABEL_19;
            }
            else
            {
              v14 = (_WORD **)&v2[v7 + 6 + v10];
              v15 = v10;
              do
              {
                v16 = *v14;
                ++v15;
                v17 = **(v14++ - 1);
                *v16 = v17;
                v18 = v9[13];
              }
              while ( v18 > v15 );
              ++v12;
              v7 += v18;
              ++v11;
              if ( v9[14] <= v12 )
              {
LABEL_19:
                v6 = v8[57];
                goto LABEL_20;
              }
            }
          }
          jzero_far((void *)v2[v7 + 6], v9[13] << 7);
          v13 = v9[13];
          if ( v13 > 0 )
          {
            for ( i = 0; i < v13; ++i )
            {
              v23 = (_WORD *)v2[v7 + 6 + i];
              *v23 = *(_WORD *)v2[v7 + 5];
              v13 = v9[13];
            }
          }
          goto LABEL_11;
        }
LABEL_20:
        v19 = v6 <= ++v30;
        ++v31;
      }
      while ( !v19 );
      v3 = v8;
LABEL_23:
      result = (*(int (__fastcall **)(_DWORD *, _DWORD *))(v3[87] + 4))(v3, v2 + 6);
      if ( !result )
      {
        v2[3] = v32;
        v2[4] = v34;
        return result;
      }
    }
    while ( v33 >= ++v32 );
    v4 = v2[5];
LABEL_26:
    v2[3] = 0;
    v5 += 8;
    ++v34;
  }
  ++v2[2];
  v24 = (_DWORD *)v3[82];
  if ( (int)v3[57] <= 1 )
  {
    v25 = v3[58];
    if ( v24[2] >= (unsigned int)(v3[56] - 1) )
      v26 = *(_DWORD *)(v25 + 72);
    else
      v26 = *(_DWORD *)(v25 + 12);
    v24[5] = v26;
  }
  else
  {
    v24[5] = 1;
  }
  v24[4] = 0;
  v24[3] = 0;
  return 1;
}


// ===== 6ee42c rgb_ycc_start =====
int __fastcall rgb_ycc_start(int a1)
{
  int v1; // r6
  int v2; // r0
  int v3; // r4
  char *v4; // r5
  int v5; // r12
  int v6; // r3
  int v7; // r8
  int v8; // r7
  int v9; // r6
  int result; // r0
  int v11; // r1
  int v12; // r2

  v1 = *(_DWORD *)(a1 + 336);
  v2 = (**(int (***)(void))(a1 + 4))();
  v3 = 0;
  v4 = (char *)&loc_807FFC + 3;
  *(_DWORD *)(v1 + 8) = v2;
  v5 = v2 + 5120;
  v6 = v2 + 3072;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = 0x8000;
  v11 = 0;
  v12 = 0;
  do
  {
    *(_DWORD *)(v6 - 3072) = v12;
    *(_DWORD *)(v6 - 2048) = v11;
    *(_DWORD *)(v6 - 1024) = result;
    *(_DWORD *)(v5 - 2048) = v9;
    v12 += 19595;
    *(_DWORD *)(v6 + 1024) = v8;
    *(_DWORD *)(v6 + 2048) = v4;
    *(_DWORD *)(v5 + 1024) = v7;
    *(_DWORD *)(v5 + 2048) = v3;
    v8 -= 21709;
    v11 += 38470;
    result += 7471;
    v9 -= 11059;
    v6 += 4;
    v4 += 0x8000;
    v5 += 4;
    v7 -= 27439;
    v3 -= 5329;
  }
  while ( v12 != 5016320 );
  return result;
}


// ===== 6ee510 rgb_ycc_convert =====
int __fastcall rgb_ycc_convert(int a1, int a2, _DWORD *a3, int a4, int a5)
{
  int v6; // r4
  int v7; // r1
  int result; // r0
  int v9; // r3
  int i; // r12
  int v11; // r8
  unsigned __int8 *v12; // r5
  int v13; // r9
  int v14; // r10
  int v15; // r7
  int v16; // r12
  int v17; // r6
  int v18; // [sp+14h] [bp-Ch]
  int v19; // [sp+18h] [bp-8h]

  v6 = a5 - 1;
  v7 = *(_DWORD *)(*(_DWORD *)(a1 + 336) + 8);
  result = *(_DWORD *)(a1 + 28);
  v9 = 4 * a4;
  for ( i = 0; v6 >= 0; --v6 )
  {
    v11 = *(_DWORD *)(*a3 + i + v9);
    v12 = *(unsigned __int8 **)(a2 + i);
    if ( result )
    {
      v13 = 0;
      v14 = i;
      v18 = *(_DWORD *)(a3[2] + i + v9);
      v19 = *(_DWORD *)(a3[1] + i + v9);
      do
      {
        v15 = v12[1];
        v16 = v12[2];
        v17 = *v12;
        v12 += 3;
        *(_BYTE *)(v11 + v13) = (unsigned int)(*(_DWORD *)(v7 + 4 * (v15 + 256))
                                             + *(_DWORD *)(v7 + 4 * (v16 + 512))
                                             + *(_DWORD *)(v7 + 4 * v17)) >> 16;
        *(_BYTE *)(v19 + v13) = (unsigned int)(*(_DWORD *)(v7 + 4 * (v15 + 1024))
                                             + *(_DWORD *)(v7 + 4 * (v17 + 768))
                                             + *(_DWORD *)(v7 + 4 * (v16 + 1280))) >> 16;
        *(_BYTE *)(v18 + v13++) = (unsigned int)(*(_DWORD *)(v7 + 4 * (v15 + 1536))
                                               + *(_DWORD *)(v7 + 4 * (v17 + 1280))
                                               + *(_DWORD *)(v7 + 4 * (v16 + 1792))) >> 16;
      }
      while ( v13 != result );
      i = v14 + 4;
    }
    else
    {
      i += 4;
    }
  }
  return result;
}


// ===== 6ee660 rgb_gray_convert =====
int __fastcall rgb_gray_convert(int a1, int a2, _DWORD *a3, int a4, int a5)
{
  int v5; // r3
  int v6; // r5
  int v7; // r12
  int result; // r0
  int i; // r4
  int v10; // r7
  unsigned __int8 *v11; // r6
  int j; // r8
  int v13; // r9
  int v14; // r10
  int v15; // r11

  v5 = 4 * a4;
  v6 = a5 - 1;
  v7 = *(_DWORD *)(*(_DWORD *)(a1 + 336) + 8);
  result = *(_DWORD *)(a1 + 28);
  for ( i = 0; v6 >= 0; --v6 )
  {
    v10 = *(_DWORD *)(*a3 + v5 + i);
    v11 = *(unsigned __int8 **)(a2 + i);
    if ( result )
    {
      for ( j = 0; j != result; ++j )
      {
        v13 = *(_DWORD *)(v7 + 4 * (v11[1] + 256));
        v14 = *(_DWORD *)(v7 + 4 * (v11[2] + 512));
        v15 = *(_DWORD *)(v7 + 4 * *v11);
        v11 += 3;
        *(_BYTE *)(v10 + j) = (unsigned int)(v13 + v14 + v15) >> 16;
      }
      i += 4;
    }
    else
    {
      i += 4;
    }
  }
  return result;
}


// ===== 6ee6fc cmyk_ycck_convert =====
int __fastcall cmyk_ycck_convert(int a1, int a2, _DWORD *a3, int a4, int a5)
{
  int v5; // r1
  int v6; // r11
  int result; // r0
  int v8; // r12
  int i; // r3
  int v10; // r7
  unsigned __int8 *v11; // r4
  int v12; // r5
  int v13; // r8
  int v14; // r6
  int v15; // r9
  int v17; // [sp+10h] [bp-10h]
  int v18; // [sp+14h] [bp-Ch]
  int v19; // [sp+1Ch] [bp-4h]

  v5 = *(_DWORD *)(*(_DWORD *)(a1 + 336) + 8);
  v6 = 4 * a4;
  result = *(_DWORD *)(a1 + 28);
  v8 = a5 - 1;
  for ( i = 0; v8 >= 0; --v8 )
  {
    v10 = *(_DWORD *)(a3[1] + i + v6);
    v11 = *(unsigned __int8 **)(a2 + i);
    if ( result )
    {
      v12 = 0;
      v17 = *(_DWORD *)(a3[3] + i + v6);
      v18 = *(_DWORD *)(a3[2] + i + v6);
      v19 = *(_DWORD *)(*a3 + i + v6);
      do
      {
        v13 = 255 - v11[1];
        v14 = 255 - v11[2];
        v15 = *v11;
        *(_BYTE *)(v17 + v12) = v11[3];
        v11 += 4;
        *(_BYTE *)(v19 + v12) = (unsigned int)(*(_DWORD *)(v5 + 4 * (v13 + 256))
                                             + *(_DWORD *)(v5 + 4 * (v14 + 512))
                                             + *(_DWORD *)(v5 + 4 * (255 - v15))) >> 16;
        *(_BYTE *)(v10 + v12) = (unsigned int)(*(_DWORD *)(v5 + 4 * (v13 + 1024))
                                             + *(_DWORD *)(v5 + 4 * (1023 - v15))
                                             + *(_DWORD *)(v5 + 4 * (v14 + 1280))) >> 16;
        *(_BYTE *)(v18 + v12++) = (unsigned int)(*(_DWORD *)(v5 + 4 * (v13 + 1536))
                                               + *(_DWORD *)(v5 + 4 * (1535 - v15))
                                               + *(_DWORD *)(v5 + 4 * (v14 + 1792))) >> 16;
      }
      while ( v12 != result );
      i += 4;
    }
    else
    {
      i += 4;
    }
  }
  return result;
}


// ===== 6ee854 grayscale_convert =====
int __fastcall grayscale_convert(int a1, int a2, _DWORD *a3, int a4, int a5)
{
  int v5; // r12
  int v6; // r7
  int v7; // r4
  int v8; // r3
  int result; // r0
  int v10; // r6
  char *v11; // r5
  int i; // r8
  char v13; // t1

  v5 = *(_DWORD *)(a1 + 36);
  v6 = *(_DWORD *)(a1 + 28);
  v7 = a5 - 1;
  v8 = 4 * a4;
  for ( result = 0; v7 >= 0; --v7 )
  {
    v10 = *(_DWORD *)(*a3 + v8 + result);
    v11 = *(char **)(a2 + result);
    if ( v6 )
    {
      for ( i = 0; i != v6; ++i )
      {
        v13 = *v11;
        v11 += v5;
        *(_BYTE *)(v10 + i) = v13;
      }
      result += 4;
    }
    else
    {
      result += 4;
    }
  }
  return result;
}


// ===== 6ee8c0 null_convert =====
char *__fastcall null_convert(char *result, int a2, int a3, int a4, int a5)
{
  int v5; // r4
  int v6; // r8
  int v7; // r7
  int i; // r9
  int j; // r6
  int v10; // r5
  int k; // r3
  char v12; // t1

  v5 = *((_DWORD *)result + 7);
  v6 = *((_DWORD *)result + 15);
  if ( a5 > 0 )
  {
    v7 = 4 * a4;
    for ( i = 0; i != a5; ++i )
    {
      if ( v6 > 0 )
      {
        for ( j = 0; j != v6; ++j )
        {
          result = *(char **)(a2 + 4 * i);
          v10 = *(_DWORD *)(*(_DWORD *)(a3 + 4 * j) + v7);
          if ( v5 )
          {
            result += j;
            for ( k = 0; k != v5; ++k )
            {
              v12 = *result;
              result += v6;
              *(_BYTE *)(v10 + k) = v12;
            }
          }
        }
      }
      v7 += 4;
    }
  }
  return result;
}


// ===== 6ee944 null_method =====
void null_method()
{
  ;
}


// ===== 6ee948 jinit_color_converter =====
void (**__fastcall jinit_color_converter(int a1))()
{
  void (**result)(); // r0
  int (__fastcall **v3)(int); // r5
  int v4; // r2
  int v5; // r3
  int v6; // r3
  int v7; // r3

  result = (void (**)())(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 336) = result;
  v3 = (int (__fastcall **)(int))result;
  *result = null_method;
  switch ( *(_DWORD *)(a1 + 40) )
  {
    case 1:
      if ( *(_DWORD *)(a1 + 36) != 1 )
        goto LABEL_7;
      break;
    case 2:
    case 3:
      if ( *(_DWORD *)(a1 + 36) != 3 )
        goto LABEL_7;
      break;
    case 4:
    case 5:
      if ( *(_DWORD *)(a1 + 36) != 4 )
        goto LABEL_7;
      break;
    default:
      if ( *(int *)(a1 + 36) <= 0 )
      {
LABEL_7:
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 9;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      break;
  }
  v4 = *(_DWORD *)(a1 + 64);
  switch ( v4 )
  {
    case 1:
      if ( *(_DWORD *)(a1 + 60) != 1 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 10;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      v7 = *(_DWORD *)(a1 + 40);
      switch ( v7 )
      {
        case 1:
          v3[1] = (int (__fastcall *)(int))grayscale_convert;
          break;
        case 2:
          v3[1] = (int (__fastcall *)(int))rgb_gray_convert;
          *v3 = rgb_ycc_start;
          break;
        case 3:
          v3[1] = (int (__fastcall *)(int))grayscale_convert;
          break;
        default:
          goto LABEL_38;
      }
      break;
    case 2:
      if ( *(_DWORD *)(a1 + 60) != 3 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 10;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      if ( *(_DWORD *)(a1 + 40) != 2 )
        goto LABEL_38;
      v3[1] = (int (__fastcall *)(int))null_convert;
      break;
    case 3:
      if ( *(_DWORD *)(a1 + 60) != 3 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 10;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      v6 = *(_DWORD *)(a1 + 40);
      if ( v6 == 2 )
      {
        v3[1] = (int (__fastcall *)(int))rgb_ycc_convert;
        *v3 = rgb_ycc_start;
      }
      else
      {
        if ( v6 != 3 )
          goto LABEL_38;
        v3[1] = (int (__fastcall *)(int))null_convert;
      }
      break;
    case 4:
      if ( *(_DWORD *)(a1 + 60) != 4 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 10;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      if ( *(_DWORD *)(a1 + 40) != 4 )
        goto LABEL_38;
      v3[1] = (int (__fastcall *)(int))null_convert;
      break;
    case 5:
      if ( *(_DWORD *)(a1 + 60) != 4 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 10;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      v5 = *(_DWORD *)(a1 + 40);
      if ( v5 == 4 )
      {
        v3[1] = (int (__fastcall *)(int))cmyk_ycck_convert;
        *v3 = rgb_ycc_start;
      }
      else if ( v5 == 5 )
      {
        v3[1] = (int (__fastcall *)(int))null_convert;
      }
      else
      {
LABEL_38:
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 27;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      break;
    default:
      if ( v4 != *(_DWORD *)(a1 + 40) || *(_DWORD *)(a1 + 60) != *(_DWORD *)(a1 + 36) )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 27;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
      }
      v3[1] = (int (__fastcall *)(int))null_convert;
      break;
  }
  return result;
}


// ===== 6eecd0 start_pass_fdctmgr =====
float __fastcall start_pass_fdctmgr(float result)
{
  float v1; // r9
  unsigned int v2; // r4
  char *v3; // r8
  unsigned int v4; // r5
  int v5; // r6
  int v6; // r1
  bool v7; // cf
  int v8; // r4
  int j; // r3
  bool v10; // cc
  int v11; // r4
  int i; // r3
  unsigned int v13; // r4
  int v14; // r5
  int v15; // r10
  int v16; // r4
  double v17; // r8
  int v18; // [sp+0h] [bp-1Ch]
  int v19; // [sp+4h] [bp-18h]
  int v20; // [sp+8h] [bp-14h]
  float v21; // [sp+Ch] [bp-10h]
  char *v22; // [sp+10h] [bp-Ch]

  v20 = *(_DWORD *)(LODWORD(result) + 344);
  v1 = result;
  v19 = *(_DWORD *)(LODWORD(result) + 68);
  if ( *(int *)(LODWORD(result) + 60) > 0 )
  {
    v18 = 0;
    v2 = *(_DWORD *)(v19 + 16);
    v3 = (char *)&aanscales_3126;
    if ( v2 > 3 )
    {
      v4 = v2 + 18;
      goto LABEL_15;
    }
LABEL_4:
    v4 = v2 + 18;
    v5 = *(_DWORD *)(LODWORD(v1) + 4 * (v2 + 18));
    if ( v5 )
    {
      v6 = *(_DWORD *)(LODWORD(v1) + 184);
      v7 = v6 != 0;
      if ( v6 == 1 )
        goto LABEL_16;
    }
    else
    {
LABEL_15:
      while ( 1 )
      {
        *(_DWORD *)(*(_DWORD *)LODWORD(v1) + 20) = 52;
        *(_DWORD *)(*(_DWORD *)LODWORD(v1) + 24) = v2;
        (**(void (__fastcall ***)(float))LODWORD(v1))(COERCE_FLOAT(LODWORD(v1)));
        v6 = *(_DWORD *)(LODWORD(v1) + 184);
        v5 = *(_DWORD *)(LODWORD(v1) + 4 * v4);
        v7 = v6 != 0;
        if ( v6 != 1 )
          break;
LABEL_16:
        v11 = v20 + 4 * (v2 + 2);
        result = *(float *)(v11 + 4);
        if ( result == 0.0 )
        {
          result = COERCE_FLOAT((**(int (__fastcall ***)(float))(LODWORD(v1) + 4))(COERCE_FLOAT(LODWORD(v1))));
          *(float *)(v11 + 4) = result;
        }
        for ( i = 0; i != 128; i += 2 )
          *(_DWORD *)(LODWORD(result) + 2 * i) = (*(unsigned __int16 *)(v5 + i) * *(__int16 *)&v3[i] + 1024) >> 11;
        v10 = *(_DWORD *)(LODWORD(v1) + 60) <= ++v18;
        if ( v10 )
          return result;
LABEL_12:
        v19 += 84;
        v2 = *(_DWORD *)(v19 + 16);
        if ( v2 <= 3 )
          goto LABEL_4;
        v4 = v2 + 18;
      }
    }
    if ( v7 )
    {
      if ( v6 == 2 )
      {
        v13 = v2 + 8;
        v14 = *(_DWORD *)(v20 + 4 * v13);
        if ( !v14 )
        {
          v14 = (**(int (__fastcall ***)(float, int, int))(LODWORD(v1) + 4))(COERCE_FLOAT(LODWORD(v1)), 1, 256);
          *(_DWORD *)(v20 + 4 * v13) = v14;
        }
        v15 = 0;
        v21 = v1;
        v22 = v3;
        do
        {
          v16 = 0;
          v17 = *(double *)((char *)&aanscalefactor_3134 + v15);
          do
          {
            result = 1.0
                   / ((double)*(unsigned __int16 *)(v5 + v16)
                    * v17
                    * *(double *)((char *)&aanscalefactor_3134 + 4 * v16)
                    * 8.0);
            *(float *)(v14 + 2 * v16) = result;
            v16 += 2;
          }
          while ( v16 != 16 );
          v15 += 8;
          v5 += 16;
          v14 += 32;
        }
        while ( v15 != 64 );
        v1 = v21;
        v3 = v22;
      }
      else
      {
        *(_DWORD *)(*(_DWORD *)LODWORD(v1) + 20) = 48;
        result = COERCE_FLOAT((**(int (__fastcall ***)(float))LODWORD(v1))(COERCE_FLOAT(LODWORD(v1))));
      }
    }
    else
    {
      v8 = v20 + 4 * (v2 + 2);
      result = *(float *)(v8 + 4);
      if ( result == 0.0 )
      {
        result = COERCE_FLOAT((**(int (__fastcall ***)(float, int, int))(LODWORD(v1) + 4))(COERCE_FLOAT(LODWORD(v1)), 1, 256));
        *(float *)(v8 + 4) = result;
      }
      for ( j = 0; j != 128; j += 2 )
        *(_DWORD *)(LODWORD(result) + 2 * j) = 8 * *(unsigned __int16 *)(v5 + j);
    }
    v10 = *(_DWORD *)(LODWORD(v1) + 60) <= ++v18;
    if ( !v10 )
      goto LABEL_12;
  }
  return result;
}


// ===== 6eef98 forward_DCT =====
int __fastcall forward_DCT(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  int v7; // r0
  int v8; // r1
  int result; // r0
  int v10; // r8
  int v11; // r9
  int v14; // r11
  int v15; // r2
  _DWORD *v16; // r3
  int v17; // r0
  int v18; // r5
  int i; // r4
  int v20; // r1
  int v21; // r3
  int v22; // r2
  void (__fastcall *v23)(_BYTE *); // [sp+4h] [bp-108h]
  _BYTE v24[260]; // [sp+8h] [bp-104h] BYREF

  v7 = *(_DWORD *)(a1 + 344);
  v8 = v7 + 4 * *(_DWORD *)(a2 + 16);
  result = *(_DWORD *)(v7 + 8);
  v10 = *(_DWORD *)(v8 + 12);
  v11 = a3 + 4 * a5;
  v23 = (void (__fastcall *)(_BYTE *))result;
  if ( !a7 )
    return result;
  v14 = 0;
  while ( 2 )
  {
    v15 = 0;
    v16 = v24;
    do
    {
      v17 = *(_DWORD *)(v11 + v15);
      v15 += 4;
      *v16 = *(unsigned __int8 *)(v17 + a6) - 128;
      v16[1] = *(unsigned __int8 *)(v17 + a6 + 1) - 128;
      v16[2] = *(unsigned __int8 *)(v17 + a6 + 2) - 128;
      v16[3] = *(unsigned __int8 *)(v17 + a6 + 3) - 128;
      v16[4] = *(unsigned __int8 *)(v17 + a6 + 4) - 128;
      v16[5] = *(unsigned __int8 *)(v17 + a6 + 5) - 128;
      v16[6] = *(unsigned __int8 *)(v17 + a6 + 6) - 128;
      v16[7] = *(unsigned __int8 *)(v17 + a6 + 7) - 128;
      v16 += 8;
    }
    while ( v15 != 32 );
    v23(v24);
    v18 = 0;
    for ( i = 0; i != 256; i += 4 )
    {
      v20 = *(_DWORD *)&v24[i];
      v21 = *(_DWORD *)(v10 + i);
      v22 = v20 + (v21 >> 1);
      if ( v20 < 0 )
      {
        if ( v21 <= (v21 >> 1) - v20 )
          result = -(((v21 >> 1) - v20) / v21);
        else
          LOWORD(result) = 0;
      }
      else
      {
        if ( v21 > v22 )
        {
          result = 0;
          goto LABEL_11;
        }
        result = v22 / v21;
      }
      result = (unsigned __int16)result;
LABEL_11:
      *(_WORD *)(a4 + v18) = result;
      v18 += 2;
    }
    ++v14;
    a4 += 128;
    if ( v14 != a7 )
    {
      a6 += 8;
      continue;
    }
    return result;
  }
}


// ===== 6ef110 forward_DCT_float =====
int __fastcall forward_DCT_float(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  int v7; // r0
  int v8; // r4
  int result; // r0
  float *v12; // r8
  int v13; // r10
  int v14; // r4
  int v15; // r0
  unsigned __int8 *v16; // r4
  int v17; // r10
  int v18; // r8
  float v19; // r0
  int v20; // [sp+0h] [bp-11Ch]
  int v21; // [sp+8h] [bp-114h]
  int v22; // [sp+10h] [bp-10Ch]
  void (__fastcall *v23)(_BYTE *); // [sp+14h] [bp-108h]
  _BYTE v24[260]; // [sp+18h] [bp-104h] BYREF

  v7 = *(_DWORD *)(a1 + 344);
  v8 = *(_DWORD *)(v7 + 4 * (*(_DWORD *)(a2 + 16) + 8));
  v22 = a3 + 4 * a5;
  result = *(_DWORD *)(v7 + 28);
  v23 = (void (__fastcall *)(_BYTE *))result;
  if ( a7 )
  {
    v20 = 0;
    while ( 1 )
    {
      v12 = (float *)v24;
      v13 = 0;
      v21 = v8;
      do
      {
        v14 = *(_DWORD *)(v22 + v13);
        v13 += 4;
        v15 = *(unsigned __int8 *)(v14 + a6);
        v16 = (unsigned __int8 *)(v14 + a6);
        *v12 = (float)(v15 - 128);
        v12[1] = (float)(v16[1] - 128);
        v12[2] = (float)(v16[2] - 128);
        v12[3] = (float)(v16[3] - 128);
        v12[4] = (float)(v16[4] - 128);
        v12[5] = (float)(v16[5] - 128);
        v12[6] = (float)(v16[6] - 128);
        v12[7] = (float)(v16[7] - 128);
        v12 += 8;
      }
      while ( v13 != 32 );
      v8 = v21;
      v23(v24);
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = *(float *)&v24[v18] * *(float *)(v21 + v18);
        v18 += 4;
        result = (int)(float)(v19 + 16384.0) - 0x4000;
        *(_WORD *)(a4 + v17) = result;
        v17 += 2;
      }
      while ( v18 != 256 );
      a4 += 128;
      if ( ++v20 == a7 )
        break;
      a6 += 8;
    }
  }
  return result;
}


// ===== 6ef29c jinit_forward_dct =====
float (__fastcall **__fastcall jinit_forward_dct(int a1))(float result)
{
  float (__fastcall **result)(float); // r0
  int v3; // r2
  float (__fastcall **v4)(float); // r5
  int v5; // r3

  result = (float (__fastcall **)(float))(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 344) = result;
  *result = start_pass_fdctmgr;
  v3 = *(_DWORD *)(a1 + 184);
  v4 = result;
  if ( v3 == 1 )
  {
    result[1] = (float (__fastcall *)(float))forward_DCT;
    result[2] = (float (__fastcall *)(float))jpeg_fdct_ifast;
  }
  else if ( v3 )
  {
    if ( v3 == 2 )
    {
      result[1] = (float (__fastcall *)(float))forward_DCT_float;
      result[7] = (float (__fastcall *)(float))jpeg_fdct_float;
    }
    else
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 48;
      result = (float (__fastcall **)(float))(**(int (__fastcall ***)(int))a1)(a1);
    }
  }
  else
  {
    result[1] = (float (__fastcall *)(float))forward_DCT;
    result[2] = (float (__fastcall *)(float))jpeg_fdct_islow;
  }
  v5 = 0;
  do
  {
    ++v5;
    v4[3] = nullptr;
    v4[8] = nullptr;
    ++v4;
  }
  while ( v5 != 4 );
  return result;
}


// ===== 6ef398 dump_buffer_0 =====
int __fastcall dump_buffer_0(_DWORD *a1)
{
  int v2; // r5
  int result; // r0

  v2 = *(_DWORD *)(a1[8] + 24);
  result = (*(int (__fastcall **)(_DWORD))(v2 + 12))(a1[8]);
  if ( result )
  {
    *a1 = *(_DWORD *)v2;
    a1[1] = *(_DWORD *)(v2 + 4);
    return 1;
  }
  return result;
}


// ===== 6ef3d0 emit_bits_0 =====
int __fastcall emit_bits_0(int a1, int a2, int a3)
{
  int v6; // r6
  int v7; // r6
  int v8; // r5
  _BYTE *v9; // r3
  int v10; // r7
  int v11; // r2
  _BYTE *v13; // r3
  int v14; // r2

  v6 = *(_DWORD *)(a1 + 12);
  if ( !a3 )
  {
    *(_DWORD *)(**(_DWORD **)(a1 + 32) + 20) = 40;
    (***(void (__fastcall ****)(_DWORD))(a1 + 32))(*(_DWORD *)(a1 + 32));
  }
  v7 = a3 + v6;
  v8 = *(_DWORD *)(a1 + 8) | ((a2 & ~(-1 << a3)) << (24 - v7));
  if ( v7 <= 7 )
  {
LABEL_13:
    *(_DWORD *)(a1 + 12) = v7;
    *(_DWORD *)(a1 + 8) = v8;
    return 1;
  }
  else
  {
    while ( 1 )
    {
      v9 = *(_BYTE **)a1;
      v10 = BYTE2(v8);
      v7 -= 8;
      *v9 = BYTE2(v8);
      v11 = *(_DWORD *)(a1 + 4);
      *(_DWORD *)a1 = v9 + 1;
      v8 <<= 8;
      *(_DWORD *)(a1 + 4) = v11 - 1;
      if ( v11 == 1 && !dump_buffer_0((_DWORD *)a1) )
        return 0;
      if ( v10 == 255
        && (v13 = *(_BYTE **)a1,
            *v13 = 0,
            v14 = *(_DWORD *)(a1 + 4),
            *(_DWORD *)a1 = v13 + 1,
            *(_DWORD *)(a1 + 4) = v14 - 1,
            v14 == 1) )
      {
        if ( !dump_buffer_0((_DWORD *)a1) )
          return 0;
        if ( v7 <= 7 )
          goto LABEL_13;
      }
      else if ( v7 <= 7 )
      {
        goto LABEL_13;
      }
    }
  }
}


// ===== 6ef4d4 encode_mcu_huff =====
int __fastcall encode_mcu_huff(int *a1, int a2)
{
  int v2; // r3
  _DWORD *v3; // r11
  int v4; // r4
  int v5; // r1
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2
  __int16 *v10; // r9
  int v11; // r3
  _BYTE *v12; // r1
  int v13; // r7
  int v14; // r8
  int v15; // r5
  int v16; // r3
  int v17; // r4
  int v18; // r4
  _DWORD *v19; // r8
  int v20; // r3
  int v21; // r10
  int v22; // r2
  int v23; // r1
  int v24; // r2
  int v25; // r3
  int v26; // r1
  int v27; // r3
  int v28; // r2
  bool v29; // zf
  int v30; // r3
  int v32; // r3
  int v33; // r3
  int v34; // r7
  _BYTE **v35; // r6
  int v36; // r5
  _BYTE *v37; // r3
  _BYTE *v38; // r3
  int *v39; // r2
  int v40; // r3
  int v41; // [sp+4h] [bp-58h]
  int v43; // [sp+10h] [bp-4Ch]
  int *v44; // [sp+14h] [bp-48h]
  int v46; // [sp+2Ch] [bp-30h]
  _BYTE *v47; // [sp+34h] [bp-28h] BYREF
  int v48; // [sp+38h] [bp-24h]
  int v49; // [sp+3Ch] [bp-20h]
  int v50; // [sp+40h] [bp-1Ch]
  int v51; // [sp+44h] [bp-18h]
  int v52; // [sp+48h] [bp-14h]
  int v53; // [sp+4Ch] [bp-10h]
  int v54; // [sp+50h] [bp-Ch]
  int *v55; // [sp+54h] [bp-8h]

  v2 = a1[6];
  v3 = (_DWORD *)a1[87];
  v47 = *(_BYTE **)v2;
  v4 = a1[47];
  v48 = *(_DWORD *)(v2 + 4);
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v49 = v3[3];
  v50 = v5;
  v51 = v6;
  v52 = v7;
  v8 = v3[8];
  v53 = v3[7];
  v54 = v8;
  v55 = a1;
  if ( v4 && !v3[9] )
  {
    v35 = &v47;
    v36 = v3[10];
    if ( !emit_bits_0((int)&v47, 127, 7) )
      return 0;
    v37 = v47;
    v50 = 0;
    v49 = 0;
    *v47 = -1;
    v47 = v37 + 1;
    if ( !--v48 && !dump_buffer_0(&v47) )
      return 0;
    v38 = v47;
    *v47 = v36 - 48;
    v47 = v38 + 1;
    if ( !--v48 && !dump_buffer_0(&v47) )
      return 0;
    v39 = v55;
    if ( v55[57] > 0 )
    {
      v40 = 0;
      do
      {
        v35[4] = nullptr;
        ++v40;
        ++v35;
      }
      while ( v40 < v39[57] );
    }
  }
  if ( a1[64] > 0 )
  {
    v43 = 0;
    v44 = a1;
    v46 = 0;
    do
    {
      v9 = v44[65];
      v10 = *(__int16 **)(a2 + v43);
      v11 = a1[v9 + 58];
      v41 = v9 + 4;
      v12 = (&v47)[v9 + 4];
      v13 = *v10 - (_DWORD)v12;
      v14 = v3[*(_DWORD *)(v11 + 20) + 11];
      v15 = v3[*(_DWORD *)(v11 + 24) + 15];
      if ( v13 >= 0 )
      {
        if ( (_BYTE *)*v10 == v12 )
        {
          v17 = *v10 - (_DWORD)v12;
LABEL_13:
          if ( !emit_bits_0((int)&v47, *(_DWORD *)(v14 + 4 * v17), *(char *)(v14 + v17 + 1024)) )
            return 0;
          goto LABEL_14;
        }
        v16 = *v10 - (_DWORD)v12;
      }
      else
      {
        v16 = (int)&v12[-*v10];
        --v13;
      }
      v17 = 0;
      do
      {
        v16 >>= 1;
        ++v17;
      }
      while ( v16 );
      if ( v17 <= 11 )
        goto LABEL_13;
      *(_DWORD *)(*v55 + 20) = 6;
      (*(void (__fastcall **)(int *))*v55)(v55);
      if ( !emit_bits_0((int)&v47, *(_DWORD *)(v14 + 4 * v17), *(char *)(v14 + v17 + 1024)) )
        return 0;
LABEL_14:
      if ( v17 && !emit_bits_0((int)&v47, v13, v17) )
        return 0;
      v18 = 0;
      v19 = jpeg_natural_order;
      do
      {
        v20 = v19[1];
        v21 = v10[v20];
        if ( v10[v20] )
        {
          while ( v18 > 15 )
          {
            v18 -= 16;
            if ( !emit_bits_0((int)&v47, *(_DWORD *)(v15 + 960), *(char *)(v15 + 1264)) )
              return 0;
          }
          if ( v21 >= 0 )
            v32 = v21;
          else
            v32 = -v21;
          if ( v21 < 0 )
            --v21;
          v33 = v32 >> 1;
          if ( v33 )
          {
            v34 = 1;
            do
            {
              v33 >>= 1;
              ++v34;
            }
            while ( v33 );
            if ( v34 > 10 )
            {
              *(_DWORD *)(*v55 + 20) = 6;
              (*(void (__fastcall **)(int *))*v55)(v55);
            }
          }
          else
          {
            v34 = 1;
          }
          if ( !emit_bits_0((int)&v47, *(_DWORD *)(v15 + 4 * (v34 + 16 * v18)), *(char *)(v15 + v34 + 16 * v18 + 1024))
            || !emit_bits_0((int)&v47, v21, v34) )
          {
            return 0;
          }
          v18 = 0;
        }
        else
        {
          ++v18;
        }
        ++v19;
      }
      while ( v19 != &jpeg_natural_order[63] );
      if ( v18 && !emit_bits_0((int)&v47, *(_DWORD *)v15, *(char *)(v15 + 1024)) )
        return 0;
      v22 = a1[64];
      ++v46;
      (&v47)[v41] = (_BYTE *)**(__int16 **)(a2 + v43);
      v43 += 4;
      ++v44;
    }
    while ( v22 > v46 );
  }
  *(_DWORD *)a1[6] = v47;
  *(_DWORD *)(a1[6] + 4) = v48;
  v23 = v50;
  v24 = v51;
  v25 = v52;
  v3[3] = v49;
  v3[4] = v23;
  v3[5] = v24;
  v3[6] = v25;
  v26 = v54;
  v3[7] = v53;
  v3[8] = v26;
  v27 = a1[47];
  if ( v27 )
  {
    v28 = v3[9];
    v29 = v28 == 0;
    if ( v28 )
      v27 = v3[9];
    else
      v28 = v3[10];
    if ( v29 )
    {
      v3[9] = v27;
      v28 = ((_BYTE)v28 + 1) & 7;
    }
    v30 = v27 - 1;
    if ( v29 )
      v3[10] = v28;
    v3[9] = v30;
  }
  return 1;
}


// ===== 6ef970 finish_pass_huff =====
int __fastcall finish_pass_huff(_DWORD *a1)
{
  int *v1; // r3
  int *v2; // r4
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r1
  int v8; // r1
  int v9; // r2
  int v10; // r3
  _DWORD *v11; // r4
  int result; // r0
  int v13; // r1
  int v14; // [sp+4h] [bp-24h] BYREF
  int v15; // [sp+8h] [bp-20h]
  int v16; // [sp+Ch] [bp-1Ch]
  int v17; // [sp+10h] [bp-18h]
  int v18; // [sp+14h] [bp-14h]
  int v19; // [sp+18h] [bp-10h]
  int v20; // [sp+1Ch] [bp-Ch]
  int v21; // [sp+20h] [bp-8h]
  _DWORD *v22; // [sp+24h] [bp-4h]

  v1 = (int *)a1[6];
  v2 = (int *)(a1[87] + 12);
  v14 = *v1;
  v15 = v1[1];
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v16 = *v2;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v7 = v2[5];
  v20 = v2[4];
  v21 = v7;
  v22 = a1;
  if ( emit_bits_0((int)&v14, 127, 7) )
  {
    v17 = 0;
    v16 = 0;
  }
  else
  {
    *(_DWORD *)(*a1 + 20) = 24;
    (*(void (__fastcall **)(_DWORD *))*a1)(a1);
  }
  *(_DWORD *)a1[6] = v14;
  *(_DWORD *)(a1[6] + 4) = v15;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  *v2 = v16;
  v2[1] = v8;
  v2[2] = v9;
  v2[3] = v10;
  v11 = v2 + 4;
  result = v20;
  v13 = v21;
  *v11 = v20;
  v11[1] = v13;
  return result;
}


// ===== 6efa28 encode_mcu_gather =====
int __fastcall encode_mcu_gather(_DWORD *a1, int a2)
{
  int v2; // r5
  int v4; // r3
  int v5; // r2
  int v6; // r3
  int v7; // r2
  __int16 *v8; // r10
  int v9; // r0
  int v10; // r1
  int v11; // r0
  int v12; // r2
  int v13; // r9
  _DWORD *v14; // r8
  int v15; // r7
  _DWORD *v16; // r6
  int v17; // r2
  unsigned int v18; // r7
  unsigned int v19; // r1
  int v20; // r2
  int v21; // r5
  int v22; // r1
  int v24; // [sp+4h] [bp-28h]
  int v25; // [sp+4h] [bp-28h]
  int v26; // [sp+8h] [bp-24h]
  int v27; // [sp+Ch] [bp-20h]
  _DWORD *v28; // [sp+10h] [bp-1Ch]
  int v29; // [sp+14h] [bp-18h]
  int v30; // [sp+1Ch] [bp-10h]

  v26 = a1[87];
  if ( a1[47] )
  {
    v4 = *(_DWORD *)(a1[87] + 36);
    if ( !v4 )
    {
      v5 = a1[87];
      while ( 1 )
      {
        v5 += 4;
        if ( v4 >= a1[57] )
          break;
        *(_DWORD *)(v5 + 16) = 0;
        ++v4;
      }
      v4 = a1[47];
      *(_DWORD *)(v26 + 36) = v4;
    }
    *(_DWORD *)(v26 + 36) = v4 - 1;
  }
  if ( (int)a1[64] > 0 )
  {
    v27 = 0;
    v28 = a1;
    v29 = 0;
    v6 = -16;
    do
    {
      v7 = v28[65];
      v8 = *(__int16 **)(a2 + v27);
      v30 = v7 + 4;
      v9 = a1[v7 + 58];
      v10 = *(_DWORD *)(v9 + 24);
      v11 = *(_DWORD *)(v9 + 20);
      v12 = abs32(*v8 - *(_DWORD *)(v26 + 4 * (v7 + 4) + 4));
      if ( !v12 )
        v2 = 0;
      v13 = *(_DWORD *)(v26 + 4 * v11 + 76);
      v14 = *(_DWORD **)(v26 + 4 * v10 + 92);
      if ( v12 )
      {
        v2 = 0;
        do
        {
          v12 >>= 1;
          ++v2;
        }
        while ( v12 );
        if ( v2 > 11 )
        {
          *(_DWORD *)(*a1 + 20) = 6;
          v25 = v6;
          (*(void (__fastcall **)(_DWORD *))*a1)(a1);
          v6 = v25;
        }
      }
      v15 = 0;
      v16 = jpeg_natural_order;
      ++*(_DWORD *)(v13 + 4 * v2);
      do
      {
        v17 = v8[v16[1]];
        if ( v8[v16[1]] )
        {
          if ( v15 > 15 )
          {
            v18 = v15 - 16;
            v19 = v18 >> 4;
            v15 = v18 + v6 * (v18 >> 4);
            v14[240] += 1 + v19;
          }
          v20 = (int)abs32(v17) >> 1;
          if ( v20 )
          {
            v21 = 1;
            do
            {
              v20 >>= 1;
              ++v21;
            }
            while ( v20 );
            if ( v21 > 10 )
            {
              *(_DWORD *)(*a1 + 20) = 6;
              v24 = v6;
              (*(void (__fastcall **)(_DWORD *))*a1)(a1);
              v6 = v24;
            }
          }
          else
          {
            v21 = 1;
          }
          v2 = v21 + 16 * v15;
          v15 = 0;
          ++v14[v2];
        }
        else
        {
          ++v15;
        }
        ++v16;
      }
      while ( v16 != &jpeg_natural_order[63] );
      if ( v15 )
        ++*v14;
      ++v29;
      v22 = **(__int16 **)(a2 + v27);
      v27 += 4;
      ++v28;
      *(_DWORD *)(v26 + 4 * v30 + 4) = v22;
    }
    while ( a1[64] > v29 );
  }
  return 1;
}


// ===== 6efcbc jinit_huff_encoder =====
_DWORD *__fastcall jinit_huff_encoder(int a1)
{
  _DWORD *result; // r0
  int v3; // r2

  result = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  v3 = 0;
  *(_DWORD *)(a1 + 348) = result;
  *result = start_pass_huff;
  do
  {
    ++v3;
    result[15] = 0;
    result[11] = 0;
    result[23] = 0;
    result[19] = 0;
    ++result;
  }
  while ( v3 != 4 );
  return result;
}


// ===== 6efd18 jpeg_make_c_derived_tbl =====
void *__fastcall jpeg_make_c_derived_tbl(
        int (__fastcall ***a1)(_DWORD, _DWORD, _DWORD),
        int a2,
        unsigned int a3,
        int *a4)
{
  unsigned int v7; // r3
  unsigned __int8 *v8; // r12
  int v9; // r5
  int v10; // r8
  int (__fastcall ***v11)(_DWORD, _DWORD, _DWORD); // r5
  int v12; // r6
  unsigned __int8 *v13; // r4
  int v14; // r7
  int v15; // r10
  _BYTE *v16; // r6
  int i; // r3
  int v18; // r11
  unsigned __int8 *v19; // r12
  int (__fastcall ***v20)(_DWORD, _DWORD, _DWORD); // r4
  int v21; // r5
  int v22; // r8
  int v23; // r2
  int v24; // r7
  int v25; // r10
  int v26; // r1
  int v27; // r6
  int v28; // r0
  int v29; // r3
  _DWORD *v30; // lr
  void *result; // r0
  int v32; // r1
  _DWORD *v33; // r2
  unsigned __int8 *v34; // r10
  int v35; // r7
  int v36; // r8
  int v37; // r9
  char v38; // r3
  int v39; // r0
  int v40; // [sp+4h] [bp-530h]
  _DWORD *v41; // [sp+4h] [bp-530h]
  unsigned __int8 *v42; // [sp+8h] [bp-52Ch]
  unsigned __int8 *v43; // [sp+8h] [bp-52Ch]
  unsigned __int8 *v44; // [sp+8h] [bp-52Ch]
  int v45; // [sp+Ch] [bp-528h]
  int v46; // [sp+10h] [bp-524h]
  int v47; // [sp+10h] [bp-524h]
  int v48; // [sp+10h] [bp-524h]
  _DWORD v50[3]; // [sp+24h] [bp-510h] BYREF
  _BYTE v51[268]; // [sp+428h] [bp-10Ch] BYREF

  if ( a3 > 3 )
  {
    (*a1)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))&word_32;
    (*a1)[6] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))a3;
    ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**a1)(a1);
  }
  if ( a2 )
    v7 = a3 + 22;
  else
    v7 = a3 + 26;
  v8 = (unsigned __int8 *)a1[v7];
  if ( !v8 )
  {
    (*a1)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))&word_32;
    (*a1)[6] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))a3;
    ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**a1)(a1);
    v8 = nullptr;
  }
  v9 = *a4;
  if ( !*a4 )
  {
    v44 = v8;
    v39 = (*a1[1])(a1, 1, 1280);
    *a4 = v39;
    v9 = v39;
    v8 = v44;
  }
  v46 = v9;
  v10 = 1;
  v11 = a1;
  v12 = 0;
  v13 = v8;
  do
  {
    v14 = v13[v10];
    v15 = v12 + v14;
    if ( v12 + v14 > 256 )
    {
      (*v11)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))byte_8;
      ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**v11)(v11);
    }
    if ( v14 )
    {
      v16 = &v51[v12];
      for ( i = 0; i != v14; ++i )
        v16[i] = v10;
      v12 = v15;
    }
    ++v10;
  }
  while ( v10 != 17 );
  v18 = 0;
  v51[v12] = 0;
  v19 = v13;
  v20 = v11;
  v21 = v46;
  if ( v51[0] )
  {
    v22 = v51[0];
    v23 = v46;
    v47 = v51[0];
    v24 = 0;
    v25 = v51[0];
    v26 = v12;
    v27 = 0;
    while ( 1 )
    {
      v28 = v18 + v47;
      if ( v25 == v18 + v47 )
      {
        v29 = 0;
        v30 = &v50[v27];
        do
        {
          v22 = (unsigned __int8)v51[++v27];
          v30[v29] = v24++;
          v25 = (char)v22;
          ++v29;
        }
        while ( (char)v22 == v28 );
      }
      if ( v24 >= 1 << v28 )
      {
        (*v20)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))byte_8;
        v45 = v26;
        v40 = v23;
        v42 = v19;
        ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**v20)(v20);
        v23 = v40;
        v19 = v42;
        v26 = v45;
        ++v18;
        if ( !v22 )
        {
LABEL_28:
          v12 = v26;
          v21 = v23;
          break;
        }
      }
      else
      {
        ++v18;
        if ( !v22 )
          goto LABEL_28;
      }
      v24 *= 2;
    }
  }
  v43 = v19;
  result = LC_API_MEMSET_0((void *)(v21 + 1024), 0, 0x100u);
  if ( a2 )
    v32 = 15;
  else
    v32 = 255;
  v48 = v32;
  if ( v12 )
  {
    v33 = v50;
    v34 = v43;
    v35 = 0;
    while ( 1 )
    {
      v36 = v34[17];
      if ( v48 < v36 )
        break;
      v37 = v21 + v36;
      if ( *(_BYTE *)(v21 + v36 + 1024) )
        goto LABEL_37;
LABEL_38:
      ++v34;
      *(_DWORD *)(v21 + 4 * v36) = v33[v35];
      v38 = v51[v35++];
      *(_BYTE *)(v37 + 1024) = v38;
      if ( v35 == v12 )
        return result;
    }
    v37 = v21 + v36;
LABEL_37:
    (*v20)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))byte_8;
    v41 = v33;
    result = (void *)((int (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**v20)(v20);
    v33 = v41;
    goto LABEL_38;
  }
  return result;
}


// ===== 6f0070 start_pass_huff =====
_DWORD *__fastcall start_pass_huff(_DWORD *result, int a2)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r5
  int v5; // r6
  _DWORD *v6; // r7
  _DWORD *v7; // r10
  _DWORD *v8; // r8
  int v9; // r3
  unsigned int v10; // r5
  unsigned int v11; // r9
  _DWORD *v12; // r9
  void *v13; // r0
  _DWORD *v14; // r5
  void *v15; // r0
  int v16; // r2
  void *v17; // r0

  v3 = result;
  v4 = (_DWORD *)result[87];
  if ( a2 )
  {
    v4[1] = encode_mcu_gather;
    v4[2] = finish_pass_gather;
  }
  else
  {
    v4[1] = encode_mcu_huff;
    v4[2] = finish_pass_huff;
  }
  if ( (int)result[57] > 0 )
  {
    v5 = 0;
    v6 = result;
    v7 = v4;
    v8 = v4;
    while ( 1 )
    {
      v9 = v6[58];
      v10 = *(_DWORD *)(v9 + 24);
      v11 = *(_DWORD *)(v9 + 20);
      if ( !a2 )
      {
        jpeg_make_c_derived_tbl(
          (int (__fastcall ***)(_DWORD, _DWORD, _DWORD))v3,
          1,
          *(_DWORD *)(v9 + 20),
          &v8[v11 + 11]);
        result = jpeg_make_c_derived_tbl((int (__fastcall ***)(_DWORD, _DWORD, _DWORD))v3, 0, v10, &v8[v10 + 15]);
        goto LABEL_11;
      }
      if ( v11 > 3 )
      {
        *(_DWORD *)(*v3 + 20) = 50;
        *(_DWORD *)(*v3 + 24) = v11;
        (*(void (__fastcall **)(_DWORD *))*v3)(v3);
        if ( v10 <= 3 )
        {
LABEL_8:
          v12 = &v8[v11 + 18];
          v13 = (void *)v12[1];
          if ( v13 )
            goto LABEL_9;
          goto LABEL_17;
        }
      }
      else if ( v10 <= 3 )
      {
        goto LABEL_8;
      }
      *(_DWORD *)(*v3 + 20) = 50;
      v12 = &v8[v11 + 18];
      *(_DWORD *)(*v3 + 24) = v10;
      (*(void (__fastcall **)(_DWORD *))*v3)(v3);
      v13 = (void *)v12[1];
      if ( v13 )
      {
LABEL_9:
        v14 = &v8[v10 + 22];
        LC_API_MEMSET_0(v13, 0, 0x404u);
        v15 = (void *)v14[1];
        if ( !v15 )
          goto LABEL_18;
        goto LABEL_10;
      }
LABEL_17:
      v17 = (void *)(*(int (__fastcall **)(_DWORD *, int, int))v3[1])(v3, 1, 1028);
      v12[1] = v17;
      v14 = &v8[v10 + 22];
      LC_API_MEMSET_0(v17, 0, 0x404u);
      v15 = (void *)v14[1];
      if ( !v15 )
      {
LABEL_18:
        v15 = (void *)(*(int (__fastcall **)(_DWORD *, int, int))v3[1])(v3, 1, 1028);
        v14[1] = v15;
      }
LABEL_10:
      result = LC_API_MEMSET_0(v15, 0, 0x404u);
LABEL_11:
      v7[5] = 0;
      ++v5;
      ++v6;
      ++v7;
      if ( v3[57] <= v5 )
      {
        v4 = v8;
        break;
      }
    }
  }
  v4[3] = 0;
  v4[4] = 0;
  v16 = v3[47];
  v4[10] = 0;
  v4[9] = v16;
  return result;
}


// ===== 6f0274 jpeg_gen_optimal_table =====
int __fastcall jpeg_gen_optimal_table(int a1, _BYTE *a2, int *a3)
{
  int v6; // r3
  int v7; // r2
  int v8; // r1
  int v9; // r12
  int v10; // r0
  int v11; // r12
  int v12; // lr
  int v13; // r1
  _BOOL4 v14; // r11
  int v15; // r0
  _BYTE *v16; // r12
  int v17; // r11
  int v18; // r12
  _BYTE *v19; // r2
  _BYTE *v20; // r11
  int v21; // r1
  _BYTE *v22; // r2
  int v23; // r0
  int i; // r6
  int v25; // r3
  _BYTE *v26; // r1
  int v27; // r12
  char v28; // r0
  int v29; // r3
  char v30; // r12
  int v31; // r3
  int v32; // r1
  int result; // r0
  int j; // r3
  int v35; // r2
  int v36; // [sp+4h] [bp-848h]
  _BYTE v37[1028]; // [sp+18h] [bp-834h]
  _BYTE v38[4]; // [sp+41Ch] [bp-430h] BYREF
  _BYTE v39[44]; // [sp+820h] [bp-2Ch] BYREF

  LC_API_MEMSET_0(v39, 0, 0x21u);
  LC_API_MEMSET_0(v38, 0, 0x404u);
  v6 = 0;
  v7 = -1;
  do
  {
    *(_DWORD *)&v37[v6] = -1;
    v6 += 4;
  }
  while ( v6 != 1028 );
  v8 = 0;
  v9 = 1000000000;
  a3[256] = 1;
  while ( 2 )
  {
    v23 = a3[v8];
    if ( v23 && v9 >= v23 )
      v7 = v8;
    else
      v23 = v9;
    ++v8;
    v9 = v23;
LABEL_20:
    if ( v8 <= 256 )
      continue;
    break;
  }
  v10 = 0;
  v11 = *a3;
  v12 = 1000000000;
  v13 = -1;
  if ( !*a3 )
    goto LABEL_12;
  while ( 1 )
  {
    v14 = v10 != v7;
    if ( v12 < v11 )
      v14 = 0;
    if ( v14 )
      break;
    do
    {
LABEL_12:
      ++v10;
      v11 = v12;
      if ( v10 == 257 )
        goto LABEL_13;
LABEL_11:
      v12 = v11;
      v11 = a3[v10];
    }
    while ( !v11 );
  }
  v13 = v10++;
  if ( v10 != 257 )
    goto LABEL_11;
LABEL_13:
  if ( v13 >= 0 )
  {
    v15 = 4 * v7;
    v16 = &v39[4 * v7 + 40];
    v36 = *((_DWORD *)v16 - 524);
    v17 = *((_DWORD *)v16 - 267) + 1;
    a3[v7] += a3[v13];
    *((_DWORD *)v16 - 267) = v17;
    a3[v13] = 0;
    if ( v36 >= 0 )
    {
      v18 = v36;
      do
      {
        v15 = 4 * v18;
        v19 = &v39[4 * v18 + 40];
        v18 = *((_DWORD *)v19 - 524);
        ++*((_DWORD *)v19 - 267);
      }
      while ( v18 >= 0 );
    }
    v20 = &v39[4 * v13 + 40];
    *(_DWORD *)&v37[v15] = v13;
    v21 = *((_DWORD *)v20 - 524);
    ++*((_DWORD *)v20 - 267);
    for ( ; v21 >= 0; ++*((_DWORD *)v22 - 267) )
    {
      v22 = &v39[4 * v21 + 40];
      v21 = *((_DWORD *)v22 - 524);
    }
    v8 = 0;
    v7 = -1;
    v9 = 1000000000;
    goto LABEL_20;
  }
  for ( i = 0; i != 1028; i += 4 )
  {
    v25 = *(_DWORD *)&v38[i];
    if ( v25 )
    {
      if ( v25 > 32 )
      {
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 39;
        (**(void (__fastcall ***)(int))a1)(a1);
        v25 = *(_DWORD *)&v38[i];
      }
      ++v39[v25];
    }
  }
  v26 = v39;
  v27 = 31;
  do
  {
    v28 = v26[32];
    --v27;
    for ( ; v28; v28 = v26[32] )
    {
      if ( v26[30] )
      {
        v29 = v27;
      }
      else
      {
        v29 = v27;
        do
          --v29;
        while ( !v39[v29] );
      }
      ++v26[31];
      v26[32] = v28 - 2;
      v39[v29 + 1] += 2;
      --v39[v29];
    }
    --v26;
  }
  while ( v27 != 15 );
  v30 = v39[16];
  if ( v39[16] )
  {
    v31 = 16;
  }
  else
  {
    v31 = 16;
    do
      v30 = v39[--v31];
    while ( !v30 );
  }
  v39[v31] = v30 - 1;
  memcpy(a2, v39, 0x11u);
  v32 = 1;
  result = 0;
  do
  {
    for ( j = 0; j != 256; ++j )
    {
      v35 = *(_DWORD *)&v38[4 * j];
      if ( v35 == v32 )
        a2[result + 17] = j;
      if ( v35 == v32 )
        ++result;
    }
    ++v32;
  }
  while ( v32 != 33 );
  a2[273] = 0;
  return result;
}


// ===== 6f064c finish_pass_gather =====
int __fastcall finish_pass_gather(int result)
{
  int v1; // r3
  int v2; // r7
  int v3; // r4
  int v4; // r11
  int v5; // r6
  int v6; // r2
  int v7; // r3
  int v8; // r5
  char *v9; // r10
  char *v10; // r8
  int v11; // r9
  _BYTE *v12; // r1
  _BYTE *v13; // r1
  int v14; // [sp+0h] [bp-14h]
  int v15; // [sp+4h] [bp-10h]
  _DWORD v16[2]; // [sp+Ch] [bp-8h] BYREF

  v1 = *(_DWORD *)(result + 228);
  v2 = 0;
  v16[0] = 0;
  v3 = result;
  v4 = *(_DWORD *)(result + 348);
  if ( v1 > 0 )
  {
    v5 = result;
    do
    {
      v6 = *(_DWORD *)(v5 + 232);
      ++v2;
      v5 += 4;
      v7 = *(_DWORD *)(v6 + 20);
      v8 = *(_DWORD *)(v6 + 24);
      v9 = (char *)&v16[1] + v7;
      v10 = (char *)&v16[1] + v8;
      v11 = v8 + 26;
      if ( !*((_BYTE *)v16 + v7) )
      {
        v12 = *(_BYTE **)(v3 + 4 * (v7 + 22));
        if ( !v12 )
        {
          v14 = v7 + 22;
          v15 = *(_DWORD *)(v6 + 20);
          v12 = (_BYTE *)jpeg_alloc_huff_table(v3);
          *(_DWORD *)(v3 + 4 * v14) = v12;
          v7 = v15;
        }
        result = jpeg_gen_optimal_table(v3, v12, *(int **)(v4 + 4 * v7 + 76));
        *(v9 - 4) = 1;
      }
      if ( !*(v10 - 8) )
      {
        v13 = *(_BYTE **)(v3 + 4 * v11);
        if ( !v13 )
        {
          v13 = (_BYTE *)jpeg_alloc_huff_table(v3);
          *(_DWORD *)(v3 + 4 * v11) = v13;
        }
        result = jpeg_gen_optimal_table(v3, v13, *(int **)(v4 + 4 * v8 + 92));
        *(v10 - 8) = 1;
      }
    }
    while ( *(_DWORD *)(v3 + 228) > v2 );
  }
  return result;
}


// ===== 6f0748 start_input_pass_0 =====
_DWORD *__fastcall start_input_pass_0(_DWORD *result)
{
  int v1; // r3
  bool v2; // cc
  _DWORD *v3; // r3
  int v4; // r2
  int v5; // r2

  v1 = result[73];
  result[32] = 0;
  v2 = v1 <= 1;
  v3 = (_DWORD *)result[98];
  if ( v2 )
  {
    v4 = result[74];
    if ( result[71] == 1 )
      v5 = *(_DWORD *)(v4 + 72);
    else
      v5 = *(_DWORD *)(v4 + 12);
    v3[7] = v5;
  }
  else
  {
    v3[7] = 1;
  }
  v3[6] = 0;
  v3[5] = 0;
  return result;
}


// ===== 6f0790 dummy_consume_data =====
int dummy_consume_data()
{
  return 0;
}


// ===== 6f0798 consume_data =====
int __fastcall consume_data(_DWORD *a1)
{
  _DWORD *v1; // r4
  _DWORD *v3; // r7
  int i; // r6
  int v5; // r3
  int v6; // r2
  int v7; // r9
  _DWORD *v8; // r11
  int v9; // r1
  int v10; // r12
  int v11; // r3
  int v12; // r0
  int v13; // r10
  int v14; // r7
  _DWORD *v15; // r8
  int v16; // r2
  int v17; // r3
  _DWORD *v18; // lr
  int result; // r0
  unsigned int v21; // r1
  unsigned int v22; // r2
  _DWORD *v23; // r3
  bool v24; // cf
  int v25; // r2
  int v26; // r2
  unsigned int v27; // [sp+8h] [bp-24h]
  int j; // [sp+Ch] [bp-20h]
  int v29; // [sp+10h] [bp-1Ch]
  _DWORD v30[5]; // [sp+18h] [bp-14h]

  v1 = (_DWORD *)a1[98];
  v3 = a1;
  for ( i = 0; ; ++i )
  {
    ++v3;
    if ( i >= a1[73] )
      break;
    v30[i] = (*(int (__fastcall **)(_DWORD *, _DWORD, int))(a1[1] + 32))(
               a1,
               v1[*(_DWORD *)(v3[73] + 4) + 18],
               a1[32] * *(_DWORD *)(v3[73] + 12));
  }
  v29 = v1[6];
  v5 = v1[7];
  for ( j = 4 * v29; ; j += 4 )
  {
    if ( v29 >= v5 )
    {
      v21 = a1[71];
      v22 = a1[32] + 1;
      a1[32] = v22;
      if ( v22 >= v21 )
      {
        (*(void (__fastcall **)(_DWORD *))(a1[100] + 12))(a1);
        return 4;
      }
      else
      {
        v23 = (_DWORD *)a1[98];
        if ( (int)a1[73] <= 1 )
        {
          v24 = v22 >= v21 - 1;
          v25 = a1[74];
          if ( v24 )
            v26 = *(_DWORD *)(v25 + 72);
          else
            v26 = *(_DWORD *)(v25 + 12);
          v23[7] = v26;
        }
        else
        {
          v23[7] = 1;
        }
        v23[6] = 0;
        v23[5] = 0;
        return 3;
      }
    }
    v27 = v1[5];
    if ( v27 < a1[78] )
      break;
LABEL_22:
    v1[5] = 0;
    ++v29;
  }
  while ( 1 )
  {
    v6 = a1[73];
    if ( v6 > 0 )
    {
      v7 = 0;
      v8 = a1;
      v9 = 0;
      do
      {
        v10 = v8[74];
        v11 = *(_DWORD *)(v10 + 56);
        v12 = *(_DWORD *)(v10 + 52);
        if ( v11 > 0 )
        {
          v13 = v27 * (v12 << 7);
          v14 = 0;
          v15 = (_DWORD *)(v30[v7] + j);
          do
          {
            if ( v12 > 0 )
            {
              v16 = *v15 + v13;
              v17 = 0;
              v18 = &v1[v9];
              do
              {
                v18[v17 + 8] = v16;
                v12 = *(_DWORD *)(v10 + 52);
                ++v17;
                ++v9;
                v16 += 128;
              }
              while ( v12 > v17 );
              v11 = *(_DWORD *)(v10 + 56);
            }
            ++v14;
            ++v15;
          }
          while ( v11 > v14 );
          v6 = a1[73];
        }
        ++v7;
        ++v8;
      }
      while ( v6 > v7 );
    }
    result = (*(int (__fastcall **)(_DWORD *, _DWORD *))(a1[102] + 4))(a1, v1 + 8);
    if ( !result )
      break;
    if ( a1[78] <= ++v27 )
    {
      v5 = v1[7];
      goto LABEL_22;
    }
  }
  v1[5] = v27;
  v1[6] = v29;
  return result;
}


// ===== 6f09d8 decompress_data =====
int __fastcall decompress_data(_DWORD *a1, int a2)
{
  int v2; // r6
  _DWORD *v3; // r8
  int v4; // r2
  int v5; // r3
  int result; // r0
  unsigned int v7; // r4
  int v8; // r2
  int v9; // r5
  _DWORD *v10; // r10
  bool v11; // cc
  int v12; // r2
  void (__fastcall *v13)(_DWORD *, int, int, int, int); // r9
  int v14; // r8
  unsigned int v15; // r3
  int v16; // r11
  int v17; // r6
  int v18; // r4
  unsigned int i; // r7
  unsigned int v20; // r0
  unsigned int v21; // r4
  int v22; // r1
  int v23; // [sp+8h] [bp-1Ch]
  int v24; // [sp+Ch] [bp-18h]
  int v25; // [sp+10h] [bp-14h]
  int v26; // [sp+14h] [bp-10h]
  unsigned int v27; // [sp+18h] [bp-Ch]

  v2 = a1[98];
  v3 = a1;
  v27 = a1[71] - 1;
  while ( 1 )
  {
    v4 = v3[31];
    v5 = v3[33];
    if ( v4 < v5 )
      goto LABEL_6;
    if ( v4 != v5 )
      break;
    v7 = v3[34];
    if ( v3[32] > v7 )
      goto LABEL_8;
LABEL_6:
    result = (*(int (__fastcall **)(_DWORD *))v3[100])(v3);
    if ( !result )
      return result;
  }
  v7 = v3[34];
LABEL_8:
  v8 = v3[9];
  v9 = v3[49];
  if ( v8 > 0 )
  {
    v23 = 0;
    v26 = v2;
    v10 = v3;
    while ( 1 )
    {
      if ( *(_BYTE *)(v9 + 48) )
      {
        v25 = (*(int (__fastcall **)(_DWORD *, _DWORD, unsigned int))(v10[1] + 32))(
                v10,
                *(_DWORD *)(v26 + 72),
                *(_DWORD *)(v9 + 12) * v7);
        v7 = v10[34];
        if ( v27 <= v7 )
        {
          v22 = *(_DWORD *)(v9 + 32) % *(_DWORD *)(v9 + 12);
          if ( !v22 )
            v22 = *(_DWORD *)(v9 + 12);
          v24 = v22;
        }
        else
        {
          v24 = *(_DWORD *)(v9 + 12);
        }
        v12 = a2;
        v13 = *(void (__fastcall **)(_DWORD *, int, int, int, int))(v10[103] + 4 * v23 + 4);
        v14 = *(_DWORD *)(a2 + 4 * v23);
        if ( v24 > 0 )
        {
          v15 = *(_DWORD *)(v9 + 28);
          v16 = 0;
          while ( 1 )
          {
            if ( !v15 )
              v12 = *(_DWORD *)(v9 + 36);
            v17 = *(_DWORD *)(v25 + 4 * v16);
            if ( v15 )
            {
              v18 = 0;
              for ( i = 0; i < v15; ++i )
              {
                v13(v10, v9, v17, v14, v18);
                v15 = *(_DWORD *)(v9 + 28);
                v12 = *(_DWORD *)(v9 + 36);
                v17 += 128;
                v18 += v12;
              }
            }
            if ( ++v16 == v24 )
              break;
            v14 += 4 * v12;
          }
          v7 = v10[34];
        }
        v8 = v10[9];
        v11 = v8 <= ++v23;
        v26 += 4;
        if ( v11 )
        {
LABEL_27:
          v3 = v10;
          break;
        }
      }
      else
      {
        v11 = v8 <= ++v23;
        v26 += 4;
        if ( v11 )
          goto LABEL_27;
      }
      v9 += 84;
    }
  }
  v20 = v3[71];
  v21 = v7 + 1;
  v3[34] = v21;
  if ( v21 >= v20 )
    return 4;
  else
    return 3;
}


// ===== 6f0bd0 start_output_pass =====
int __fastcall start_output_pass(int result)
{
  _DWORD *v1; // r5
  int *v2; // r4
  int v3; // r3
  int v4; // r7
  _WORD *v5; // r2
  int *v6; // r1
  int v7; // r6
  int i; // r2
  int v9; // t1
  _WORD *v10; // r2
  int v11; // r1
  int v12; // r2

  v1 = *(_DWORD **)(result + 392);
  v2 = (int *)result;
  if ( !v1[4] )
    goto LABEL_4;
  if ( !*(_BYTE *)(result + 73) || !*(_BYTE *)(result + 200) || !*(_DWORD *)(result + 140) )
    goto LABEL_3;
  v3 = v1[28];
  if ( !v3 )
  {
    result = (**(int (***)(void))(result + 4))();
    v3 = result;
    v1[28] = result;
  }
  v4 = v2[49];
  if ( v2[9] <= 0 )
    goto LABEL_3;
  v5 = *(_WORD **)(v4 + 76);
  if ( !v5 )
    goto LABEL_3;
  if ( !*v5 )
    goto LABEL_3;
  if ( !v5[1] )
    goto LABEL_3;
  if ( !v5[8] )
    goto LABEL_3;
  if ( !v5[16] )
    goto LABEL_3;
  if ( !v5[9] )
    goto LABEL_3;
  if ( !v5[2] )
    goto LABEL_3;
  v6 = (int *)v2[35];
  if ( *v6 < 0 )
    goto LABEL_3;
  v7 = 0;
  result = 0;
  while ( 1 )
  {
    for ( i = 1; i != 6; ++i )
    {
      *(_DWORD *)(v3 + 4 * i) = v6[1];
      v9 = v6[1];
      ++v6;
      if ( v9 )
        result = 1;
    }
    if ( ++v7 >= v2[9] )
      break;
    v4 += 84;
    v10 = *(_WORD **)(v4 + 76);
    if ( !v10 )
      goto LABEL_3;
    if ( !*v10 )
      goto LABEL_3;
    if ( !v10[1] )
      goto LABEL_3;
    if ( !v10[8] )
      goto LABEL_3;
    if ( !v10[16] )
      goto LABEL_3;
    if ( !v10[9] )
      goto LABEL_3;
    if ( !v10[2] )
      goto LABEL_3;
    v11 = v2[35];
    v12 = *(_DWORD *)(v11 + (v7 << 8));
    v6 = (int *)(v11 + (v7 << 8));
    if ( v12 < 0 )
      goto LABEL_3;
    v3 += 24;
  }
  if ( !result )
  {
LABEL_3:
    v1[3] = decompress_data;
LABEL_4:
    v2[34] = 0;
    return result;
  }
  v1[3] = decompress_smooth_data;
  v2[34] = 0;
  return result;
}


// ===== 6f0da4 jinit_d_coef_controller =====
_DWORD *__fastcall jinit_d_coef_controller(int a1, int a2)
{
  _DWORD *result; // r0
  int v5; // r7
  _DWORD *v6; // r10
  int *v7; // r4
  _DWORD *v8; // r6
  int v9; // r9
  int (__fastcall *v10)(int, int, int, int, int, int); // r8
  int v11; // r11
  int v12; // r0
  _DWORD *v13; // r3
  _DWORD *v14; // r2

  result = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  v5 = 0;
  *(_DWORD *)(a1 + 392) = result;
  v6 = result;
  *result = start_input_pass_0;
  result[2] = start_output_pass;
  result[28] = 0;
  if ( a2 )
  {
    v7 = *(int **)(a1 + 196);
    if ( *(int *)(a1 + 36) > 0 )
    {
      v8 = result;
      do
      {
        v9 = v7[3];
        if ( *(_BYTE *)(a1 + 200) )
          v9 *= 3;
        v10 = *(int (__fastcall **)(int, int, int, int, int, int))(*(_DWORD *)(a1 + 4) + 20);
        v11 = jround_up(v7[7], v7[2]);
        v12 = jround_up(v7[8], v7[3]);
        result = (_DWORD *)v10(a1, 1, 1, v11, v12, v9);
        v8[18] = result;
        ++v5;
        ++v8;
        v7 += 21;
      }
      while ( *(_DWORD *)(a1 + 36) > v5 );
    }
    v6[4] = v6 + 18;
    v6[1] = consume_data;
    v6[3] = decompress_data;
  }
  else
  {
    result = (_DWORD *)(*(int (__fastcall **)(int, int, int))(*(_DWORD *)(a1 + 4) + 4))(a1, 1, 1280);
    v13 = v6;
    v14 = result + 320;
    do
    {
      v13[8] = result;
      result += 32;
      ++v13;
    }
    while ( result != v14 );
    v6[4] = 0;
    v6[1] = dummy_consume_data;
    v6[3] = decompress_onepass;
  }
  return result;
}


// ===== 6f0f10 decompress_onepass =====
int __fastcall decompress_onepass(_DWORD *a1, int a2)
{
  int v3; // r3
  unsigned int v4; // r4
  int result; // r0
  int v6; // r1
  int v7; // r6
  bool v8; // cc
  bool v9; // cf
  int v10; // r3
  int v11; // r2
  void (__fastcall *v12)(_DWORD *, int, _DWORD, int, int); // r9
  int v13; // r8
  int v14; // r2
  int v15; // r3
  int i; // r8
  int v17; // r5
  int v18; // r4
  unsigned int v19; // r1
  unsigned int v20; // r2
  _DWORD *v21; // r3
  int v22; // r2
  int v23; // r2
  int v24; // [sp+Ch] [bp-38h]
  unsigned int v25; // [sp+10h] [bp-34h]
  unsigned int v26; // [sp+14h] [bp-30h]
  int v27; // [sp+18h] [bp-2Ch]
  int v28; // [sp+1Ch] [bp-28h]
  int v29; // [sp+20h] [bp-24h]
  int v30; // [sp+24h] [bp-20h]
  _DWORD *v31; // [sp+28h] [bp-1Ch]
  int v32; // [sp+2Ch] [bp-18h]
  unsigned int v33; // [sp+30h] [bp-14h]
  unsigned int v34; // [sp+34h] [bp-10h]

  v28 = a1[98];
  v34 = a1[78] - 1;
  v26 = a1[71] - 1;
  v32 = *(_DWORD *)(v28 + 24);
  v3 = *(_DWORD *)(v28 + 28);
  while ( 1 )
  {
    if ( v32 >= v3 )
    {
      v19 = a1[71];
      v20 = a1[32] + 1;
      ++a1[34];
      a1[32] = v20;
      if ( v20 >= v19 )
      {
        (*(void (__fastcall **)(_DWORD *))(a1[100] + 12))(a1);
        return 4;
      }
      else
      {
        v21 = (_DWORD *)a1[98];
        if ( (int)a1[73] <= 1 )
        {
          v9 = v20 >= v19 - 1;
          v22 = a1[74];
          if ( v9 )
            v23 = *(_DWORD *)(v22 + 72);
          else
            v23 = *(_DWORD *)(v22 + 12);
          v21[7] = v23;
        }
        else
        {
          v21[7] = 1;
        }
        v21[6] = 0;
        v21[5] = 0;
        return 3;
      }
    }
    v4 = *(_DWORD *)(v28 + 20);
    v33 = v4;
    if ( v34 >= v4 )
      break;
LABEL_13:
    *(_DWORD *)(v28 + 20) = 0;
    ++v32;
  }
  while ( 1 )
  {
    jzero_far(*(void **)(v28 + 32), a1[80] << 7);
    result = (*(int (__fastcall **)(_DWORD *, int))(a1[102] + 4))(a1, v28 + 32);
    if ( !result )
      break;
    v6 = a1[73];
    if ( v6 > 0 )
    {
      v30 = 0;
      v31 = a1;
      v25 = 0;
      do
      {
        v7 = v31[74];
        if ( *(_BYTE *)(v7 + 48) )
        {
          v10 = *(_DWORD *)(v7 + 4);
          v11 = a1[103] + 4 * v10;
          v12 = *(void (__fastcall **)(_DWORD *, int, _DWORD, int, int))(v11 + 4);
          if ( v34 <= v33 )
            v4 = *(_DWORD *)(v7 + 68);
          else
            v11 = *(_DWORD *)(v7 + 52);
          if ( v34 <= v33 )
            v27 = v4;
          else
            v27 = v11;
          v13 = *(_DWORD *)(a2 + 4 * v10);
          v14 = *(_DWORD *)(v7 + 56);
          v29 = *(_DWORD *)(v7 + 64) * v33;
          v15 = *(_DWORD *)(v7 + 36);
          if ( v14 > 0 )
          {
            v24 = 0;
            for ( i = v13 + 4 * v15 * v32; ; i += 4 * v15 )
            {
              if ( (v26 > a1[32] || *(_DWORD *)(v7 + 72) > v24 + v32) && v27 > 0 )
              {
                v17 = v29;
                v18 = 0;
                do
                {
                  v12(a1, v7, *(_DWORD *)(v28 + 4 * v25 + v18 + 32), i, v17);
                  v15 = *(_DWORD *)(v7 + 36);
                  v18 += 4;
                  v17 += v15;
                }
                while ( v18 != 4 * v27 );
                v14 = *(_DWORD *)(v7 + 56);
              }
              v4 = v24 + 1;
              v8 = v14 <= ++v24;
              v25 += *(_DWORD *)(v7 + 52);
              if ( v8 )
                break;
            }
            v6 = a1[73];
          }
        }
        else
        {
          v4 = v25 + *(_DWORD *)(v7 + 60);
          v25 = v4;
        }
        v8 = v6 <= ++v30;
        ++v31;
      }
      while ( !v8 );
    }
    v4 = v34;
    v9 = v34 >= ++v33;
    if ( !v9 )
    {
      v3 = *(_DWORD *)(v28 + 28);
      goto LABEL_13;
    }
  }
  *(_DWORD *)(v28 + 20) = v33;
  *(_DWORD *)(v28 + 24) = v32;
  return result;
}


// ===== 6f11fc decompress_smooth_data =====
int __fastcall decompress_smooth_data(_DWORD *a1, int a2)
{
  int v3; // r2
  int v4; // r3
  int v5; // r1
  unsigned int v6; // r4
  unsigned int v7; // r3
  int result; // r0
  int v9; // r2
  int v10; // r8
  unsigned int v11; // r5
  int v12; // r3
  int v13; // r7
  unsigned __int16 *v14; // r12
  int v15; // r6
  int v16; // r4
  int v17; // r2
  int v18; // r1
  _DWORD *v19; // r0
  int v20; // r5
  int *v21; // r3
  int v22; // r3
  bool v23; // zf
  __int16 *v24; // r5
  __int16 *v25; // r7
  __int16 *v26; // r8
  __int16 *v27; // r7
  int v28; // t1
  int v29; // r6
  __int16 *v30; // r5
  int v31; // t1
  unsigned int v32; // r4
  __int16 *v33; // r8
  int v34; // t1
  int v35; // r9
  int v36; // r10
  int v37; // r11
  int v38; // r0
  int v39; // r0
  int v40; // r11
  int v41; // r11
  int v42; // r0
  int v43; // r0
  int v44; // r11
  int v45; // r11
  int v46; // r0
  int v47; // r0
  int v48; // r11
  int v49; // r11
  int v50; // r0
  int v51; // r0
  int v52; // r11
  int v53; // r11
  int v54; // r0
  int v55; // r0
  int v56; // r11
  int v57; // r3
  int v58; // r0
  int v59; // r11
  int v60; // r0
  int v61; // r11
  int v62; // r0
  int v63; // r11
  int v64; // r0
  int v65; // r11
  int v66; // r0
  int v67; // r11
  bool v68; // cc
  int v69; // r1
  unsigned int v70; // r4
  unsigned int v71; // r0
  int v72; // [sp+Ch] [bp-130h]
  int v73; // [sp+10h] [bp-12Ch]
  int v74; // [sp+14h] [bp-128h]
  unsigned int v75; // [sp+18h] [bp-124h]
  int v76; // [sp+20h] [bp-11Ch]
  int v77; // [sp+24h] [bp-118h]
  int v78; // [sp+28h] [bp-114h]
  int v79; // [sp+2Ch] [bp-110h]
  int v80; // [sp+30h] [bp-10Ch]
  int v81; // [sp+34h] [bp-108h]
  int *v83; // [sp+3Ch] [bp-100h]
  int *v84; // [sp+40h] [bp-FCh]
  int *v85; // [sp+44h] [bp-F8h]
  int *v86; // [sp+48h] [bp-F4h]
  int *v87; // [sp+4Ch] [bp-F0h]
  void (__fastcall *v88)(_DWORD *, int, _BYTE *, int, int); // [sp+50h] [bp-ECh]
  int v89; // [sp+54h] [bp-E8h]
  int v90; // [sp+58h] [bp-E4h]
  int v91; // [sp+5Ch] [bp-E0h]
  __int16 **v92; // [sp+60h] [bp-DCh]
  int v93; // [sp+64h] [bp-D8h]
  int v94; // [sp+68h] [bp-D4h]
  int v95; // [sp+6Ch] [bp-D0h]
  int v96; // [sp+70h] [bp-CCh]
  int v97; // [sp+74h] [bp-C8h]
  int v98; // [sp+78h] [bp-C4h]
  int v99; // [sp+7Ch] [bp-C0h]
  int v100; // [sp+80h] [bp-BCh]
  int v101; // [sp+84h] [bp-B8h]
  int v102; // [sp+88h] [bp-B4h]
  int v103; // [sp+8Ch] [bp-B0h]
  int v104; // [sp+90h] [bp-ACh]
  int v105; // [sp+94h] [bp-A8h]
  char v106; // [sp+98h] [bp-A4h]
  int v107; // [sp+9Ch] [bp-A0h]
  int v108; // [sp+A4h] [bp-98h]
  int v109; // [sp+A8h] [bp-94h]
  int v110; // [sp+ACh] [bp-90h]
  unsigned int v111; // [sp+B0h] [bp-8Ch]
  _BYTE v113[2]; // [sp+B8h] [bp-84h] BYREF
  __int16 v114; // [sp+BAh] [bp-82h]
  __int16 v115; // [sp+BCh] [bp-80h]
  __int16 v116; // [sp+C8h] [bp-74h]
  __int16 v117; // [sp+CAh] [bp-72h]
  __int16 v118; // [sp+D8h] [bp-64h]

  v110 = a1[98];
  v111 = a1[71] - 1;
  while ( 1 )
  {
    v3 = a1[31];
    v4 = a1[33];
    if ( v3 > v4 )
    {
      v6 = a1[34];
      goto LABEL_12;
    }
    v5 = a1[100];
    if ( *(_BYTE *)(v5 + 17) )
      break;
    if ( v3 == v4 )
    {
      v6 = a1[34];
      v7 = a1[91] ? a1[34] : v6 + 1;
      if ( a1[32] > v7 )
        goto LABEL_12;
    }
    result = (*(int (__fastcall **)(_DWORD *))v5)(a1);
    if ( !result )
      return result;
  }
  v6 = a1[34];
LABEL_12:
  v9 = a1[9];
  v74 = a1[49];
  if ( v9 > 0 )
  {
    v108 = 0;
    v109 = v110;
    v107 = 0;
    while ( 1 )
    {
      v10 = v74;
      if ( !*(_BYTE *)(v74 + 48) )
        goto LABEL_98;
      if ( v111 <= v6 )
      {
        v11 = *(_DWORD *)(v74 + 12);
        v69 = *(_DWORD *)(v74 + 32) % v11;
        v104 = v69;
        if ( v69 )
          v10 = 1;
        else
          v9 = 1;
        if ( v69 )
        {
          v12 = *(_DWORD *)(v74 + 32) % *(_DWORD *)(v74 + 12);
          v105 = v10;
        }
        else
        {
          v12 = *(_DWORD *)(v74 + 12);
          v104 = v12;
          v105 = v9;
        }
        if ( !v6 )
        {
LABEL_107:
          v13 = (*(int (__fastcall **)(_DWORD *, _DWORD, unsigned int, int, unsigned int))(a1[1] + 32))(
                  a1,
                  *(_DWORD *)(v109 + 72),
                  v6,
                  v12,
                  v6);
          v106 = 1;
          goto LABEL_18;
        }
      }
      else
      {
        v11 = *(_DWORD *)(v74 + 12);
        v105 = 0;
        v104 = v11;
        v12 = 2 * v11;
        if ( !v6 )
          goto LABEL_107;
      }
      v106 = 0;
      v13 = (*(int (__fastcall **)(_DWORD *, _DWORD, unsigned int, unsigned int, _DWORD))(a1[1] + 32))(
              a1,
              *(_DWORD *)(v109 + 72),
              (v6 - 1) * v11,
              v12 + v11,
              0)
          + 4 * *(_DWORD *)(v74 + 12);
LABEL_18:
      v14 = *(unsigned __int16 **)(v74 + 76);
      v15 = v14[2];
      v88 = *(void (__fastcall **)(_DWORD *, int, _BYTE *, int, int))(a1[103] + 4 * v107 + 4);
      v16 = v14[16];
      v17 = *v14;
      v18 = v14[1];
      v19 = (_DWORD *)v14[8];
      v20 = v14[9];
      if ( v104 <= 0 )
        v19 = a1;
      v81 = *(_DWORD *)(a2 + 4 * v107);
      if ( v104 > 0 )
      {
        v21 = (int *)(*(_DWORD *)(v110 + 112) + v108);
        v90 = 36 * v17;
        v86 = v21 + 5;
        v102 = v18 << 8;
        v100 = (_DWORD)v19 << 8;
        v101 = (_DWORD)v19 << 7;
        v98 = v16 << 8;
        v97 = 5 * v17;
        v95 = v20 << 8;
        v93 = v15 << 8;
        v84 = v21 + 1;
        v83 = v21 + 2;
        v92 = (__int16 **)v13;
        v87 = v21 + 3;
        v85 = v21 + 4;
        v103 = v18 << 7;
        v89 = 9 * v17;
        v99 = v16 << 7;
        v96 = v20 << 7;
        v94 = v15 << 7;
        v91 = 0;
        while ( 1 )
        {
          if ( v91 )
            v22 = 0;
          else
            v22 = v106 & 1;
          v23 = v22 == 0;
          if ( !v22 )
            v22 = (int)v92;
          v24 = *v92;
          v25 = v23 ? *(__int16 **)(v22 - 4) : *v92;
          v26 = v105 && v104 - 1 == v91 ? *v92 : v92[1];
          v28 = *v25;
          v27 = v25 + 64;
          v29 = 0;
          v77 = v28;
          v31 = *v24;
          v30 = v24 + 64;
          v32 = 0;
          v73 = v31;
          v34 = *v26;
          v33 = v26 + 64;
          v35 = v73;
          v76 = v34;
          v36 = v34;
          v79 = v34;
          v75 = *(_DWORD *)(v74 + 28) - 1;
          v78 = v73;
          v72 = v77;
          v80 = v77;
          while ( 1 )
          {
            jcopy_block_row(v30 - 64, v113, 1);
            if ( v75 > v32 )
            {
              v77 = *v27;
              v73 = *v30;
              v76 = *v33;
            }
            v37 = *v84;
            if ( *v84 && !v114 )
            {
              v38 = v90 * (v78 - v73);
              if ( v38 < 0 )
              {
                v66 = (v103 - v38) / v102;
                if ( v37 > 0 )
                {
                  v67 = 1 << v37;
                  if ( v66 >= v67 )
                    v66 = v67 - 1;
                }
                v39 = -v66;
              }
              else
              {
                v39 = (v38 + v103) / v102;
                if ( v37 > 0 )
                {
                  v40 = 1 << v37;
                  if ( v39 >= v40 )
                    LOWORD(v39) = v40 - 1;
                }
              }
              v114 = v39;
            }
            v41 = *v83;
            if ( *v83 && !v116 )
            {
              v42 = (v72 - v36) * v90;
              if ( v42 < 0 )
              {
                v64 = (v101 - v42) / v100;
                if ( v41 > 0 )
                {
                  v65 = 1 << v41;
                  if ( v64 >= v65 )
                    v64 = v65 - 1;
                }
                v43 = -v64;
              }
              else
              {
                v43 = (v42 + v101) / v100;
                if ( v41 > 0 )
                {
                  v44 = 1 << v41;
                  if ( v43 >= v44 )
                    LOWORD(v43) = v44 - 1;
                }
              }
              v116 = v43;
            }
            v45 = *v87;
            if ( *v87 && !v118 )
            {
              v46 = v89 * (v72 + v36 - 2 * v35);
              if ( v46 < 0 )
              {
                v62 = (v99 - v46) / v98;
                if ( v45 > 0 )
                {
                  v63 = 1 << v45;
                  if ( v62 >= v63 )
                    v62 = v63 - 1;
                }
                v47 = -v62;
              }
              else
              {
                v47 = (v46 + v99) / v98;
                if ( v45 > 0 )
                {
                  v48 = 1 << v45;
                  if ( v47 >= v48 )
                    LOWORD(v47) = v48 - 1;
                }
              }
              v118 = v47;
            }
            v49 = *v85;
            if ( *v85 && !v117 )
            {
              v50 = v97 * (v80 - v79 + v76 - v77);
              if ( v50 < 0 )
              {
                v60 = (v96 - v50) / v95;
                if ( v49 > 0 )
                {
                  v61 = 1 << v49;
                  if ( v60 >= v61 )
                    v60 = v61 - 1;
                }
                v51 = -v60;
              }
              else
              {
                v51 = (v50 + v96) / v95;
                if ( v49 > 0 )
                {
                  v52 = 1 << v49;
                  if ( v51 >= v52 )
                    LOWORD(v51) = v52 - 1;
                }
              }
              v117 = v51;
            }
            v53 = *v86;
            if ( *v86 && !v115 )
            {
              v54 = (v78 - 2 * v35 + v73) * v89;
              if ( v54 < 0 )
              {
                v58 = (v94 - v54) / v93;
                if ( v53 > 0 )
                {
                  v59 = 1 << v53;
                  if ( v58 >= v59 )
                    v58 = v59 - 1;
                }
                v55 = -v58;
              }
              else
              {
                v55 = (v54 + v94) / v93;
                if ( v53 > 0 )
                {
                  v56 = 1 << v53;
                  if ( v55 >= v56 )
                    LOWORD(v55) = v56 - 1;
                }
              }
              v115 = v55;
            }
            v88(a1, v74, v113, v81, v29);
            ++v32;
            v27 += 64;
            v30 += 64;
            v33 += 64;
            v57 = *(_DWORD *)(v74 + 36);
            if ( v75 < v32 )
              break;
            v29 += v57;
            v78 = v35;
            v79 = v36;
            v80 = v72;
            v72 = v77;
            v35 = v73;
            v36 = v76;
          }
          v23 = ++v91 == v104;
          ++v92;
          if ( v23 )
            break;
          v81 += 4 * v57;
        }
        v6 = a1[34];
        v9 = a1[9];
      }
      else
      {
        v6 = v19[34];
        v9 = v19[9];
      }
LABEL_98:
      v68 = v9 <= ++v107;
      v109 += 4;
      v108 += 24;
      if ( v68 )
        break;
      v74 += 84;
    }
  }
  v70 = v6 + 1;
  v71 = a1[71];
  a1[34] = v70;
  if ( v70 >= v71 )
    return 4;
  else
    return 3;
}


// ===== 6f19a8 build_ycc_rgb_table =====
int __fastcall build_ycc_rgb_table(int a1)
{
  _DWORD *v2; // r4
  int v3; // r0
  int v4; // r2
  int v5; // r3
  int v6; // r12
  int v7; // r1
  int result; // r0

  v2 = *(_DWORD **)(a1 + 420);
  v2[2] = (**(int (***)(void))(a1 + 4))();
  v2[3] = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1024);
  v2[4] = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1024);
  v3 = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 1024);
  v4 = -14831872;
  v5 = -11728000;
  v2[5] = v3;
  v6 = 2919680;
  v7 = 5990656;
  result = 0;
  do
  {
    *(_DWORD *)(v2[2] + result) = v5 >> 16;
    *(_DWORD *)(v2[3] + result) = v4 >> 16;
    *(_DWORD *)(v2[4] + result) = v7;
    *(_DWORD *)(v2[5] + result) = v6;
    result += 4;
    v5 += 91881;
    v4 += 116130;
    v7 -= 46802;
    v6 -= 22554;
  }
  while ( result != 1024 );
  return result;
}


// ===== 6f1aa4 ycc_rgb_convert =====
int __fastcall ycc_rgb_convert(_DWORD *a1, _DWORD *a2, int a3, int a4, int a5)
{
  _DWORD *v5; // r4
  int v6; // r2
  int v7; // r5
  int v8; // r12
  int result; // r0
  _BYTE *v10; // r4
  int v11; // r10
  int v12; // r11
  int v13; // r8
  int v14; // r6
  int v15; // r7
  int v16; // [sp+10h] [bp-20h]
  int v17; // [sp+18h] [bp-18h]
  int v18; // [sp+1Ch] [bp-14h]
  int v19; // [sp+20h] [bp-10h]
  int i; // [sp+24h] [bp-Ch]
  int v21; // [sp+28h] [bp-8h]
  int v22; // [sp+2Ch] [bp-4h]

  v5 = (_DWORD *)a1[105];
  v16 = a1[72];
  v6 = 4 * a3;
  v19 = v5[5];
  v7 = a1[23];
  v8 = a5 - 1;
  v22 = v5[2];
  result = 0;
  v21 = v5[3];
  for ( i = v5[4]; v8 >= 0; --v8 )
  {
    v10 = *(_BYTE **)(a4 + result);
    if ( v7 )
    {
      v11 = 0;
      v17 = *(_DWORD *)(a2[2] + result + v6);
      v18 = *(_DWORD *)(a2[1] + result + v6);
      v12 = *(_DWORD *)(*a2 + result + v6);
      do
      {
        v13 = *(unsigned __int8 *)(v17 + v11);
        v14 = *(unsigned __int8 *)(v12 + v11);
        v15 = *(unsigned __int8 *)(v18 + v11++);
        *v10 = *(_BYTE *)(v16 + *(_DWORD *)(v22 + 4 * v13) + v14);
        v10[1] = *(_BYTE *)(v16 + v14 + ((*(_DWORD *)(i + 4 * v13) + *(_DWORD *)(v19 + 4 * v15)) >> 16));
        v10[2] = *(_BYTE *)(v16 + *(_DWORD *)(v21 + 4 * v15) + v14);
        v10 += 3;
      }
      while ( v11 != v7 );
      result += 4;
    }
    else
    {
      result += 4;
    }
  }
  return result;
}


// ===== 6f1bd8 null_convert_0 =====
int __fastcall null_convert_0(int result, int a2, int a3, int a4, int a5)
{
  int v5; // r4
  int v6; // r8
  int v7; // r7
  int i; // r9
  int j; // r6
  int v10; // r5
  int k; // r2
  char v12; // r12

  v5 = *(_DWORD *)(result + 92);
  v6 = *(_DWORD *)(result + 36);
  if ( a5 > 0 )
  {
    v7 = 4 * a3;
    for ( i = 0; i != a5; ++i )
    {
      if ( v6 > 0 )
      {
        for ( j = 0; j != v6; ++j )
        {
          result = *(_DWORD *)(a4 + 4 * i);
          v10 = *(_DWORD *)(*(_DWORD *)(a2 + 4 * j) + v7);
          if ( v5 )
          {
            result += j;
            for ( k = 0; k != v5; ++k )
            {
              v12 = *(_BYTE *)(v10 + k);
              *(_BYTE *)result = v12;
              result += v6;
            }
          }
        }
      }
      v7 += 4;
    }
  }
  return result;
}


// ===== 6f1c5c gray_rgb_convert =====
int __fastcall gray_rgb_convert(int a1, _DWORD *a2, int a3, int a4, int a5)
{
  int result; // r0
  int v6; // r2
  int v7; // r4
  int i; // r12
  int v9; // r6
  _BYTE *v10; // r5
  int v11; // r7
  char v12; // r8

  result = *(_DWORD *)(a1 + 92);
  v6 = 4 * a3;
  v7 = a5 - 1;
  for ( i = 0; v7 >= 0; --v7 )
  {
    v9 = *(_DWORD *)(*a2 + v6 + i);
    v10 = *(_BYTE **)(a4 + i);
    if ( result )
    {
      v11 = 0;
      do
      {
        v12 = *(_BYTE *)(v9 + v11++);
        v10[2] = v12;
        v10[1] = v12;
        *v10 = v12;
        v10 += 3;
      }
      while ( v11 != result );
      i += 4;
    }
    else
    {
      i += 4;
    }
  }
  return result;
}


// ===== 6f1ccc ycck_cmyk_convert =====
int __fastcall ycck_cmyk_convert(int result, _DWORD *a2, int a3, int a4, int a5)
{
  _DWORD *v6; // r4
  int v7; // r2
  int v8; // r5
  int v9; // r12
  int v10; // r3
  int v11; // r4
  int v12; // r9
  int v13; // r8
  int v14; // r7
  int v15; // r6
  int v16; // [sp+8h] [bp-20h]
  int v17; // [sp+Ch] [bp-1Ch]
  int v18; // [sp+10h] [bp-18h]
  int v19; // [sp+14h] [bp-14h]
  int v20; // [sp+18h] [bp-10h]
  int i; // [sp+1Ch] [bp-Ch]
  int v22; // [sp+20h] [bp-8h]
  int v23; // [sp+24h] [bp-4h]

  v6 = *(_DWORD **)(result + 420);
  v16 = *(_DWORD *)(result + 288);
  v7 = 4 * a3;
  v20 = v6[5];
  v8 = *(_DWORD *)(result + 92);
  v9 = a5 - 1;
  v23 = v6[2];
  v22 = v6[3];
  v10 = 0;
  for ( i = v6[4]; v9 >= 0; --v9 )
  {
    result = *(_DWORD *)(a4 + v10);
    if ( v8 )
    {
      v17 = *(_DWORD *)(a2[3] + v10 + v7);
      v11 = 0;
      v18 = *(_DWORD *)(a2[2] + v10 + v7);
      v19 = *(_DWORD *)(a2[1] + v10 + v7);
      v12 = *(_DWORD *)(*a2 + v10 + v7);
      do
      {
        v13 = *(unsigned __int8 *)(v18 + v11);
        v14 = *(unsigned __int8 *)(v19 + v11);
        v15 = 255 - *(unsigned __int8 *)(v12 + v11);
        *(_BYTE *)result = *(_BYTE *)(v16 + v15 - *(_DWORD *)(v23 + 4 * v13));
        *(_BYTE *)(result + 1) = *(_BYTE *)(v16 + v15 - ((*(_DWORD *)(i + 4 * v13) + *(_DWORD *)(v20 + 4 * v14)) >> 16));
        *(_BYTE *)(result + 2) = *(_BYTE *)(v16 + v15 - *(_DWORD *)(v22 + 4 * v14));
        LOBYTE(v15) = *(_BYTE *)(v17 + v11++);
        *(_BYTE *)(result + 3) = v15;
        result += 4;
      }
      while ( v11 != v8 );
      v10 += 4;
    }
    else
    {
      v10 += 4;
    }
  }
  return result;
}


// ===== 6f1e0c start_pass_dcolor =====
void start_pass_dcolor()
{
  ;
}


// ===== 6f1e10 jinit_color_deconverter =====
void (**__fastcall jinit_color_deconverter(int a1))()
{
  void (**result)(); // r0
  void (**v3)(); // r5
  int v4; // r3
  int v5; // r2
  int v6; // r3
  bool v7; // zf
  int v8; // r3
  int v9; // r3
  int v10; // r3
  int v11; // r3

  result = (void (**)())(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 420) = result;
  v3 = result;
  *result = start_pass_dcolor;
  v4 = *(_DWORD *)(a1 + 40);
  switch ( v4 )
  {
    case 1:
      if ( *(_DWORD *)(a1 + 36) != 1 )
        goto LABEL_3;
      goto LABEL_13;
    case 2:
    case 3:
      if ( *(_DWORD *)(a1 + 36) == 3 )
        goto LABEL_13;
      goto LABEL_3;
    case 4:
    case 5:
      if ( *(_DWORD *)(a1 + 36) != 4 )
        goto LABEL_3;
      goto LABEL_13;
    default:
      if ( *(int *)(a1 + 36) <= 0 )
      {
LABEL_3:
        *(_DWORD *)(*(_DWORD *)a1 + 20) = 10;
        result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
        v5 = *(_DWORD *)(a1 + 44);
        v4 = *(_DWORD *)(a1 + 40);
        if ( v5 != 2 )
          goto LABEL_14;
LABEL_4:
        *(_DWORD *)(a1 + 100) = 3;
        switch ( v4 )
        {
          case 3:
            v3[1] = (void (*)())ycc_rgb_convert;
            result = (void (**)())build_ycc_rgb_table(a1);
            goto LABEL_18;
          case 1:
            v3[1] = (void (*)())gray_rgb_convert;
            goto LABEL_18;
          case 2:
            v3[1] = (void (*)())null_convert_0;
LABEL_18:
            if ( *(_BYTE *)(a1 + 74) )
              v6 = 1;
            else
              v6 = *(_DWORD *)(a1 + 100);
            *(_DWORD *)(a1 + 104) = v6;
            return result;
        }
        goto LABEL_17;
      }
LABEL_13:
      v5 = *(_DWORD *)(a1 + 44);
      if ( v5 == 2 )
        goto LABEL_4;
LABEL_14:
      if ( v5 == 4 )
      {
        *(_DWORD *)(a1 + 100) = 4;
        if ( v4 == 5 )
        {
          v3[1] = (void (*)())ycck_cmyk_convert;
          result = (void (**)())build_ycc_rgb_table(a1);
          goto LABEL_18;
        }
        if ( v4 != 4 )
          goto LABEL_17;
        v3[1] = (void (*)())null_convert_0;
        if ( *(_BYTE *)(a1 + 74) )
          v10 = 1;
        else
          v10 = *(_DWORD *)(a1 + 100);
        *(_DWORD *)(a1 + 104) = v10;
      }
      else
      {
        if ( v5 == 1 )
        {
          v7 = v4 == 1;
          if ( v4 != 1 )
            v7 = v4 == 3;
          *(_DWORD *)(a1 + 100) = 1;
          if ( v7 )
          {
            v3[1] = (void (*)())grayscale_convert_0;
            if ( *(int *)(a1 + 36) > 1 )
            {
              v8 = 84;
              result = nullptr;
              do
              {
                ++v5;
                *(_BYTE *)(*(_DWORD *)(a1 + 196) + v8 + 48) = 0;
                v8 += 84;
              }
              while ( *(_DWORD *)(a1 + 36) > v5 );
              if ( *(_BYTE *)(a1 + 74) )
                v9 = 1;
              else
                v9 = *(_DWORD *)(a1 + 100);
              *(_DWORD *)(a1 + 104) = v9;
              return result;
            }
            goto LABEL_18;
          }
          goto LABEL_17;
        }
        if ( v5 != v4 )
        {
LABEL_17:
          *(_DWORD *)(*(_DWORD *)a1 + 20) = 27;
          result = (void (**)())(**(int (__fastcall ***)(int))a1)(a1);
          goto LABEL_18;
        }
        *(_DWORD *)(a1 + 100) = *(_DWORD *)(a1 + 36);
        v3[1] = (void (*)())null_convert_0;
        if ( *(_BYTE *)(a1 + 74) )
          v11 = 1;
        else
          v11 = *(_DWORD *)(a1 + 100);
        *(_DWORD *)(a1 + 104) = v11;
      }
      return result;
  }
}


// ===== 6f2080 grayscale_convert_0 =====
char *__fastcall grayscale_convert_0(int a1, char **a2, int a3, int a4, int a5)
{
  return jcopy_sample_rows(*a2, a3, a4, 0, a5, *(_DWORD *)(a1 + 92));
}


// ===== 6f20b8 start_pass =====
float __fastcall start_pass(float result)
{
  int v1; // r11
  float v2; // r9
  int v3; // r7
  char *v4; // r10
  int v5; // r3
  int v6; // r6
  int v7; // r1
  int j; // r3
  int i; // r3
  int v11; // r5
  int v12; // r7
  int v13; // r4
  double v14; // r10
  int v15; // [sp+4h] [bp-28h]
  int v16; // [sp+8h] [bp-24h]
  int (*v17)(int, int, int, int, int); // [sp+Ch] [bp-20h]
  int v18; // [sp+18h] [bp-14h]
  int v19; // [sp+1Ch] [bp-10h]
  char *v20; // [sp+24h] [bp-8h]

  v1 = *(_DWORD *)(LODWORD(result) + 412);
  v2 = result;
  v3 = *(_DWORD *)(LODWORD(result) + 196);
  if ( *(int *)(LODWORD(result) + 36) > 0 )
  {
    v17 = nullptr;
    v4 = (char *)&aanscales_3142;
    v16 = 0;
    v15 = 0;
    while ( 1 )
    {
      switch ( *(_DWORD *)(v3 + 36) )
      {
        case 1:
          v16 = 0;
          v17 = jpeg_idct_1x1;
          break;
        case 2:
          v16 = 0;
          v17 = jpeg_idct_2x2;
          break;
        case 4:
          v16 = 0;
          v17 = jpeg_idct_4x4;
          break;
        case 8:
          v5 = *(_DWORD *)(LODWORD(v2) + 68);
          if ( v5 == 1 )
          {
            v16 = 1;
            v17 = jpeg_idct_ifast;
          }
          else if ( v5 )
          {
            if ( v5 == 2 )
            {
              v16 = 2;
              v17 = jpeg_idct_float;
            }
            else
            {
              *(_DWORD *)(*(_DWORD *)LODWORD(v2) + 20) = 48;
              result = COERCE_FLOAT((**(int (__fastcall ***)(float))LODWORD(v2))(COERCE_FLOAT(LODWORD(v2))));
            }
          }
          else
          {
            v16 = 0;
            v17 = jpeg_idct_islow;
          }
          break;
        default:
          *(_DWORD *)(*(_DWORD *)LODWORD(v2) + 20) = 7;
          *(_DWORD *)(*(_DWORD *)LODWORD(v2) + 24) = *(_DWORD *)(v3 + 36);
          result = COERCE_FLOAT((**(int (__fastcall ***)(float))LODWORD(v2))(COERCE_FLOAT(LODWORD(v2))));
          break;
      }
      *(_DWORD *)(v1 + 4) = v17;
      if ( *(_BYTE *)(v3 + 48) )
      {
        if ( *(_DWORD *)(v1 + 44) != v16 )
        {
          v6 = *(_DWORD *)(v3 + 76);
          if ( v6 )
          {
            *(_DWORD *)(v1 + 44) = v16;
            if ( v16 == 1 )
            {
              result = *(float *)(v3 + 80);
              for ( i = 0; i != 128; i += 2 )
                *(_DWORD *)(LODWORD(result) + 2 * i) = (*(unsigned __int16 *)(v6 + i) * *(__int16 *)&v4[i] + 2048) >> 12;
            }
            else if ( v16 == 2 )
            {
              v11 = *(_DWORD *)(v3 + 80);
              v19 = v3;
              v18 = v1;
              v12 = 0;
              v20 = v4;
              do
              {
                v13 = 0;
                v14 = *(double *)((char *)&aanscalefactor_3150 + v12);
                do
                {
                  result = (double)*(unsigned __int16 *)(v6 + v13)
                         * v14
                         * *(double *)((char *)&aanscalefactor_3150 + 4 * v13);
                  *(float *)(v11 + 2 * v13) = result;
                  v13 += 2;
                }
                while ( v13 != 16 );
                v12 += 8;
                v6 += 16;
                v11 += 32;
              }
              while ( v12 != 64 );
              v1 = v18;
              v3 = v19;
              v4 = v20;
            }
            else
            {
              v7 = *(_DWORD *)(v3 + 80);
              for ( j = v16; j != 128; j += 2 )
                *(_DWORD *)(v7 + 2 * j) = *(unsigned __int16 *)(v6 + j);
            }
          }
        }
      }
      v1 += 4;
      if ( *(_DWORD *)(LODWORD(v2) + 36) <= ++v15 )
        break;
      v3 += 84;
    }
  }
  return result;
}


// ===== 6f23d8 jinit_inverse_dct =====
_DWORD *__fastcall jinit_inverse_dct(int a1)
{
  _DWORD *result; // r0
  int v3; // r5
  _DWORD *v4; // r7
  int v5; // r6
  void *v6; // r0

  result = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 412) = result;
  *result = start_pass;
  v3 = *(_DWORD *)(a1 + 196);
  if ( *(int *)(a1 + 36) > 0 )
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = (void *)(**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 256);
      *(_DWORD *)(v3 + 80) = v6;
      result = LC_API_MEMSET_0(v6, 0, 0x100u);
      v4[11] = -1;
      ++v5;
      v3 += 84;
      ++v4;
    }
    while ( *(_DWORD *)(a1 + 36) > v5 );
  }
  return result;
}


// ===== 6f246c jpeg_fill_bit_buffer =====
int __fastcall jpeg_fill_bit_buffer(unsigned __int8 **a1, int a2, int a3, int a4)
{
  unsigned __int8 *v4; // r4
  int v5; // r7
  unsigned __int8 *v9; // r10
  unsigned __int8 *v10; // r8
  unsigned __int8 **v12; // r3
  int v13; // r9
  int v14; // t1
  unsigned __int8 **v15; // r3
  unsigned __int8 *v16; // r8
  int v17; // r3
  int v18; // t1

  v4 = a1[4];
  v5 = a3;
  v9 = *a1;
  v10 = a1[1];
  if ( !*((_DWORD *)v4 + 95) )
  {
    if ( a3 <= 24 )
    {
      do
      {
        if ( !v10 )
        {
          if ( !(*(int (__fastcall **)(unsigned __int8 *))(*((_DWORD *)v4 + 6) + 12))(v4) )
            return 0;
          v12 = *((unsigned __int8 ***)v4 + 6);
          v10 = v12[1];
          v9 = *v12;
        }
        v14 = *v9++;
        v13 = v14;
        --v10;
        if ( v14 == 255 )
        {
          do
          {
            while ( v10 )
            {
              v18 = *v9++;
              v17 = v18;
              --v10;
              if ( v18 != 255 )
                goto LABEL_14;
            }
            if ( !(*(int (__fastcall **)(unsigned __int8 *))(*((_DWORD *)v4 + 6) + 12))(v4) )
              return 0;
            v15 = *((unsigned __int8 ***)v4 + 6);
            v16 = v15[1];
            v9 = *v15 + 1;
            v17 = **v15;
            v10 = v16 - 1;
          }
          while ( v17 == 255 );
LABEL_14:
          if ( v17 )
          {
            *((_DWORD *)v4 + 95) = v17;
            goto LABEL_16;
          }
        }
        v5 += 8;
        a2 = v13 | (a2 << 8);
      }
      while ( v5 <= 24 );
    }
LABEL_3:
    a1[3] = (unsigned __int8 *)v5;
    *a1 = v9;
    a1[1] = v10;
    a1[2] = (unsigned __int8 *)a2;
    return 1;
  }
LABEL_16:
  if ( v5 >= a4 )
    goto LABEL_3;
  if ( !*(_BYTE *)(*((_DWORD *)v4 + 102) + 8) )
  {
    *(_DWORD *)(*(_DWORD *)v4 + 20) = 117;
    (*(void (__fastcall **)(unsigned __int8 *, int))(*(_DWORD *)v4 + 4))(v4, -1);
    *(_BYTE *)(*((_DWORD *)v4 + 102) + 8) = 1;
  }
  a1[3] = (_BYTE *)(&off_18 + 1);
  *a1 = v9;
  a1[1] = v10;
  a1[2] = (unsigned __int8 *)(a2 << (25 - v5));
  return 1;
}


// ===== 6f25d4 jpeg_huff_decode =====
int __fastcall jpeg_huff_decode(int a1, int a2, int a3, int a4, int a5)
{
  int v6; // r12
  int v8; // r3
  int v9; // r2
  int v10; // r4
  int v11; // r5
  int v12; // r6
  int v13; // t1

  v6 = a3;
  v8 = a2;
  if ( a5 > a3 )
  {
    if ( !jpeg_fill_bit_buffer((unsigned __int8 **)a1, a2, a3, a5) )
      return -1;
    v8 = *(_DWORD *)(a1 + 8);
    v6 = *(_DWORD *)(a1 + 12);
  }
  v9 = v6 - a5;
  v10 = ~(-1 << a5) & (v8 >> (v6 - a5));
  if ( v10 > *(_DWORD *)(a4 + 4 * a5) )
  {
    v11 = a5;
    v12 = a4 + 4 * a5;
    while ( 1 )
    {
      if ( v9 <= 0 )
      {
        if ( !jpeg_fill_bit_buffer((unsigned __int8 **)a1, v8, v9, 1) )
          return -1;
        v8 = *(_DWORD *)(a1 + 8);
        v9 = *(_DWORD *)(a1 + 12);
      }
      --v9;
      v13 = *(_DWORD *)(v12 + 4);
      v12 += 4;
      v10 = (v8 >> v9) & 1 | (2 * v10);
      ++v11;
      if ( v13 >= v10 )
        goto LABEL_7;
    }
  }
  v11 = a5;
LABEL_7:
  *(_DWORD *)(a1 + 8) = v8;
  *(_DWORD *)(a1 + 12) = v9;
  if ( v11 <= 16 )
    return *(unsigned __int8 *)(*(_DWORD *)(a4 + 140) + v10 + *(_DWORD *)(a4 + 4 * (v11 + 18)) + 17);
  *(_DWORD *)(**(_DWORD **)(a1 + 16) + 20) = 118;
  (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(a1 + 16) + 4))(*(_DWORD *)(a1 + 16), -1);
  return 0;
}


// ===== 6f26e8 decode_mcu =====
int __fastcall decode_mcu(_DWORD *a1, int a2)
{
  int v2; // r3
  _DWORD *v3; // r11
  int v4; // r4
  int v5; // r5
  int v6; // r2
  int v7; // r4
  int v8; // r12
  int v9; // r1
  int v10; // r2
  int v11; // r3
  int v12; // r2
  int v13; // r1
  int v14; // r4
  _WORD *v15; // r11
  int v16; // r5
  int v17; // r0
  int v18; // r3
  int v19; // r12
  int v20; // r4
  int v21; // r3
  _DWORD *v22; // r0
  bool v23; // cc
  _BYTE *v24; // r3
  int v25; // r0
  int v26; // r7
  int v27; // r8
  int v28; // r3
  int v29; // r7
  int v30; // r0
  int v31; // r0
  int v32; // r3
  int v33; // r12
  int v34; // r6
  int v35; // r5
  int v36; // r6
  int v37; // r1
  int v38; // r2
  int v39; // r3
  int v41; // r3
  int v42; // r6
  int v43; // r6
  int v44; // r0
  int v45; // r3
  int v46; // r12
  int v47; // r7
  int v48; // r4
  int v49; // r7
  int v50; // [sp+Ch] [bp-58h]
  int v51; // [sp+14h] [bp-50h]
  int v52; // [sp+18h] [bp-4Ch]
  int v53; // [sp+1Ch] [bp-48h]
  _DWORD *v54; // [sp+28h] [bp-3Ch]
  _DWORD *v56; // [sp+34h] [bp-30h]
  unsigned __int8 *v57; // [sp+3Ch] [bp-28h] BYREF
  int v58; // [sp+40h] [bp-24h]
  int v59; // [sp+44h] [bp-20h]
  int v60; // [sp+48h] [bp-1Ch]
  _DWORD *v61; // [sp+4Ch] [bp-18h]
  int v62; // [sp+50h] [bp-14h]
  int v63; // [sp+54h] [bp-10h]
  int v64; // [sp+58h] [bp-Ch]
  int v65; // [sp+5Ch] [bp-8h]
  _BYTE v66[4]; // [sp+60h] [bp-4h] BYREF

  v2 = a1[102];
  v3 = a1;
  v50 = v2;
  if ( a1[63] )
  {
    v4 = *(_DWORD *)(v2 + 36);
    if ( v4 )
    {
      if ( *(_BYTE *)(v2 + 8) )
        goto LABEL_36;
      goto LABEL_4;
    }
    *(_DWORD *)(a1[101] + 20) += *(_DWORD *)(v2 + 16) / 8;
    *(_DWORD *)(v2 + 16) = 0;
    if ( !(*(int (**)(void))(a1[101] + 8))() )
      return 0;
    if ( (int)v3[73] > 0 )
    {
      v41 = v50;
      do
      {
        *(_DWORD *)(v41 + 20) = 0;
        ++v4;
        v41 += 4;
      }
      while ( v4 < v3[73] );
    }
    *(_DWORD *)(v50 + 36) = v3[63];
    if ( !v3[95] )
    {
      *(_BYTE *)(v50 + 8) = 0;
      goto LABEL_4;
    }
  }
  if ( *(_BYTE *)(v50 + 8) )
    goto LABEL_36;
LABEL_4:
  v5 = v3[6];
  v61 = v3;
  v6 = v3[80];
  v57 = *(unsigned __int8 **)v5;
  v23 = v6 <= 0;
  v58 = *(_DWORD *)(v5 + 4);
  v7 = *(_DWORD *)(v50 + 12);
  v8 = *(_DWORD *)(v50 + 16);
  v9 = *(_DWORD *)(v50 + 24);
  v10 = *(_DWORD *)(v50 + 28);
  v11 = *(_DWORD *)(v50 + 32);
  v62 = *(_DWORD *)(v50 + 20);
  v63 = v9;
  v64 = v10;
  v65 = v11;
  if ( v23 )
    goto LABEL_35;
  v51 = v50;
  v52 = v50;
  v53 = 0;
  v54 = v3;
  v12 = v8;
  v13 = v7;
  v56 = v3;
  while ( 2 )
  {
    v14 = *(_DWORD *)(v51 + 72);
    v15 = *(_WORD **)(a2 + 4 * v53);
    v16 = *(_DWORD *)(v51 + 112);
    if ( v12 > 7 )
      goto LABEL_7;
    if ( !jpeg_fill_bit_buffer(&v57, v13, v12, 0) )
      return 0;
    v12 = v60;
    v13 = v59;
    if ( v60 > 7 )
    {
LABEL_7:
      v17 = (unsigned __int8)(v13 >> (v12 - 8));
      v18 = *(_DWORD *)(v14 + 4 * (v17 + 36));
      if ( v18 )
      {
        v20 = *(unsigned __int8 *)(v14 + v17 + 1168);
        v12 -= v18;
        goto LABEL_10;
      }
      v19 = 9;
    }
    else
    {
      v19 = 1;
    }
    v20 = jpeg_huff_decode((int)&v57, v13, v12, v14, v19);
    if ( v20 < 0 )
      return 0;
    v13 = v59;
    v12 = v60;
LABEL_10:
    if ( v20 )
    {
      if ( v12 >= v20 )
        goto LABEL_12;
      if ( jpeg_fill_bit_buffer(&v57, v13, v12, v20) )
      {
        v13 = v59;
        v12 = v60;
LABEL_12:
        v12 -= v20;
        v21 = ~(-1 << v20) & (v13 >> v12);
        v22 = *((_DWORD **)&extend_test_0 + v20);
        v23 = v21 < (int)v22;
        if ( v21 >= (int)v22 )
          v20 = ~(-1 << v20) & (v13 >> v12);
        else
          v22 = &extend_test_0;
        if ( v23 )
          v20 = v21 + v22[v20 + 16];
        goto LABEL_17;
      }
      return 0;
    }
LABEL_17:
    if ( *(_BYTE *)(v52 + 152) )
    {
      v24 = &v66[4 * v54[81]];
      v25 = v20 + *((_DWORD *)v24 - 4);
      *((_DWORD *)v24 - 4) = v25;
      *v15 = v25;
    }
    if ( *(_BYTE *)(v52 + 162) )
    {
      v26 = 1;
      v27 = v16;
      while ( 1 )
      {
        if ( v12 <= 7 )
        {
          if ( !jpeg_fill_bit_buffer(&v57, v13, v12, 0) )
            return 0;
          v12 = v60;
          v13 = v59;
          if ( v60 <= 7 )
            break;
        }
        v31 = (unsigned __int8)(v13 >> (v12 - 8));
        v32 = *(_DWORD *)(v27 + 4 * (v31 + 36));
        if ( !v32 )
        {
          v33 = 9;
LABEL_49:
          v34 = jpeg_huff_decode((int)&v57, v13, v12, v27, v33);
          if ( v34 < 0 )
            return 0;
          v13 = v59;
          v12 = v60;
          goto LABEL_29;
        }
        v34 = *(unsigned __int8 *)(v27 + v31 + 1168);
        v12 -= v32;
LABEL_29:
        v35 = v34 & 0xF;
        v36 = v34 >> 4;
        if ( v35 )
        {
          if ( v12 < v35 )
          {
            if ( !jpeg_fill_bit_buffer(&v57, v13, v12, v35) )
              return 0;
            v13 = v59;
            v12 = v60;
          }
          v12 -= v35;
          v28 = ((1 << v35) - 1) & (v13 >> v12);
          v29 = v36 + v26;
          if ( v28 < *((_DWORD *)&extend_test_0 + v35) )
            LOWORD(v28) = v28 + *((_DWORD *)&extend_test_0 + v35 + 16);
          v30 = jpeg_natural_order[v29];
          v26 = v29 + 1;
          v15[v30] = v28;
          if ( v26 > 63 )
            goto LABEL_32;
        }
        else
        {
          if ( v36 != 15 )
            goto LABEL_32;
          v26 += 16;
          if ( v26 > 63 )
            goto LABEL_32;
        }
      }
      v33 = 1;
      goto LABEL_49;
    }
    v42 = 1;
    while ( 1 )
    {
      if ( v12 > 7 )
        goto LABEL_64;
      if ( !jpeg_fill_bit_buffer(&v57, v13, v12, 0) )
        return 0;
      v12 = v60;
      v13 = v59;
      if ( v60 > 7 )
      {
LABEL_64:
        v44 = (unsigned __int8)(v13 >> (v12 - 8));
        v45 = *(_DWORD *)(v16 + 4 * (v44 + 36));
        if ( v45 )
        {
          v47 = *(unsigned __int8 *)(v16 + v44 + 1168);
          v12 -= v45;
          goto LABEL_67;
        }
        v46 = 9;
      }
      else
      {
        v46 = 1;
      }
      v47 = jpeg_huff_decode((int)&v57, v13, v12, v16, v46);
      if ( v47 < 0 )
        return 0;
      v13 = v59;
      v12 = v60;
LABEL_67:
      v48 = v47 & 0xF;
      v49 = v47 >> 4;
      if ( !v48 )
        break;
      if ( v12 < v48 )
      {
        if ( !jpeg_fill_bit_buffer(&v57, v13, v12, v48) )
          return 0;
        v13 = v59;
        v12 = v60;
      }
      v43 = v49 + v42;
      v12 -= v48;
LABEL_62:
      v42 = v43 + 1;
      if ( v42 > 63 )
        goto LABEL_32;
    }
    if ( v49 == 15 )
    {
      v43 = v42 + 15;
      goto LABEL_62;
    }
LABEL_32:
    v23 = v56[80] <= ++v53;
    v51 += 4;
    ++v52;
    ++v54;
    if ( !v23 )
      continue;
    break;
  }
  v5 = v56[6];
  v8 = v12;
  v7 = v13;
  v3 = v56;
LABEL_35:
  *(_DWORD *)v5 = v57;
  *(_DWORD *)(v3[6] + 4) = v58;
  *(_DWORD *)(v50 + 12) = v7;
  *(_DWORD *)(v50 + 16) = v8;
  v37 = v63;
  v38 = v64;
  v39 = v65;
  *(_DWORD *)(v50 + 20) = v62;
  *(_DWORD *)(v50 + 24) = v37;
  *(_DWORD *)(v50 + 28) = v38;
  *(_DWORD *)(v50 + 32) = v39;
LABEL_36:
  --*(_DWORD *)(v50 + 36);
  return 1;
}


// ===== 6f2c60 jinit_huff_decoder =====
_DWORD *__fastcall jinit_huff_decoder(int a1)
{
  _DWORD *result; // r0

  result = (_DWORD *)(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 408) = result;
  result[13] = 0;
  *result = start_pass_huff_decoder;
  result[1] = decode_mcu;
  result[14] = 0;
  result[10] = 0;
  result[15] = 0;
  result[11] = 0;
  result[16] = 0;
  result[12] = 0;
  result[17] = 0;
  return result;
}


// ===== 6f2cc4 jpeg_make_d_derived_tbl =====
int __fastcall jpeg_make_d_derived_tbl(
        int (__fastcall ***a1)(_DWORD, _DWORD, _DWORD),
        int a2,
        unsigned int a3,
        int *a4)
{
  unsigned int v7; // r3
  unsigned __int8 *v8; // r11
  int v9; // r4
  int v10; // r0
  int v11; // r7
  int v12; // r8
  int v13; // r2
  int v14; // r6
  int v15; // r4
  _BYTE *v16; // r8
  int i; // r3
  int v18; // r4
  int v19; // r6
  int v20; // r7
  int v21; // r8
  _BYTE *v22; // r9
  int v23; // r2
  int v24; // r1
  _BYTE *v25; // r12
  _BYTE *v26; // lr
  int v27; // r3
  int v28; // r1
  int j; // r3
  int result; // r0
  int v31; // r10
  int v32; // r3
  int v33; // r12
  int v34; // r8
  int v35; // r6
  int v36; // r7
  int v37; // r3
  int v38; // r6
  int v39; // r2
  bool v40; // cc
  int k; // r4
  int v42; // [sp+4h] [bp-538h]
  int v43; // [sp+8h] [bp-534h]
  _BYTE *v44; // [sp+8h] [bp-534h]
  unsigned __int8 *v45; // [sp+Ch] [bp-530h]
  int v46; // [sp+18h] [bp-524h]
  _BYTE v48[16]; // [sp+28h] [bp-514h] BYREF
  _BYTE v49[256]; // [sp+430h] [bp-10Ch] BYREF
  _BYTE v50[4]; // [sp+538h] [bp-4h] BYREF

  if ( a3 > 3 )
  {
    (*a1)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))&word_32;
    (*a1)[6] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))a3;
    ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**a1)(a1);
  }
  if ( a2 )
    v7 = a3 + 40;
  else
    v7 = a3 + 44;
  v8 = (unsigned __int8 *)a1[v7];
  if ( !v8 )
  {
    (*a1)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))&word_32;
    (*a1)[6] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))a3;
    ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**a1)(a1);
  }
  v9 = *a4;
  if ( !*a4 )
  {
    v10 = (*a1[1])(a1, 1, 1424);
    *a4 = v10;
    v9 = v10;
  }
  *(_DWORD *)(v9 + 140) = v8;
  v11 = 1;
  v12 = 0;
  v13 = v9;
  while ( 1 )
  {
    v14 = v8[v11];
    v15 = v12 + v14;
    if ( v12 + v14 > 256 )
    {
      (*a1)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))byte_8;
      v42 = v13;
      ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**a1)(a1);
      v13 = v42;
    }
    if ( v14 )
    {
      v16 = &v49[v12];
      for ( i = 0; i != v14; ++i )
        v16[i] = v11;
    }
    else
    {
      v15 = v12;
    }
    if ( ++v11 == 17 )
      break;
    v12 = v15;
  }
  v46 = v15;
  v18 = v13;
  v19 = 0;
  v49[v46] = 0;
  v43 = v49[0];
  v20 = 0;
  v21 = 0;
  v22 = v50;
  while ( 1 )
  {
    v23 = (unsigned __int8)*(v22 - 264);
    v24 = v19 + v43;
    if ( !*(v22 - 264) )
      break;
    if ( (char)v23 == v24 )
    {
      v25 = &v48[4 * v21 + 4];
      v26 = &v49[v21 - v20];
      v27 = 0;
      do
      {
        *(_DWORD *)&v25[v27] = v20++;
        ++v21;
        v27 += 4;
      }
      while ( (char)v26[v20] == (char)v23 );
      v22 = &v50[v21];
    }
    if ( v20 >= 1 << v24 )
    {
      (*a1)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))byte_8;
      ((void (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**a1)(a1);
    }
    v20 *= 2;
    ++v19;
  }
  v28 = v18;
  for ( j = 1; j != 17; ++j )
  {
    if ( v8[j] )
    {
      *(_DWORD *)(v28 + 76) = v23 - *(_DWORD *)&v48[4 * v23 + 4];
      v23 += v8[j];
      *(_DWORD *)(v28 + 4) = *(_DWORD *)&v48[4 * v23];
    }
    else
    {
      *(_DWORD *)(v28 + 4) = -1;
    }
    v28 += 4;
  }
  *(_DWORD *)(v18 + 68) = 0xFFFFF;
  LC_API_MEMSET_0((void *)(v18 + 144), 0, 0x400u);
  result = 1;
  v31 = 0;
  do
  {
    v32 = v8[result];
    if ( v8[result] )
    {
      v33 = 1 << (8 - result);
      v34 = 0;
      v44 = &v48[4 * v31 + 4];
      v45 = &v8[v31];
      do
      {
        if ( v33 > 0 )
        {
          v35 = *(_DWORD *)&v44[4 * v34] << (8 - result);
          v36 = v18 + 4 * v35;
          v37 = 0;
          v38 = v18 + v35;
          do
          {
            *(_DWORD *)(v36 + 4 * v37 + 144) = result;
            v39 = v38 + v37++;
            *(_BYTE *)(v39 + 1168) = v45[v34 + 17];
          }
          while ( v37 != v33 );
          v32 = v8[result];
        }
        v40 = v32 < v34 + 2;
        ++v31;
        ++v34;
      }
      while ( !v40 );
    }
    ++result;
  }
  while ( result != 9 );
  if ( a2 )
  {
    for ( k = 0; k < v46; ++k )
    {
      if ( v8[17] > 0xFu )
      {
        (*a1)[5] = (int (__fastcall *)(_DWORD, _DWORD, _DWORD))byte_8;
        result = ((int (__fastcall *)(int (__fastcall ***)(_DWORD, _DWORD, _DWORD)))**a1)(a1);
      }
      ++v8;
    }
  }
  return result;
}


// ===== 6f30a8 start_pass_huff_decoder =====
_DWORD *__fastcall start_pass_huff_decoder(_DWORD *result)
{
  _DWORD *v1; // r4
  int v2; // r5
  int v3; // r6
  _DWORD *v4; // r7
  int v5; // r8
  int v6; // r3
  unsigned int v7; // r10
  _DWORD *v8; // r12
  int v9; // r2
  int v10; // r1
  int v11; // r3

  v1 = result;
  v2 = result[102];
  if ( result[91] || result[92] != 63 || result[93] || result[94] )
  {
    *(_DWORD *)(*result + 20) = 122;
    result = (_DWORD *)(*(int (__fastcall **)(_DWORD *, int))(*result + 4))(result, -1);
  }
  if ( (int)v1[73] > 0 )
  {
    v3 = 0;
    v4 = v1;
    v5 = v2;
    do
    {
      v6 = v4[74];
      v7 = *(_DWORD *)(v6 + 24);
      ++v3;
      jpeg_make_d_derived_tbl(
        (int (__fastcall ***)(_DWORD, _DWORD, _DWORD))v1,
        1,
        *(_DWORD *)(v6 + 20),
        (int *)(v2 + 4 * (*(_DWORD *)(v6 + 20) + 10)));
      result = (_DWORD *)jpeg_make_d_derived_tbl(
                           (int (__fastcall ***)(_DWORD, _DWORD, _DWORD))v1,
                           0,
                           v7,
                           (int *)(v2 + 4 * (v7 + 14)));
      *(_DWORD *)(v5 + 20) = 0;
      ++v4;
      v5 += 4;
    }
    while ( v1[73] > v3 );
  }
  if ( (int)v1[80] > 0 )
  {
    v8 = v1;
    v9 = v2;
    v10 = v2;
    result = nullptr;
    do
    {
      v11 = v1[v8[81] + 74];
      *(_DWORD *)(v9 + 72) = *(_DWORD *)(v2 + 4 * (*(_DWORD *)(v11 + 20) + 10));
      *(_DWORD *)(v9 + 112) = *(_DWORD *)(v2 + 4 * (*(_DWORD *)(v11 + 24) + 14));
      if ( *(_BYTE *)(v11 + 48) )
      {
        *(_BYTE *)(v10 + 152) = 1;
        *(_BYTE *)(v10 + 162) = *(_DWORD *)(v11 + 36) > 1;
      }
      else
      {
        *(_BYTE *)(v10 + 152) = 0;
        *(_BYTE *)(v10 + 162) = 0;
      }
      result = (_DWORD *)((char *)result + 1);
      ++v8;
      v9 += 4;
      ++v10;
    }
    while ( v1[80] > (int)result );
  }
  *(_BYTE *)(v2 + 8) = 0;
  *(_DWORD *)(v2 + 16) = 0;
  *(_DWORD *)(v2 + 12) = 0;
  *(_DWORD *)(v2 + 36) = v1[63];
  return result;
}


// ===== 6f3228 start_pass_main_0 =====
int __fastcall start_pass_main_0(int result, int a2)
{
  int v2; // r2
  int v3; // r9
  int v4; // r5
  int v5; // r11
  int v6; // r1
  int v7; // r12
  _DWORD *v8; // r1
  int v9; // r6
  int v10; // r3
  int v11; // r2
  int v12; // r4
  int v13; // r7
  int v14; // r8
  int v15; // r7
  int v16; // r3
  int v17; // r2
  int v18; // r6
  int v19; // r3
  int *j; // r2
  int v21; // [sp+4h] [bp-20h]
  int v22; // [sp+8h] [bp-1Ch]
  int i; // [sp+10h] [bp-14h]
  int v24; // [sp+14h] [bp-10h]
  int v25; // [sp+18h] [bp-Ch]
  int v26; // [sp+1Ch] [bp-8h]

  v22 = *(_DWORD *)(result + 388);
  if ( a2 )
  {
    if ( a2 == 2 )
    {
      *(_DWORD *)(v22 + 4) = process_data_crank_post;
    }
    else
    {
      *(_DWORD *)(*(_DWORD *)result + 20) = 4;
      return (**(int (__fastcall ***)(int))result)(result);
    }
  }
  else
  {
    if ( *(_BYTE *)(*(_DWORD *)(result + 416) + 8) )
    {
      *(_DWORD *)(v22 + 4) = process_data_context_main;
      v2 = *(_DWORD *)(result + 280);
      v3 = *(_DWORD *)(result + 388);
      v24 = v2;
      v4 = *(_DWORD *)(result + 196);
      if ( *(int *)(result + 36) > 0 )
      {
        v5 = 0;
        v25 = v2 + 2;
        v21 = *(_DWORD *)(result + 388);
        v6 = *(_DWORD *)(result + 280);
        v26 = v2 - 2;
        for ( i = result; ; v6 = *(_DWORD *)(i + 280) )
        {
          result = *(_DWORD *)(v4 + 12) * *(_DWORD *)(v4 + 36) / v6;
          v7 = *(_DWORD *)(*(_DWORD *)(v3 + 60) + 4 * v5);
          v8 = *(_DWORD **)(*(_DWORD *)(v3 + 56) + 4 * v5);
          v9 = *(_DWORD *)(v21 + 8);
          if ( v25 * result > 0 )
          {
            v10 = 0;
            v11 = 0;
            do
            {
              v12 = *(_DWORD *)(v9 + v10 * 4);
              ++v11;
              *(_DWORD *)(v7 + v10 * 4) = v12;
              v8[v10++] = v12;
            }
            while ( v11 != v25 * result );
          }
          if ( 2 * result > 0 )
          {
            v13 = 4 * v26 * result;
            v14 = v9 + v13;
            v15 = v7 + v13;
            v16 = 0;
            v17 = 0;
            v18 = v9 + 4 * v24 * result;
            do
            {
              ++v17;
              *(_DWORD *)(v15 + v16) = *(_DWORD *)(v18 + v16);
              *(_DWORD *)(v7 + 4 * v24 * result + v16) = *(_DWORD *)(v14 + v16);
              v16 += 4;
            }
            while ( v17 != 2 * result );
          }
          if ( result > 0 )
          {
            v19 = 0;
            for ( j = nullptr; j != (int *)result; j = (int *)((char *)j + 1) )
            {
              v8[v19 - result] = *v8;
              ++v19;
            }
          }
          ++v5;
          v21 += 4;
          if ( v5 >= *(_DWORD *)(i + 36) )
            break;
          v4 += 84;
        }
      }
      *(_DWORD *)(v22 + 76) = 0;
      *(_DWORD *)(v22 + 64) = 0;
      *(_DWORD *)(v22 + 68) = 0;
    }
    else
    {
      *(_DWORD *)(v22 + 4) = process_data_simple_main_0;
    }
    *(_DWORD *)(v22 + 52) = 0;
    *(_BYTE *)(v22 + 48) = 0;
  }
  return result;
}


// ===== 6f3444 process_data_simple_main_0 =====
int __fastcall process_data_simple_main_0(_DWORD *a1, int a2, int a3, int a4)
{
  int v4; // r4
  int v9; // r10
  int result; // r0
  unsigned int v11; // r6

  v4 = a1[97];
  if ( *(_BYTE *)(v4 + 48) )
  {
    v9 = v4 + 8;
  }
  else
  {
    v9 = v4 + 8;
    result = (*(int (**)(void))(a1[98] + 12))();
    if ( !result )
      return result;
    *(_BYTE *)(v4 + 48) = 1;
  }
  v11 = a1[70];
  result = (*(int (__fastcall **)(_DWORD *, int, int, unsigned int, int, int, int))(a1[99] + 4))(
             a1,
             v9,
             v4 + 52,
             v11,
             a2,
             a3,
             a4);
  if ( v11 <= *(_DWORD *)(v4 + 52) )
  {
    *(_DWORD *)(v4 + 52) = 0;
    *(_BYTE *)(v4 + 48) = 0;
  }
  return result;
}


// ===== 6f34d4 process_data_context_main =====
int __fastcall process_data_context_main(int result, int a2, unsigned int *a3, unsigned int a4)
{
  int v4; // r4
  _DWORD *v6; // r5
  int v8; // r3
  int v9; // r8
  int v10; // r2
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r7
  int v15; // r1
  int v16; // r11
  int v17; // r12
  int v18; // r4
  int v19; // r6
  int v20; // r5
  int v21; // r3
  int v22; // r10
  int v23; // r8
  int v24; // r2
  int v25; // r6
  int v26; // r5
  int v27; // r1
  int v28; // r11
  _DWORD *v29; // r10
  unsigned int v30; // r4
  int v31; // r9
  int v32; // r9
  int v33; // r3
  _DWORD *v34; // r1
  _DWORD *v35; // r4
  int i; // r3
  int v38; // [sp+10h] [bp-1Ch]
  int v39; // [sp+14h] [bp-18h]
  int v40; // [sp+14h] [bp-18h]
  _DWORD *j; // [sp+18h] [bp-14h]
  int v42; // [sp+18h] [bp-14h]
  int v43; // [sp+1Ch] [bp-10h]
  int v44; // [sp+20h] [bp-Ch]
  int v45; // [sp+24h] [bp-8h]

  v4 = *(_DWORD *)(result + 388);
  v6 = (_DWORD *)result;
  if ( !*(_BYTE *)(v4 + 48) )
  {
    result = (*(int (**)(void))(*(_DWORD *)(result + 392) + 12))();
    if ( !result )
      return result;
    v13 = *(_DWORD *)(v4 + 76);
    *(_BYTE *)(v4 + 48) = 1;
    *(_DWORD *)(v4 + 76) = v13 + 1;
  }
  v8 = *(_DWORD *)(v4 + 68);
  if ( v8 == 1 )
  {
    result = (*(int (__fastcall **)(_DWORD *, _DWORD, int, _DWORD, int, unsigned int *, unsigned int))(v6[99] + 4))(
               v6,
               *(_DWORD *)(v4 + 4 * (*(_DWORD *)(v4 + 64) + 14)),
               v4 + 52,
               *(_DWORD *)(v4 + 72),
               a2,
               a3,
               a4);
  }
  else
  {
    if ( v8 == 2 )
    {
      v39 = v4 + 52;
      result = (*(int (__fastcall **)(_DWORD *, _DWORD, int, _DWORD, int, unsigned int *, unsigned int))(v6[99] + 4))(
                 v6,
                 *(_DWORD *)(v4 + 4 * (*(_DWORD *)(v4 + 64) + 14)),
                 v4 + 52,
                 *(_DWORD *)(v4 + 72),
                 a2,
                 a3,
                 a4);
      if ( *(_DWORD *)(v4 + 52) < *(_DWORD *)(v4 + 72) )
        return result;
      *(_DWORD *)(v4 + 68) = 0;
      if ( a4 <= *a3 )
        return result;
    }
    else
    {
      if ( v8 )
        return result;
      v39 = v4 + 52;
    }
    v9 = 0;
    *(_DWORD *)(v4 + 52) = 0;
    v10 = *(_DWORD *)(v4 + 76);
    *(_DWORD *)(v4 + 72) = v6[70] - 1;
    if ( v10 == v6[71] )
    {
      v28 = v6[97];
      v29 = (_DWORD *)v6[49];
      if ( (int)v6[9] > 0 )
      {
        v42 = v4;
        while ( 1 )
        {
          v30 = v29[3] * v29[9];
          v31 = (int)v30 / v6[70];
          if ( v29[11] % v30 )
            v30 = v29[11] % v30;
          if ( !v9 )
            *(_DWORD *)(v28 + 72) = (int)(v30 - 1) / v31 + 1;
          v32 = 2 * v31;
          v33 = *(_DWORD *)(*(_DWORD *)(v28 + 4 * (*(_DWORD *)(v28 + 64) + 14)) + 4 * v9);
          if ( v32 > 0 )
          {
            v34 = (_DWORD *)(v33 + 4 * (v30 - 1));
            v35 = (_DWORD *)(v33 + 4 * v30);
            for ( i = 0; i != v32; ++i )
              *v35++ = *v34;
          }
          if ( ++v9 >= v6[9] )
            break;
          v29 += 21;
        }
        v4 = v42;
      }
    }
    *(_DWORD *)(v4 + 68) = 1;
    result = (*(int (__fastcall **)(_DWORD *, _DWORD, int, _DWORD, int, unsigned int *, unsigned int))(v6[99] + 4))(
               v6,
               *(_DWORD *)(v4 + 4 * (*(_DWORD *)(v4 + 64) + 14)),
               v39,
               *(_DWORD *)(v4 + 72),
               a2,
               a3,
               a4);
  }
  if ( *(_DWORD *)(v4 + 52) >= *(_DWORD *)(v4 + 72) )
  {
    if ( *(_DWORD *)(v4 + 76) == 1 )
    {
      v14 = v6[9];
      v40 = v6[97];
      v15 = v6[70];
      if ( v14 > 0 )
      {
        v38 = 0;
        v43 = v15 + 1;
        v44 = v15 + 2;
        v16 = v6[49];
        v45 = v4;
        for ( j = v6; ; v15 = j[70] )
        {
          result = *(_DWORD *)(v16 + 12) * *(_DWORD *)(v16 + 36) / v15;
          v17 = *(_DWORD *)(*(_DWORD *)(v40 + 56) + 4 * v38);
          v18 = *(_DWORD *)(*(_DWORD *)(v40 + 60) + 4 * v38);
          if ( result > 0 )
          {
            v19 = 4 * v43 * result;
            v20 = 4 * v44 * result;
            v21 = 0;
            v22 = v18 + v19;
            v23 = v18 + v20;
            v24 = 0;
            v25 = v17 + v19;
            v26 = v17 + v20;
            do
            {
              *(_DWORD *)(v17 - 4 * result + v21) = *(_DWORD *)(v25 + v21);
              *(_DWORD *)(v18 - 4 * result + v21) = *(_DWORD *)(v22 + v21);
              *(_DWORD *)(v26 + v21) = *(_DWORD *)(v17 + 4 * v24);
              v27 = *(_DWORD *)(v18 + 4 * v24++);
              *(_DWORD *)(v23 + v21) = v27;
              v21 += 4;
            }
            while ( v24 != result );
            v14 = j[9];
          }
          if ( ++v38 >= v14 )
            break;
          v16 += 84;
        }
        v4 = v45;
        v6 = j;
      }
    }
    v11 = *(_DWORD *)(v4 + 64);
    *(_BYTE *)(v4 + 48) = 0;
    *(_DWORD *)(v4 + 64) = v11 ^ 1;
    *(_DWORD *)(v4 + 52) = v6[70] + 1;
    v12 = v6[70];
    *(_DWORD *)(v4 + 68) = 2;
    *(_DWORD *)(v4 + 72) = v12 + 2;
  }
  return result;
}


// ===== 6f3848 process_data_crank_post =====
int __fastcall process_data_crank_post(int a1)
{
  return (*(int (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)(a1 + 396) + 4))(a1, 0, 0);
}


// ===== 6f3878 jinit_d_main_controller =====
int (__fastcall **__fastcall jinit_d_main_controller(int a1, int a2))(int result, int a2)
{
  int (__fastcall **result)(int, int); // r0
  int (__fastcall **v5)(int, int); // r11
  int v6; // r10
  int v7; // r8
  int v8; // r0
  int v9; // r3
  _DWORD *v10; // r5
  int v11; // r10
  int i; // r6
  int v13; // r3
  int v14; // r0
  int v15; // r7
  int v16; // r0
  int v17; // r8
  int (__fastcall **v18)(int, int); // r6
  int v19; // r7

  result = (int (__fastcall **)(int, int))(**(int (***)(void))(a1 + 4))();
  *(_DWORD *)(a1 + 388) = result;
  v5 = result;
  *result = start_pass_main_0;
  if ( a2 )
  {
    *(_DWORD *)(*(_DWORD *)a1 + 20) = 4;
    result = (int (__fastcall **)(int, int))(**(int (__fastcall ***)(int))a1)(a1);
  }
  if ( *(_BYTE *)(*(_DWORD *)(a1 + 416) + 8) )
  {
    v6 = *(_DWORD *)(a1 + 280);
    if ( v6 <= 1 )
    {
      *(_DWORD *)(*(_DWORD *)a1 + 20) = 47;
      (**(void (__fastcall ***)(int))a1)(a1);
      v6 = *(_DWORD *)(a1 + 280);
    }
    v7 = *(_DWORD *)(a1 + 388);
    v8 = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 8 * *(_DWORD *)(a1 + 36));
    *(_DWORD *)(v7 + 56) = v8;
    result = (int (__fastcall **)(int, int))(v8 + 4 * *(_DWORD *)(a1 + 36));
    *(_DWORD *)(v7 + 60) = result;
    v9 = *(_DWORD *)(a1 + 36);
    v10 = *(_DWORD **)(a1 + 196);
    if ( v9 > 0 )
    {
      v11 = v6 + 4;
      for ( i = 0; i < v9; ++i )
      {
        v13 = v10[9];
        v14 = v10[3];
        v10 += 21;
        v15 = v14 * v13 / *(_DWORD *)(a1 + 280);
        v16 = (**(int (__fastcall ***)(int, int, int))(a1 + 4))(a1, 1, 4 * v15 * 2 * v11) + 4 * v15;
        *(_DWORD *)(*(_DWORD *)(v7 + 56) + 4 * i) = v16;
        result = (int (__fastcall **)(int, int))(v16 + 4 * v15 * v11);
        *(_DWORD *)(*(_DWORD *)(v7 + 60) + 4 * i) = result;
        v9 = *(_DWORD *)(a1 + 36);
      }
      v10 = *(_DWORD **)(a1 + 196);
    }
    v17 = *(_DWORD *)(a1 + 280) + 2;
  }
  else
  {
    v17 = *(_DWORD *)(a1 + 280);
    v10 = *(_DWORD **)(a1 + 196);
    v9 = *(_DWORD *)(a1 + 36);
  }
  if ( v9 > 0 )
  {
    v18 = v5;
    v19 = 0;
    do
    {
      result = (int (__fastcall **)(int, int))(*(int (__fastcall **)(int, int, int, int))(*(_DWORD *)(a1 + 4) + 8))(
                                                a1,
                                                1,
                                                v10[7] * v10[9],
                                                v10[3] * v10[9] / *(_DWORD *)(a1 + 280) * v17);
      v18[2] = (int (__fastcall *)(int, int))result;
      ++v19;
      v10 += 21;
      ++v18;
    }
    while ( *(_DWORD *)(a1 + 36) > v19 );
  }
  return result;
}


// ===== 6f3a4c jpeg_fdct_float =====
float __fastcall jpeg_fdct_float(float *a1)
{
  float *v1; // r4
  float v2; // r11
  float v3; // r5
  float v4; // r8
  float v5; // r10
  float v6; // r7
  float v7; // r6
  float v8; // r0
  float v9; // r6
  float v10; // r7
  float v11; // r6
  float v12; // r7
  float v13; // r0
  float v14; // r8
  float v15; // r0
  float *v16; // r4
  float v17; // r11
  float v18; // r5
  float v19; // r8
  float v20; // r10
  float v21; // r7
  float v22; // r6
  float v23; // r0
  float v24; // r8
  float v25; // r6
  float v26; // r8
  float v27; // r7
  float v28; // r0
  float v29; // r6
  float v30; // r0
  float result; // r0
  float v32; // [sp+4h] [bp-18h]
  float v33; // [sp+4h] [bp-18h]
  float v34; // [sp+8h] [bp-14h]
  float v35; // [sp+8h] [bp-14h]
  float v36; // [sp+Ch] [bp-10h]
  float v37; // [sp+Ch] [bp-10h]
  float *v38; // [sp+10h] [bp-Ch]

  v38 = a1 + 64;
  v1 = a1;
  do
  {
    v2 = *v1 + v1[7];
    v3 = *v1 - v1[7];
    v4 = v1[1] + v1[6];
    v34 = v1[1] - v1[6];
    v5 = v1[2] + v1[5];
    v36 = v1[2] - v1[5];
    v6 = v1[4];
    v32 = v1[3];
    v7 = v2 - (float)(v32 + v6);
    *v1 = (float)(v2 + (float)(v32 + v6)) + (float)(v4 + v5);
    v1[4] = (float)(v2 + (float)(v32 + v6)) - (float)(v4 + v5);
    v8 = (float)((float)(v4 - v5) + v7) * 0.70711;
    v1[2] = v7 + v8;
    v1[6] = v7 - v8;
    v9 = (float)(v32 - v6) + v36;
    v10 = (float)(v9 - (float)(v34 + v3)) * 0.38268;
    v11 = (float)(v9 * 0.5412) + v10;
    v12 = (float)((float)(v34 + v3) * 1.3066) + v10;
    v13 = (float)(v36 + v34) * 0.70711;
    v14 = v3 + v13;
    v15 = v3 - v13;
    v1[5] = v15 + v11;
    v1[3] = v15 - v11;
    v1[1] = v14 + v12;
    v1[7] = v14 - v12;
    v1 += 8;
  }
  while ( v1 != v38 );
  v16 = a1;
  do
  {
    v17 = *v16 + v16[56];
    v18 = *v16 - v16[56];
    v19 = v16[8] + v16[48];
    v35 = v16[8] - v16[48];
    v20 = v16[16] + v16[40];
    v37 = v16[16] - v16[40];
    v21 = v16[32];
    v33 = v16[24];
    v22 = v17 - (float)(v33 + v21);
    *v16 = (float)(v17 + (float)(v33 + v21)) + (float)(v19 + v20);
    v16[32] = (float)(v17 + (float)(v33 + v21)) - (float)(v19 + v20);
    v23 = (float)((float)(v19 - v20) + v22) * 0.70711;
    v16[16] = v22 + v23;
    v16[48] = v22 - v23;
    v24 = (float)(v33 - v21) + v37;
    v25 = (float)(v24 - (float)(v35 + v18)) * 0.38268;
    v26 = (float)(v24 * 0.5412) + v25;
    v27 = (float)((float)(v35 + v18) * 1.3066) + v25;
    v28 = (float)(v37 + v35) * 0.70711;
    v29 = v18 + v28;
    v30 = v18 - v28;
    v16[40] = v30 + v26;
    v16[24] = v30 - v26;
    v16[8] = v29 + v27;
    result = v29 - v27;
    v16[56] = v29 - v27;
    ++v16;
  }
  while ( v16 != a1 + 8 );
  return result;
}


// ===== 6f3ed8 jpeg_fdct_ifast =====
int __fastcall jpeg_fdct_ifast(_DWORD *a1)
{
  _DWORD *v1; // r3
  int v2; // r0
  int v3; // r10
  int v4; // r5
  int v5; // r11
  int v6; // r4
  int v7; // r7
  int v8; // r6
  int v9; // r12
  int v10; // r8
  int v11; // r1
  int v12; // r9
  int v13; // r6
  int v14; // r10
  int v15; // r2
  int v16; // r0
  int v17; // r9
  int v18; // r7
  int v19; // r5
  int v20; // r4
  int v21; // r0
  int v22; // r4
  int v23; // r1
  int v24; // r12
  int v25; // r7
  int v26; // r1
  int v27; // r6
  _DWORD *v28; // r3
  int v29; // r0
  int v30; // r10
  int v31; // r11
  int v32; // r4
  int v33; // r5
  int v34; // r7
  int v35; // r6
  int v36; // r12
  int v37; // r8
  int v38; // r1
  int v39; // r9
  int v40; // r5
  int v41; // r6
  int v42; // r2
  int v43; // r10
  int v44; // r9
  int v45; // r0
  int v46; // r7
  int v47; // r5
  int v48; // r4
  int result; // r0
  int v50; // r4
  int v51; // r1
  int v52; // r12
  int v53; // r7
  int v54; // r1
  int v55; // r6
  int v56; // [sp+4h] [bp-Ch]
  int v57; // [sp+4h] [bp-Ch]
  _DWORD *v58; // [sp+8h] [bp-8h]

  v58 = a1 + 64;
  v1 = a1;
  do
  {
    v2 = v1[2];
    v3 = v1[5];
    v4 = v1[7];
    v5 = v1[1];
    v6 = v1[3];
    v7 = v1[6];
    v8 = v1[4];
    v9 = v2 - v3;
    v10 = *v1 - v4;
    v11 = v5 - v7;
    v12 = v2 - v3 - v8;
    v13 = v8 + v6;
    v56 = v4 + *v1;
    v14 = v3 + v2;
    v15 = v56 - v13;
    v16 = v5 - v7 + v10;
    v17 = v12 + v6;
    v18 = v7 + v5;
    v19 = 181 * (v56 - v13 - v14 + v18);
    v20 = (98 * (v17 - v16)) >> 8;
    v21 = v20 + ((334 * v16) >> 8);
    v22 = v20 + ((139 * v17) >> 8);
    v23 = (181 * (v9 + v11)) >> 8;
    v24 = v10 - v23;
    v25 = v14 + v18;
    v26 = v23 + v10;
    v19 >>= 8;
    v27 = v13 + v56;
    *v1 = v25 + v27;
    v1[4] = v27 - v25;
    v1[2] = v19 + v15;
    v1[6] = v15 - v19;
    v1[5] = v22 + v24;
    v1[3] = v24 - v22;
    v1[1] = v21 + v26;
    v1[7] = v26 - v21;
    v1 += 8;
  }
  while ( v1 != v58 );
  v28 = a1;
  do
  {
    v29 = v28[16];
    v30 = v28[40];
    v31 = v28[8];
    v32 = v28[24];
    v33 = v28[56];
    v34 = v28[48];
    v35 = v28[32];
    v36 = v29 - v30;
    v37 = *v28 - v33;
    v38 = v31 - v34;
    v39 = v29 - v30 - v35;
    v40 = v33 + *v28;
    v41 = v35 + v32;
    v42 = v40 - v41;
    v43 = v30 + v29;
    v44 = v39 + v32;
    v45 = v31 - v34 + v37;
    v57 = v40;
    v46 = v34 + v31;
    v47 = 181 * (v40 - v41 - v43 + v46);
    v48 = (98 * (v44 - v45)) >> 8;
    result = v48 + ((334 * v45) >> 8);
    v50 = v48 + ((139 * v44) >> 8);
    v51 = (181 * (v36 + v38)) >> 8;
    v52 = v37 - v51;
    v53 = v43 + v46;
    v54 = v51 + v37;
    v47 >>= 8;
    v55 = v41 + v57;
    *v28 = v53 + v55;
    v28[32] = v55 - v53;
    v28[16] = v47 + v42;
    v28[48] = v42 - v47;
    v28[40] = v50 + v52;
    v28[24] = v52 - v50;
    v28[8] = result + v54;
    v28[56] = v54 - result;
    ++v28;
  }
  while ( v28 != a1 + 8 );
  return result;
}


// ===== 6f4100 jpeg_fdct_islow =====
int __fastcall jpeg_fdct_islow(_DWORD *a1)
{
  _DWORD *v1; // r3
  int v2; // r9
  int v3; // r8
  int v4; // r11
  int v5; // r0
  int v6; // r7
  int v7; // r1
  int v8; // r12
  int v9; // r5
  int v10; // r6
  int v11; // r4
  int v12; // r10
  int v13; // r2
  int v14; // r0
  int v15; // r7
  int v16; // r6
  int v17; // r4
  int v18; // r10
  int *v19; // r3
  int v20; // r8
  int v21; // r9
  int v22; // r12
  int v23; // r2
  int v24; // r0
  int v25; // r11
  int v26; // r6
  int v27; // r1
  int v28; // r5
  int v29; // r4
  int v30; // r6
  int v31; // r10
  int v32; // r0
  int v33; // r2
  int v34; // r5
  int v35; // r1
  int v36; // r4
  int v37; // r10
  int v38; // r6
  int v39; // r9
  int v40; // r7
  int result; // r0
  int v42; // [sp+4h] [bp-3Ch]
  int v43; // [sp+8h] [bp-38h]
  int v44; // [sp+8h] [bp-38h]
  int v45; // [sp+Ch] [bp-34h]
  int v46; // [sp+Ch] [bp-34h]
  int v47; // [sp+10h] [bp-30h]
  int v48; // [sp+14h] [bp-2Ch]
  int v49; // [sp+14h] [bp-2Ch]
  int v50; // [sp+18h] [bp-28h]
  int v51; // [sp+18h] [bp-28h]
  int v52; // [sp+1Ch] [bp-24h]
  int v53; // [sp+1Ch] [bp-24h]
  int v54; // [sp+20h] [bp-20h]
  int v55; // [sp+20h] [bp-20h]
  _DWORD *v56; // [sp+38h] [bp-8h]

  v1 = a1;
  v56 = a1 + 64;
  do
  {
    v2 = v1[7];
    v3 = v1[6];
    v4 = v1[5];
    v5 = *v1 - v2;
    v6 = v1[1];
    v50 = v2 + *v1;
    v7 = v1[2] - v4;
    v8 = v1[3] - v1[4];
    v9 = v8 + v6 - v3;
    v10 = v7 + v5;
    v48 = v3 + v6;
    v11 = 9633 * (v7 + v5 + v9);
    v45 = v4 + v1[2];
    v12 = v1[4] + v1[3];
    v52 = 25172 * (v6 - v3);
    v13 = -20995 * (v7 + v6 - v3);
    v54 = 12299 * v5;
    v14 = -7373 * (v8 + v5);
    v15 = 4433 * (v3 + v6 - v45 + v50 - v12);
    v16 = v11 - 3196 * v10;
    v17 = v11 - 16069 * v9;
    v43 = 6270 * (v50 - v12) + 1024;
    v18 = v12 + v50;
    *v1 = 4 * (v45 + v48 + v18);
    v1[4] = 4 * (v18 - (v45 + v48));
    v1[2] = (v43 + v15) >> 11;
    v1[6] = (-15137 * (v48 - v45) + 1024 + v15) >> 11;
    v1[7] = (2446 * v8 + 1024 + v14 + v17) >> 11;
    v1[5] = (16819 * v7 + 1024 + v13 + v16) >> 11;
    v1[3] = (v52 + 1024 + v13 + v17) >> 11;
    v1[1] = (v54 + 1024 + v14 + v16) >> 11;
    v1 += 8;
  }
  while ( v1 != v56 );
  v19 = a1;
  do
  {
    v20 = v19[48];
    v21 = v19[56];
    v22 = v19[24] - v19[32];
    v23 = v19[8] - v20;
    v24 = *v19 - v21;
    v25 = v19[16];
    v26 = v19[40];
    v46 = v22 + v23;
    v51 = v21 + *v19;
    v27 = v25 - v26;
    v28 = v25 - v26 + v24;
    v49 = v20 + v19[8];
    v29 = 9633 * (v28 + v22 + v23);
    v30 = v26 + v25;
    v31 = v19[32] + v19[24];
    v42 = 16819 * v27;
    v53 = 25172 * v23;
    v55 = 12299 * v24;
    v32 = -7373 * (v22 + v24);
    v33 = -20995 * (v27 + v23);
    v34 = v29 - 3196 * v28;
    v44 = 6270 * (v51 - v31);
    v35 = 4433 * (v49 - v30 + v51 - v31);
    v47 = -15137 * (v49 - v30);
    v36 = v29 - 16069 * v46;
    v37 = v31 + v51;
    v38 = v30 + v49;
    v39 = v55 + 0x4000 + v32;
    v40 = 2446 * v22 + 0x4000 + v32;
    result = v44 + 0x4000;
    *v19 = (v37 + v38 + 2) >> 2;
    v19[32] = (v37 + 2 - v38) >> 2;
    v19[16] = (v44 + 0x4000 + v35) >> 15;
    v19[48] = (v47 + 0x4000 + v35) >> 15;
    v19[56] = (v40 + v36) >> 15;
    v19[40] = (v42 + 0x4000 + v33 + v34) >> 15;
    v19[24] = (v53 + 0x4000 + v33 + v36) >> 15;
    v19[8] = (v39 + v34) >> 15;
    ++v19;
  }
  while ( v19 != a1 + 8 );
  return result;
}


// ===== 6f4540 jpeg_idct_float =====
unsigned int __fastcall jpeg_idct_float(int a1, int a2, __int16 *a3, int a4, int a5)
{
  float *v6; // r7
  float *v7; // r6
  int v8; // r4
  __int16 v9; // r0
  __int16 v10; // r8
  __int16 v11; // r9
  __int16 v12; // r2
  __int16 v13; // r12
  float v14; // r11
  float v15; // r8
  float v16; // r9
  float v17; // r0
  float v18; // r11
  float v19; // r8
  float v20; // r10
  float v21; // r0
  float v22; // r9
  float v23; // r10
  float v24; // r8
  float v25; // r0
  float v26; // r11
  float v27; // r9
  float v28; // r10
  float v29; // r8
  float v30; // r0
  float *v31; // r5
  int v32; // r7
  float v33; // r9
  float v34; // r10
  _BYTE *v35; // r6
  float v36; // r3
  float v37; // r8
  float v38; // r0
  float v39; // r10
  float v40; // r8
  float v41; // r11
  float v42; // r9
  float v43; // r10
  float v44; // r8
  float v45; // r11
  unsigned int result; // r0
  float v47; // r0
  float v48; // [sp+10h] [bp-12Ch]
  float v49; // [sp+10h] [bp-12Ch]
  float v50; // [sp+14h] [bp-128h]
  float v51; // [sp+14h] [bp-128h]
  float v52; // [sp+14h] [bp-128h]
  __int16 v53; // [sp+18h] [bp-124h]
  float v54; // [sp+18h] [bp-124h]
  float v55; // [sp+18h] [bp-124h]
  float v56; // [sp+1Ch] [bp-120h]
  float v57; // [sp+1Ch] [bp-120h]
  float v58; // [sp+20h] [bp-11Ch]
  float v59; // [sp+20h] [bp-11Ch]
  float v60; // [sp+24h] [bp-118h]
  float v61; // [sp+24h] [bp-118h]
  float v62; // [sp+28h] [bp-114h]
  float *v63; // [sp+2Ch] [bp-110h]
  int v65; // [sp+34h] [bp-108h]
  _BYTE v66[260]; // [sp+38h] [bp-104h] BYREF

  v63 = *(float **)(a2 + 80);
  v65 = *(_DWORD *)(a1 + 288) + 128;
  v6 = v63;
  v7 = (float *)v66;
  v8 = 0;
  do
  {
    if ( a3[8] )
    {
      v9 = a3[16];
      v10 = a3[32];
      v11 = a3[48];
      v12 = a3[24];
      v13 = a3[40];
      v53 = a3[56];
      goto LABEL_4;
    }
    v9 = a3[16];
    if ( v9 )
    {
      v10 = a3[32];
      v11 = a3[48];
      v12 = a3[24];
      v13 = a3[40];
      v53 = a3[56];
LABEL_4:
      v14 = (float)v9 * v6[16];
      v15 = (float)v10 * v6[32];
      v16 = (float)v11 * v6[48];
      v48 = (float)((float)*a3 * v63[v8]) + v15;
      v50 = (float)((float)*a3 * v63[v8]) - v15;
      v17 = (float)((float)(v14 - v16) * 1.4142) - (float)(v14 + v16);
      v56 = v48 + (float)(v14 + v16);
      v49 = v48 - (float)(v14 + v16);
      v58 = v50 + v17;
      v51 = v50 - v17;
      v18 = (float)a3[8] * v6[8];
      v19 = (float)v12 * v6[24];
      v20 = (float)v13 * v6[40];
      v21 = (float)v53 * v6[56];
      v22 = v21;
      v54 = v20 + v19;
      v23 = v20 - v19;
      v24 = v18 + v21;
      v25 = v18 - v21;
      v26 = v18 - v22;
      v27 = v24 + v54;
      v60 = (float)(v23 + v25) * 1.8478;
      v28 = (float)((float)(v23 * -2.6131) + v60) - (float)(v24 + v54);
      v29 = (float)((float)(v24 - v54) * 1.4142) - v28;
      v30 = (float)((float)(v26 * 1.0824) - v60) + v29;
      *(float *)&v66[v8 * 4] = v56 + v27;
      v7[56] = v56 - v27;
      v7[8] = v58 + v28;
      v7[48] = v58 - v28;
      v7[16] = v51 + v29;
      v7[40] = v51 - v29;
      v7[32] = v49 + v30;
      v7[24] = v49 - v30;
      goto LABEL_5;
    }
    v12 = a3[24];
    if ( v12 )
    {
      v10 = a3[32];
      v11 = a3[48];
      v13 = a3[40];
      v53 = a3[56];
      goto LABEL_4;
    }
    v10 = a3[32];
    if ( v10 )
    {
      v11 = a3[48];
      v13 = a3[40];
      v53 = a3[56];
      goto LABEL_4;
    }
    v13 = a3[40];
    if ( v13 )
    {
      v11 = a3[48];
      v53 = a3[56];
      goto LABEL_4;
    }
    v11 = a3[48];
    if ( v11 )
    {
      v53 = a3[56];
      goto LABEL_4;
    }
    v53 = a3[56];
    if ( v53 )
      goto LABEL_4;
    v47 = (float)*a3 * v63[v8];
    *(float *)&v66[v8 * 4] = v47;
    v7[56] = v47;
    v7[8] = v47;
    v7[16] = v47;
    v7[24] = v47;
    v7[32] = v47;
    v7[40] = v47;
    v7[48] = v47;
LABEL_5:
    ++v8;
    ++a3;
    ++v6;
    ++v7;
  }
  while ( v8 != 8 );
  v31 = (float *)v66;
  v32 = 0;
  do
  {
    v33 = *v31 + v31[4];
    v34 = *v31 - v31[4];
    v35 = (_BYTE *)(*(_DWORD *)(a4 + v32) + a5);
    v36 = v31[6];
    v37 = v31[2] + v36;
    v38 = (float)((float)(v31[2] - v36) * 1.4142) - v37;
    v52 = v33 + v37;
    v57 = v33 - v37;
    v59 = v34 + v38;
    v55 = v34 - v38;
    v32 += 4;
    v61 = v31[5] + v31[3];
    v39 = v31[5] - v31[3];
    v40 = v31[1] + v31[7];
    v41 = v31[1] - v31[7];
    v42 = v40 + v61;
    v62 = (float)(v39 + v41) * 1.8478;
    v43 = (float)((float)(v39 * -2.6131) + v62) - (float)(v40 + v61);
    v44 = (float)((float)(v40 - v61) * 1.4142) - v43;
    v45 = (float)((float)(v41 * 1.0824) - v62) + v44;
    *v35 = *(_BYTE *)((((unsigned int)((int)(float)(v52 + v42) + 4) >> 3) & 0x3FF) + v65);
    v35[7] = *(_BYTE *)((((unsigned int)((int)(float)(v52 - v42) + 4) >> 3) & 0x3FF) + v65);
    v35[1] = *(_BYTE *)((((unsigned int)((int)(float)(v59 + v43) + 4) >> 3) & 0x3FF) + v65);
    v35[6] = *(_BYTE *)((((unsigned int)((int)(float)(v59 - v43) + 4) >> 3) & 0x3FF) + v65);
    v35[2] = *(_BYTE *)((((unsigned int)((int)(float)(v55 + v44) + 4) >> 3) & 0x3FF) + v65);
    v35[5] = *(_BYTE *)((((unsigned int)((int)(float)(v55 - v44) + 4) >> 3) & 0x3FF) + v65);
    v35[4] = *(_BYTE *)((((unsigned int)((int)(float)(v57 + v45) + 4) >> 3) & 0x3FF) + v65);
    result = ((unsigned int)((int)(float)(v57 - v45) + 4) >> 3) & 0x3FF;
    v31 += 8;
    v35[3] = *(_BYTE *)(result + v65);
  }
  while ( v32 != 32 );
  return result;
}


// ===== 6f4c2c jpeg_idct_ifast =====
int __fastcall jpeg_idct_ifast(int a1, int a2, __int16 *a3, int a4, int a5)
{
  int v5; // r3
  _DWORD *v6; // r1
  _DWORD *v7; // r0
  int v8; // r12
  __int16 v9; // r8
  __int16 v10; // r6
  __int16 v11; // r7
  __int16 v12; // r4
  __int16 v13; // r5
  int v14; // r4
  int v15; // r7
  int v16; // r5
  int v17; // r3
  int v18; // r6
  int v19; // r8
  int v20; // r10
  int v21; // r4
  int v22; // r5
  int v23; // r9
  int v24; // r5
  int v25; // r3
  int v26; // r4
  int v27; // r11
  int v28; // r6
  int v29; // r8
  int v30; // r9
  int v31; // r3
  int v32; // r10
  int v33; // r11
  int v34; // r8
  int v35; // r6
  int v36; // r3
  int result; // r0
  int *v38; // r2
  int v39; // r6
  int v40; // r8
  int v41; // r10
  int v42; // r7
  int v43; // r5
  int v44; // r4
  int v45; // r7
  int v46; // r5
  char v47; // r10
  int v48; // r9
  unsigned int v49; // r6
  int v50; // r9
  int v51; // r8
  int v52; // r12
  int v53; // r7
  unsigned int v54; // r5
  int v55; // r8
  int v56; // r10
  unsigned int v57; // r8
  int v58; // r4
  int v59; // r10
  int v60; // r12
  _BYTE *v61; // r1
  int v62; // r3
  char v63; // r12
  __int16 v64; // [sp+4h] [bp-134h]
  int v65; // [sp+Ch] [bp-12Ch]
  int v66; // [sp+Ch] [bp-12Ch]
  int v67; // [sp+10h] [bp-128h]
  int v68; // [sp+14h] [bp-124h]
  int v69; // [sp+14h] [bp-124h]
  int v70; // [sp+14h] [bp-124h]
  int v71; // [sp+14h] [bp-124h]
  int v72; // [sp+18h] [bp-120h]
  int v73; // [sp+1Ch] [bp-11Ch]
  int v74; // [sp+1Ch] [bp-11Ch]
  int v75; // [sp+1Ch] [bp-11Ch]
  int v76; // [sp+20h] [bp-118h]
  char v77; // [sp+20h] [bp-118h]
  int v78; // [sp+24h] [bp-114h]
  int v79; // [sp+28h] [bp-110h]
  _DWORD *v80; // [sp+2Ch] [bp-10Ch]
  int v82; // [sp+34h] [bp-104h]
  int v83; // [sp+34h] [bp-104h]
  _BYTE v84[32]; // [sp+38h] [bp-100h] BYREF
  int v85; // [sp+58h] [bp-E0h] BYREF

  v80 = *(_DWORD **)(a2 + 80);
  v5 = *(_DWORD *)(a1 + 288) + 128;
  v6 = v84;
  v7 = v80;
  v8 = 0;
  v82 = v5;
  do
  {
    if ( a3[8] )
    {
      v9 = a3[16];
      v64 = a3[32];
      v10 = a3[48];
      v11 = a3[24];
      v12 = a3[40];
LABEL_8:
      v13 = a3[56];
LABEL_4:
      v14 = v7[40] * v12;
      v15 = v7[24] * v11;
      v16 = v7[56] * v13;
      v68 = v7[16] * v9;
      v17 = v7[8] * a3[8];
      v18 = v7[48] * v10;
      v73 = *a3;
      v19 = v17 - v16;
      v67 = v80[v8];
      v20 = -669 * (v14 - v15);
      v76 = 473 * (v17 - v16 + v14 - v15);
      v21 = v14 + v15;
      v22 = v16 + v17;
      v65 = v22 - v21;
      v23 = v7[32] * v64;
      v24 = v22 + v21;
      v25 = 277 * v19;
      v26 = (v20 >> 8) - v24 + (v76 >> 8);
      v27 = 362 * (v68 - v18);
      v28 = v18 + v68;
      v29 = v67 * v73 - v23;
      v30 = v23 + v67 * v73;
      v74 = (v25 >> 8) - (v76 >> 8);
      v69 = v30 - v28;
      v31 = ((362 * v65) >> 8) - v26;
      v32 = (v27 >> 8) - v28;
      v33 = v29 - v32;
      v34 = v32 + v29;
      v35 = v28 + v30;
      *(_DWORD *)&v84[v8 * 4] = v24 + v35;
      v6[56] = v35 - v24;
      v6[8] = v34 + v26;
      v6[16] = v31 + v33;
      v6[48] = v34 - v26;
      v6[32] = v74 + v31 + v69;
      v6[40] = v33 - v31;
      v6[24] = v69 - (v74 + v31);
      goto LABEL_5;
    }
    v9 = a3[16];
    if ( v9 )
    {
      v64 = a3[32];
      v10 = a3[48];
      v11 = a3[24];
      v12 = a3[40];
      v13 = a3[56];
      goto LABEL_4;
    }
    v11 = a3[24];
    if ( v11 )
    {
      v64 = a3[32];
      v10 = a3[48];
      v12 = a3[40];
      v13 = a3[56];
      goto LABEL_4;
    }
    v64 = a3[32];
    if ( v64 )
    {
      v10 = a3[48];
      v12 = a3[40];
      v13 = a3[56];
      goto LABEL_4;
    }
    v12 = a3[40];
    if ( v12 )
    {
      v10 = a3[48];
      v13 = a3[56];
      goto LABEL_4;
    }
    v10 = a3[48];
    if ( v10 )
      goto LABEL_8;
    v13 = a3[56];
    if ( v13 )
      goto LABEL_4;
    v62 = v80[v8] * *a3;
    *(_DWORD *)&v84[v8 * 4] = v62;
    v6[56] = v62;
    v6[8] = v62;
    v6[16] = v62;
    v6[24] = v62;
    v6[32] = v62;
    v6[40] = v62;
    v6[48] = v62;
LABEL_5:
    ++v8;
    ++a3;
    ++v7;
    ++v6;
  }
  while ( v8 != 8 );
  v36 = v82;
  result = 0;
  v38 = &v85;
  do
  {
    v60 = *(v38 - 7);
    v66 = *(_DWORD *)(a4 + result);
    v61 = (_BYTE *)(v66 + a5);
    if ( v60 )
    {
      v40 = *(v38 - 4);
      v39 = *(v38 - 6);
      v83 = *(v38 - 2);
      v41 = *(v38 - 3);
      v42 = *(v38 - 5);
LABEL_18:
      v70 = *(v38 - 1);
LABEL_14:
      v43 = v42 + v41;
      v44 = v83 + v39;
      v45 = v41 - v42;
      v79 = *(v38 - 8);
      v75 = v43;
      v78 = v40 + v79;
      v46 = v70 + v60 + v43;
      v72 = v70 + v60;
      v71 = v60 - v70;
      v47 = *(_BYTE *)((((unsigned int)(v46 + v83 + v39 + v40 + v79) >> 5) & 0x3FF) + v36);
      v48 = 362 * (v39 - v83);
      v49 = ((unsigned int)(v83 + v39 + v40 + v79 - v46) >> 5) & 0x3FF;
      v50 = (v48 >> 8) - v44;
      *(_BYTE *)(v66 + a5) = v47;
      v51 = v79 - v40;
      v52 = (473 * (v71 + v45)) >> 8;
      v53 = ((-669 * v45) >> 8) - v46 + v52;
      v61[7] = *(_BYTE *)(v49 + v36);
      v77 = *(_BYTE *)((((unsigned int)(v53 + v50 + v51) >> 5) & 0x3FF) + v36);
      v54 = ((unsigned int)(v50 + v51 - v53) >> 5) & 0x3FF;
      v55 = v51 - v50;
      v61[1] = v77;
      v56 = ((362 * (v72 - v75)) >> 8) - v53;
      v61[6] = *(_BYTE *)(v54 + v36);
      v61[2] = *(_BYTE *)((((unsigned int)(v56 + v55) >> 5) & 0x3FF) + v36);
      v57 = ((unsigned int)(v55 - v56) >> 5) & 0x3FF;
      v58 = v78 - v44;
      v59 = ((277 * v71) >> 8) - v52 + v56;
      v61[5] = *(_BYTE *)(v57 + v36);
      v61[4] = *(_BYTE *)((((unsigned int)(v59 + v58) >> 5) & 0x3FF) + v36);
      v61[3] = *(_BYTE *)((((unsigned int)(v58 - v59) >> 5) & 0x3FF) + v36);
      goto LABEL_15;
    }
    v39 = *(v38 - 6);
    if ( v39 )
    {
      v40 = *(v38 - 4);
      v83 = *(v38 - 2);
      v41 = *(v38 - 3);
      v42 = *(v38 - 5);
      v70 = *(v38 - 1);
      goto LABEL_14;
    }
    v42 = *(v38 - 5);
    if ( v42 )
    {
      v40 = *(v38 - 4);
      v83 = *(v38 - 2);
      v41 = *(v38 - 3);
      v70 = *(v38 - 1);
      goto LABEL_14;
    }
    v40 = *(v38 - 4);
    if ( v40 )
    {
      v83 = *(v38 - 2);
      v41 = *(v38 - 3);
      v70 = *(v38 - 1);
      goto LABEL_14;
    }
    v41 = *(v38 - 3);
    if ( v41 )
    {
      v83 = *(v38 - 2);
      v70 = *(v38 - 1);
      goto LABEL_14;
    }
    v83 = *(v38 - 2);
    if ( v83 )
      goto LABEL_18;
    v70 = *(v38 - 1);
    if ( v70 )
      goto LABEL_14;
    v63 = *(_BYTE *)((((unsigned int)*(v38 - 8) >> 5) & 0x3FF) + v36);
    *(_BYTE *)(v66 + a5) = v63;
    v61[7] = v63;
    v61[1] = v63;
    v61[2] = v63;
    v61[3] = v63;
    v61[4] = v63;
    v61[5] = v63;
    v61[6] = v63;
LABEL_15:
    result += 4;
    v38 += 8;
  }
  while ( result != 32 );
  return result;
}


// ===== 6f51d0 jpeg_idct_islow =====
int __fastcall jpeg_idct_islow(int a1, int a2, __int16 *a3, int a4, int a5)
{
  _DWORD *v5; // r1
  _DWORD *v6; // r3
  int v7; // r0
  __int16 v8; // r10
  __int16 v9; // r4
  __int16 v10; // r7
  __int16 v11; // r9
  __int16 v12; // r6
  __int16 v13; // r5
  int v14; // r5
  int v15; // r4
  int v16; // r6
  int v17; // r12
  int v18; // r11
  int v19; // r7
  int v20; // r8
  int v21; // r11
  int v22; // r10
  int v23; // r5
  int v24; // r7
  int v25; // r9
  int v26; // r4
  int v27; // r12
  int v28; // r11
  int v29; // r8
  int v30; // r10
  int v31; // r7
  int *v32; // r3
  int i; // r12
  int v34; // r6
  int v35; // r4
  int v36; // r7
  int v37; // r5
  int v38; // r10
  int v39; // r0
  int v40; // r7
  int v41; // r8
  int v42; // r4
  int v43; // r10
  int v44; // r7
  int v45; // r9
  int v46; // r11
  int result; // r0
  int v48; // r0
  _BYTE *v49; // r2
  int v50; // r12
  int v51; // [sp+4h] [bp-14Ch]
  int v52; // [sp+Ch] [bp-144h]
  int v53; // [sp+Ch] [bp-144h]
  int v54; // [sp+10h] [bp-140h]
  int v55; // [sp+14h] [bp-13Ch]
  int v56; // [sp+18h] [bp-138h]
  int v57; // [sp+18h] [bp-138h]
  int v58; // [sp+1Ch] [bp-134h]
  int v59; // [sp+1Ch] [bp-134h]
  int v60; // [sp+20h] [bp-130h]
  int v61; // [sp+20h] [bp-130h]
  int v62; // [sp+24h] [bp-12Ch]
  int v63; // [sp+24h] [bp-12Ch]
  int v64; // [sp+28h] [bp-128h]
  int v65; // [sp+28h] [bp-128h]
  int v66; // [sp+28h] [bp-128h]
  int v67; // [sp+2Ch] [bp-124h]
  _DWORD *v68; // [sp+44h] [bp-10Ch]
  int v70; // [sp+4Ch] [bp-104h]
  _BYTE v71[32]; // [sp+50h] [bp-100h] BYREF
  int v72; // [sp+70h] [bp-E0h] BYREF

  v68 = *(_DWORD **)(a2 + 80);
  v70 = *(_DWORD *)(a1 + 288) + 128;
  v5 = v68;
  v6 = v71;
  v7 = 0;
  do
  {
    if ( a3[8] )
    {
      v8 = a3[16];
LABEL_10:
      v10 = a3[48];
      v11 = a3[32];
      v12 = a3[56];
      v13 = a3[40];
      v9 = a3[24];
LABEL_5:
      v14 = v5[40] * v13;
      v15 = v5[24] * v9;
      v16 = v5[56] * v12;
      v51 = v5[16] * v8;
      v17 = v5[8] * a3[8];
      v64 = v5[48] * v10;
      v56 = v5[32] * v11;
      v18 = 9633 * (v14 + v17 + v15 + v16);
      v58 = v68[v7] * *a3;
      v19 = 4433 * (v64 + v51);
      v62 = -20995 * (v15 + v14) + 16819 * v14;
      v20 = v18 - 3196 * (v14 + v17);
      v60 = v19 + 6270 * v51;
      v65 = v19 - 15137 * v64;
      v21 = v18 - 16069 * (v15 + v16);
      v52 = -20995 * (v15 + v14) + 25172 * v15;
      v22 = ((v56 + v58) << 13) + 1024;
      v23 = v22 + v60;
      v24 = ((v58 - v56) << 13) + 1024;
      v25 = -7373 * (v16 + v17) + 2446 * v16 + v21;
      v26 = v24 + v65;
      v27 = -7373 * (v16 + v17) + 12299 * v17 + v20;
      v28 = v52 + v21;
      v29 = v62 + v20;
      v30 = v22 - v60;
      v31 = v24 - v65;
      *(_DWORD *)&v71[v7 * 4] = (v23 + v27) >> 11;
      v6[56] = (v23 - v27) >> 11;
      v6[8] = (v26 + v28) >> 11;
      v6[48] = (v26 - v28) >> 11;
      v6[16] = (v31 + v29) >> 11;
      v6[40] = (v31 - v29) >> 11;
      v6[24] = (v30 + v25) >> 11;
      v6[32] = (v30 - v25) >> 11;
      goto LABEL_6;
    }
    v8 = a3[16];
    if ( v8 )
      goto LABEL_10;
    v9 = a3[24];
    if ( v9 )
    {
      v10 = a3[48];
      v11 = a3[32];
      v12 = a3[56];
      v13 = a3[40];
      goto LABEL_5;
    }
    v11 = a3[32];
    if ( v11 )
    {
      v10 = a3[48];
      v12 = a3[56];
      v13 = a3[40];
      goto LABEL_5;
    }
    v13 = a3[40];
    if ( v13 )
    {
      v10 = a3[48];
      v12 = a3[56];
      goto LABEL_5;
    }
    v10 = a3[48];
    if ( v10 )
    {
      v12 = a3[56];
      goto LABEL_5;
    }
    v12 = a3[56];
    if ( v12 )
      goto LABEL_5;
    v50 = 4 * v68[v7] * *a3;
    *(_DWORD *)&v71[v7 * 4] = v50;
    v6[56] = v50;
    v6[8] = v50;
    v6[16] = v50;
    v6[24] = v50;
    v6[32] = v50;
    v6[40] = v50;
    v6[48] = v50;
LABEL_6:
    ++v7;
    ++a3;
    ++v5;
    ++v6;
  }
  while ( v7 != 8 );
  v32 = &v72;
  for ( i = 0; i != 32; i += 4 )
  {
    v48 = *(v32 - 7);
    v55 = *(_DWORD *)(a4 + i);
    v49 = (_BYTE *)(v55 + a5);
    if ( v48 )
    {
      v34 = *(v32 - 6);
LABEL_20:
      v36 = *(v32 - 2);
      v54 = *(v32 - 4);
      v53 = *(v32 - 1);
      v37 = *(v32 - 3);
      v35 = *(v32 - 5);
LABEL_15:
      v63 = 9633 * (v37 + v48 + v35 + v53);
      v38 = 4433 * (v36 + v34);
      v66 = -7373 * (v53 + v48);
      v67 = v38 + 6270 * v34;
      v57 = v63 - 3196 * (v37 + v48);
      v61 = ((v54 + *(v32 - 8)) << 13) + 0x20000;
      v39 = v66 + 12299 * v48 + v57;
      v59 = -20995 * (v35 + v37);
      v40 = v38 - 15137 * v36;
      v41 = v63 - 16069 * (v35 + v53);
      v42 = v59 + 25172 * v35 + v41;
      v43 = ((*(v32 - 8) - v54) << 13) + 0x20000;
      *(_BYTE *)(v55 + a5) = *(_BYTE *)((((unsigned int)(v61 + v67 + v39) >> 18) & 0x3FF) + v70);
      v49[7] = *(_BYTE *)((((unsigned int)(v61 + v67 - v39) >> 18) & 0x3FF) + v70);
      v49[1] = *(_BYTE *)((((unsigned int)(v43 + v40 + v42) >> 18) & 0x3FF) + v70);
      LOBYTE(v39) = *(_BYTE *)((((unsigned int)(v43 + v40 - v42) >> 18) & 0x3FF) + v70);
      v44 = v43 - v40;
      v49[6] = v39;
      v45 = v59 + 16819 * v37 + v57;
      v49[2] = *(_BYTE *)((((unsigned int)(v44 + v45) >> 18) & 0x3FF) + v70);
      v46 = v66 + 2446 * v53 + v41;
      v49[5] = *(_BYTE *)((((unsigned int)(v44 - v45) >> 18) & 0x3FF) + v70);
      v49[3] = *(_BYTE *)((((unsigned int)(v61 - v67 + v46) >> 18) & 0x3FF) + v70);
      result = *(unsigned __int8 *)((((unsigned int)(v61 - v67 - v46) >> 18) & 0x3FF) + v70);
      v49[4] = result;
      goto LABEL_16;
    }
    v34 = *(v32 - 6);
    if ( v34 )
      goto LABEL_20;
    v35 = *(v32 - 5);
    if ( v35 )
    {
      v36 = *(v32 - 2);
      v54 = *(v32 - 4);
      v53 = *(v32 - 1);
      v37 = *(v32 - 3);
      goto LABEL_15;
    }
    v54 = *(v32 - 4);
    if ( v54 )
    {
      v36 = *(v32 - 2);
      v53 = *(v32 - 1);
      v37 = *(v32 - 3);
      goto LABEL_15;
    }
    v37 = *(v32 - 3);
    if ( v37 )
    {
      v36 = *(v32 - 2);
      v53 = *(v32 - 1);
      goto LABEL_15;
    }
    v36 = *(v32 - 2);
    if ( v36 )
    {
      v53 = *(v32 - 1);
      goto LABEL_15;
    }
    v53 = *(v32 - 1);
    if ( v53 )
      goto LABEL_15;
    result = *(unsigned __int8 *)((((unsigned int)(*(v32 - 8) + 16) >> 5) & 0x3FF) + v70);
    *(_BYTE *)(v55 + a5) = result;
    v49[7] = result;
    v49[1] = result;
    v49[2] = result;
    v49[3] = result;
    v49[4] = result;
    v49[5] = result;
    v49[6] = result;
LABEL_16:
    v32 += 8;
  }
  return result;
}


// ===== 6f58a4 jpeg_idct_4x4 =====
int __fastcall jpeg_idct_4x4(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD *v5; // r3
  _WORD *v6; // r2
  int *v7; // r1
  int i; // r0
  __int16 v9; // r6
  __int16 v10; // r7
  __int16 v11; // r8
  __int16 v12; // r10
  __int16 v13; // r5
  int v14; // r5
  int v15; // r4
  int v16; // r12
  int v17; // r9
  int v18; // r7
  int v19; // r10
  int v20; // r4
  int v21; // r7
  int v22; // r12
  int v23; // r9
  int *v24; // r3
  int v25; // r7
  int j; // r2
  int v27; // r0
  int v28; // r5
  _BYTE *v29; // r1
  int v30; // r4
  int v31; // r8
  int v32; // r6
  int v33; // r11
  int v34; // r10
  int v35; // r8
  int v36; // r9
  int v37; // r11
  int result; // r0
  int v39; // r12
  int v40; // [sp+0h] [bp-A8h]
  int v42; // [sp+20h] [bp-88h]
  int v43; // [sp+24h] [bp-84h]
  int v44; // [sp+2Ch] [bp-7Ch] BYREF
  int v45; // [sp+48h] [bp-60h] BYREF

  v43 = *(_DWORD *)(a1 + 288) + 128;
  v5 = (_DWORD *)(*(_DWORD *)(a2 + 80) + 4);
  v6 = (_WORD *)(a3 + 2);
  v7 = &v44;
  for ( i = 7; i == 3; --i )
  {
LABEL_7:
    ++v6;
    ++v5;
    ++v7;
  }
  if ( v6[7] )
  {
    v9 = v6[15];
    goto LABEL_12;
  }
  v9 = v6[15];
  if ( v9 )
  {
LABEL_12:
    v11 = v6[47];
    v12 = v6[55];
    v13 = v6[39];
    v10 = v6[23];
    goto LABEL_5;
  }
  v10 = v6[23];
  if ( v10 )
  {
    v11 = v6[47];
    v12 = v6[55];
    v13 = v6[39];
  }
  else
  {
    v13 = v6[39];
    if ( v13 )
    {
      v11 = v6[47];
      v12 = v6[55];
    }
    else
    {
      v11 = v6[47];
      if ( v11 )
      {
        v12 = v6[55];
      }
      else
      {
        v12 = v6[55];
        if ( !v12 )
        {
          v39 = 4 * *(v5 - 1) * (__int16)*(v6 - 1);
          v7[23] = v39;
          *(v7 - 1) = v39;
          v7[7] = v39;
          v7[15] = v39;
          goto LABEL_6;
        }
      }
    }
  }
LABEL_5:
  v14 = v5[39] * v13;
  v15 = v5[55] * v12;
  v16 = v5[7] * (__int16)v6[7];
  v40 = 11893 * v14 - 1730 * v15;
  v17 = v9 * 15137 * v5[15] + v11 * -6270 * v5[47];
  v18 = v5[23] * v10;
  v19 = -4926 * v14 - 4176 * v15 + 20995 * v16 + 7373 * v18;
  v20 = (*(v5 - 1) * (__int16)*(v6 - 1)) << 14;
  v21 = v40 + 8697 * v16 - 17799 * v18;
  v22 = v20 - v17;
  v23 = v17 + v20 + 2048;
  v22 += 2048;
  *(v7 - 1) = (v23 + v19) >> 12;
  v7[23] = (v23 - v19) >> 12;
  v7[7] = (v22 + v21) >> 12;
  v7[15] = (v22 - v21) >> 12;
LABEL_6:
  if ( i > 0 )
    goto LABEL_7;
  v24 = &v45;
  v25 = -17799;
  for ( j = 0; j != 16; j += 4 )
  {
    v27 = *(v24 - 7);
    v28 = *(_DWORD *)(a4 + j);
    if ( v27 )
      v25 = *(v24 - 6);
    v29 = (_BYTE *)(v28 + a5);
    if ( v27 || (v25 = *(v24 - 6)) != 0 )
    {
      v31 = *(v24 - 2);
      v32 = *(v24 - 1);
      v33 = *(v24 - 3);
      v30 = *(v24 - 5);
      goto LABEL_20;
    }
    v30 = *(v24 - 5);
    if ( v30 )
    {
      v31 = *(v24 - 2);
      v32 = *(v24 - 1);
      v33 = *(v24 - 3);
LABEL_20:
      v42 = 15137 * v25 - 6270 * v31;
      v34 = -4926 * v33 - 4176 * v32 + 20995 * v27 + 7373 * v30;
      v35 = *(v24 - 8) << 14;
      v36 = v42 + v35 + 0x40000;
      *(_BYTE *)(v28 + a5) = *(_BYTE *)((((unsigned int)(v36 + v34) >> 19) & 0x3FF) + v43);
      v37 = 11893 * v33 - 1730 * v32 + 8697 * v27 - 17799 * v30;
      v25 = v35 - v42 + 0x40000;
      v29[3] = *(_BYTE *)((((unsigned int)(v36 - v34) >> 19) & 0x3FF) + v43);
      v29[1] = *(_BYTE *)((((unsigned int)(v25 + v37) >> 19) & 0x3FF) + v43);
      result = *(unsigned __int8 *)((((unsigned int)(v25 - v37) >> 19) & 0x3FF) + v43);
      v29[2] = result;
      goto LABEL_21;
    }
    v33 = *(v24 - 3);
    if ( v33 )
    {
      v31 = *(v24 - 2);
      v32 = *(v24 - 1);
      goto LABEL_20;
    }
    v31 = *(v24 - 2);
    if ( v31 )
    {
      v32 = *(v24 - 1);
      goto LABEL_20;
    }
    v32 = *(v24 - 1);
    if ( v32 )
      goto LABEL_20;
    result = *(unsigned __int8 *)((((unsigned int)(*(v24 - 8) + 16) >> 5) & 0x3FF) + v43);
    *(_BYTE *)(v28 + a5) = result;
    v29[3] = result;
    v29[1] = result;
    v29[2] = result;
LABEL_21:
    v24 += 8;
  }
  return result;
}


// ===== 6f5cb0 jpeg_idct_2x2 =====
unsigned int __fastcall jpeg_idct_2x2(int a1, int a2, int a3, int a4, int a5)
{
  int *v5; // r4
  _WORD *v6; // r2
  _DWORD *v7; // r0
  int v8; // r12
  int v9; // r3
  __int16 v10; // r5
  __int16 v11; // r6
  __int16 v12; // r10
  int v13; // r7
  int v14; // r8
  bool v15; // zf
  int *v16; // r3
  int i; // r2
  int v18; // r0
  int v19; // r1
  int v20; // r7
  int v21; // r5
  int v22; // r6
  int v23; // r8
  int v24; // r10
  int v25; // r5
  unsigned int result; // r0
  int v27; // r1
  int v28; // [sp+14h] [bp-4Ch]
  int v30; // [sp+24h] [bp-3Ch] BYREF
  int v31; // [sp+40h] [bp-20h] BYREF

  v28 = *(_DWORD *)(a1 + 288) + 128;
  v5 = &v30;
  v6 = (_WORD *)(a3 + 2);
  v7 = (_DWORD *)(*(_DWORD *)(a2 + 80) + 4);
  v8 = 7;
  v9 = 8;
  while ( 1 )
  {
    v15 = v9 == 6;
    if ( v9 != 6 )
      v15 = v9 == 4;
    if ( v15 )
      goto LABEL_5;
    if ( v9 != 2 )
      break;
LABEL_6:
    --v9;
    ++v6;
    ++v7;
    ++v5;
    --v8;
  }
  if ( v6[7] )
  {
    v11 = v6[55];
    v12 = v6[39];
    v10 = v6[23];
    goto LABEL_4;
  }
  v10 = v6[23];
  if ( v10 )
  {
    v11 = v6[55];
    v12 = v6[39];
LABEL_4:
    v13 = v12 * 6967 * v7[39] + v11 * -5906 * v7[55] + (__int16)v6[7] * 29692 * v7[7] + v10 * -10426 * v7[23];
    v14 = ((*(v7 - 1) * (__int16)*(v6 - 1)) << 15) + 4096;
    *(v5 - 1) = (v13 + v14) >> 13;
    v5[7] = (v14 - v13) >> 13;
    goto LABEL_5;
  }
  v12 = v6[39];
  if ( v12 )
  {
    v11 = v6[55];
    goto LABEL_4;
  }
  v11 = v6[55];
  if ( v11 )
    goto LABEL_4;
  v27 = 4 * *(v7 - 1) * (__int16)*(v6 - 1);
  v5[7] = v27;
  *(v5 - 1) = v27;
LABEL_5:
  if ( v8 > 0 )
    goto LABEL_6;
  v16 = &v31;
  for ( i = 0; i != 8; i += 4 )
  {
    v18 = *(v16 - 7);
    v19 = *(_DWORD *)(a4 + i);
    v20 = v19 + a5;
    if ( v18 )
    {
      v22 = *(v16 - 1);
      v23 = *(v16 - 3);
      v21 = *(v16 - 5);
      goto LABEL_17;
    }
    v21 = *(v16 - 5);
    if ( v21 )
    {
      v22 = *(v16 - 1);
      v23 = *(v16 - 3);
LABEL_17:
      v24 = (*(v16 - 8) << 15) + 0x80000;
      v25 = 6967 * v23 - 5906 * v22 + 29692 * v18 - 10426 * v21;
      result = ((unsigned int)(v25 + v24) >> 20) & 0x3FF;
      *(_BYTE *)(v19 + a5) = *(_BYTE *)(result + v28);
      *(_BYTE *)(v20 + 1) = *(_BYTE *)((((unsigned int)(v24 - v25) >> 20) & 0x3FF) + v28);
      goto LABEL_18;
    }
    v23 = *(v16 - 3);
    if ( v23 )
    {
      v22 = *(v16 - 1);
      goto LABEL_17;
    }
    v22 = *(v16 - 1);
    if ( v22 )
      goto LABEL_17;
    result = *(unsigned __int8 *)((((unsigned int)(*(v16 - 8) + 16) >> 5) & 0x3FF) + v28);
    *(_BYTE *)(v19 + a5) = result;
    *(_BYTE *)(v20 + 1) = result;
LABEL_18:
    v16 += 8;
  }
  return result;
}


// ===== 6f5f20 jpeg_idct_1x1 =====
unsigned int __fastcall jpeg_idct_1x1(int a1, int a2, __int16 *a3, _DWORD *a4, int a5)
{
  unsigned int result; // r0

  result = *(_DWORD *)(a1 + 288) + (((unsigned int)(**(_DWORD **)(a2 + 80) * *a3 + 4) >> 3) & 0x3FF);
  *(_BYTE *)(*a4 + a5) = *(_BYTE *)(result + 128);
  return result;
}


// ===== 6f5f54 jpeg_mem_available =====
int __fastcall jpeg_mem_available(int a1, int a2, int a3)
{
  return a3;
}


// ===== 6f5f5c jpeg_open_backing_store =====
int __fastcall jpeg_open_backing_store(int a1)
{
  *(_DWORD *)(*(_DWORD *)a1 + 20) = 49;
  return (**(int (__fastcall ***)(int))a1)(a1);
}


// ===== 6f5f7c jpeg_mem_init =====
int jpeg_mem_init()
{
  return 0;
}


// ===== 6f5f84 jpeg_mem_term =====
void jpeg_mem_term()
{
  ;
}


// ===== 6f5f88 jpeg_free_large =====
void __fastcall jpeg_free_large(int a1, void *p)
{
  glitch_free(p);
}


// ===== 6f5f90 jpeg_free_small =====
void __fastcall jpeg_free_small(int a1, void *p)
{
  glitch_free(p);
}


// ===== 6f5f98 jpeg_get_large =====
int __fastcall jpeg_get_large(int a1, int a2)
{
  return glitch_malloc(a2);
}


// ===== 6f5fa0 jpeg_get_small =====
int __fastcall jpeg_get_small(int a1, int a2)
{
  return glitch_malloc(a2);
}


// ===== 6f5fa8 glitch::scene::CAnimatedMeshSceneNode::getMesh(void) =====
_DWORD *__fastcall glitch::scene::CAnimatedMeshSceneNode::getMesh(_DWORD *this, int a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(a2 + 304);
  *this = v2;
  if ( v2 )
    ++*(_DWORD *)(v2 + 4);
  return this;
}


// ===== 6f5fc4 glitch::scene::CAnimatedMeshSceneNode::getType(void) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::getType(glitch::scene::CAnimatedMeshSceneNode *this)
{
  return 1752395105;
}


// ===== 6f5fd0 glitch::scene::CAnimatedMeshSceneNode::getFrameNr(void) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::getFrameNr(glitch::scene::CAnimatedMeshSceneNode *this)
{
  return *((_DWORD *)this + 81);
}


// ===== 6f5fd8 glitch::scene::CAnimatedMeshSceneNode::buildFrameNr(uint) =====
float __fastcall glitch::scene::CAnimatedMeshSceneNode::buildFrameNr(
        glitch::scene::CAnimatedMeshSceneNode *this,
        unsigned int a2)
{
  float v3; // r0
  int v4; // r5
  int v5; // r7
  float v6; // r6
  unsigned int v7; // r10
  int v8; // r0
  float v10; // r5
  float v11; // r6
  int v12; // r3
  float v13; // r0

  if ( *((float *)this + 83) != 0.0 )
  {
    v3 = *((float *)this + 83) * (float)(a2 - *((_DWORD *)this + 77));
    *((float *)this + 84) = v3;
    if ( v3 > 1.0 )
    {
      *((_DWORD *)this + 84) = 0;
      *((_DWORD *)this + 83) = 0;
    }
  }
  v4 = *((_DWORD *)this + 78);
  v5 = *((_DWORD *)this + 79);
  if ( v4 == v5 )
    return (float)v4;
  v6 = *((float *)this + 80);
  if ( v6 == 0.0 )
    return (float)v4;
  if ( !*((_BYTE *)this + 340) )
  {
    if ( v6 <= 0.0 )
    {
      v11 = (float)v5 - (float)((float)(a2 - *((_DWORD *)this + 77)) * COERCE_FLOAT(LODWORD(v6) + 0x80000000));
      v13 = (float)v4;
      v10 = (float)v4;
      if ( v13 > v11 )
      {
LABEL_15:
        v12 = *((_DWORD *)this + 86);
        if ( v12 )
          (*(void (__fastcall **)(_DWORD, glitch::scene::CAnimatedMeshSceneNode *))(*(_DWORD *)v12 + 12))(
            *((_DWORD *)this + 86),
            this);
        return v10;
      }
    }
    else
    {
      v11 = (float)v4 + (float)(v6 * (float)(a2 - *((_DWORD *)this + 77)));
      v10 = (float)v5;
      if ( (float)v5 < v11 )
        goto LABEL_15;
    }
    return v11;
  }
  v7 = abs32((int)(float)((float)(v5 - v4) / v6));
  if ( v6 <= 0.0 )
    v8 = *((_DWORD *)this + 79);
  else
    v8 = *((_DWORD *)this + 78);
  return (float)v8 + (float)(v6 * (float)((a2 - *((_DWORD *)this + 77)) % v7));
}


// ===== 6f61d0 glitch::scene::CAnimatedMeshSceneNode::getStartFrame(void) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::getStartFrame(glitch::scene::CAnimatedMeshSceneNode *this)
{
  return *((_DWORD *)this + 78);
}


// ===== 6f61d8 glitch::scene::CAnimatedMeshSceneNode::getEndFrame(void) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::getEndFrame(glitch::scene::CAnimatedMeshSceneNode *this)
{
  return *((_DWORD *)this + 79);
}


// ===== 6f61e0 glitch::scene::CAnimatedMeshSceneNode::setFrameLoop(int,int) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::setFrameLoop(
        glitch::scene::CAnimatedMeshSceneNode *this,
        int a2,
        int a3)
{
  int v6; // r0
  int v7; // r3
  bool v8; // zf
  int v9; // r5
  int v10; // r0
  int v11; // r2
  int v12; // r6
  int v13; // r2
  bool v15; // zf
  int v16; // r6
  int v17; // r2
  int v18; // r5
  int v19; // r2

  v6 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 48))(*((_DWORD *)this + 76));
  v7 = v6 - 1;
  if ( a3 < a2 )
  {
    if ( a3 < 0 )
      a3 = 0;
    v15 = a3 - v7 >= 0;
    if ( a3 - v7 >= 0 )
      --v6;
    v16 = ((a3 - v7) >> 31) & a3;
    if ( !v15 )
      v6 = 0;
    v10 = v6 | v16;
    v17 = (a2 - v10) >> 31;
    if ( a2 - v10 < 0 )
      a2 = 0;
    v18 = a2 | v17 & v10;
    v19 = (v18 - v7) >> 31;
    if ( v18 - v7 < 0 )
      v7 = 0;
    *((_DWORD *)this + 79) = v7 | v19 & v18;
    *((_DWORD *)this + 78) = v10;
  }
  else
  {
    if ( a2 < 0 )
      a2 = 0;
    v8 = a2 - v7 >= 0;
    if ( a2 - v7 >= 0 )
      --v6;
    v9 = ((a2 - v7) >> 31) & a2;
    if ( !v8 )
      v6 = 0;
    v10 = v6 | v9;
    v11 = (a3 - v10) >> 31;
    if ( a3 - v10 < 0 )
      a3 = 0;
    v12 = a3 | v11 & v10;
    v13 = (v12 - v7) >> 31;
    if ( v12 - v7 < 0 )
      v7 = 0;
    *((_DWORD *)this + 79) = v7 | v13 & v12;
    *((_DWORD *)this + 78) = v10;
  }
  (*(void (__fastcall **)(glitch::scene::CAnimatedMeshSceneNode *, float))(*(_DWORD *)this + 244))(this, (float)v10);
  return 1;
}


// ===== 6f62ec glitch::scene::CAnimatedMeshSceneNode::setAnimationSpeed(float) =====
float __fastcall glitch::scene::CAnimatedMeshSceneNode::setAnimationSpeed(
        glitch::scene::CAnimatedMeshSceneNode *this,
        float a2)
{
  *((float *)this + 80) = a2 * 0.001;
  return a2 * 0.001;
}


// ===== 6f630c glitch::scene::CAnimatedMeshSceneNode::getBoundingBox(void) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::getBoundingBox(glitch::scene::CAnimatedMeshSceneNode *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 76) + 36))(*((_DWORD *)this + 76));
}


// ===== 6f6328 glitch::scene::CAnimatedMeshSceneNode::getMaterial(uint) =====
glitch::scene::CAnimatedMeshSceneNode *__fastcall glitch::scene::CAnimatedMeshSceneNode::getMaterial(
        glitch::scene::CAnimatedMeshSceneNode *this,
        _DWORD **a2,
        unsigned int a3)
{
  if ( ((int (__fastcall *)(_DWORD **))(*a2)[34])(a2) > a3 )
    (*(void (__fastcall **)(glitch::scene::CAnimatedMeshSceneNode *, _DWORD *, unsigned int))(*a2[76] + 24))(
      this,
      a2[76],
      a3);
  else
    *(_DWORD *)this = 0;
  return this;
}


// ===== 6f6384 glitch::scene::CAnimatedMeshSceneNode::getMaterialCount(void) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::getMaterialCount(glitch::scene::CAnimatedMeshSceneNode *this)
{
  int v1; // r3

  v1 = *((_DWORD *)this + 76);
  if ( v1 )
    return (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 16))(*((_DWORD *)this + 76));
  else
    return 0;
}


// ===== 6f63b0 glitch::scene::CAnimatedMeshSceneNode::setLoopMode(bool) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::setLoopMode(int this, bool a2)
{
  *(_BYTE *)(this + 340) = a2;
  return this;
}


// ===== 6f63b8 glitch::scene::CAnimatedMeshSceneNode::setAnimationEndCallback(glitch::scene::IAnimationEndCallBack *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CAnimatedMeshSceneNode::setAnimationEndCallback(int a1, int a2)
{
  glitch::IReferenceCounted *result; // r0

  result = *(glitch::IReferenceCounted **)(a1 + 344);
  if ( result )
    result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
  *(_DWORD *)(a1 + 344) = a2;
  if ( a2 )
    ++*(_DWORD *)(a2 + 4);
  return result;
}


// ===== 6f63ec glitch::scene::CAnimatedMeshSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::setMesh(int result, _DWORD **a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r5
  glitch::IReferenceCounted *v4; // r0
  int (__fastcall *v5)(_DWORD *, _DWORD, int); // r4
  int v6; // r0

  v2 = *a2;
  v3 = (_DWORD *)result;
  if ( *a2 )
  {
    ++v2[1];
    v4 = *(glitch::IReferenceCounted **)(result + 304);
    v3[76] = v2;
    if ( v4 )
    {
      glitch::IReferenceCounted::drop(v4);
      v2 = (_DWORD *)v3[76];
    }
    v5 = *(int (__fastcall **)(_DWORD *, _DWORD, int))(*v3 + 248);
    v6 = (*(int (__fastcall **)(_DWORD *))(*v2 + 48))(v2);
    return v5(v3, 0, v6);
  }
  return result;
}


// ===== 6f6450 glitch::scene::CAnimatedMeshSceneNode::setRenderFromIdentity(bool) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::setRenderFromIdentity(int this, bool a2)
{
  *(_BYTE *)(this + 368) = a2;
  return this;
}


// ===== 6f6458 `global constructor keyed to'.._source_glitch_scene_CAnimatedMeshSceneNode.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CAnimatedMeshSceneNode.cpp()
{
  dword_9F83B4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83B0 = 1056964608;
}


// ===== 6f6478 glitch::scene::CAnimatedMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::serializeAttributes(int a1, int a2, _DWORD *a3)
{
  void (__fastcall *v5)(int, char *, int, _DWORD); // r6
  int (*v6)(void); // r3
  int v7; // r0
  glitch::IReferenceCounted *v9; // [sp+4h] [bp-4h]

  glitch::scene::ISceneNode::serializeAttributes(a1, a2, a3);
  v5 = *(void (__fastcall **)(int, char *, int, _DWORD))(*(_DWORD *)a2 + 124);
  v6 = *(int (**)(void))(**(_DWORD **)(*(_DWORD *)(a1 + 272) + 368) + 48);
  v9 = *(glitch::IReferenceCounted **)(a1 + 304);
  if ( v9 )
    ++*((_DWORD *)v9 + 1);
  v7 = v6();
  v5(a2, "Mesh", v7, 0);
  if ( v9 )
    glitch::IReferenceCounted::drop(v9);
  (*(void (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 216))(
    a2,
    "Looping",
    *(unsigned __int8 *)(a1 + 340),
    0);
  return (*(int (__fastcall **)(int, const char *, _DWORD, _DWORD))(*(_DWORD *)a2 + 100))(
           a2,
           "FramesPerSecond",
           *(_DWORD *)(a1 + 320),
           0);
}


// ===== 6f6540 glitch::scene::CAnimatedMeshSceneNode::onAnimate(uint) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::onAnimate(
        glitch::scene::CAnimatedMeshSceneNode *this,
        unsigned int a2)
{
  *((float *)this + 81) = glitch::scene::CAnimatedMeshSceneNode::buildFrameNr(this, a2);
  return glitch::scene::ISceneNode::onAnimate((int)this, a2);
}


// ===== 6f6564 glitch::scene::CAnimatedMeshSceneNode::removeChild(glitch::scene::ISceneNode *) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::removeChild(
        glitch::scene::ISceneNode **this,
        glitch::scene::ISceneNode *a2)
{
  glitch::scene::ISceneNode *v3; // r3

  if ( !a2 )
    return glitch::scene::ISceneNode::removeChild((glitch::scene::ISceneNode *)this, a2);
  v3 = *(this + 88);
  if ( v3 != a2 )
    return glitch::scene::ISceneNode::removeChild((glitch::scene::ISceneNode *)this, a2);
  glitch::IReferenceCounted::drop((glitch::scene::ISceneNode *)((char *)v3 + *(_DWORD *)(*(_DWORD *)v3 - 12)));
  *(this + 88) = nullptr;
  return 1;
}


// ===== 6f65ac glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode() =====
void __fastcall glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode(
        glitch::scene::IAnimatedMeshSceneNode *this)
{
  *(_DWORD *)this = off_98BF24;
  *((_DWORD *)this + 76) = off_98C058;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_98C06C);
}


// ===== 6f65f8 `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode(
        glitch::scene::IAnimatedMeshSceneNode *this)
{
  glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode((glitch::scene::IAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f6608 `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode(
        glitch::scene::IAnimatedMeshSceneNode *this)
{
  glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode((glitch::scene::IAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f6618 glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() =====
void __fastcall glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(
        glitch::scene::CAnimatedMeshSceneNode *this)
{
  _DWORD *v1; // r2
  glitch::IReferenceCounted *v3; // r0
  int v4; // r3
  glitch::IReferenceCounted *v5; // r0

  v1 = *((_DWORD **)this + 88);
  *(_DWORD *)this = off_98C20C;
  *((_DWORD *)this + 93) = off_98C340;
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  v3 = *((glitch::IReferenceCounted **)this + 86);
  if ( v3 )
    glitch::IReferenceCounted::drop(v3);
  v4 = *((_DWORD *)this + 89);
  if ( v4 )
    GlitchFree(*(void **)(v4 - 4));
  v5 = *((glitch::IReferenceCounted **)this + 76);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
  *(_DWORD *)this = off_98C39C;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98C39C;
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = off_98C4D0;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_98C358);
}


// ===== 6f66dc glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() =====
void __fastcall glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(
        glitch::scene::CAnimatedMeshSceneNode *this)
{
  glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(this);
  LC_API_FREE_0(this);
}


// ===== 6f66f8 glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() =====
void __fastcall glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(
        glitch::scene::CAnimatedMeshSceneNode *this,
        int *a2)
{
  int v2; // r3
  _DWORD *v5; // r3
  glitch::IReferenceCounted *v6; // r0
  int v7; // r3
  glitch::IReferenceCounted *v8; // r0
  int v9; // r3
  int *v10; // r5

  v2 = *a2;
  *(_DWORD *)this = *a2;
  *(_DWORD *)((char *)this + *(_DWORD *)(v2 - 28)) = a2[7];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = a2[8];
  v5 = *((_DWORD **)this + 88);
  if ( v5 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v5 + *(_DWORD *)(*v5 - 12)));
  v6 = *((glitch::IReferenceCounted **)this + 86);
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  v7 = *((_DWORD *)this + 89);
  if ( v7 )
    GlitchFree(*(void **)(v7 - 4));
  v8 = *((glitch::IReferenceCounted **)this + 76);
  if ( v8 )
    glitch::IReferenceCounted::drop(v8);
  v9 = a2[1];
  v10 = a2 + 1;
  *(_DWORD *)this = v9;
  *(_DWORD *)((char *)this + *(_DWORD *)(v9 - 28)) = v10[4];
  *(_DWORD *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)) = v10[5];
  glitch::scene::ISceneNode::~ISceneNode(this, v10 + 1);
}


// ===== 6f67b4 std::priv::__copy<glitch::core::CMatrix4<float> const*,glitch::core::CMatrix4<float>*,int>(glitch::core::CMatrix4<float> const*,glitch::core::CMatrix4<float> const*,glitch::core::CMatrix4<float>*,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<glitch::core::CMatrix4<float> const*,glitch::core::CMatrix4<float>*,int>(
        int a1,
        int a2,
        int a3)
{
  int v3; // r3
  int v6; // r8
  int v7; // r5
  int v8; // r4

  v3 = (a2 - a1) >> 2;
  v6 = -252645135 * v3;
  if ( -252645135 * v3 > 0 )
  {
    v7 = -252645135 * v3;
    v8 = 0;
    do
    {
      memcpy((void *)(a3 + v8), (const void *)(a1 + v8), 0x41u);
      --v7;
      v8 += 68;
    }
    while ( v7 );
    a3 += 68 * v6;
  }
  return a3;
}


// ===== 6f6818 glitch::scene::CAnimatedMeshSceneNode::addShadowVolumeSceneNode(boost::intrusive_ptr<glitch::scene::IMesh const> const&,int,bool,float) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::addShadowVolumeSceneNode(
        int *a1,
        glitch::IReferenceCounted **a2,
        int a3,
        int a4,
        int a5)
{
  glitch::IReferenceCounted *v5; // r1
  int v6; // r8
  int v9; // r2
  int v10; // r6
  int v11; // r4
  void *v12; // r0
  int v13; // r12
  void *v14; // r5
  int v15; // r3
  glitch::IReferenceCounted *v17; // r3
  glitch::IReferenceCounted *v18; // r0
  glitch::IReferenceCounted *v19; // [sp+Ch] [bp-4h] BYREF

  v5 = *a2;
  v6 = a4;
  v19 = v5;
  if ( v5 )
    a4 = *((_DWORD *)v5 + 1);
  if ( v5 )
    *((_DWORD *)v5 + 1) = a4 + 1;
  v9 = a1[68];
  v10 = *(_DWORD *)(v9 + 20);
  if ( (*(_DWORD *)(v10 + 156) & 8) != 0 )
  {
    if ( a1[88] )
    {
      v11 = 0;
      glitch::os::Printer::log((int)"This node already has a shadow.", 2);
    }
    else
    {
      if ( !v19 )
      {
        v17 = (glitch::IReferenceCounted *)a1[76];
        if ( v17 )
        {
          ++*((_DWORD *)v17 + 1);
          v18 = v19;
          v19 = v17;
          if ( v18 )
            glitch::IReferenceCounted::drop(v18);
          v10 = *(_DWORD *)(a1[68] + 20);
        }
        else
        {
          v19 = nullptr;
          v10 = *(_DWORD *)(v9 + 20);
        }
      }
      v12 = operator new(0x194u, 0);
      if ( v6 )
        v13 = 32;
      else
        v13 = 16;
      v14 = v12;
      glitch::scene::CShadowVolumeSceneNode::CShadowVolumeSceneNode(v12, v10, &v19, a3, v13, a5);
      v15 = *a1;
      a1[88] = (int)v14;
      (*(void (__fastcall **)(int *, void *))(v15 + 92))(a1, v14);
      glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)(a1[88] + *(_DWORD *)(*(_DWORD *)a1[88] - 12)));
      v11 = a1[88];
    }
  }
  else
  {
    v11 = 0;
  }
  if ( v19 )
    glitch::IReferenceCounted::drop(v19);
  return v11;
}


// ===== 6f6958 glitch::scene::CAnimatedMeshSceneNode::onRegisterSceneNode(void) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::onRegisterSceneNode(glitch::scene::CAnimatedMeshSceneNode *this)
{
  int v1; // r6
  int v3; // r9
  int v4; // r7
  int v5; // r4
  glitch::video::CMaterial *v6; // r11
  int v7; // r11
  bool v8; // zf
  int v9; // r0
  void (__fastcall *v10)(int, glitch::scene::CAnimatedMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  int v11; // r0
  void (__fastcall *v12)(int, glitch::scene::CAnimatedMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  int v13; // r0
  void (__fastcall *v14)(int, glitch::scene::CAnimatedMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int); // r12
  glitch::video::CMaterial *v16; // [sp+10h] [bp-14h] BYREF
  glitch::video::CMaterial *v17; // [sp+14h] [bp-10h] BYREF
  glitch::video::CMaterial *v18; // [sp+18h] [bp-Ch] BYREF
  glitch::video::CMaterial *v19; // [sp+1Ch] [bp-8h] BYREF

  v1 = 0;
  *((_DWORD *)this + 87) = 0;
  v3 = (*(int (__fastcall **)(glitch::scene::CAnimatedMeshSceneNode *))(*(_DWORD *)this + 136))(this);
  if ( v3 )
  {
    v4 = 0;
    v5 = 0;
    do
    {
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, int))(**((_DWORD **)this + 76) + 24))(
        &v19,
        *((_DWORD *)this + 76),
        v1);
      v6 = v19;
      ++v1;
      v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v6 + 1) + 24)
                                 + 12 * glitch::video::CMaterial::getTechnique(v19)
                                 + 8)
                     + 4);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v19);
      if ( (v7 & 0x10000) != 0 )
        ++v5;
      else
        ++v4;
      v8 = v5 == 0;
      if ( v5 )
        v8 = v4 == 0;
      if ( !v8 )
        goto LABEL_10;
    }
    while ( v1 != v3 );
    if ( v4 )
    {
LABEL_10:
      v9 = *((_DWORD *)this + 68);
      v10 = *(void (__fastcall **)(int, glitch::scene::CAnimatedMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v9 + 36);
      v18 = nullptr;
      v10(v9, this, &v18, 0, 4, 0, 0x7FFFFFFF);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v18);
    }
    if ( v5 )
    {
      v11 = *((_DWORD *)this + 68);
      v12 = *(void (__fastcall **)(int, glitch::scene::CAnimatedMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v11 + 36);
      v17 = nullptr;
      v12(v11, this, &v17, 0, 8, 0, 0x7FFFFFFF);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v17);
    }
  }
  if ( *((_DWORD *)this + 76) && (*((_DWORD *)this + 71) & 0x800) != 0 )
  {
    v13 = *((_DWORD *)this + 68);
    v14 = *(void (__fastcall **)(int, glitch::scene::CAnimatedMeshSceneNode *, glitch::video::CMaterial **, _DWORD, int, _DWORD, int))(*(_DWORD *)v13 + 36);
    v16 = nullptr;
    v14(v13, this, &v16, 0, 7, 0, 0x7FFFFFFF);
    boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v16);
  }
  return 1;
}


// ===== 6f6af8 glitch::scene::CAnimatedMeshSceneNode::setCurrentFrame(float) =====
unsigned int __fastcall glitch::scene::CAnimatedMeshSceneNode::setCurrentFrame(
        glitch::scene::CAnimatedMeshSceneNode *this,
        float a2)
{
  float v3; // r5
  float v4; // r6
  _BOOL4 v5; // r0
  unsigned int result; // r0

  v3 = (float)*((int *)this + 78);
  v4 = (float)*((int *)this + 79);
  if ( v3 <= a2 )
    v3 = a2;
  v5 = (float)*((int *)this + 79) > v3;
  if ( v4 <= v3 )
    v3 = (float)*((int *)this + 79);
  *((float *)this + 81) = v3;
  result = glitch::os::Timer::getTime((glitch::os::Timer *)v5)
         - (int)(float)((float)(*((float *)this + 81) - (float)*((int *)this + 78)) / *((float *)this + 80));
  *((_DWORD *)this + 77) = result;
  return result;
}


// ===== 6f6b7c glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(
        int a1,
        _DWORD **a2,
        int a3,
        _DWORD *a4,
        _DWORD *a5,
        _DWORD *a6)
{
  *(_DWORD *)(a1 + 376) = 1;
  *(_DWORD *)a1 = off_98C61C;
  *(_DWORD *)(a1 + 372) = off_95B720;
  *(int *)((char *)&elf_hash_bucket[38] + a1) = (int)off_98C63C;
  glitch::scene::ISceneNode::ISceneNode(a1, (int *)off_98C358, a3, a4, a5, a6);
  *(_DWORD *)a1 = off_98C39C;
  *(int *)((char *)&dword_0 + a1) = (int)off_98C39C;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_98C4D0;
  *(_DWORD *)a1 = off_98C20C;
  *(_DWORD *)(a1 + 320) = 1020054733;
  *(_DWORD *)(a1 + 336) = 0;
  *(_BYTE *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_DWORD *)(a1 + 372) = off_98C340;
  *(_BYTE *)(a1 + 340) = 1;
  *(_DWORD *)(a1 + 308) = glitch::os::Timer::getTime((glitch::os::Timer *)off_98C340);
  glitch::scene::CAnimatedMeshSceneNode::setMesh(a1, a2);
  return a1;
}


// ===== 6f6ca0 glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&,int,glitch::core::vector3d<float> const&,glitch::core::quaternion const&,glitch::core::vector3d<float> const&) =====
int __fastcall glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(
        int a1,
        int *a2,
        _DWORD **a3,
        int a4,
        _DWORD *a5,
        _DWORD *a6,
        _DWORD *a7)
{
  _DWORD *v7; // r6
  int v11; // r3
  int v12; // r1
  glitch::os::Timer *v13; // r0

  v7 = a2 + 1;
  glitch::scene::ISceneNode::ISceneNode(a1, a2 + 2, a4, a5, a6, a7);
  v11 = a2[1];
  *(_DWORD *)a1 = v11;
  *(_DWORD *)(a1 + *(_DWORD *)(v11 - 28)) = v7[4];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = v7[5];
  v12 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v12 - 28)) = a2[7];
  v13 = (glitch::os::Timer *)a2[8];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = v13;
  *(_DWORD *)(a1 + 320) = 1020054733;
  *(_DWORD *)(a1 + 336) = 0;
  *(_BYTE *)(a1 + 340) = 1;
  *(_DWORD *)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 308) = 0;
  *(_DWORD *)(a1 + 312) = 0;
  *(_DWORD *)(a1 + 316) = 0;
  *(_DWORD *)(a1 + 324) = 0;
  *(_DWORD *)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 332) = 0;
  *(_DWORD *)(a1 + 344) = 0;
  *(_DWORD *)(a1 + 348) = 0;
  *(_DWORD *)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 356) = 0;
  *(_DWORD *)(a1 + 360) = 0;
  *(_DWORD *)(a1 + 364) = 0;
  *(_BYTE *)(a1 + 368) = 0;
  *(_DWORD *)(a1 + 308) = glitch::os::Timer::getTime(v13);
  glitch::scene::CAnimatedMeshSceneNode::setMesh(a1, a3);
  return a1;
}


// ===== 6f6d98 glitch::scene::CAnimatedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall glitch::scene::CAnimatedMeshSceneNode::deserializeAttributes(int a1, int *a2, _DWORD *a3)
{
  int (*v5)(void); // r3
  const char *v6; // r0
  char *v7; // r10
  size_t v8; // r0
  int v9; // r0
  char *v10; // r3
  char *v11; // r5
  glitch::IReferenceCounted *v12; // [sp+4h] [bp-20h] BYREF
  glitch::IReferenceCounted *v13; // [sp+8h] [bp-1Ch]
  _BYTE v14[16]; // [sp+Ch] [bp-18h] BYREF
  char *v15; // [sp+1Ch] [bp-8h]
  void *p; // [sp+20h] [bp-4h]
  _DWORD v17[4]; // [sp+24h] [bp+0h] BYREF
  char *v18; // [sp+34h] [bp+10h]
  void *v19; // [sp+38h] [bp+14h]

  glitch::scene::ISceneNode::deserializeAttributes(a1, a2, a3);
  v5 = *(int (**)(void))(**(_DWORD **)(*(_DWORD *)(a1 + 272) + 368) + 48);
  v13 = *(glitch::IReferenceCounted **)(a1 + 304);
  if ( v13 )
    ++*((_DWORD *)v13 + 1);
  v6 = (const char *)v5();
  v18 = (char *)v17;
  v7 = (char *)v6;
  v19 = v17;
  v8 = LC_API_STRLEN_0(v6);
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_range_initialize(
    v17,
    v7,
    &v7[v8]);
  if ( v13 )
    glitch::IReferenceCounted::drop(v13);
  (*(void (__fastcall **)(_BYTE *, int *, char *))(*a2 + 132))(v14, a2, "Mesh");
  *(_BYTE *)(a1 + 340) = (*(int (__fastcall **)(int *, const char *))(*a2 + 228))(a2, "Looping");
  v9 = (*(int (__fastcall **)(int *, const char *))(*a2 + 112))(a2, "FramesPerSecond");
  v10 = v15;
  v11 = (char *)p;
  *(_DWORD *)(a1 + 320) = v9;
  if ( v10 != v11 && (v18 - (_BYTE *)v19 != v10 - v11 || memcmp(v19, v11, v18 - (_BYTE *)v19)) )
  {
    glitch::scene::CSceneManager::getMesh((glitch::scene::CSceneManager *)&v12, *(const char **)(a1 + 272), v11);
    if ( v12 )
    {
      (*(void (__fastcall **)(int, glitch::IReferenceCounted **))(*(_DWORD *)a1 + 280))(a1, &v12);
      if ( v12 )
        glitch::IReferenceCounted::drop(v12);
    }
    v11 = (char *)p;
  }
  if ( v11 != v14 && v11 )
    GlitchFree(v11);
  if ( v19 != v17 )
  {
    if ( v19 )
      GlitchFree(v19);
  }
}


// ===== 6f6f68 glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&,glitch::core::CMatrix4<float>::eConstructor) [clone] =====
_BYTE *__fastcall glitch::core::CMatrix4<float>::CMatrix4(_BYTE *a1, const void *a2)
{
  a1[64] = 0;
  memcpy(a1, a2, 0x41u);
  return a1;
}


// ===== 6f6f88 std::vector<glitch::core::CMatrix4<float>,glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>,(uchar)4>>::_M_allocate_and_copy<glitch::core::CMatrix4<float> const*>(uint &,glitch::core::CMatrix4<float> const*,glitch::core::CMatrix4<float> const*) =====
unsigned int __fastcall std::vector<glitch::core::CMatrix4<float>,glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>,(unsigned char)4>>::_M_allocate_and_copy<glitch::core::CMatrix4<float> const*>(
        int a1,
        _DWORD *a2,
        char *a3,
        int a4)
{
  void *v6; // r0
  unsigned int v7; // r7
  int v8; // r5
  _BYTE *v9; // r6

  v6 = GlitchAlloc(68 * *a2 + 7, 0);
  v7 = ((unsigned int)v6 + 7) & 0xFFFFFFFC;
  *(_DWORD *)(v7 - 4) = v6;
  v8 = -252645135 * ((a4 - (int)a3) >> 2);
  if ( v8 > 0 )
  {
    v9 = (_BYTE *)(((unsigned int)v6 + 7) & 0xFFFFFFFC);
    do
    {
      glitch::core::CMatrix4<float>::CMatrix4(v9, a3);
      --v8;
      a3 += 68;
      v9 += 68;
    }
    while ( v8 );
  }
  return v7;
}


// ===== 6f7004 std::vector<glitch::core::CMatrix4<float>,glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>,(uchar)4>>::operator=(std::vector<glitch::core::CMatrix4<float>,glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>,(uchar)4>> const&) =====
int *__fastcall std::vector<glitch::core::CMatrix4<float>,glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>,(unsigned char)4>>::operator=(
        int *a1,
        int a2)
{
  int v4; // r3
  char *v5; // r12
  int v6; // r2
  int v7; // lr
  unsigned int v8; // r6
  int v9; // r9
  int v11; // r8
  int v12; // r10
  int v13; // r7
  int v14; // r5
  unsigned int v15; // r0
  int v16; // r3
  int v17; // r3
  int v18; // [sp+Ch] [bp-Ch] BYREF

  if ( (int *)a2 != a1 )
  {
    v4 = *(_DWORD *)(a2 + 4);
    v5 = *(char **)a2;
    v6 = *a1;
    v7 = (v4 - *(_DWORD *)a2) >> 2;
    v8 = -252645135 * v7;
    if ( -252645135 * v7 > (unsigned int)(-252645135 * ((a1[2] - *a1) >> 2)) )
    {
      v18 = -252645135 * v7;
      v15 = std::vector<glitch::core::CMatrix4<float>,glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>,(unsigned char)4>>::_M_allocate_and_copy<glitch::core::CMatrix4<float> const*>(
              (int)a1,
              &v18,
              v5,
              v4);
      v16 = a1[1];
      v9 = v15;
      if ( v16 != *a1 )
        v16 += -68 * ((821096689 * ((unsigned int)(v16 - 68 - *a1) >> 2)) & 0x3FFFFFFF) - 68;
      GlitchFree(*(void **)(v16 - 4));
      v17 = v18;
      *a1 = v9;
      a1[2] = v9 + 68 * v17;
    }
    else if ( v8 > -252645135 * ((a1[1] - v6) >> 2) )
    {
      v11 = 0;
      std::priv::__copy<glitch::core::CMatrix4<float> const*,glitch::core::CMatrix4<float>*,int>(
        (int)v5,
        (int)&v5[4 * ((a1[1] - v6) >> 2)],
        v6);
      v9 = *a1;
      v12 = a1[1];
      v13 = *(_DWORD *)a2 + 4 * ((v12 - *a1) >> 2);
      v14 = -252645135 * ((*(_DWORD *)(a2 + 4) - v13) >> 2);
      if ( v14 > 0 )
      {
        do
        {
          glitch::core::CMatrix4<float>::CMatrix4((_BYTE *)(v12 + v11), (const void *)(v13 + v11));
          --v14;
          v11 += 68;
        }
        while ( v14 );
        v9 = *a1;
      }
    }
    else
    {
      std::priv::__copy<glitch::core::CMatrix4<float> const*,glitch::core::CMatrix4<float>*,int>((int)v5, v4, v6);
      v9 = *a1;
    }
    a1[1] = v9 + 68 * v8;
  }
  return a1;
}


// ===== 6f71cc glitch::scene::CAnimatedMeshSceneNode::clone(void) =====
void *__fastcall glitch::scene::CAnimatedMeshSceneNode::clone(glitch::scene::CAnimatedMeshSceneNode *this)
{
  void *v2; // r5
  int v3; // r3
  glitch::IReferenceCounted *v4; // r0

  v2 = operator new(0x17Cu, 0);
  glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(
    (int)v2,
    (_DWORD **)this + 76,
    *((_DWORD *)this + 67),
    (_DWORD *)this + 43,
    (_DWORD *)this + 46,
    (_DWORD *)this + 50);
  glitch::scene::ISceneNode::cloneMembers((glitch::scene::ISceneNode *)v2, this);
  v3 = *((_DWORD *)this + 76);
  if ( v3 )
    ++*(_DWORD *)(v3 + 4);
  v4 = *((glitch::IReferenceCounted **)v2 + 76);
  *((_DWORD *)v2 + 76) = v3;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  *((_DWORD *)v2 + 77) = *((_DWORD *)this + 77);
  *((_DWORD *)v2 + 78) = *((_DWORD *)this + 78);
  *((_DWORD *)v2 + 79) = *((_DWORD *)this + 79);
  *((_DWORD *)v2 + 80) = *((_DWORD *)this + 80);
  *((_DWORD *)v2 + 81) = *((_DWORD *)this + 81);
  *((_DWORD *)v2 + 82) = *((_DWORD *)this + 82);
  *((_DWORD *)v2 + 83) = *((_DWORD *)this + 83);
  *((_DWORD *)v2 + 84) = *((_DWORD *)this + 84);
  *((_BYTE *)v2 + 340) = *((_BYTE *)this + 340);
  *((_DWORD *)v2 + 86) = *((_DWORD *)this + 86);
  *((_DWORD *)v2 + 87) = *((_DWORD *)this + 87);
  *((_DWORD *)v2 + 88) = *((_DWORD *)this + 88);
  std::vector<glitch::core::CMatrix4<float>,glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>,(unsigned char)4>>::operator=(
    (int *)v2 + 89,
    (int)this + 356);
  *((_BYTE *)v2 + 368) = *((_BYTE *)this + 368);
  return v2;
}


// ===== 6f72bc glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode() =====
void __fastcall glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode(
        glitch::scene::IAnimatedMeshSceneNode *this)
{
  *(_DWORD *)this = off_98BF24;
  *((_DWORD *)this + 76) = off_98C058;
  glitch::scene::ISceneNode::~ISceneNode(this, (int *)off_98C06C);
  LC_API_FREE_0(this);
}


// ===== 6f7310 `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode(
        glitch::scene::IAnimatedMeshSceneNode *this)
{
  glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode((glitch::scene::IAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f7320 `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode(
        glitch::scene::IAnimatedMeshSceneNode *this)
{
  glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode((glitch::scene::IAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f7330 glitch::scene::CAnimatedMeshSceneNode::render(void *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CAnimatedMeshSceneNode::render(
        glitch::IReferenceCounted *this,
        void *a2)
{
  int v2; // r3
  glitch::IReferenceCounted *v3; // r4
  glitch::video::CVertexStreams **v4; // r5
  int v5; // r6
  int v6; // r3
  float v7; // r0
  int v8; // r3
  _BOOL4 v9; // r6
  unsigned int v10; // r7
  glitch::video::CVertexStreams **v11; // r10
  glitch::video::CMaterial *v12; // r5
  unsigned int v13; // r5
  glitch::IReferenceCounted *v14; // r5
  const glitch::video::CMaterialRenderer *v15; // r1
  glitch::video::CMaterialVertexAttributeMap **v16; // r3
  bool v17; // zf
  glitch::video::CMaterialVertexAttributeMap **v18; // r3
  glitch::video::CMaterialVertexAttributeMap **v19; // [sp+8h] [bp-7Ch]
  glitch::video::CMaterialVertexAttributeMap **v20; // [sp+8h] [bp-7Ch]
  void (__fastcall *v21)(glitch::video::CVertexStreams **); // [sp+8h] [bp-7Ch]
  _DWORD v22[16]; // [sp+20h] [bp-64h] BYREF
  char v23; // [sp+60h] [bp-24h]
  glitch::IReferenceCounted *v24; // [sp+64h] [bp-20h] BYREF
  glitch::video::CMaterialVertexAttributeMap *v25; // [sp+68h] [bp-1Ch] BYREF
  glitch::video::CMaterialVertexAttributeMap *v26; // [sp+6Ch] [bp-18h] BYREF
  glitch::video::CMaterial *v27; // [sp+70h] [bp-14h] BYREF
  glitch::IReferenceCounted *v28; // [sp+74h] [bp-10h] BYREF
  glitch::video::CMaterial *v29; // [sp+78h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v30; // [sp+7Ch] [bp-8h] BYREF

  v2 = *((_DWORD *)this + 68);
  v3 = this;
  v4 = *(glitch::video::CVertexStreams ***)(v2 + 20);
  if ( *((_DWORD *)this + 76) && v4 )
  {
    v5 = *(_DWORD *)(v2 + 372);
    v6 = *(_DWORD *)this;
    ++*((_DWORD *)this + 87);
    v7 = COERCE_FLOAT((*(int (__fastcall **)(glitch::IReferenceCounted *, void *))(v6 + 260))(this, a2));
    (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, int, int, _DWORD, _DWORD))(**((_DWORD **)v3 + 76) + 52))(
      &v30,
      *((_DWORD *)v3 + 76),
      (int)v7,
      255,
      *((_DWORD *)v3 + 78),
      *((_DWORD *)v3 + 79));
    (*((void (__fastcall **)(glitch::video::CVertexStreams **, int, int))*v4 + 27))(v4, 1, (int)v3 + 36);
    v8 = *((_DWORD *)v3 + 88);
    v9 = v5 == 8;
    if ( v8 && *((_DWORD *)v3 + 87) == 1 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v8 + 248))(*((_DWORD *)v3 + 88));
    v10 = 0;
    v11 = v4;
    while ( v10 < (*(int (__fastcall **)(glitch::IReferenceCounted *))(*(_DWORD *)v30 + 16))(v30) )
    {
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**((_DWORD **)v3 + 76) + 24))(
        &v29,
        *((_DWORD *)v3 + 76),
        v10);
      v12 = v29;
      v13 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)v12 + 1) + 24)
                                  + 12 * glitch::video::CMaterial::getTechnique(v29)
                                  + 8)
                      + 4);
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v29);
      if ( v9 != (HIWORD(v13) & 1) )
        goto LABEL_8;
      (*(void (__fastcall **)(glitch::IReferenceCounted **, glitch::IReferenceCounted *, unsigned int))(*(_DWORD *)v30 + 20))(
        &v28,
        v30,
        v10);
      v14 = v28;
      if ( v28 )
        glitch::IReferenceCounted::drop(v28);
      if ( *((_BYTE *)v3 + 368) )
      {
        v21 = *((void (__fastcall **)(glitch::video::CVertexStreams **))*v11 + 27);
        LC_API_MEMSET_0(v22, 0, 0x40u);
        v22[0] = 1065353216;
        v22[5] = 1065353216;
        v22[10] = 1065353216;
        v22[15] = 1065353216;
        v23 = 1;
        v21(v11);
      }
      (*(void (__fastcall **)(glitch::video::CMaterial **, _DWORD, unsigned int))(**((_DWORD **)v3 + 76) + 24))(
        &v27,
        *((_DWORD *)v3 + 76),
        v10);
      (*(void (__fastcall **)(glitch::video::CMaterialVertexAttributeMap **, _DWORD, unsigned int))(**((_DWORD **)v3 + 76)
                                                                                                  + 28))(
        &v26,
        *((_DWORD *)v3 + 76),
        v10);
      v25 = v26;
      if ( v26 )
        ++*(_DWORD *)v26;
      glitch::video::IVideoDriver::setMaterial((int)v11, &v27, (int)&v25);
      v16 = (glitch::video::CMaterialVertexAttributeMap **)v25;
      if ( v25 )
      {
        v17 = (*(_DWORD *)v25)-- == 1;
        if ( v17 )
        {
          v19 = v16;
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v16, v15);
          LC_API_FREE_0(v19);
        }
      }
      v18 = (glitch::video::CMaterialVertexAttributeMap **)v26;
      if ( v26 )
      {
        v17 = (*(_DWORD *)v26)-- == 1;
        if ( v17 )
        {
          v20 = v18;
          glitch::video::CMaterialVertexAttributeMap::~CMaterialVertexAttributeMap(v18, v15);
          LC_API_FREE_0(v20);
        }
      }
      boost::intrusive_ptr<glitch::video::CMaterial>::~intrusive_ptr(&v27);
      v24 = v14;
      if ( v14 )
        ++*((_DWORD *)v14 + 1);
      glitch::video::IVideoDriver::drawMeshBuffer(v11, (int)&v24);
      if ( v24 )
      {
        glitch::IReferenceCounted::drop(v24);
        ++v10;
      }
      else
      {
LABEL_8:
        ++v10;
      }
    }
    this = v30;
    if ( v30 )
      return (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(v30);
  }
  return this;
}


// ===== 6f7670 `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void __fastcall `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::deserializeAttributes(
        _DWORD *a1,
        int *a2,
        _DWORD *a3)
{
  glitch::scene::CAnimatedMeshSceneNode::deserializeAttributes((int)a1 + *(_DWORD *)(*a1 - 20), a2, a3);
}


// ===== 6f7680 `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(
        glitch::scene::CAnimatedMeshSceneNode *this)
{
  glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode((glitch::scene::CAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f7690 `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(
        glitch::scene::CAnimatedMeshSceneNode *this)
{
  glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode((glitch::scene::CAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f76a0 `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(
        glitch::scene::CAnimatedMeshSceneNode *this)
{
  glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode((glitch::scene::CAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f76b0 `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() =====
void __fastcall `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode(
        glitch::scene::CAnimatedMeshSceneNode *this)
{
  glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode((glitch::scene::CAnimatedMeshSceneNode *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f76c0 `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int __fastcall `virtual thunk to'glitch::scene::CAnimatedMeshSceneNode::serializeAttributes(
        _DWORD *a1,
        int a2,
        _DWORD *a3)
{
  return glitch::scene::CAnimatedMeshSceneNode::serializeAttributes((int)a1 + *(_DWORD *)(*a1 - 16), a2, a3);
}


// ===== 6f76d0 glitch::scene::IParticleEmitter::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::scene::IParticleEmitter::serializeAttributes()
{
  ;
}


// ===== 6f76d4 `virtual thunk to'glitch::scene::IParticleEmitter::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void `virtual thunk to'glitch::scene::IParticleEmitter::serializeAttributes()
{
  glitch::scene::IParticleEmitter::serializeAttributes();
}


// ===== 6f76e4 glitch::scene::IParticleEmitter::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int glitch::scene::IParticleEmitter::deserializeAttributes()
{
  return 0;
}


// ===== 6f76ec glitch::scene::IParticleEmitter::getType(void) =====
int __fastcall glitch::scene::IParticleEmitter::getType(glitch::scene::IParticleEmitter *this)
{
  return 0;
}


// ===== 6f76f4 glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::getType(void) =====
int __fastcall glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::getType(
        glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *this)
{
  return 1;
}


// ===== 6f76fc glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setUseNormalDirection(bool) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setUseNormalDirection(int this, bool a2)
{
  *(_BYTE *)(this + 41) = a2;
  return this;
}


// ===== 6f7704 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setDirection(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setDirection(_DWORD *result, _DWORD *a2)
{
  result[15] = *a2;
  result[16] = a2[1];
  result[17] = a2[2];
  return result;
}


// ===== 6f7720 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setNormalDirectionModifier(float) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setNormalDirectionModifier(int this, float a2)
{
  *(float *)(this + 44) = a2;
  return this;
}


// ===== 6f7728 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setEveryMeshVertex(bool) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setEveryMeshVertex(int this, bool a2)
{
  *(_BYTE *)(this + 40) = a2;
  return this;
}


// ===== 6f7730 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMinParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMinParticlesPerSecond(
        int this,
        unsigned int a2)
{
  *(_DWORD *)(this + 72) = a2;
  return this;
}


// ===== 6f7738 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMaxParticlesPerSecond(uint) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMaxParticlesPerSecond(
        int this,
        unsigned int a2)
{
  *(_DWORD *)(this + 76) = a2;
  return this;
}


// ===== 6f7740 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMinStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMinStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 80), a2, 4u);
}


// ===== 6f7754 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMaxStartColor(glitch::video::SColor const&) =====
void *__fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMaxStartColor(int a1, const void *a2)
{
  return memcpy((void *)(a1 + 84), a2, 4u);
}


// ===== 6f7768 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getAnimatedMeshSceneNode(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getAnimatedMeshSceneNode(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 6f7770 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::isUsingNormalDirection(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::isUsingNormalDirection(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((unsigned __int8 *)this + 41);
}


// ===== 6f7778 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getDirection(void) =====
char *__fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getDirection(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return (char *)this + 60;
}


// ===== 6f7780 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getNormalDirectionModifier(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getNormalDirectionModifier(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 11);
}


// ===== 6f7788 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getEveryMeshVertex(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getEveryMeshVertex(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((unsigned __int8 *)this + 40);
}


// ===== 6f7790 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinParticlesPerSecond(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 18);
}


// ===== 6f7798 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxParticlesPerSecond(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxParticlesPerSecond(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 6f77a0 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinStartColor(void) =====
char *__fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinStartColor(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return (char *)this + 80;
}


// ===== 6f77a8 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxStartColor(void) =====
char *__fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxStartColor(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return (char *)this + 84;
}


// ===== 6f77b0 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getUseNormalDirection(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getUseNormalDirection(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((unsigned __int8 *)this + 41);
}


// ===== 6f77b8 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMBNumber(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMBNumber(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 6);
}


// ===== 6f77c0 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinLifeTime(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinLifeTime(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 22);
}


// ===== 6f77c8 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxLifeTime(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxLifeTime(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 23);
}


// ===== 6f77d0 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxAngleDegrees(void) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxAngleDegrees(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  return *((_DWORD *)this + 26);
}


// ===== 6f77d8 glitch::scene::IParticleEmitter::~IParticleEmitter() =====
void __fastcall glitch::scene::IParticleEmitter::~IParticleEmitter(glitch::scene::IParticleEmitter *this)
{
  ;
}


// ===== 6f77dc `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter(
        glitch::scene::IParticleEmitter *this)
{
  glitch::scene::IParticleEmitter::~IParticleEmitter((glitch::scene::IParticleEmitter *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f77ec `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter(
        glitch::scene::IParticleEmitter *this)
{
  glitch::scene::IParticleEmitter::~IParticleEmitter((glitch::scene::IParticleEmitter *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f77fc glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *this)
{
  ;
}


// ===== 6f7800 `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter((glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f7810 `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter((glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f7820 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::emitt(uint,uint,glitch::scene::SParticle *&) =====
int glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::emitt()
{
  return 0;
}


// ===== 6f7828 `global constructor keyed to'.._source_glitch_scene_CParticleAnimatedMeshSceneNodeEmitter.cpp =====
void `global constructor keyed to'.._source_glitch_scene_CParticleAnimatedMeshSceneNodeEmitter.cpp()
{
  dword_9F83C0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9F83BC = 1056964608;
}


// ===== 6f7848 glitch::scene::IParticleEmitter::~IParticleEmitter() =====
void __fastcall glitch::scene::IParticleEmitter::~IParticleEmitter(glitch::scene::IParticleEmitter *this)
{
  *(_DWORD *)this = off_98C664;
  LC_API_FREE_0(this);
}


// ===== 6f787c `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter(
        glitch::scene::IParticleEmitter *this)
{
  glitch::scene::IParticleEmitter::~IParticleEmitter((glitch::scene::IParticleEmitter *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f788c `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleEmitter::~IParticleEmitter(
        glitch::scene::IParticleEmitter *this)
{
  glitch::scene::IParticleEmitter::~IParticleEmitter((glitch::scene::IParticleEmitter *)((char *)this
                                                                                       + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f789c glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  void *v2; // r0
  void *v3; // r0
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r0

  v2 = *((void **)this + 12);
  *(_DWORD *)this = off_98C8AC;
  *((_DWORD *)this + 27) = off_98C934;
  if ( v2 )
    GlitchFree(v2);
  v3 = *((void **)this + 7);
  if ( v3 )
    GlitchFree(v3);
  v4 = *((glitch::IReferenceCounted **)this + 3);
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  v5 = *((glitch::IReferenceCounted **)this + 2);
  if ( v5 )
    glitch::IReferenceCounted::drop(v5);
}


// ===== 6f7914 `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter((glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f7924 `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter((glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f7934 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter(this);
  LC_API_FREE_0(this);
}


// ===== 6f7950 `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter((glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f7960 `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter((glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f7970 std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(int *,int const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
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


// ===== 6f7a20 glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *this)
{
  *(_DWORD *)this = off_98C7F4;
  *((_DWORD *)this + 1) = off_98C7A8;
  *(int *)((char *)&dword_0 + (_DWORD)this) = (int)off_98C7F4;
  LC_API_FREE_0(this);
}


// ===== 6f7a74 `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter((glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f7a84 `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter(
        glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *this)
{
  glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter((glitch::scene::IParticleAnimatedMeshSceneNodeEmitter *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f7a94 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(glitch::scene::IAnimatedMeshSceneNode *,bool,glitch::core::vector3d<float> const&,float,int,bool,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(
        int a1,
        int *a2,
        int a3,
        char a4,
        _DWORD *a5,
        int a6,
        int a7,
        char a8,
        int a9,
        int a10,
        void *a11,
        void *a12,
        int a13,
        int a14,
        int a15)
{
  int v15; // r12
  int v18; // r2
  int v19; // lr
  int v20; // r3
  glitch::IReferenceCounted *v21; // r3
  glitch::IReferenceCounted *v22; // r0
  glitch::IReferenceCounted *v23; // r3
  glitch::IReferenceCounted *v24; // r0
  int v25; // r3
  unsigned int v26; // r5
  int v27; // r0
  int v28; // r6
  glitch::video::CVertexStreams *v29; // r3
  glitch::IReferenceCounted *v30; // r0
  bool v31; // zf
  glitch::video::CVertexStreams *v32; // r3
  int v33; // r6
  _DWORD *v34; // r1
  _DWORD *v35; // r3
  int v37; // [sp+8h] [bp-2Ch]
  glitch::video::CVertexStreams *v38; // [sp+14h] [bp-20h] BYREF
  glitch::video::CVertexStreams *v39; // [sp+18h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v40; // [sp+1Ch] [bp-18h] BYREF
  int v41; // [sp+20h] [bp-14h] BYREF
  glitch::IReferenceCounted *v42; // [sp+24h] [bp-10h] BYREF
  glitch::IReferenceCounted *v43; // [sp+28h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v44; // [sp+2Ch] [bp-8h] BYREF

  v15 = a2[2];
  *(_DWORD *)a1 = v15;
  *(_DWORD *)(a1 + *(_DWORD *)(v15 - 28)) = a2[3];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[4];
  v18 = a2[1];
  *(_DWORD *)a1 = v18;
  *(_DWORD *)(a1 + *(_DWORD *)(v18 - 28)) = a2[5];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[6];
  v19 = *a2;
  *(_DWORD *)a1 = *a2;
  *(_DWORD *)(a1 + *(_DWORD *)(v19 - 28)) = a2[7];
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = a2[8];
  *(_BYTE *)(a1 + 41) = a4;
  *(_DWORD *)(a1 + 24) = a7;
  *(_BYTE *)(a1 + 40) = a8;
  *(_DWORD *)(a1 + 4) = a3;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 44) = a6;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = *a5;
  *(_DWORD *)(a1 + 64) = a5[1];
  v20 = a5[2];
  *(_DWORD *)(a1 + 72) = a9;
  *(_DWORD *)(a1 + 68) = v20;
  *(_DWORD *)(a1 + 76) = a10;
  memcpy((void *)(a1 + 80), a11, 4u);
  memcpy((void *)(a1 + 84), a12, 4u);
  *(_DWORD *)(a1 + 88) = a13;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 92) = a14;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 104) = a15;
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a3 + 284))(&v44, a3);
  v21 = v44;
  if ( v44 )
    ++*((_DWORD *)v44 + 1);
  v22 = *(glitch::IReferenceCounted **)(a1 + 8);
  *(_DWORD *)(a1 + 8) = v21;
  if ( v22 )
    glitch::IReferenceCounted::drop(v22);
  if ( v44 )
    glitch::IReferenceCounted::drop(v44);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD, int, int, int))(**(_DWORD **)(a1 + 8) + 52))(
    &v43,
    *(_DWORD *)(a1 + 8),
    0,
    255,
    -1,
    -1);
  v23 = v43;
  if ( v43 )
    ++*((_DWORD *)v43 + 1);
  v24 = *(glitch::IReferenceCounted **)(a1 + 12);
  *(_DWORD *)(a1 + 12) = v23;
  if ( v24 )
    glitch::IReferenceCounted::drop(v24);
  if ( v43 )
    glitch::IReferenceCounted::drop(v43);
  v25 = *(_DWORD *)(a1 + 12);
  v26 = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v27 = (*(int (__fastcall **)(int))(*(_DWORD *)v25 + 16))(v25);
  *(_DWORD *)(a1 + 20) = v27;
  if ( v27 )
  {
    do
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 12) + 20))(
        &v42,
        *(_DWORD *)(a1 + 12),
        v26);
      v39 = *((glitch::video::CVertexStreams **)v42 + 5);
      v32 = v39;
      if ( v39 )
      {
        ++*(_DWORD *)v39;
        v32 = v39;
      }
      v33 = *((_DWORD *)v32 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v39);
      v34 = *(_DWORD **)(a1 + 32);
      v35 = *(_DWORD **)(a1 + 36);
      v41 = v33;
      if ( v34 == v35 )
      {
        std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          a1 + 28,
          (int)v34,
          &v41);
      }
      else
      {
        *v34 = v33;
        *(_DWORD *)(a1 + 32) += 4;
      }
      if ( v42 )
        glitch::IReferenceCounted::drop(v42);
      v28 = *(_DWORD *)(a1 + 16);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 12) + 20))(
        &v40,
        *(_DWORD *)(a1 + 12),
        v26);
      v38 = *((glitch::video::CVertexStreams **)v40 + 5);
      v29 = v38;
      if ( v38 )
      {
        ++*(_DWORD *)v38;
        v29 = v38;
      }
      v37 = *((_DWORD *)v29 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v38);
      v30 = v40;
      v31 = v40 == nullptr;
      *(_DWORD *)(a1 + 16) = v28 + v37;
      if ( !v31 )
        glitch::IReferenceCounted::drop(v30);
      ++v26;
    }
    while ( *(_DWORD *)(a1 + 20) > v26 );
  }
  return a1;
}


// ===== 6f7ddc glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setAnimatedMeshSceneNode(glitch::scene::IAnimatedMeshSceneNode *) =====
glitch::IReferenceCounted *__fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setAnimatedMeshSceneNode(
        glitch::scene::CParticleAnimatedMeshSceneNodeEmitter *this,
        glitch::scene::IAnimatedMeshSceneNode *a2)
{
  glitch::IReferenceCounted *v3; // r3
  glitch::IReferenceCounted *v4; // r0
  glitch::IReferenceCounted *v5; // r3
  glitch::IReferenceCounted *v6; // r0
  int v7; // r3
  unsigned int v8; // r5
  glitch::IReferenceCounted *result; // r0
  int v10; // r6
  glitch::video::CVertexStreams *v11; // r3
  bool v12; // zf
  glitch::video::CVertexStreams *v13; // r3
  int v14; // r6
  _DWORD *v15; // r1
  _DWORD *v16; // r3
  int v17; // [sp+8h] [bp-2Ch]
  glitch::video::CVertexStreams *v18; // [sp+14h] [bp-20h] BYREF
  glitch::video::CVertexStreams *v19; // [sp+18h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v20; // [sp+1Ch] [bp-18h] BYREF
  int v21; // [sp+20h] [bp-14h] BYREF
  glitch::IReferenceCounted *v22; // [sp+24h] [bp-10h] BYREF
  glitch::IReferenceCounted *v23; // [sp+28h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v24; // [sp+2Ch] [bp-8h] BYREF

  *((_DWORD *)this + 1) = a2;
  (*(void (__fastcall **)(glitch::IReferenceCounted **))(*(_DWORD *)a2 + 284))(&v24);
  v3 = v24;
  if ( v24 )
    ++*((_DWORD *)v24 + 1);
  v4 = *((glitch::IReferenceCounted **)this + 2);
  *((_DWORD *)this + 2) = v3;
  if ( v4 )
    glitch::IReferenceCounted::drop(v4);
  if ( v24 )
    glitch::IReferenceCounted::drop(v24);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD, int, int, int))(**((_DWORD **)this + 2) + 52))(
    &v23,
    *((_DWORD *)this + 2),
    0,
    255,
    -1,
    -1);
  v5 = v23;
  if ( v23 )
    ++*((_DWORD *)v23 + 1);
  v6 = *((glitch::IReferenceCounted **)this + 3);
  *((_DWORD *)this + 3) = v5;
  if ( v6 )
    glitch::IReferenceCounted::drop(v6);
  if ( v23 )
    glitch::IReferenceCounted::drop(v23);
  v7 = *((_DWORD *)this + 3);
  v8 = 0;
  *((_DWORD *)this + 4) = 0;
  result = (glitch::IReferenceCounted *)(*(int (__fastcall **)(int))(*(_DWORD *)v7 + 16))(v7);
  *((_DWORD *)this + 5) = result;
  if ( result )
  {
    do
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 3) + 20))(
        &v22,
        *((_DWORD *)this + 3),
        v8);
      v19 = *((glitch::video::CVertexStreams **)v22 + 5);
      v13 = v19;
      if ( v19 )
      {
        ++*(_DWORD *)v19;
        v13 = v19;
      }
      v14 = *((_DWORD *)v13 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v19);
      v15 = *((_DWORD **)this + 8);
      v16 = *((_DWORD **)this + 9);
      v21 = v14;
      if ( v15 == v16 )
      {
        std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          (int)this + 28,
          (int)v15,
          &v21);
      }
      else
      {
        *v15 = v14;
        *((_DWORD *)this + 8) += 4;
      }
      if ( v22 )
        glitch::IReferenceCounted::drop(v22);
      v10 = *((_DWORD *)this + 4);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**((_DWORD **)this + 3) + 20))(
        &v20,
        *((_DWORD *)this + 3),
        v8);
      v18 = *((glitch::video::CVertexStreams **)v20 + 5);
      v11 = v18;
      if ( v18 )
      {
        ++*(_DWORD *)v18;
        v11 = v18;
      }
      v17 = *((_DWORD *)v11 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v18);
      result = v20;
      v12 = v20 == nullptr;
      *((_DWORD *)this + 4) = v10 + v17;
      if ( !v12 )
        result = (glitch::IReferenceCounted *)glitch::IReferenceCounted::drop(result);
      ++v8;
    }
    while ( *((_DWORD *)this + 5) > v8 );
  }
  return result;
}


// ===== 6f7ff0 glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(glitch::scene::IAnimatedMeshSceneNode *,bool,glitch::core::vector3d<float> const&,float,int,bool,uint,uint,glitch::video::SColor const&,glitch::video::SColor const&,uint,uint,int) =====
int __fastcall glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(
        int a1,
        int a2,
        char a3,
        _DWORD *a4,
        int a5,
        int a6,
        char a7,
        int a8,
        int a9,
        void *a10,
        void *a11,
        int a12,
        int a13,
        int a14)
{
  int v16; // r3
  glitch::IReferenceCounted *v17; // r3
  glitch::IReferenceCounted *v18; // r0
  glitch::IReferenceCounted *v19; // r3
  glitch::IReferenceCounted *v20; // r0
  int v21; // r3
  unsigned int v22; // r5
  int v23; // r0
  int v24; // r6
  glitch::video::CVertexStreams *v25; // r3
  glitch::IReferenceCounted *v26; // r0
  bool v27; // zf
  glitch::video::CVertexStreams *v28; // r3
  int v29; // r6
  _DWORD *v30; // r1
  _DWORD *v31; // r3
  int v33; // [sp+8h] [bp-2Ch]
  glitch::video::CVertexStreams *v34; // [sp+14h] [bp-20h] BYREF
  glitch::video::CVertexStreams *v35; // [sp+18h] [bp-1Ch] BYREF
  glitch::IReferenceCounted *v36; // [sp+1Ch] [bp-18h] BYREF
  int v37; // [sp+20h] [bp-14h] BYREF
  glitch::IReferenceCounted *v38; // [sp+24h] [bp-10h] BYREF
  glitch::IReferenceCounted *v39; // [sp+28h] [bp-Ch] BYREF
  glitch::IReferenceCounted *v40; // [sp+2Ch] [bp-8h] BYREF

  *(_DWORD *)a1 = off_98CA9C;
  *(_DWORD *)(a1 + 108) = off_95B720;
  *(_DWORD *)(a1 + 112) = 1;
  *(int *)((char *)&dword_6C + a1) = (int)off_98CABC;
  *(_DWORD *)a1 = off_98CA2C;
  *(int *)((char *)&dword_0 + a1) = (int)off_98CA2C;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_98CA80;
  *(_DWORD *)a1 = off_98C98C;
  *(int *)((char *)&dword_0 + a1) = (int)off_98C98C;
  *(_DWORD *)(a1 + *(_DWORD *)(*(_DWORD *)a1 - 12)) = off_98CA00;
  *(_DWORD *)a1 = off_98C8AC;
  *(_DWORD *)(a1 + 108) = off_98C934;
  *(_BYTE *)(a1 + 41) = a3;
  *(_DWORD *)(a1 + 24) = a6;
  *(_BYTE *)(a1 + 40) = a7;
  *(_DWORD *)(a1 + 4) = a2;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 44) = a5;
  *(_DWORD *)(a1 + 12) = 0;
  *(_DWORD *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 20) = 0;
  *(_DWORD *)(a1 + 28) = 0;
  *(_DWORD *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = *a4;
  *(_DWORD *)(a1 + 64) = a4[1];
  v16 = a4[2];
  *(_DWORD *)(a1 + 72) = a8;
  *(_DWORD *)(a1 + 68) = v16;
  *(_DWORD *)(a1 + 76) = a9;
  memcpy((void *)(a1 + 80), a10, 4u);
  memcpy((void *)(a1 + 84), a11, 4u);
  *(_DWORD *)(a1 + 88) = a12;
  *(_DWORD *)(a1 + 100) = 0;
  *(_DWORD *)(a1 + 92) = a13;
  *(_DWORD *)(a1 + 96) = 0;
  *(_DWORD *)(a1 + 104) = a14;
  (*(void (__fastcall **)(glitch::IReferenceCounted **, int))(*(_DWORD *)a2 + 284))(&v40, a2);
  v17 = v40;
  if ( v40 )
    ++*((_DWORD *)v40 + 1);
  v18 = *(glitch::IReferenceCounted **)(a1 + 8);
  *(_DWORD *)(a1 + 8) = v17;
  if ( v18 )
    glitch::IReferenceCounted::drop(v18);
  if ( v40 )
    glitch::IReferenceCounted::drop(v40);
  (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, _DWORD, int, int, int))(**(_DWORD **)(a1 + 8) + 52))(
    &v39,
    *(_DWORD *)(a1 + 8),
    0,
    255,
    -1,
    -1);
  v19 = v39;
  if ( v39 )
    ++*((_DWORD *)v39 + 1);
  v20 = *(glitch::IReferenceCounted **)(a1 + 12);
  *(_DWORD *)(a1 + 12) = v19;
  if ( v20 )
    glitch::IReferenceCounted::drop(v20);
  if ( v39 )
    glitch::IReferenceCounted::drop(v39);
  v21 = *(_DWORD *)(a1 + 12);
  v22 = 0;
  *(_DWORD *)(a1 + 16) = 0;
  v23 = (*(int (__fastcall **)(int))(*(_DWORD *)v21 + 16))(v21);
  *(_DWORD *)(a1 + 20) = v23;
  if ( v23 )
  {
    do
    {
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 12) + 20))(
        &v38,
        *(_DWORD *)(a1 + 12),
        v22);
      v35 = *((glitch::video::CVertexStreams **)v38 + 5);
      v28 = v35;
      if ( v35 )
      {
        ++*(_DWORD *)v35;
        v28 = v35;
      }
      v29 = *((_DWORD *)v28 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v35);
      v30 = *(_DWORD **)(a1 + 32);
      v31 = *(_DWORD **)(a1 + 36);
      v37 = v29;
      if ( v30 == v31 )
      {
        std::vector<int,glitch::core::SAllocator<int,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
          a1 + 28,
          (int)v30,
          &v37);
      }
      else
      {
        *v30 = v29;
        *(_DWORD *)(a1 + 32) += 4;
      }
      if ( v38 )
        glitch::IReferenceCounted::drop(v38);
      v24 = *(_DWORD *)(a1 + 16);
      (*(void (__fastcall **)(glitch::IReferenceCounted **, _DWORD, unsigned int))(**(_DWORD **)(a1 + 12) + 20))(
        &v36,
        *(_DWORD *)(a1 + 12),
        v22);
      v34 = *((glitch::video::CVertexStreams **)v36 + 5);
      v25 = v34;
      if ( v34 )
      {
        ++*(_DWORD *)v34;
        v25 = v34;
      }
      v33 = *((_DWORD *)v25 + 2);
      boost::intrusive_ptr<glitch::video::CVertexStreams const>::~intrusive_ptr(&v34);
      v26 = v36;
      v27 = v36 == nullptr;
      *(_DWORD *)(a1 + 16) = v24 + v33;
      if ( !v27 )
        glitch::IReferenceCounted::drop(v26);
      ++v22;
    }
    while ( *(_DWORD *)(a1 + 20) > v22 );
  }
  return a1;
}


// ===== 6f836c glitch::scene::IParticleAffector::setEnabled(bool) =====
int __fastcall glitch::scene::IParticleAffector::setEnabled(int this, bool a2)
{
  *(_BYTE *)(this + 4) = a2;
  return this;
}


// ===== 6f8374 glitch::scene::IParticleAffector::getEnabled(void) =====
int __fastcall glitch::scene::IParticleAffector::getEnabled(glitch::scene::IParticleAffector *this)
{
  return *((unsigned __int8 *)this + 4);
}


// ===== 6f837c glitch::scene::IParticleAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void glitch::scene::IParticleAffector::serializeAttributes()
{
  ;
}


// ===== 6f8380 `virtual thunk to'glitch::scene::IParticleAffector::serializeAttributes(glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
void `virtual thunk to'glitch::scene::IParticleAffector::serializeAttributes()
{
  glitch::scene::IParticleAffector::serializeAttributes();
}


// ===== 6f8390 glitch::scene::IParticleAffector::deserializeAttributes(int,glitch::io::IAttributes *,glitch::io::SAttributeReadWriteOptions *) =====
int glitch::scene::IParticleAffector::deserializeAttributes()
{
  return 0;
}


// ===== 6f8398 glitch::scene::IParticleAttractionAffector::getType(void) =====
int __fastcall glitch::scene::IParticleAttractionAffector::getType(glitch::scene::IParticleAttractionAffector *this)
{
  return 1;
}


// ===== 6f83a0 glitch::scene::CParticleAttractionAffector::setPoint(glitch::core::vector3d<float> const&) =====
_DWORD *__fastcall glitch::scene::CParticleAttractionAffector::setPoint(_DWORD *result, _DWORD *a2)
{
  result[2] = *a2;
  result[3] = a2[1];
  result[4] = a2[2];
  return result;
}


// ===== 6f83bc glitch::scene::CParticleAttractionAffector::setSpeed(float) =====
int __fastcall glitch::scene::CParticleAttractionAffector::setSpeed(int this, float a2)
{
  *(float *)(this + 20) = a2;
  return this;
}


// ===== 6f83c4 glitch::scene::CParticleAttractionAffector::setAttract(bool) =====
int __fastcall glitch::scene::CParticleAttractionAffector::setAttract(int this, bool a2)
{
  *(_BYTE *)(this + 27) = a2;
  return this;
}


// ===== 6f83cc glitch::scene::CParticleAttractionAffector::setAffectX(bool) =====
int __fastcall glitch::scene::CParticleAttractionAffector::setAffectX(int this, bool a2)
{
  *(_BYTE *)(this + 24) = a2;
  return this;
}


// ===== 6f83d4 glitch::scene::CParticleAttractionAffector::setAffectY(bool) =====
int __fastcall glitch::scene::CParticleAttractionAffector::setAffectY(int this, bool a2)
{
  *(_BYTE *)(this + 25) = a2;
  return this;
}


// ===== 6f83dc glitch::scene::CParticleAttractionAffector::setAffectZ(bool) =====
int __fastcall glitch::scene::CParticleAttractionAffector::setAffectZ(int this, bool a2)
{
  *(_BYTE *)(this + 26) = a2;
  return this;
}


// ===== 6f83e4 glitch::scene::CParticleAttractionAffector::getPoint(void) =====
char *__fastcall glitch::scene::CParticleAttractionAffector::getPoint(glitch::scene::CParticleAttractionAffector *this)
{
  return (char *)this + 8;
}


// ===== 6f83ec glitch::scene::CParticleAttractionAffector::getSpeed(void) =====
int __fastcall glitch::scene::CParticleAttractionAffector::getSpeed(glitch::scene::CParticleAttractionAffector *this)
{
  return *((_DWORD *)this + 5);
}


// ===== 6f83f4 glitch::scene::CParticleAttractionAffector::getAttract(void) =====
int __fastcall glitch::scene::CParticleAttractionAffector::getAttract(glitch::scene::CParticleAttractionAffector *this)
{
  return *((unsigned __int8 *)this + 27);
}


// ===== 6f83fc glitch::scene::CParticleAttractionAffector::getAffectX(void) =====
int __fastcall glitch::scene::CParticleAttractionAffector::getAffectX(glitch::scene::CParticleAttractionAffector *this)
{
  return *((unsigned __int8 *)this + 24);
}


// ===== 6f8404 glitch::scene::CParticleAttractionAffector::getAffectY(void) =====
int __fastcall glitch::scene::CParticleAttractionAffector::getAffectY(glitch::scene::CParticleAttractionAffector *this)
{
  return *((unsigned __int8 *)this + 25);
}


// ===== 6f840c glitch::scene::CParticleAttractionAffector::getAffectZ(void) =====
int __fastcall glitch::scene::CParticleAttractionAffector::getAffectZ(glitch::scene::CParticleAttractionAffector *this)
{
  return *((unsigned __int8 *)this + 26);
}


// ===== 6f8414 glitch::scene::IParticleAffector::~IParticleAffector() =====
void __fastcall glitch::scene::IParticleAffector::~IParticleAffector(glitch::scene::IParticleAffector *this)
{
  ;
}


// ===== 6f8418 `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector(
        glitch::scene::IParticleAffector *this)
{
  glitch::scene::IParticleAffector::~IParticleAffector((glitch::scene::IParticleAffector *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f8428 `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAffector::~IParticleAffector(
        glitch::scene::IParticleAffector *this)
{
  glitch::scene::IParticleAffector::~IParticleAffector((glitch::scene::IParticleAffector *)((char *)this
                                                                                          + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f8438 glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector() =====
void __fastcall glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector(
        glitch::scene::IParticleAttractionAffector *this)
{
  ;
}


// ===== 6f843c `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector(
        glitch::scene::IParticleAttractionAffector *this)
{
  glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector((glitch::scene::IParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 24)));
}


// ===== 6f844c `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector() =====
void __fastcall `virtual thunk to'glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector(
        glitch::scene::IParticleAttractionAffector *this)
{
  glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector((glitch::scene::IParticleAttractionAffector *)((char *)this + *(_DWORD *)(*(_DWORD *)this - 12)));
}


// ===== 6f845c glitch::scene::CParticleAttractionAffector::CParticleAttractionAffector(glitch::core::vector3d<float> const&,float,bool,bool,bool,bool) =====
int __fastcall glitch::scene::CParticleAttractionAffector::CParticleAttractionAffector(
        int result,
        int *a2,
        _DWORD *a3,
        int a4,
        char a5,
        char a6,
        char a7,
        char a8)
{
  int v8; // r6
  int v9; // r5
  int v10; // r4
  int v11; // r2

  v8 = a2[2];
  *(_DWORD *)result = v8;
  *(_DWORD *)(result + *(_DWORD *)(v8 - 28)) = a2[3];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[4];
  *(_BYTE *)(result + 4) = 1;
  v9 = a2[1];
  *(_DWORD *)result = v9;
  *(_DWORD *)(result + *(_DWORD *)(v9 - 28)) = a2[5];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[6];
  v10 = *a2;
  *(_DWORD *)result = *a2;
  *(_DWORD *)(result + *(_DWORD *)(v10 - 28)) = a2[7];
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = a2[8];
  *(_DWORD *)(result + 8) = *a3;
  *(_DWORD *)(result + 12) = a3[1];
  v11 = a3[2];
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 20) = a4;
  *(_DWORD *)(result + 16) = v11;
  *(_BYTE *)(result + 24) = a6;
  *(_BYTE *)(result + 25) = a7;
  *(_BYTE *)(result + 26) = a8;
  *(_BYTE *)(result + 27) = a5;
  return result;
}


// ===== 6f8528 glitch::scene::CParticleAttractionAffector::CParticleAttractionAffector(glitch::core::vector3d<float> const&,float,bool,bool,bool,bool) =====
int __fastcall glitch::scene::CParticleAttractionAffector::CParticleAttractionAffector(
        int result,
        _DWORD *a2,
        int a3,
        char a4,
        char a5,
        char a6,
        char a7)
{
  int v7; // r1

  *(_DWORD *)(result + 36) = 1;
  *(_DWORD *)result = off_98CE6C;
  *(_DWORD *)(result + 32) = off_95B720;
  *(int *)((char *)&dword_20 + result) = (int)off_98CE8C;
  *(_DWORD *)result = off_98CE1C;
  *(int *)((char *)&dword_0 + result) = (int)off_98CE1C;
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = off_98CE50;
  *(_DWORD *)result = off_98CD94;
  *(_BYTE *)(result + 4) = 1;
  *(int *)((char *)&dword_0 + result) = (int)off_98CD94;
  *(_DWORD *)(result + *(_DWORD *)(*(_DWORD *)result - 12)) = off_98CDF0;
  *(_DWORD *)result = off_98CCD4;
  *(_DWORD *)(result + 32) = off_98CD38;
  *(_DWORD *)(result + 8) = *a2;
  *(_DWORD *)(result + 12) = a2[1];
  v7 = a2[2];
  *(_DWORD *)(result + 28) = 0;
  *(_DWORD *)(result + 20) = a3;
  *(_DWORD *)(result + 16) = v7;
  *(_BYTE *)(result + 24) = a5;
  *(_BYTE *)(result + 25) = a6;
  *(_BYTE *)(result + 26) = a7;
  *(_BYTE *)(result + 27) = a4;
  return result;
}

