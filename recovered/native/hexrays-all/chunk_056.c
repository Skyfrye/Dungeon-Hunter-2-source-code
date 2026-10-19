// ===== 83a984 GLXPlayerUser::getUserAvatarKey(void) =====
int __fastcall GLXPlayerUser::getUserAvatarKey(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 42);
}


// ===== 83a98c GLXPlayerUser::getUserAvatarLastUpdate(void) =====
int __fastcall GLXPlayerUser::getUserAvatarLastUpdate(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 44);
}


// ===== 83a994 GLXPlayerUser::getUserAvatarData(void) =====
int __fastcall GLXPlayerUser::getUserAvatarData(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 46);
}


// ===== 83a99c GLXPlayerUser::getUserData(void) =====
int __fastcall GLXPlayerUser::getUserData(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 48);
}


// ===== 83a9a4 GLXPlayerUser::getOtherUserName(void) =====
int __fastcall GLXPlayerUser::getOtherUserName(GLXPlayerUser *this)
{
  return *((_DWORD *)this + 49);
}


// ===== 83a9ac GLXPlayerUser::getAvatarKey(int) =====
int __fastcall GLXPlayerUser::getAvatarKey(GLXPlayerUser *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 66);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 69) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 83a9dc GLXPlayerUser::getAvatarLastUpdate(int) =====
int __fastcall GLXPlayerUser::getAvatarLastUpdate(GLXPlayerUser *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 67);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 69) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 83aa0c GLXPlayerUser::getAvatarStatus(int) =====
int __fastcall GLXPlayerUser::getAvatarStatus(GLXPlayerUser *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 68);
  if ( (v2 == 0) | (a2 >> 31) || (signed int)a2 >= *((_DWORD *)this + 69) )
    return 0;
  else
    return *(_DWORD *)(v2 + 4 * a2);
}


// ===== 83aa38 GLXPlayerUser::processUploadAvatar(char *) =====
void __fastcall GLXPlayerUser::processUploadAvatar(GLXPlayerUser *this, char *a2)
{
  ;
}


// ===== 83aa3c GLXPlayerUser::clearUserInformation(void) =====
void __fastcall GLXPlayerUser::clearUserInformation(GLXPlayerUser *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0

  v2 = *((void **)this + 16);
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 16) = 0;
  }
  v3 = *((void **)this + 17);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 17) = 0;
  }
  v4 = *((void **)this + 19);
  if ( v4 )
  {
    operator delete[](v4);
    *((_DWORD *)this + 19) = 0;
  }
  v5 = *((void **)this + 21);
  if ( v5 )
  {
    operator delete[](v5);
    *((_DWORD *)this + 21) = 0;
  }
  v6 = *((void **)this + 22);
  if ( v6 )
  {
    operator delete[](v6);
    *((_DWORD *)this + 22) = 0;
  }
  v7 = *((void **)this + 23);
  if ( v7 )
  {
    operator delete[](v7);
    *((_DWORD *)this + 23) = 0;
  }
  v8 = *((void **)this + 25);
  if ( v8 )
  {
    operator delete[](v8);
    *((_DWORD *)this + 25) = 0;
  }
  v9 = *((void **)this + 49);
  if ( v9 )
  {
    operator delete[](v9);
    *((_DWORD *)this + 49) = 0;
  }
  v10 = *((void **)this + 42);
  if ( v10 )
  {
    operator delete[](v10);
    *((_DWORD *)this + 42) = 0;
  }
  v11 = *((void **)this + 44);
  if ( v11 )
  {
    operator delete[](v11);
    *((_DWORD *)this + 44) = 0;
  }
  v12 = *((void **)this + 73);
  if ( v12 )
  {
    operator delete[](v12);
    *((_DWORD *)this + 73) = 0;
  }
  *((_BYTE *)this + 96) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_BYTE *)this + 80) = 0;
}


// ===== 83ab64 _LiveFeed::~_LiveFeed() =====
void __fastcall _LiveFeed::~_LiveFeed(_LiveFeed *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *(void **)this;
  if ( v2 )
  {
    operator delete[](v2);
    *(_DWORD *)this = 0;
  }
  v3 = *((void **)this + 1);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 83aba4 GLXPlayerUser::clearAvatarList(void) =====
void __fastcall GLXPlayerUser::clearAvatarList(GLXPlayerUser *this)
{
  _DWORD *v1; // r2
  int v3; // r3
  int i; // r4
  void *v5; // r0
  _DWORD *v6; // r2
  int v7; // r3
  int j; // r4
  void *v9; // r0
  void *v10; // r0

  v1 = *((_DWORD **)this + 66);
  if ( v1 )
  {
    v3 = *((_DWORD *)this + 69);
    if ( v3 <= 0 )
      goto LABEL_8;
    for ( i = 0; i < v3; ++i )
    {
      v5 = (void *)v1[i];
      if ( v5 )
      {
        operator delete[](v5);
        *(_DWORD *)(*((_DWORD *)this + 66) + 4 * i) = 0;
        v3 = *((_DWORD *)this + 69);
        v1 = *((_DWORD **)this + 66);
      }
    }
    if ( v1 )
LABEL_8:
      operator delete[](v1);
    *((_DWORD *)this + 66) = 0;
  }
  v6 = *((_DWORD **)this + 67);
  if ( v6 )
  {
    v7 = *((_DWORD *)this + 69);
    if ( v7 <= 0 )
      goto LABEL_17;
    for ( j = 0; j < v7; ++j )
    {
      v9 = (void *)v6[j];
      if ( v9 )
      {
        operator delete[](v9);
        *(_DWORD *)(*((_DWORD *)this + 67) + 4 * j) = 0;
        v7 = *((_DWORD *)this + 69);
        v6 = *((_DWORD **)this + 67);
      }
    }
    if ( v6 )
LABEL_17:
      operator delete[](v6);
    *((_DWORD *)this + 67) = 0;
  }
  v10 = *((void **)this + 68);
  if ( v10 )
  {
    LC_API_FREE_0(v10);
    *((_DWORD *)this + 68) = 0;
  }
  *((_DWORD *)this + 69) = 0;
}


// ===== 83ac98 GLXPlayerUser::clearUserState(void) =====
void __fastcall GLXPlayerUser::clearUserState(GLXPlayerUser *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 34);
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 34) = 0;
  }
  v3 = *((void **)this + 49);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 49) = 0;
  }
  *((_DWORD *)this + 32) = -1;
  *((_DWORD *)this + 33) = -1;
}


// ===== 83ace0 GLXPlayerUser::clearUserGameList(void) =====
void __fastcall GLXPlayerUser::clearUserGameList(GLXPlayerUser *this)
{
  _DWORD *v1; // r2
  int v3; // r3
  int i; // r5
  void *v5; // r0
  _DWORD *v6; // r2
  int v7; // r3
  int j; // r5
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0

  v1 = *((_DWORD **)this + 28);
  if ( v1 )
  {
    v3 = *((_DWORD *)this + 31);
    if ( v3 <= 0 )
      goto LABEL_8;
    for ( i = 0; i < v3; ++i )
    {
      v5 = (void *)v1[i];
      if ( v5 )
      {
        operator delete[](v5);
        *(_DWORD *)(*((_DWORD *)this + 28) + 4 * i) = 0;
        v3 = *((_DWORD *)this + 31);
        v1 = *((_DWORD **)this + 28);
      }
    }
    if ( v1 )
LABEL_8:
      operator delete[](v1);
    *((_DWORD *)this + 28) = 0;
  }
  v6 = *((_DWORD **)this + 29);
  if ( v6 )
  {
    v7 = *((_DWORD *)this + 31);
    if ( v7 <= 0 )
      goto LABEL_17;
    for ( j = 0; j < v7; ++j )
    {
      v9 = (void *)v6[j];
      if ( v9 )
      {
        operator delete[](v9);
        *(_DWORD *)(*((_DWORD *)this + 29) + 4 * j) = 0;
        v7 = *((_DWORD *)this + 31);
        v6 = *((_DWORD **)this + 29);
      }
    }
    if ( v6 )
LABEL_17:
      operator delete[](v6);
    *((_DWORD *)this + 29) = 0;
  }
  v10 = *((void **)this + 30);
  if ( v10 )
  {
    LC_API_FREE_0(v10);
    *((_DWORD *)this + 30) = 0;
  }
  v11 = *((void **)this + 49);
  if ( v11 )
  {
    operator delete[](v11);
    *((_DWORD *)this + 49) = 0;
  }
  *((_DWORD *)this + 31) = 0;
}


// ===== 83adec GLXPlayerUser::processLiveFeeds(char *) =====
void __fastcall GLXPlayerUser::processLiveFeeds(GLXPlayerUser *this, char *a2)
{
  int v4; // r0
  int v5; // r3
  int v6; // r0
  int v7; // r5
  int v8; // r5
  _DWORD *v9; // r0
  _DWORD *v10; // r1
  int v11; // r3
  int v12; // r3
  int v13; // r5
  int v14; // r6
  int v15; // r5
  void *v16; // [sp+0h] [bp-2Ch] BYREF
  char v17[32]; // [sp+4h] [bp-28h] BYREF

  memset(v17, 0, sizeof(v17));
  getValue(a2, v17, 0, 124);
  v4 = XP_API_ATOI(v17);
  *((_DWORD *)this + 74) = v4;
  if ( v4 > 0 )
  {
    v5 = *((_DWORD *)this + 75);
    v16 = nullptr;
    if ( v5 )
    {
      v6 = v5 + 8 * *(_DWORD *)(v5 - 4);
      if ( v5 != v6 )
      {
        while ( 1 )
        {
          v7 = v6 - 8;
          _LiveFeed::~_LiveFeed((_LiveFeed *)(v6 - 8));
          v6 = *((_DWORD *)this + 75);
          if ( v6 == v7 )
            break;
          v6 = v7;
        }
      }
      operator delete[]((void *)(v6 - 8));
      *((_DWORD *)this + 75) = 0;
    }
    v8 = *((_DWORD *)this + 74);
    v9 = (_DWORD *)operator new[](8 * (v8 + 1));
    *v9 = 8;
    v9[1] = v8;
    v10 = v9 + 2;
    if ( v8 )
    {
      v11 = 0;
      do
      {
        ++v11;
        v9[2] = 0;
        v9[3] = 0;
        v9 += 2;
      }
      while ( v8 != v11 );
    }
    v12 = *((_DWORD *)this + 74);
    *((_DWORD *)this + 75) = v10;
    if ( v12 > 0 )
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        XP_API_PARSE_DATA_NEW((unsigned __int8 *)a2, &v16, v13 + 1, 124);
        v15 = 8 * v13;
        XP_API_PARSE_DATA_NEW((unsigned __int8 *)v16, (void **)(*((_DWORD *)this + 75) + v15), 0, 94);
        XP_API_PARSE_DATA_NEW((unsigned __int8 *)v16, (void **)(*((_DWORD *)this + 75) + v15 + 4), 1, 94);
        if ( v16 )
        {
          operator delete[](v16);
          v16 = nullptr;
        }
        v13 = v14;
      }
      while ( *((_DWORD *)this + 74) > v14 );
    }
  }
}


// ===== 83afb8 GLXPlayerUser::processUserChatWarning(char *) =====
void __fastcall GLXPlayerUser::processUserChatWarning(GLXPlayerUser *this, char *a2)
{
  void *v3; // r0
  size_t v5; // r5
  void *v6; // r0

  v3 = *((void **)this + 70);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 70) = 0;
  }
  if ( a2 )
  {
    if ( (int)XP_API_STRLEN(a2) > 0 )
    {
      v5 = XP_API_STRLEN(a2);
      v6 = (void *)operator new[](v5 + 1);
      *((_DWORD *)this + 70) = v6;
      XP_API_MEMCPY(v6, a2, v5);
      *(_BYTE *)(*((_DWORD *)this + 70) + v5) = 0;
    }
  }
}


// ===== 83b028 GLXPlayerUser::processPromoAttachment(char *) =====
void __fastcall GLXPlayerUser::processPromoAttachment(GLXPlayerUser *this, char *a2)
{
  void *v3; // r0

  v3 = *((void **)this + 65);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 65) = 0;
  }
  if ( a2 )
  {
    if ( (int)XP_API_STRLEN(a2) > 0 )
      *((_DWORD *)this + 65) = XP_API_STRNEW(a2);
  }
}


// ===== 83b074 GLXPlayerUser::processRssAttachment(char *) =====
void __fastcall GLXPlayerUser::processRssAttachment(GLXPlayerUser *this, char *a2)
{
  void *v3; // r0

  v3 = *((void **)this + 61);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 61) = 0;
  }
  if ( a2 )
  {
    if ( (int)XP_API_STRLEN(a2) > 0 )
      *((_DWORD *)this + 61) = XP_API_STRNEW(a2);
  }
}


// ===== 83b0c0 GLXPlayerUser::processUserTrophyIcon(char *) =====
int __fastcall GLXPlayerUser::processUserTrophyIcon(int this, char *a2)
{
  int v3; // r4
  int v4; // r6
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0

  v3 = this;
  if ( a2 )
  {
    this = XP_API_STRLEN(a2);
    if ( this > 0 )
    {
      v4 = *(_DWORD *)(v3 + 212);
      if ( v4 )
      {
        if ( v4 == 1 )
        {
          v8 = *(void **)(v3 + 208);
          if ( v8 )
          {
            operator delete[](v8);
            *(_DWORD *)(v3 + 208) = 0;
          }
          this = (int)XP_API_STRNEW(a2);
          *(_DWORD *)(v3 + 208) = this;
        }
        else if ( v4 == 2 )
        {
          v6 = *(void **)(v3 + 204);
          if ( v6 )
          {
            operator delete[](v6);
            *(_DWORD *)(v3 + 204) = 0;
          }
          v7 = *(void **)(v3 + 208);
          if ( v7 )
          {
            operator delete[](v7);
            *(_DWORD *)(v3 + 208) = 0;
          }
          XP_API_PARSE_DATA_NEW((unsigned __int8 *)a2, (void **)(v3 + 208), 1, 124);
          return XP_API_PARSE_DATA_NEW((unsigned __int8 *)a2, (void **)(v3 + 204), 3, 124);
        }
      }
      else
      {
        v5 = *(void **)(v3 + 204);
        if ( v5 )
        {
          operator delete[](v5);
          *(_DWORD *)(v3 + 204) = 0;
        }
        this = (int)XP_API_STRNEW(a2);
        *(_DWORD *)(v3 + 204) = this;
      }
    }
  }
  return this;
}


// ===== 83b1ac GLXPlayerUser::setPassword(char *) =====
void *__fastcall GLXPlayerUser::setPassword(GLXPlayerUser *this, char *a2)
{
  void *v3; // r0
  void *result; // r0

  v3 = *((void **)this + 18);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 18) = 0;
  }
  result = XP_API_STRNEW(a2);
  *((_DWORD *)this + 18) = result;
  return result;
}


// ===== 83b1e0 GLXPlayerUser::processGetPromo_RSS(char *) =====
void __fastcall GLXPlayerUser::processGetPromo_RSS(GLXPlayerUser *this, char *a2)
{
  size_t v4; // r0
  const slim::XmlNode *Child; // r1
  _BYTE v6[72]; // [sp+4h] [bp-4Ch] BYREF

  slim::XmlDocument::XmlDocument((slim::XmlDocument *)v6);
  v4 = XP_API_STRLEN(a2);
  slim::XmlDocument::loadFromMemory((slim::XmlDocument *)v6, a2, v4);
  Child = (const slim::XmlNode *)slim::XmlNode::findChild((slim::XmlNode *)v6, "rss");
  if ( Child )
    rss::read((GLXPlayerUser *)((char *)this + 248), Child);
  slim::XmlNode::~XmlNode((slim::XmlNode *)v6);
}


// ===== 83b280 GLXPlayerUser::processGetADV_RSS(char *) =====
void __fastcall GLXPlayerUser::processGetADV_RSS(GLXPlayerUser *this, char *a2)
{
  size_t v4; // r0
  const slim::XmlNode *Child; // r1
  _BYTE v6[72]; // [sp+4h] [bp-4Ch] BYREF

  slim::XmlDocument::XmlDocument((slim::XmlDocument *)v6);
  v4 = XP_API_STRLEN(a2);
  slim::XmlDocument::loadFromMemory((slim::XmlDocument *)v6, a2, v4);
  Child = (const slim::XmlNode *)slim::XmlNode::findChild((slim::XmlNode *)v6, "rss");
  if ( Child )
    rss::read((GLXPlayerUser *)((char *)this + 232), Child);
  slim::XmlNode::~XmlNode((slim::XmlNode *)v6);
}


// ===== 83b320 GLXPlayerUser::processUserGameIcon(char *) =====
void __fastcall GLXPlayerUser::processUserGameIcon(GLXPlayerUser *this, char *a2)
{
  void *v3; // r0
  char v5[32]; // [sp+4h] [bp-24h] BYREF

  v3 = *((void **)this + 50);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 50) = 0;
  }
  if ( a2 )
  {
    if ( (int)XP_API_STRLEN(a2) > 0 )
    {
      XP_API_PARSE_DATA_NEW((unsigned __int8 *)a2, (void **)this + 50, 1, 124);
      XP_API_PARSE_DATA(a2, (_BYTE *)this + 220, 3, 124);
      memset(v5, 0, sizeof(v5));
      XP_API_MEMSET(v5, 0, 0x20u);
      XP_API_PARSE_DATA(a2, v5, 5, 124);
      *((_DWORD *)this + 57) = XP_API_ATOI(v5);
    }
  }
}


// ===== 83b424 GLXPlayerUser::processUserAvatarList(char *) =====
void __fastcall GLXPlayerUser::processUserAvatarList(GLXPlayerUser *this, char *a2)
{
  signed int i; // r4
  int v5; // r3
  int v6; // r0
  int v7; // r3
  int v8; // r4
  int v9; // r0
  int v10; // r3
  int v11; // r2
  int v12; // [sp+4h] [bp-B0h]
  int v13; // [sp+4h] [bp-B0h]
  int v14; // [sp+4h] [bp-B0h]
  char v15[128]; // [sp+Ch] [bp-A8h] BYREF
  char v16[32]; // [sp+8Ch] [bp-28h] BYREF

  GLXPlayerUser::clearAvatarList(this);
  if ( a2 && (int)XP_API_STRLEN(a2) > 0 )
  {
    *((_DWORD *)this + 69) = 1;
    for ( i = 0; i < (int)XP_API_STRLEN(a2); ++i )
    {
      v5 = a2[i];
      if ( v5 == 124 )
        ++*((_DWORD *)this + 69);
    }
    v6 = operator new[](4 * *((_DWORD *)this + 69));
    v7 = *((_DWORD *)this + 69);
    *((_DWORD *)this + 66) = v6;
    v8 = 0;
    v9 = operator new[](4 * v7);
    v10 = *((_DWORD *)this + 69);
    *((_DWORD *)this + 67) = v9;
    *((_DWORD *)this + 68) = operator new[](4 * v10);
    LC_API_MEMSET_0(v15, 0, 0x80u);
    v11 = *((_DWORD *)this + 69);
    memset(v16, 0, sizeof(v16));
    if ( v11 > 0 )
    {
      do
      {
        XP_API_MEMSET(v15, 0, 0x80u);
        getValue(a2, v15, v8, 124);
        v12 = *((_DWORD *)this + 66);
        *(_DWORD *)(v12 + 4 * v8) = operator new[](0x20u);
        v13 = *((_DWORD *)this + 67);
        *(_DWORD *)(v13 + 4 * v8) = operator new[](0x20u);
        *(_DWORD *)(*((_DWORD *)this + 68) + 4 * v8) = 0;
        getValue(v15, *(_BYTE **)(*((_DWORD *)this + 66) + 4 * v8), 0, 94);
        getValue(v15, *(_BYTE **)(*((_DWORD *)this + 67) + 4 * v8), 1, 94);
        XP_API_MEMSET(v16, 0, 0x20u);
        getValue(v15, v16, 2, 94);
        v14 = *((_DWORD *)this + 68);
        *(_DWORD *)(v14 + 4 * v8++) = XP_API_ATOI(v16);
      }
      while ( *((_DWORD *)this + 69) > v8 );
    }
  }
}


// ===== 83b620 GLXPlayerUser::processUserData(char *) =====
void __fastcall GLXPlayerUser::processUserData(GLXPlayerUser *this, char *a2)
{
  void *v3; // r0
  unsigned int v5; // r6
  _BYTE *v6; // r7
  int v7; // r8
  void *v8; // r0
  _BYTE *v9; // r0

  v3 = *((void **)this + 48);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 48) = 0;
  }
  if ( a2 && (int)XP_API_STRLEN(a2) > 0 )
  {
    v5 = XP_API_STRLEN(a2) + 1;
    v6 = (_BYTE *)operator new[](v5);
    XP_API_MEMSET(v6, 0, v5);
    getValue(a2, v6, 0, 124);
    if ( XP_API_STRCMP(v6, "n") )
    {
      v7 = 0;
    }
    else
    {
      v9 = (_BYTE *)operator new[](0x10u);
      *((_DWORD *)this + 49) = v9;
      getValue(a2, v9, 1, 124);
      v7 = 2;
    }
    v8 = (void *)operator new[](v5);
    *((_DWORD *)this + 48) = v8;
    XP_API_MEMSET(v8, 0, v5);
    getValue(a2, *((_BYTE **)this + 48), v7, 124);
    if ( v6 )
      LC_API_FREE_0(v6);
  }
}


// ===== 83b724 GLXPlayerUser::processDownloadAvatar(char *) =====
void __fastcall GLXPlayerUser::processDownloadAvatar(GLXPlayerUser *this, char *a2)
{
  void *v3; // r0
  unsigned int v5; // r7
  _BYTE *v6; // r6
  _BYTE *v7; // r0
  void *v8; // r0

  v3 = *((void **)this + 46);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 46) = 0;
  }
  if ( a2 && (int)XP_API_STRLEN(a2) > 0 )
  {
    v5 = XP_API_STRLEN(a2) + 1;
    v6 = (_BYTE *)operator new[](v5);
    XP_API_MEMSET(v6, 0, v5);
    getValue(a2, v6, 0, 124);
    if ( XP_API_STRCMP(v6, "n") )
    {
      *((_DWORD *)this + 46) = XP_API_STRNEW(v6);
    }
    else
    {
      v7 = (_BYTE *)operator new[](0x10u);
      *((_DWORD *)this + 49) = v7;
      getValue(a2, v7, 1, 124);
      v8 = (void *)operator new[](v5);
      *((_DWORD *)this + 47) = v8;
      XP_API_MEMSET(v8, 0, v5);
      getValue(a2, *((_BYTE **)this + 47), 2, 124);
    }
    if ( v6 )
      LC_API_FREE_0(v6);
  }
}


// ===== 83b82c GLXPlayerUser::processUserAvatar(char *) =====
void __fastcall GLXPlayerUser::processUserAvatar(GLXPlayerUser *this, char *a2)
{
  _BYTE *v4; // r4
  void *v5; // r0
  _BYTE *v6; // r0
  int v7; // r7
  int v8; // r8
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0
  int v13; // r7
  int v14; // r8
  void *v15; // r0
  void *v16; // r0
  void *v17; // r0
  void *v18; // r0

  if ( a2 && (int)XP_API_STRLEN(a2) > 0 )
  {
    v4 = (_BYTE *)operator new[](0x20u);
    XP_API_MEMSET(v4, 0, 0x20u);
    getValue(a2, v4, 0, 124);
    if ( XP_API_STRCMP(v4, "n") )
    {
      if ( XP_API_STRCMP(v4, "d") )
      {
        v13 = 2;
        v14 = 1;
      }
      else
      {
        v15 = *((void **)this + 42);
        if ( v15 )
        {
          operator delete[](v15);
          *((_DWORD *)this + 42) = 0;
        }
        v16 = (void *)operator new[](0x20u);
        *((_DWORD *)this + 42) = v16;
        XP_API_MEMSET(v16, 0, 0x20u);
        getValue(a2, *((_BYTE **)this + 42), 1, 124);
        v13 = 3;
        v14 = 2;
      }
      XP_API_MEMSET(v4, 0, 0x20u);
      getValue(a2, v4, v14, 124);
      if ( !XP_API_STRCMP(v4, "t") )
      {
        v17 = *((void **)this + 44);
        if ( v17 )
        {
          operator delete[](v17);
          *((_DWORD *)this + 44) = 0;
        }
        v18 = (void *)operator new[](0x20u);
        *((_DWORD *)this + 44) = v18;
        XP_API_MEMSET(v18, 0, 0x20u);
        getValue(a2, *((_BYTE **)this + 44), v13, 124);
      }
    }
    else
    {
      v5 = *((void **)this + 49);
      if ( v5 )
      {
        operator delete[](v5);
        *((_DWORD *)this + 49) = 0;
      }
      v6 = (_BYTE *)operator new[](0x10u);
      *((_DWORD *)this + 49) = v6;
      getValue(a2, v6, 1, 124);
      XP_API_MEMSET(v4, 0, 0x20u);
      getValue(a2, v4, 2, 124);
      if ( XP_API_STRCMP(v4, "d") )
      {
        v7 = 4;
        v8 = 3;
      }
      else
      {
        v9 = *((void **)this + 43);
        if ( v9 )
        {
          operator delete[](v9);
          *((_DWORD *)this + 43) = 0;
        }
        v10 = (void *)operator new[](0x20u);
        *((_DWORD *)this + 43) = v10;
        XP_API_MEMSET(v10, 0, 0x20u);
        getValue(a2, *((_BYTE **)this + 43), 3, 124);
        v7 = 5;
        v8 = 4;
      }
      XP_API_MEMSET(v4, 0, 0x20u);
      getValue(a2, v4, v8, 124);
      if ( !XP_API_STRCMP(v4, "t") )
      {
        v11 = *((void **)this + 45);
        if ( v11 )
        {
          operator delete[](v11);
          *((_DWORD *)this + 45) = 0;
        }
        v12 = (void *)operator new[](0x20u);
        *((_DWORD *)this + 45) = v12;
        XP_API_MEMSET(v12, 0, 0x20u);
        getValue(a2, *((_BYTE **)this + 45), v7, 124);
      }
    }
    if ( v4 )
      LC_API_FREE_0(v4);
  }
}


// ===== 83bae4 GLXPlayerUser::processUserBestScore(char *) =====
int __fastcall GLXPlayerUser::processUserBestScore(int this, char *a2)
{
  int v3; // r8
  _BYTE *v4; // r0
  char v5[256]; // [sp+4h] [bp-104h] BYREF

  v3 = this;
  if ( a2 )
  {
    this = XP_API_STRLEN(a2);
    if ( this > 0 )
    {
      LC_API_MEMSET_0(v5, 0, 0x100u);
      getValue(a2, v5, 0, 124);
      if ( XP_API_STRCMP(v5, "n") )
      {
        getValue(a2, v5, 0, 124);
      }
      else
      {
        v4 = (_BYTE *)operator new[](0x10u);
        *(_DWORD *)(v3 + 196) = v4;
        getValue(a2, v4, 1, 124);
        getValue(a2, v5, 2, 124);
      }
      this = XP_API_ATOI(v5);
      *(_DWORD *)(v3 + 164) = this;
    }
  }
  return this;
}


// ===== 83bbf0 GLXPlayerUser::processUserInformation(char *) =====
void __fastcall GLXPlayerUser::processUserInformation(GLXPlayerUser *this, char *a2)
{
  int v4; // r12
  int v5; // r11
  _BYTE *v6; // r0
  _BYTE *v7; // r0
  _BYTE *v8; // r0
  _BYTE *v9; // r0
  void *v10; // r0
  void *v11; // r0
  _BYTE *v12; // r0
  _BYTE *v13; // r0
  _BYTE *v14; // r0
  void *v15; // r0
  _BYTE *v16; // r0
  int v17; // [sp+0h] [bp-164h]
  int v18; // [sp+4h] [bp-160h]
  int v19; // [sp+8h] [bp-15Ch]
  int v20; // [sp+Ch] [bp-158h]
  int v21; // [sp+10h] [bp-154h]
  int v22; // [sp+14h] [bp-150h]
  int v23; // [sp+18h] [bp-14Ch]
  int v24; // [sp+1Ch] [bp-148h]
  int v25; // [sp+20h] [bp-144h]
  int v26; // [sp+24h] [bp-140h]
  int v27; // [sp+28h] [bp-13Ch]
  int v28; // [sp+2Ch] [bp-138h]
  int v29; // [sp+30h] [bp-134h]
  int v30; // [sp+34h] [bp-130h]
  char v31[256]; // [sp+3Ch] [bp-128h] BYREF
  char v32[32]; // [sp+13Ch] [bp-28h] BYREF

  GLXPlayerUser::clearUserInformation(this);
  if ( a2 && (int)XP_API_STRLEN(a2) > 0 )
  {
    LC_API_MEMSET_0(v31, 0, 0x100u);
    getValue(a2, v31, 0, 124);
    if ( XP_API_STRCMP(v31, "n") )
    {
      v20 = 27;
      v18 = 25;
      v30 = 23;
      v27 = 21;
      v24 = 19;
      v25 = 17;
      v23 = 15;
      v22 = 13;
      v29 = 11;
      v28 = 9;
      v26 = 7;
      v21 = 5;
      v4 = 29;
      v19 = 3;
      v5 = 1;
    }
    else
    {
      v16 = (_BYTE *)operator new[](0x10u);
      *((_DWORD *)this + 49) = v16;
      getValue(a2, v16, 1, 124);
      v20 = 29;
      v18 = 27;
      v30 = 25;
      v27 = 23;
      v24 = 21;
      v25 = 19;
      v23 = 17;
      v22 = 15;
      v29 = 13;
      v28 = 11;
      v26 = 9;
      v21 = 7;
      v4 = 31;
      v19 = 5;
      v5 = 3;
    }
    memset(v32, 0, sizeof(v32));
    v17 = v4;
    v6 = (_BYTE *)operator new[](0x10u);
    *((_DWORD *)this + 16) = v6;
    getValue(a2, v6, v5, 124);
    v7 = (_BYTE *)operator new[](0x10u);
    *((_DWORD *)this + 17) = v7;
    getValue(a2, v7, v19, 124);
    v8 = (_BYTE *)operator new[](0x80u);
    *((_DWORD *)this + 19) = v8;
    getValue(a2, v8, v21, 124);
    XP_API_MEMSET(v31, 0, 0x100u);
    getValue(a2, v31, v26, 124);
    *((_BYTE *)this + 80) = XP_API_ATOI(v31) != 0;
    v9 = (_BYTE *)operator new[](0x80u);
    *((_DWORD *)this + 21) = v9;
    getValue(a2, v9, v28, 124);
    v10 = (void *)operator new[](0x80u);
    *((_DWORD *)this + 42) = v10;
    XP_API_MEMSET(v10, 0, 0x80u);
    getValue(a2, *((_BYTE **)this + 42), v29, 124);
    v11 = (void *)operator new[](0x80u);
    *((_DWORD *)this + 44) = v11;
    XP_API_MEMSET(v11, 0, 0x80u);
    getValue(a2, *((_BYTE **)this + 44), v22, 124);
    XP_API_MEMSET(v32, 0, 0x20u);
    getValue(a2, v32, v23, 124);
    *((double *)this + 18) = (double)XP_API_ATOI(v32);
    v12 = (_BYTE *)operator new[](0x80u);
    *((_DWORD *)this + 22) = v12;
    getValue(a2, v12, v25, 124);
    v13 = (_BYTE *)operator new[](0x80u);
    *((_DWORD *)this + 23) = v13;
    getValue(a2, v13, v24, 124);
    XP_API_MEMSET(v31, 0, 0x100u);
    getValue(a2, v31, v27, 124);
    *((_BYTE *)this + 96) = XP_API_ATOI(v31) != 0;
    v14 = (_BYTE *)operator new[](0x80u);
    *((_DWORD *)this + 25) = v14;
    getValue(a2, v14, v30, 124);
    XP_API_MEMSET(v32, 0, 0x20u);
    getValue(a2, v32, v18, 124);
    *((_DWORD *)this + 26) = XP_API_ATOI(v32);
    XP_API_MEMSET(v32, 0, 0x20u);
    getValue(a2, v32, v20, 124);
    *((_DWORD *)this + 27) = XP_API_ATOI(v32);
    v15 = (void *)operator new[](0x100u);
    *((_DWORD *)this + 73) = v15;
    XP_API_MEMSET(v15, 0, 0x100u);
    getValue(a2, *((_BYTE **)this + 73), v17, 124);
  }
}


// ===== 83c040 GLXPlayerUser::processUserTrophy(char *) =====
int __fastcall GLXPlayerUser::processUserTrophy(int this, char *a2)
{
  int v3; // r8
  _BYTE *v4; // r0
  char v5[256]; // [sp+4h] [bp-104h] BYREF

  v3 = this;
  if ( a2 )
  {
    this = XP_API_STRLEN(a2);
    if ( this > 0 )
    {
      LC_API_MEMSET_0(v5, 0, 0x100u);
      getValue(a2, v5, 0, 124);
      if ( XP_API_STRCMP(v5, "n") )
      {
        getValue(a2, v5, 0, 124);
      }
      else
      {
        v4 = (_BYTE *)operator new[](0x10u);
        *(_DWORD *)(v3 + 196) = v4;
        getValue(a2, v4, 1, 124);
        getValue(a2, v5, 2, 124);
      }
      this = XP_API_ATOI(v5);
      *(_DWORD *)(v3 + 160) = this;
    }
  }
  return this;
}


// ===== 83c14c GLXPlayerUser::processUserState(char *) =====
void __fastcall GLXPlayerUser::processUserState(GLXPlayerUser *this, char *a2)
{
  _BYTE *v4; // r0
  int v5; // r11
  int v6; // r9
  int v7; // r7
  void *v8; // r0
  int v9; // r2
  char *v10; // r0
  void *v11; // r0
  int v12; // [sp+4h] [bp-110h]
  char v13[256]; // [sp+Ch] [bp-108h] BYREF

  GLXPlayerUser::clearUserState(this);
  if ( a2 && (int)XP_API_STRLEN(a2) > 0 )
  {
    LC_API_MEMSET_0(v13, 0, 0x100u);
    getValue(a2, v13, 0, 124);
    if ( XP_API_STRCMP(v13, "n") && XP_API_STRCMP(v13, "un") )
    {
      if ( !XP_API_STRCMP(v13, "t") )
      {
        XP_API_MEMSET(v13, 0, 0x100u);
        getValue(a2, v13, 1, 124);
        *((_DWORD *)this + 33) = XP_API_ATOI(v13);
        XP_API_MEMSET(v13, 0, 0x100u);
        getValue(a2, v13, 2, 124);
        v11 = (void *)operator new[](0x10u);
        *((_DWORD *)this + 34) = v11;
        XP_API_MEMSET(v11, 0, 0x10u);
        getValue(a2, *((_BYTE **)this + 34), 3, 124);
        XP_API_MEMSET(v13, 0, 0x100u);
        getValue(a2, v13, 4, 124);
        if ( !XP_API_STRCMP(v13, "a") )
        {
          XP_API_MEMSET(v13, 0, 0x100u);
          v10 = a2;
          v9 = 5;
          goto LABEL_9;
        }
      }
    }
    else
    {
      v4 = (_BYTE *)operator new[](0x10u);
      *((_DWORD *)this + 49) = v4;
      getValue(a2, v4, 1, 124);
      XP_API_MEMSET(v13, 0, 0x100u);
      getValue(a2, v13, 2, 124);
      if ( XP_API_STRCMP(v13, "t") )
      {
        v12 = 6;
        v5 = 5;
        v6 = 4;
        v7 = 3;
      }
      else
      {
        XP_API_MEMSET(v13, 0, 0x100u);
        getValue(a2, v13, 3, 124);
        *((_DWORD *)this + 33) = XP_API_ATOI(v13);
        v5 = 6;
        v12 = 7;
        v6 = 5;
        v7 = 4;
      }
      XP_API_MEMSET(v13, 0, 0x100u);
      getValue(a2, v13, v7, 124);
      v8 = (void *)operator new[](0x10u);
      *((_DWORD *)this + 34) = v8;
      XP_API_MEMSET(v8, 0, 0x10u);
      getValue(a2, *((_BYTE **)this + 34), v6, 124);
      XP_API_MEMSET(v13, 0, 0x100u);
      getValue(a2, v13, v5, 124);
      if ( !XP_API_STRCMP(v13, "a") )
      {
        XP_API_MEMSET(v13, 0, 0x100u);
        v9 = v12;
        v10 = a2;
LABEL_9:
        getValue(v10, v13, v9, 124);
        *((_DWORD *)this + 32) = XP_API_ATOI(v13);
      }
    }
  }
}


// ===== 83c484 GLXPlayerUser::processUserGameList(char *) =====
void __fastcall GLXPlayerUser::processUserGameList(GLXPlayerUser *this, char *a2)
{
  int v2; // r9
  int v5; // r8
  signed int i; // r4
  int v7; // r3
  bool v8; // zf
  int v9; // r8
  int v10; // r0
  int v11; // r3
  int v12; // r0
  int v13; // r3
  int v14; // r0
  int v15; // r3
  int v16; // r4
  _BYTE *v17; // r0
  int v18; // [sp+4h] [bp-118h]
  int v19; // [sp+4h] [bp-118h]
  int v20; // [sp+4h] [bp-118h]
  char v21[256]; // [sp+Ch] [bp-110h] BYREF
  _DWORD v22[2]; // [sp+10Ch] [bp-10h] BYREF

  GLXPlayerUser::clearUserGameList(this);
  if ( a2 && (int)XP_API_STRLEN(a2) > 0 )
  {
    LC_API_MEMSET_0(v21, 0, 0x100u);
    v22[0] = 0;
    v22[1] = 0;
    getValue(a2, v21, 0, 124);
    if ( XP_API_STRCMP(v21, "n") )
    {
      v5 = 1;
    }
    else
    {
      v17 = (_BYTE *)operator new[](0x10u);
      *((_DWORD *)this + 49) = v17;
      getValue(a2, v17, 1, 124);
      v5 = 2;
    }
    *((_DWORD *)this + 31) = 1;
    for ( i = 0; i < (int)XP_API_STRLEN(a2); ++i )
    {
      v7 = a2[i];
      if ( v7 == 124 )
        ++*((_DWORD *)this + 31);
    }
    v8 = v5 == 1;
    if ( v5 != 1 )
      v2 = 2;
    v9 = *((_DWORD *)this + 31) + 1 - v5;
    *((_DWORD *)this + 31) = v9;
    if ( v8 )
      v2 = 0;
    v10 = operator new[](4 * v9);
    v11 = *((_DWORD *)this + 31);
    *((_DWORD *)this + 28) = v10;
    v12 = operator new[](4 * v11);
    v13 = *((_DWORD *)this + 31);
    *((_DWORD *)this + 29) = v12;
    v14 = operator new[](4 * v13);
    v15 = *((_DWORD *)this + 31);
    *((_DWORD *)this + 30) = v14;
    if ( v15 > 0 )
    {
      v16 = 0;
      do
      {
        XP_API_MEMSET(v21, 0, 0x100u);
        getValue(a2, v21, v16 + v2, 124);
        v18 = *((_DWORD *)this + 28);
        *(_DWORD *)(v18 + 4 * v16) = operator new[](0x80u);
        v19 = *((_DWORD *)this + 29);
        *(_DWORD *)(v19 + 4 * v16) = operator new[](0x80u);
        XP_API_MEMSET(*(void **)(*((_DWORD *)this + 28) + 4 * v16), 0, 0x80u);
        getValue(v21, *(_BYTE **)(*((_DWORD *)this + 28) + 4 * v16), 0, 94);
        XP_API_MEMSET(*(void **)(*((_DWORD *)this + 29) + 4 * v16), 0, 0x80u);
        getValue(v21, *(_BYTE **)(*((_DWORD *)this + 29) + 4 * v16), 1, 94);
        XP_API_MEMSET(v22, 0, 8u);
        getValue(v21, v22, 2, 94);
        v20 = *((_DWORD *)this + 30);
        *(_DWORD *)(v20 + 4 * v16++) = XP_API_ATOI((const char *)v22);
      }
      while ( *((_DWORD *)this + 31) > v16 );
    }
  }
}


// ===== 83c6f8 GLXPlayerUser::processUserReputation(char *) =====
int __fastcall GLXPlayerUser::processUserReputation(int this, char *a2)
{
  int v3; // r8
  int v4; // r10
  _BYTE *v5; // r0
  char v6[512]; // [sp+4h] [bp-288h] BYREF
  char v7[128]; // [sp+204h] [bp-88h] BYREF

  v3 = this;
  if ( a2 )
  {
    this = XP_API_STRLEN(a2);
    if ( this > 0 )
    {
      LC_API_MEMSET_0(v6, 0, 0x200u);
      getValue(a2, v6, 0, 124);
      if ( XP_API_STRCMP(v6, "n") )
      {
        v4 = 0;
      }
      else
      {
        v5 = (_BYTE *)operator new[](0x10u);
        *(_DWORD *)(v3 + 196) = v5;
        getValue(a2, v5, 1, 124);
        v4 = 2;
      }
      XP_API_MEMSET(v6, 0, 0x200u);
      getValue(a2, v6, v4, 124);
      LC_API_MEMSET_0(v7, 0, 0x80u);
      XP_API_MEMSET(v7, 0, 0x80u);
      getValue(v6, v7, 0, 44);
      *(double *)(v3 + 144) = XP_API_ATOF(v7);
      XP_API_MEMSET(v7, 0, 0x80u);
      getValue(v6, v7, 1, 44);
      *(_DWORD *)(v3 + 152) = XP_API_ATOI(v7);
      XP_API_MEMSET(v7, 0, 0x80u);
      getValue(v6, v7, 2, 44);
      this = XP_API_ATOI(v7);
      *(_DWORD *)(v3 + 156) = this;
    }
  }
  return this;
}


// ===== 83c894 GLXPlayerUser::OnUpdateSuccess(int) =====
int __fastcall GLXPlayerUser::OnUpdateSuccess(GLXPlayerUser *this, int a2)
{
  size_t v4; // r0
  char *v5; // r6
  void *v6; // r0
  char *NextResponseToken; // r0
  void *v8; // r0
  char *v9; // r0
  void *v11; // r0
  void *v12; // r0
  void *v13; // r0
  void *v14; // r0
  void *v15; // r0
  void *v16; // r0
  void *v17; // r0
  void *v18; // r0
  void *v19; // r0

  switch ( a2 )
  {
    case 53:
      v19 = (void *)operator new[](0x80u);
      *((_DWORD *)this + 21) = v19;
      XP_API_MEMSET(v19, 0, 0x80u);
      getValue(*((char **)this + 9), *((_BYTE **)this + 21), 1, 124);
      break;
    case 58:
      v18 = *((void **)this + 15);
      if ( v18 )
      {
        LC_API_FREE_0(v18);
        *((_DWORD *)this + 15) = 0;
      }
      *((_DWORD *)this + 15) = XP_API_STRNEW(*((const char **)this + 9));
      break;
    case 63:
      v17 = *((void **)this + 49);
      if ( v17 )
      {
        LC_API_FREE_0(v17);
        *((_DWORD *)this + 49) = 0;
      }
      GLXPlayerUser::processUserGameList(this, *((char **)this + 9));
      break;
    case 64:
      v16 = *((void **)this + 49);
      if ( v16 )
      {
        LC_API_FREE_0(v16);
        *((_DWORD *)this + 49) = 0;
      }
      GLXPlayerUser::processUserState(this, *((char **)this + 9));
      break;
    case 65:
      v15 = *((void **)this + 49);
      if ( v15 )
      {
        LC_API_FREE_0(v15);
        *((_DWORD *)this + 49) = 0;
      }
      GLXPlayerUser::processUserData(this, *((char **)this + 9));
      break;
    case 67:
      v14 = *((void **)this + 49);
      if ( v14 )
      {
        LC_API_FREE_0(v14);
        *((_DWORD *)this + 49) = 0;
      }
      GLXPlayerUser::processUserReputation((int)this, *((char **)this + 9));
      break;
    case 69:
      v13 = *((void **)this + 49);
      if ( v13 )
      {
        LC_API_FREE_0(v13);
        *((_DWORD *)this + 49) = 0;
      }
      GLXPlayerUser::processUserBestScore((int)this, *((char **)this + 9));
      break;
    case 70:
      v12 = *((void **)this + 49);
      if ( v12 )
      {
        LC_API_FREE_0(v12);
        *((_DWORD *)this + 49) = 0;
      }
      GLXPlayerUser::processUserAvatar(this, *((char **)this + 9));
      break;
    case 71:
      GLXPlayerUser::processUploadAvatar(this, *((char **)this + 9));
      break;
    case 81:
      v11 = *((void **)this + 49);
      if ( v11 )
      {
        LC_API_FREE_0(v11);
        *((_DWORD *)this + 49) = 0;
      }
      GLXPlayerUser::processUserInformation(this, *((char **)this + 9));
      break;
    case 84:
      GLXPlayerUser::processUserTrophyIcon((int)this, *((char **)this + 9));
      break;
    case 88:
      GLXPlayerUser::processGetADV_RSS(this, *((char **)this + 9));
      break;
    case 89:
      GLXPlayerUser::processRssAttachment(this, *((char **)this + 9));
      break;
    case 90:
      GLXPlayerUser::processUserGameIcon(this, *((char **)this + 9));
      break;
    case 98:
      v4 = XP_API_STRLEN(*((const char **)this + 9));
      v5 = (char *)operator new[](v4);
      if ( GLXPlayerWebComponent::IsNextResponseStringToken(this, "d") )
      {
        v6 = *((void **)this + 71);
        if ( v6 )
        {
          operator delete[](v6);
          *((_DWORD *)this + 71) = 0;
        }
        NextResponseToken = GLXPlayerWebComponent::GetNextResponseToken(this, v5);
        *((_DWORD *)this + 71) = XP_API_STRNEW(NextResponseToken);
      }
      if ( GLXPlayerWebComponent::IsNextResponseStringToken(this, "t") )
      {
        v8 = *((void **)this + 72);
        if ( v8 )
        {
          operator delete[](v8);
          *((_DWORD *)this + 72) = 0;
        }
        v9 = GLXPlayerWebComponent::GetNextResponseToken(this, v5);
        *((_DWORD *)this + 72) = XP_API_STRNEW(v9);
      }
      if ( v5 )
        LC_API_FREE_0(v5);
      break;
    case 99:
      GLXPlayerUser::processUserChatWarning(this, *((char **)this + 9));
      break;
    case 101:
      GLXPlayerUser::processDownloadAvatar(this, *((char **)this + 9));
      break;
    case 103:
      GLXPlayerUser::processUserAvatarList(this, *((char **)this + 9));
      break;
    case 111:
      GLXPlayerUser::processLiveFeeds(this, *((char **)this + 9));
      break;
    case 204:
      GLXPlayerUser::processGetPromo_RSS(this, *((char **)this + 9));
      break;
    case 205:
      GLXPlayerUser::processPromoAttachment(this, *((char **)this + 9));
      break;
    default:
      return GLXPlayerWebComponent::OnUpdateSuccess(this, a2);
  }
  return GLXPlayerWebComponent::OnUpdateSuccess(this, a2);
}


// ===== 83cdc8 GLXPlayerUser::sendGetLiveFeeds(int) =====
int __fastcall GLXPlayerUser::sendGetLiveFeeds(GLXPlayerUser *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  if ( (unsigned int)(a2 - 1) > 0x13 )
    return 0;
  LC_API_MEMSET_0(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|c|%d|", 111, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendGetLiveFeeds -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 83cea0 GLXPlayerUser::sendSetUserMind(char *) =====
int __fastcall GLXPlayerUser::sendSetUserMind(GLXPlayerUser *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  if ( !a2 )
    return 0;
  LC_API_MEMSET_0(v5, 0, 0x1000u);
  if ( XP_API_STRLEN(a2) - 1 > 0xFE )
    return 0;
  sprintf(v5, "f|%d|i|%d|u|%s|mind|%s|", 110, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendSetUserMind -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 83cf88 GLXPlayerUser::sendSetUserState(int) =====
int __fastcall GLXPlayerUser::sendSetUserState(GLXPlayerUser *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  if ( (unsigned int)(a2 - 2) <= 1 )
  {
    XP_API_MEMSET(v5, 0, 0x1000u);
    sprintf(v5, "f|%d|i|%d|u|%s|a|%d|", 97, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
    XP_DEBUG_OUT("GLXPlayerUser::sendSetUserState -> buffer = %s\n", v5);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 97, -100);
    return 0;
  }
}


// ===== 83d080 GLXPlayerUser::sendGetChatWarning(void) =====
int __fastcall GLXPlayerUser::sendGetChatWarning(GLXPlayerUser *this)
{
  char v3[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v3, 0, 0x1000u);
  sprintf(v3, "f|%d|i|%d|u|%s|", 99, *((_DWORD *)this + 2), *((const char **)this + 3));
  XP_DEBUG_OUT("[GLXPlayerChat::SendGetChatWarning] -> buffer = %s\n", v3);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v3);
}


// ===== 83d13c GLXPlayerUser::sendGetAdvAttachment(int) =====
int __fastcall GLXPlayerUser::sendGetAdvAttachment(GLXPlayerUser *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|a|%d|", 89, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendGetAdvAttachment before String2Blob -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 83d200 GLXPlayerUser::sendGetAdvRSS(int) =====
int __fastcall GLXPlayerUser::sendGetAdvRSS(GLXPlayerUser *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  if ( a2 == -1 )
    sprintf(v5, "f|%d|i|%d|u|%s|", 88, *((_DWORD *)this + 2), *((const char **)this + 3));
  else
    sprintf(v5, "f|%d|i|%d|u|%s|p|%d|", 88, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendGetAdvRSS before String2Blob -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 16))(this, v5);
}


// ===== 83d2f8 GLXPlayerUser::sendGetGameTrophyList(int) =====
int __fastcall GLXPlayerUser::sendGetGameTrophyList(GLXPlayerUser *this, int a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  if ( a2 == -1 )
    sprintf(v5, "f|%d|i|%d|u|%s|", 86, *((_DWORD *)this + 2), *((const char **)this + 3));
  else
    sprintf(v5, "f|%d|i|%d|u|%s|p|%d|", 86, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendGetGameTrophyList before String2Blob -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 83d3f0 GLXPlayerUser::sendGetTrophyIcon(int,int) =====
int __fastcall GLXPlayerUser::sendGetTrophyIcon(GLXPlayerUser *this, int a2, unsigned int a3)
{
  char v7[4]; // [sp+14h] [bp-1008h] BYREF

  if ( a3 > 2 )
    return 0;
  *((_DWORD *)this + 53) = a3;
  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s|t|%d|rt|%d|", 84, *((_DWORD *)this + 2), *((const char **)this + 3), a2, a3);
  XP_DEBUG_OUT("GLXPlayerUser::sendGetTrophyIcon before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83d4d0 GLXPlayerUser::sendDelUserStoreData(char *) =====
int __fastcall GLXPlayerUser::sendDelUserStoreData(GLXPlayerUser *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  if ( a2 )
  {
    XP_API_MEMSET(v5, 0, 0x1000u);
    sprintf(v5, "f|%d|i|%d|u|%s|k|%s|", 72, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
    XP_DEBUG_OUT("GLXPlayerUser::sendDelUserStoreData before String2Blob -> buffer = %s\n", v5);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 72, -100);
    return 0;
  }
}


// ===== 83d5c0 GLXPlayerUser::sendGetUserAvatarList(void) =====
int __fastcall GLXPlayerUser::sendGetUserAvatarList(GLXPlayerUser *this)
{
  char v3[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v3, 0, 0x1000u);
  sprintf(v3, "f|%d|i|%d|u|%s|", 103, *((_DWORD *)this + 2), *((const char **)this + 3));
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserAvatarList-> buffer = %s\n", v3);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v3);
}


// ===== 83d67c GLXPlayerUser::sendDelUserAvatar(char *) =====
int __fastcall GLXPlayerUser::sendDelUserAvatar(GLXPlayerUser *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  if ( a2 )
  {
    LC_API_MEMSET_0(v5, 0, 0x1000u);
    XP_API_MEMSET(v5, 0, 0x1000u);
    sprintf(v5, "f|%d|i|%d|u|%s|d|%s|", 102, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
    XP_DEBUG_OUT("GLXPlayerUser::sendDelUserAvatar-> buffer = %s\n", v5);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 102, -100);
    return 0;
  }
}


// ===== 83d77c GLXPlayerUser::sendUploadUserAvatar(char *) =====
const char *__fastcall GLXPlayerUser::sendUploadUserAvatar(GLXPlayerUser *this, char *a2)
{
  const char *v2; // r6
  unsigned int v4; // r7
  void *v5; // r4
  size_t v6; // r0

  v2 = a2;
  if ( a2 )
  {
    v4 = XP_API_STRLEN(a2) + 128;
    v5 = (void *)operator new[](v4);
    XP_API_MEMSET(v5, 0, v4);
    sprintf((char *)v5, "f|%d|i|%d|u|%s|d|%s|", 71, *((_DWORD *)this + 2), *((const char **)this + 3), v2);
    v6 = XP_API_STRLEN((const char *)v5);
    XP_DEBUG_OUT("GLXPlayerUser::sendUploadUserAvatar before String2Blob -> buffer length = %d\n", v6);
    v2 = (const char *)(*(int (__fastcall **)(GLXPlayerUser *, void *))(*(_DWORD *)this + 16))(this, v5);
    if ( v5 )
      LC_API_FREE_0(v5);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 71, -100);
  }
  return v2;
}


// ===== 83d84c GLXPlayerUser::sendDownloadUserAvatar(char *) =====
int __fastcall GLXPlayerUser::sendDownloadUserAvatar(GLXPlayerUser *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|d|%s|", 101, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserAvatar before String2Blob -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 83d910 GLXPlayerUser::sendGetUserUID(char *,bool) =====
int __fastcall GLXPlayerUser::sendGetUserUID(GLXPlayerUser *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1008h] BYREF

  if ( a2 )
  {
    XP_API_MEMSET(v7, 0, 0x1000u);
    if ( a3 )
      sprintf(v7, "f|%d|i|%d|u|%s|un|%s|", 58, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2);
    else
      sprintf(v7, "f|%d|i|%d|u|%s|n|%s|", 58, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2);
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserUID before String2Blob -> buffer = %s\n", v7);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 58, -100);
    return 0;
  }
}


// ===== 83da24 GLXPlayerUser::sendPointUserReputation(char *,int,bool) =====
int __fastcall GLXPlayerUser::sendPointUserReputation(GLXPlayerUser *this, char *a2, int a3, int a4)
{
  bool v8; // zf
  _BOOL4 v9; // r1
  char v11[4]; // [sp+14h] [bp-1004h] BYREF

  if ( !a2 )
    goto LABEL_8;
  v8 = a3 == 5;
  if ( a3 != 5 )
    v8 = a3 == 1;
  v9 = !v8;
  if ( v8 )
  {
    XP_API_MEMSET(v11, v9, 0x1000u);
    if ( a4 )
      sprintf(v11, "f|%d|i|%d|u|%s|un|%s|r|%d|", 68, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2, a3);
    else
      sprintf(v11, "f|%d|i|%d|u|%s|n|%s|r|%d|", 68, *((_DWORD *)this + 2), *((_DWORD *)this + 3), a2, a3);
    XP_DEBUG_OUT("GLXPlayerUser::sendUpdateReputation before String2Blob -> buffer = %s\n", v11);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v11);
  }
  else
  {
LABEL_8:
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 68, -100);
    return 0;
  }
}


// ===== 83db50 GLXPlayerUser::sendSetUserStoreData(char *,char *) =====
int __fastcall GLXPlayerUser::sendSetUserStoreData(GLXPlayerUser *this, char *a2, char *a3)
{
  size_t v6; // r0
  char v8[4]; // [sp+14h] [bp-1008h] BYREF

  if ( a2 )
  {
    XP_API_MEMSET(v8, 0, 0x1000u);
    sprintf(v8, "f|%d|i|%d|u|%s|k|%s|d|%s|", 66, *((_DWORD *)this + 2), *((const char **)this + 3), a2, a3);
    v6 = XP_API_STRLEN(v8);
    XP_DEBUG_OUT("GLXPlayerUser::sendSetUserStoreData before String2Blob -> buffer length= %d\n", v6);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 16))(this, v8);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 66, -100);
    return 0;
  }
}


// ===== 83dc4c GLXPlayerUser::sendRetrievalPassword(char *) =====
int __fastcall GLXPlayerUser::sendRetrievalPassword(GLXPlayerUser *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  if ( a2 )
  {
    XP_API_MEMSET(v5, 0, 0x1000u);
    sprintf(v5, "f|%d|i|%d|u|%s|", 52, *((_DWORD *)this + 2), a2);
    XP_DEBUG_OUT("GLXPlayerUser::sendRetrievalPassword before String2Blob -> buffer = %s\n", v5);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 52, -100);
    return 0;
  }
}


// ===== 83dd34 GLXPlayerUser::sendChangeEmail(char *,char *,char *) =====
int __fastcall GLXPlayerUser::sendChangeEmail(GLXPlayerUser *this, char *a2, char *a3, char *a4)
{
  bool v5; // zf
  int v8; // r1
  char v11[4]; // [sp+14h] [bp-1004h] BYREF

  v5 = a2 == nullptr;
  if ( a2 )
    v5 = a3 == nullptr;
  v8 = v5;
  if ( v5 || !a4 )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 51, -100);
    return 0;
  }
  else
  {
    XP_API_MEMSET(v11, v8, 0x1000u);
    sprintf(v11, "f|%d|i|%d|u|%s|p|%s|ne|%s|", 51, *((_DWORD *)this + 2), a2, a3, a4);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangeEmail before String2Blob -> buffer = %s\n", v11);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v11);
  }
}


// ===== 83de3c GLXPlayerUser::sendChangePassword(char *,char *,char *,char *) =====
int __fastcall GLXPlayerUser::sendChangePassword(GLXPlayerUser *this, char *a2, char *a3, char *a4, char *a5)
{
  bool v7; // zf
  bool v11; // zf
  char v12[4]; // [sp+14h] [bp-1008h] BYREF

  v7 = a2 == nullptr;
  if ( a2 )
    v7 = a3 == nullptr;
  if ( v7 )
    goto LABEL_5;
  v11 = a4 == nullptr;
  if ( a4 )
    v11 = a5 == nullptr;
  if ( v11 || XP_API_STRCMP(a4, a5) )
  {
LABEL_5:
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 50, -100);
    return 0;
  }
  else
  {
    XP_API_MEMSET(v12, 0, 0x1000u);
    sprintf(v12, "f|%d|i|%d|u|%s|p|%s|np|%s|vp|%s|", 50, *((_DWORD *)this + 2), a2, a3, a4, a5);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangePassword before String2Blob -> buffer = %s\n", v12);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v12);
  }
}


// ===== 83df58 GLXPlayerUser::sendChangeUserName(char *,char *,char *,bool) =====
int __fastcall GLXPlayerUser::sendChangeUserName(GLXPlayerUser *this, char *a2, char *a3, char *a4, bool a5)
{
  bool v6; // zf
  int v9; // r1
  char v12[4]; // [sp+14h] [bp-1008h] BYREF

  v6 = a2 == nullptr;
  if ( a2 )
    v6 = a3 == nullptr;
  v9 = v6;
  if ( v6 || !a4 )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 14, -100);
    return 0;
  }
  else
  {
    XP_API_MEMSET(v12, v9, 0x1000u);
    sprintf(v12, "f|%d|i|%d|u|%s|p|%s|nu|%s|o|%d|", 14, *((_DWORD *)this + 2), a2, a3, a4, a5);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangeUserName before String2Blob -> buffer = %s\n", v12);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v12);
  }
}


// ===== 83e068 GLXPlayerUser::sendGetUsedApp(char *) =====
int __fastcall GLXPlayerUser::sendGetUsedApp(GLXPlayerUser *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1004h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  if ( a2 )
    sprintf(v5, "f|%d|i|%d|u|%s|", 57, *((_DWORD *)this + 2), a2);
  else
    sprintf(v5, "f|%d|i|%d|u|%s|", 57, *((_DWORD *)this + 2), *((const char **)this + 3));
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUsedApp before String2Blob -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v5);
}


// ===== 83e158 GLXPlayerUser::sendChangeCountry(char *,char *,char *) =====
int __fastcall GLXPlayerUser::sendChangeCountry(GLXPlayerUser *this, char *a2, char *a3, char *a4)
{
  bool v5; // zf
  int v8; // r1
  char v11[4]; // [sp+14h] [bp-1004h] BYREF

  v5 = a2 == nullptr;
  if ( a2 )
    v5 = a3 == nullptr;
  v8 = v5;
  if ( v5 || !a4 )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 54, -100);
    return 0;
  }
  else
  {
    XP_API_MEMSET(v11, v8, 0x1000u);
    sprintf(v11, "f|%d|i|%d|u|%s|p|%s|nc|%s|", 54, *((_DWORD *)this + 2), a2, a3, a4);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangeCountry before String2Blob -> buffer = %s\n", v11);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v11);
  }
}


// ===== 83e260 GLXPlayerUser::sendGetCountry(char *,char *,bool) =====
int __fastcall GLXPlayerUser::sendGetCountry(GLXPlayerUser *this, char *a2, char *a3, int a4)
{
  char v9[4]; // [sp+14h] [bp-1004h] BYREF

  if ( a2 )
  {
    XP_API_MEMSET(v9, 0, 0x1000u);
    if ( a3 )
      sprintf(v9, "f|%d|i|%d|u|%s|n|%s|nf|%d|", 53, *((_DWORD *)this + 2), a2, a3, a4);
    else
      sprintf(v9, "f|%d|i|%d|u|%s|nf|%d|", 53, *((_DWORD *)this + 2), a2, a4);
    XP_DEBUG_OUT("GLXPlayerUser::sendGetCountry before String2Blob -> buffer = %s\n", v9);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v9);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 54, -100);
    return 0;
  }
}


// ===== 83e384 GLXPlayerUser::sendGetGeneralConditions(char *) =====
int __fastcall GLXPlayerUser::sendGetGeneralConditions(GLXPlayerUser *this, char *a2)
{
  char v5[4]; // [sp+Ch] [bp-1008h] BYREF

  XP_API_MEMSET(v5, 0, 0x1000u);
  sprintf(v5, "f|%d|i|%d|u|%s|l|%s|", 98, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
  XP_DEBUG_OUT("GLXPlayerLogin::SendGetGeneralConditions -> buffer = %s\n", v5);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 16))(this, v5);
}


// ===== 83e448 GLXPlayerUser::sendGetGameIcon(int,char *) =====
int __fastcall GLXPlayerUser::sendGetGameIcon(GLXPlayerUser *this, int a2, char *a3)
{
  char v7[4]; // [sp+Ch] [bp-1104h] BYREF
  char v8[260]; // [sp+100Ch] [bp-104h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s|", 90, *((_DWORD *)this + 2), *((const char **)this + 3));
  if ( a2 != -1 )
  {
    XP_API_MEMSET(v8, 0, 0x100u);
    sprintf(v8, "p|%d|", a2);
    XP_API_STRCAT(v7, v8);
  }
  if ( a3 )
  {
    XP_API_MEMSET(v8, 0, 0x100u);
    sprintf(v8, "pn|%s|", a3);
    XP_API_STRCAT(v7, v8);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetAdvAttachment before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83e598 GLXPlayerUser::sendGetPromoAttachment(char *,int) =====
int __fastcall GLXPlayerUser::sendGetPromoAttachment(GLXPlayerUser *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1084h] BYREF
  char v8[132]; // [sp+100Ch] [bp-84h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|a|%d|", 205, *((_DWORD *)this + 2), a3);
  LC_API_MEMSET_0(v8, 0, 0x80u);
  if ( a2 )
  {
    sprintf(v8, "u|%s|", a2);
    XP_API_STRCAT(v7, v8);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetPromoAttachment before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83e6a0 GLXPlayerUser::sendGetPromoRss(char *,int,int,char *) =====
int __fastcall GLXPlayerUser::sendGetPromoRss(GLXPlayerUser *this, char *a2, int a3, int a4, char *a5)
{
  char v10[4]; // [sp+1Ch] [bp-1088h] BYREF
  char v11[136]; // [sp+101Ch] [bp-88h] BYREF

  XP_API_MEMSET(v10, 0, 0x1000u);
  sprintf(v10, "f|%d|i|%d|y|%d|nid|%d|l|%s|", 204, *((_DWORD *)this + 2), a3, a4, a5);
  LC_API_MEMSET_0(v11, 0, 0x80u);
  if ( a2 )
  {
    sprintf(v11, "u|%s|", a2);
    XP_API_STRCAT(v10, v11);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetPromoRss before String2Blob -> buffer = %s\n", v10);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 16))(this, v10);
}


// ===== 83e7b8 GLXPlayerUser::sendGetUserGameTrophyList(int,char *,bool) =====
int __fastcall GLXPlayerUser::sendGetUserGameTrophyList(GLXPlayerUser *this, int a2, char *a3, int a4)
{
  char v9[4]; // [sp+Ch] [bp-FF4h] BYREF
  char v10[136]; // [sp+100Ch] [bp+Ch] BYREF

  LC_API_MEMSET_0(v10, 0, 0x80u);
  XP_API_MEMSET(v9, 0, 0x1000u);
  sprintf(v9, "f|%d|i|%d|u|%s", 87, *((_DWORD *)this + 2), *((const char **)this + 3));
  if ( a2 != -1 )
  {
    sprintf(v10, "|p|%d", a2);
    XP_API_STRCAT(v9, v10);
  }
  if ( a3 )
  {
    if ( a4 )
      sprintf(v10, "|un|%s|", a3);
    else
      sprintf(v10, "|n|%s|", a3);
    XP_API_STRCAT(v9, v10);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserGameTrophyList before String2Blob -> buffer = %s\n", v9);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v9);
}


// ===== 83e918 GLXPlayerUser::sendAwardTrophy(int *,int) =====
int __fastcall GLXPlayerUser::sendAwardTrophy(GLXPlayerUser *this, int *a2, int a3)
{
  bool v3; // cc
  int *v4; // r7
  int v6; // r5
  int v8; // r8
  int v9; // r10
  char v11[20]; // [sp+1Ch] [bp-1118h] BYREF
  char v12[228]; // [sp+101Ch] [bp-118h] BYREF
  _DWORD v13[6]; // [sp+111Ch] [bp-18h] BYREF

  v3 = (int)a2 <= 0;
  if ( a2 )
    v3 = a3 <= 0;
  v4 = a2;
  v6 = v3;
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 85, -100);
    return 0;
  }
  else
  {
    XP_API_MEMSET(v11, v6, 0x1000u);
    LC_API_MEMSET_0(v12, v6, 0x100u);
    v13[1] = v6;
    v13[2] = v6;
    v8 = a3 - 1;
    v13[3] = v6;
    v13[0] = v6;
    if ( a3 != 1 )
    {
      v9 = a3 - 2;
      do
      {
        while ( 1 )
        {
          XP_API_MEMSET(v13, 0, 0x10u);
          sprintf((char *)v13, "%d,", *v4);
          XP_API_STRCAT(v12, (const char *)v13);
          if ( v9 == v6 )
            break;
          ++v6;
          ++v4;
          if ( v6 >= v8 )
            goto LABEL_12;
        }
        XP_API_MEMSET(v13, 0, 0x10u);
        sprintf((char *)v13, "%d", v4[1]);
        ++v6;
        XP_API_STRCAT(v12, (const char *)v13);
        ++v4;
      }
      while ( v6 < v8 );
    }
LABEL_12:
    sprintf(v11, "f|%d|i|%d|u|%s|t|%s|", 85, *((_DWORD *)this + 2), *((const char **)this + 3), v12);
    XP_DEBUG_OUT("GLXPlayerUser::sendAwardTrophy before String2Blob -> buffer = %s\n", v11);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v11);
  }
}


// ===== 83eb14 GLXPlayerUser::sendUpdateUserInfo(char *,int,char *,char *,char *,int,char *) =====
int __fastcall GLXPlayerUser::sendUpdateUserInfo(
        GLXPlayerUser *this,
        char *a2,
        int a3,
        char *a4,
        char *a5,
        char *a6,
        int a7,
        char *a8)
{
  bool v10; // zf
  bool v13; // zf
  bool v15; // zf
  char v16[4]; // [sp+1Ch] [bp-1088h] BYREF
  char v17[136]; // [sp+101Ch] [bp-88h] BYREF

  v10 = a2 == nullptr;
  if ( !a2 )
    v10 = a3 == -1;
  if ( !v10 )
    goto LABEL_8;
  v13 = a5 == nullptr;
  if ( !a5 )
    v13 = a4 == nullptr;
  if ( !v13 )
    goto LABEL_8;
  v15 = a6 == nullptr;
  if ( !a6 )
    v15 = a7 == -1;
  if ( v15 && !a8 )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 82, -100);
    return 0;
  }
  else
  {
LABEL_8:
    XP_API_MEMSET(v16, 0, 0x1000u);
    sprintf(v16, "f|%d|i|%d|u|%s", 82, *((_DWORD *)this + 2), *((const char **)this + 3));
    LC_API_MEMSET_0(v17, 0, 0x80u);
    if ( a2 )
    {
      XP_API_MEMSET(v17, 0, 0x80u);
      sprintf(v17, "|email|%s", a2);
      XP_API_STRCAT(v16, v17);
    }
    if ( a3 != -1 )
    {
      XP_API_MEMSET(v17, 0, 0x80u);
      sprintf(v17, "|email_flag|%d", a3);
      XP_API_STRCAT(v16, v17);
    }
    if ( a4 )
    {
      XP_API_MEMSET(v17, 0, 0x80u);
      sprintf(v17, "|country|%s", a4);
      XP_API_STRCAT(v16, v17);
    }
    if ( a5 )
    {
      XP_API_MEMSET(v17, 0, 0x80u);
      sprintf(v17, "|firstname|%s", a5);
      XP_API_STRCAT(v16, v17);
    }
    if ( a6 )
    {
      XP_API_MEMSET(v17, 0, 0x80u);
      sprintf(v17, "|lastname|%s", a6);
      XP_API_STRCAT(v16, v17);
    }
    if ( a7 != -1 )
    {
      XP_API_MEMSET(v17, 0, 0x80u);
      sprintf(v17, "|sex|%d", a7);
      XP_API_STRCAT(v16, v17);
    }
    if ( a8 )
    {
      XP_API_MEMSET(v17, 0, 0x80u);
      sprintf(v17, "|birthday|%s|", a8);
      XP_API_STRCAT(v16, v17);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendUpdateUserInfo before String2Blob -> buffer = %s\n", v16);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v16);
  }
}


// ===== 83ee20 GLXPlayerUser::sendGetUserInfo(char *,bool) =====
int __fastcall GLXPlayerUser::sendGetUserInfo(GLXPlayerUser *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1084h] BYREF
  char v8[132]; // [sp+100Ch] [bp-84h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s", 81, *((_DWORD *)this + 2), *((const char **)this + 3));
  if ( a2 )
  {
    LC_API_MEMSET_0(v8, 0, 0x80u);
    if ( a3 )
      sprintf(v8, "|un|%s|", a2);
    else
      sprintf(v8, "|n|%s|", a2);
    XP_API_STRCAT(v7, v8);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserInfo before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83ef50 GLXPlayerUser::sendGetUserAvatar(char *,bool) =====
int __fastcall GLXPlayerUser::sendGetUserAvatar(GLXPlayerUser *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1084h] BYREF
  char v8[132]; // [sp+100Ch] [bp-84h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s|", 70, *((_DWORD *)this + 2), *((const char **)this + 3));
  if ( a2 )
  {
    LC_API_MEMSET_0(v8, 0, 0x80u);
    if ( a3 )
      sprintf(v8, "un|%s|", a2);
    else
      sprintf(v8, "n|%s|", a2);
    XP_API_STRCAT(v7, v8);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserAvatar before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83f080 GLXPlayerUser::sendGetUserBestScore(char *,bool) =====
int __fastcall GLXPlayerUser::sendGetUserBestScore(GLXPlayerUser *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1084h] BYREF
  char v8[132]; // [sp+100Ch] [bp-84h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s", 69, *((_DWORD *)this + 2), *((const char **)this + 3));
  if ( a2 )
  {
    LC_API_MEMSET_0(v8, 0, 0x80u);
    if ( a3 )
      sprintf(v8, "|un|%s|", a2);
    else
      sprintf(v8, "|n|%s|", a2);
    XP_API_STRCAT(v7, v8);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserBestScore before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83f1b0 GLXPlayerUser::sendGetReputation(char *,bool) =====
int __fastcall GLXPlayerUser::sendGetReputation(GLXPlayerUser *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1084h] BYREF
  char v8[132]; // [sp+100Ch] [bp-84h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s", 67, *((_DWORD *)this + 2), *((const char **)this + 3));
  if ( a2 )
  {
    LC_API_MEMSET_0(v8, 0, 0x80u);
    if ( a3 )
      sprintf(v8, "|un|%s|", a2);
    else
      sprintf(v8, "|n|%s|", a2);
    XP_API_STRCAT(v7, v8);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetReputation before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83f2e0 GLXPlayerUser::sendGetUserStoreData(char *,char *,bool) =====
int __fastcall GLXPlayerUser::sendGetUserStoreData(GLXPlayerUser *this, char *a2, char *a3, int a4)
{
  char v9[4]; // [sp+Ch] [bp-1084h] BYREF
  char v10[132]; // [sp+100Ch] [bp-84h] BYREF

  if ( a2 )
  {
    XP_API_MEMSET(v9, 0, 0x1000u);
    sprintf(v9, "f|%d|i|%d|u|%s|k|%s", 65, *((_DWORD *)this + 2), *((const char **)this + 3), a2);
    if ( a3 )
    {
      LC_API_MEMSET_0(v10, 0, 0x80u);
      if ( a4 )
        sprintf(v10, "|un|%s|", a3);
      else
        sprintf(v10, "|n|%s|", a3);
      XP_API_STRCAT(v9, v10);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserStoreData before String2Blob -> buffer = %s\n", v9);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v9);
  }
  else
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 64, -100);
    return 0;
  }
}


// ===== 83f440 GLXPlayerUser::sendGetUserState(char *,bool) =====
int __fastcall GLXPlayerUser::sendGetUserState(GLXPlayerUser *this, char *a2, int a3)
{
  char v7[4]; // [sp+Ch] [bp-1084h] BYREF
  char v8[132]; // [sp+100Ch] [bp-84h] BYREF

  XP_API_MEMSET(v7, 0, 0x1000u);
  sprintf(v7, "f|%d|i|%d|u|%s", 64, *((_DWORD *)this + 2), *((const char **)this + 3));
  if ( a2 )
  {
    LC_API_MEMSET_0(v8, 0, 0x80u);
    if ( a3 )
      sprintf(v8, "|un|%s|", a2);
    else
      sprintf(v8, "|n|%s|", a2);
    XP_API_STRCAT(v7, v8);
  }
  XP_DEBUG_OUT("GLXPlayerUser::sendGetUserState before String2Blob -> buffer = %s\n", v7);
  return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v7);
}


// ===== 83f570 GLXPlayerUser::sendGetUserGameList(char *,int,int,bool) =====
int __fastcall GLXPlayerUser::sendGetUserGameList(
        GLXPlayerUser *this,
        char *a2,
        unsigned int a3,
        unsigned int a4,
        bool a5)
{
  char v10[4]; // [sp+1Ch] [bp-1088h] BYREF
  char v11[136]; // [sp+101Ch] [bp-88h] BYREF

  if ( (a3 >> 31) | (a4 >> 31) )
  {
    (*(void (__fastcall **)(_DWORD, int, int))(**((_DWORD **)this + 1) + 12))(*((_DWORD *)this + 1), 63, -100);
    return 0;
  }
  else
  {
    XP_API_MEMSET(v10, 0, 0x1000u);
    sprintf(v10, "f|%d|i|%d|u|%s|d|%d|l|%d", 63, *((_DWORD *)this + 2), *((const char **)this + 3), a3, a4);
    if ( a2 )
    {
      LC_API_MEMSET_0(v11, 0, 0x80u);
      if ( a5 )
        sprintf(v11, "|un|%s|", a2);
      else
        sprintf(v11, "|n|%s|", a2);
      XP_API_STRCAT(v10, v11);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserGameList before String2Blob -> buffer = %s\n", v10);
    return (*(int (__fastcall **)(GLXPlayerUser *, char *))(*(_DWORD *)this + 12))(this, v10);
  }
}


// ===== 83f6e4 item::~item() =====
void __fastcall item::~item(std::string *this)
{
  std::string::~string(this + 11);
  std::string::~string(this + 10);
  std::string::~string(this + 9);
  std::string::~string(this + 8);
  std::string::~string(this + 7);
  std::string::~string(this + 6);
  std::string::~string(this + 5);
  std::string::~string(this + 4);
  std::string::~string(this + 3);
  std::string::~string(this + 2);
  std::string::~string(this + 1);
  std::string::~string(this);
}


// ===== 83f754 GLXPlayerUser::GLXPlayerUser(void) =====
void __fastcall GLXPlayerUser::GLXPlayerUser(GLXPlayerUser *this)
{
  GLXPlayerHttp *v2; // r6

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *(_DWORD *)this = off_9930A8;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_QWORD *)this + 18) = 0;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_BYTE *)this + 96) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 32) = -1;
  *((_DWORD *)this + 33) = -1;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 41) = -1;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 61) = 0;
  XP_API_MEMSET((char *)this + 220, 0, 8u);
  *((_DWORD *)this + 74) = -1;
  *((_DWORD *)this + 75) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 68) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = 0;
  *((_DWORD *)this + 53) = -1;
}


// ===== 83f8a4 GLXPlayerUser::GLXPlayerUser(void) =====
void __fastcall GLXPlayerUser::GLXPlayerUser(GLXPlayerUser *this)
{
  GLXPlayerHttp *v2; // r6

  GLXPlayerWebComponent::GLXPlayerWebComponent(this);
  *((_DWORD *)this + 58) = 0;
  *((_DWORD *)this + 59) = 0;
  *(_DWORD *)this = off_9930A8;
  *((_DWORD *)this + 60) = 0;
  *((_DWORD *)this + 62) = 0;
  *((_DWORD *)this + 63) = 0;
  *((_DWORD *)this + 64) = 0;
  GLXPlayerWebComponent::LoadConfig(this);
  v2 = (GLXPlayerHttp *)operator new(0x428u);
  GLXPlayerHttp::GLXPlayerHttp(v2, *((char **)this + 4), *((char **)this + 6), *((char **)this + 5));
  *((_QWORD *)this + 18) = 0;
  *((_DWORD *)this + 8) = v2;
  *((_DWORD *)this + 15) = 0;
  *((_DWORD *)this + 16) = 0;
  *((_DWORD *)this + 17) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_DWORD *)this + 22) = 0;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 25) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  *((_BYTE *)this + 80) = 0;
  *((_BYTE *)this + 96) = 0;
  *((_DWORD *)this + 28) = 0;
  *((_DWORD *)this + 29) = 0;
  *((_DWORD *)this + 30) = 0;
  *((_DWORD *)this + 31) = 0;
  *((_DWORD *)this + 38) = 0;
  *((_DWORD *)this + 39) = 0;
  *((_DWORD *)this + 32) = -1;
  *((_DWORD *)this + 33) = -1;
  *((_DWORD *)this + 34) = 0;
  *((_DWORD *)this + 41) = -1;
  *((_DWORD *)this + 42) = 0;
  *((_DWORD *)this + 43) = 0;
  *((_DWORD *)this + 44) = 0;
  *((_DWORD *)this + 45) = 0;
  *((_DWORD *)this + 46) = 0;
  *((_DWORD *)this + 47) = 0;
  *((_DWORD *)this + 48) = 0;
  *((_DWORD *)this + 49) = 0;
  *((_DWORD *)this + 50) = 0;
  *((_DWORD *)this + 51) = 0;
  *((_DWORD *)this + 52) = 0;
  *((_DWORD *)this + 61) = 0;
  XP_API_MEMSET((char *)this + 220, 0, 8u);
  *((_DWORD *)this + 74) = -1;
  *((_DWORD *)this + 75) = 0;
  *((_DWORD *)this + 57) = 0;
  *((_DWORD *)this + 66) = 0;
  *((_DWORD *)this + 67) = 0;
  *((_DWORD *)this + 68) = 0;
  *((_DWORD *)this + 70) = 0;
  *((_DWORD *)this + 71) = 0;
  *((_DWORD *)this + 72) = 0;
  *((_DWORD *)this + 73) = 0;
  *((_DWORD *)this + 53) = -1;
}


// ===== 83f9f4 std::vector<item,std::allocator<item>>::~vector() =====
std::string **__fastcall std::vector<item>::~vector(std::string **a1)
{
  std::string *v1; // r5
  std::string *v2; // r6
  std::string *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 -= 12;
    item::~item(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 32 * (((char *)a1[2] - (char *)v4) >> 5);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
    return a1;
  }
  LC_API_FREE_0(v4);
  return a1;
}


// ===== 83fa7c channel::~channel() =====
void __fastcall channel::~channel(channel *this)
{
  std::vector<item>::~vector((std::string **)this + 18);
  std::string::~string((std::string *)this + 2);
  std::string::~string((std::string *)this + 1);
  std::string::~string((std::string *)this);
}


// ===== 83faac std::vector<channel,std::allocator<channel>>::~vector() =====
channel **__fastcall std::vector<channel>::~vector(channel **a1)
{
  channel *v1; // r5
  channel *v2; // r6
  channel *v4; // r0
  size_t v5; // r1

  v1 = a1[1];
  v2 = *a1;
  while ( v2 != v1 )
  {
    v1 = (channel *)((char *)v1 - 84);
    channel::~channel(v1);
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = 4 * ((a1[2] - v4) >> 2);
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, v5);
    return a1;
  }
  LC_API_FREE_0(v4);
  return a1;
}


// ===== 83fb24 GLXPlayerUser::~GLXPlayerUser() =====
void __fastcall GLXPlayerUser::~GLXPlayerUser(channel **this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0
  void *v13; // r0
  void *v14; // r0
  void *v15; // r0
  void *v16; // r0
  void *v17; // r0
  void *v18; // r0
  void *v19; // r0
  int v20; // r3
  int v21; // r0
  int v22; // r5

  *this = (channel *)off_9930A8;
  GLXPlayerUser::clearUserGameList((GLXPlayerUser *)this);
  GLXPlayerUser::clearUserState((GLXPlayerUser *)this);
  GLXPlayerUser::clearUserInformation((GLXPlayerUser *)this);
  GLXPlayerUser::clearAvatarList((GLXPlayerUser *)this);
  v2 = *(this + 18);
  if ( v2 )
  {
    operator delete[](v2);
    *(this + 18) = nullptr;
  }
  v3 = *(this + 48);
  if ( v3 )
  {
    operator delete[](v3);
    *(this + 48) = nullptr;
  }
  v4 = *(this + 49);
  if ( v4 )
  {
    operator delete[](v4);
    *(this + 49) = nullptr;
  }
  v5 = *(this + 50);
  if ( v5 )
  {
    operator delete[](v5);
    *(this + 50) = nullptr;
  }
  v6 = *(this + 15);
  if ( v6 )
  {
    LC_API_FREE_0(v6);
    *(this + 15) = nullptr;
  }
  v7 = *(this + 51);
  if ( v7 )
  {
    operator delete[](v7);
    *(this + 51) = nullptr;
  }
  v8 = *(this + 52);
  if ( v8 )
  {
    operator delete[](v8);
    *(this + 52) = nullptr;
  }
  v9 = *(this + 61);
  if ( v9 )
  {
    LC_API_FREE_0(v9);
    *(this + 61) = nullptr;
  }
  v10 = *(this + 42);
  if ( v10 )
  {
    LC_API_FREE_0(v10);
    *(this + 42) = nullptr;
  }
  v11 = *(this + 43);
  if ( v11 )
  {
    LC_API_FREE_0(v11);
    *(this + 43) = nullptr;
  }
  v12 = *(this + 44);
  if ( v12 )
  {
    LC_API_FREE_0(v12);
    *(this + 44) = nullptr;
  }
  v13 = *(this + 45);
  if ( v13 )
  {
    LC_API_FREE_0(v13);
    *(this + 45) = nullptr;
  }
  v14 = *(this + 46);
  if ( v14 )
  {
    LC_API_FREE_0(v14);
    *(this + 46) = nullptr;
  }
  v15 = *(this + 47);
  if ( v15 )
  {
    LC_API_FREE_0(v15);
    *(this + 47) = nullptr;
  }
  v16 = *(this + 70);
  if ( v16 )
  {
    operator delete[](v16);
    *(this + 70) = nullptr;
  }
  v17 = *(this + 71);
  if ( v17 )
  {
    LC_API_FREE_0(v17);
    *(this + 71) = nullptr;
  }
  v18 = *(this + 72);
  if ( v18 )
  {
    LC_API_FREE_0(v18);
    *(this + 72) = nullptr;
  }
  v19 = *(this + 73);
  if ( v19 )
  {
    operator delete[](v19);
    *(this + 73) = nullptr;
  }
  v20 = (int)*(this + 75);
  if ( v20 )
  {
    v21 = v20 + 8 * *(_DWORD *)(v20 - 4);
    if ( v20 != v21 )
    {
      while ( 1 )
      {
        v22 = v21 - 8;
        _LiveFeed::~_LiveFeed((_LiveFeed *)(v21 - 8));
        v21 = (int)*(this + 75);
        if ( v21 == v22 )
          break;
        v21 = v22;
      }
    }
    operator delete[]((void *)(v21 - 8));
    *(this + 75) = nullptr;
  }
  std::vector<channel>::~vector(this + 62);
  std::vector<channel>::~vector(this + 58);
  GLXPlayerWebComponent::~GLXPlayerWebComponent((GLXPlayerWebComponent *)this);
}


// ===== 83fd84 GLXPlayerUser::~GLXPlayerUser() =====
void __fastcall GLXPlayerUser::~GLXPlayerUser(channel **this)
{
  GLXPlayerUser::~GLXPlayerUser(this);
  LC_API_FREE_0(this);
}


// ===== 83fda0 GLXPlayerUser::~GLXPlayerUser() =====
void __fastcall GLXPlayerUser::~GLXPlayerUser(channel **this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  void *v6; // r0
  void *v7; // r0
  void *v8; // r0
  void *v9; // r0
  void *v10; // r0
  void *v11; // r0
  void *v12; // r0
  void *v13; // r0
  void *v14; // r0
  void *v15; // r0
  void *v16; // r0
  void *v17; // r0
  void *v18; // r0
  void *v19; // r0
  int v20; // r3
  int v21; // r0
  int v22; // r5

  *this = (channel *)off_9930A8;
  GLXPlayerUser::clearUserGameList((GLXPlayerUser *)this);
  GLXPlayerUser::clearUserState((GLXPlayerUser *)this);
  GLXPlayerUser::clearUserInformation((GLXPlayerUser *)this);
  GLXPlayerUser::clearAvatarList((GLXPlayerUser *)this);
  v2 = *(this + 18);
  if ( v2 )
  {
    operator delete[](v2);
    *(this + 18) = nullptr;
  }
  v3 = *(this + 48);
  if ( v3 )
  {
    operator delete[](v3);
    *(this + 48) = nullptr;
  }
  v4 = *(this + 49);
  if ( v4 )
  {
    operator delete[](v4);
    *(this + 49) = nullptr;
  }
  v5 = *(this + 50);
  if ( v5 )
  {
    operator delete[](v5);
    *(this + 50) = nullptr;
  }
  v6 = *(this + 15);
  if ( v6 )
  {
    LC_API_FREE_0(v6);
    *(this + 15) = nullptr;
  }
  v7 = *(this + 51);
  if ( v7 )
  {
    operator delete[](v7);
    *(this + 51) = nullptr;
  }
  v8 = *(this + 52);
  if ( v8 )
  {
    operator delete[](v8);
    *(this + 52) = nullptr;
  }
  v9 = *(this + 61);
  if ( v9 )
  {
    LC_API_FREE_0(v9);
    *(this + 61) = nullptr;
  }
  v10 = *(this + 42);
  if ( v10 )
  {
    LC_API_FREE_0(v10);
    *(this + 42) = nullptr;
  }
  v11 = *(this + 43);
  if ( v11 )
  {
    LC_API_FREE_0(v11);
    *(this + 43) = nullptr;
  }
  v12 = *(this + 44);
  if ( v12 )
  {
    LC_API_FREE_0(v12);
    *(this + 44) = nullptr;
  }
  v13 = *(this + 45);
  if ( v13 )
  {
    LC_API_FREE_0(v13);
    *(this + 45) = nullptr;
  }
  v14 = *(this + 46);
  if ( v14 )
  {
    LC_API_FREE_0(v14);
    *(this + 46) = nullptr;
  }
  v15 = *(this + 47);
  if ( v15 )
  {
    LC_API_FREE_0(v15);
    *(this + 47) = nullptr;
  }
  v16 = *(this + 70);
  if ( v16 )
  {
    operator delete[](v16);
    *(this + 70) = nullptr;
  }
  v17 = *(this + 71);
  if ( v17 )
  {
    LC_API_FREE_0(v17);
    *(this + 71) = nullptr;
  }
  v18 = *(this + 72);
  if ( v18 )
  {
    LC_API_FREE_0(v18);
    *(this + 72) = nullptr;
  }
  v19 = *(this + 73);
  if ( v19 )
  {
    operator delete[](v19);
    *(this + 73) = nullptr;
  }
  v20 = (int)*(this + 75);
  if ( v20 )
  {
    v21 = v20 + 8 * *(_DWORD *)(v20 - 4);
    if ( v20 != v21 )
    {
      while ( 1 )
      {
        v22 = v21 - 8;
        _LiveFeed::~_LiveFeed((_LiveFeed *)(v21 - 8));
        v21 = (int)*(this + 75);
        if ( v21 == v22 )
          break;
        v21 = v22;
      }
    }
    operator delete[]((void *)(v21 - 8));
    *(this + 75) = nullptr;
  }
  std::vector<channel>::~vector(this + 62);
  std::vector<channel>::~vector(this + 58);
  GLXPlayerWebComponent::~GLXPlayerWebComponent((GLXPlayerWebComponent *)this);
}


// ===== 840000 in_cksum(ushort *,int) =====
int __fastcall in_cksum(unsigned __int16 *a1, int a2)
{
  int v2; // r2
  unsigned int v3; // r1
  int v4; // r3
  int v5; // r12

  if ( a2 > 1 )
  {
    v3 = a2 - 2;
    v4 = 0;
    v2 = 0;
    do
    {
      v5 = a1[v4++];
      v2 += v5;
    }
    while ( v4 != (v3 >> 1) + 1 );
    a2 = v3 - 2 * (v3 >> 1);
    a1 = (unsigned __int16 *)((char *)a1 + v4 * 2);
  }
  else
  {
    v2 = 0;
  }
  if ( a2 == 1 )
    v2 += *(unsigned __int8 *)a1;
  return (unsigned __int16)~(v2 + HIWORD(v2) + (((unsigned int)(unsigned __int16)v2 + (v2 >> 16)) >> 16));
}


// ===== 84008c GLXPlayerPing::Init(void) =====
int __fastcall GLXPlayerPing::Init(GLXPlayerPing *this)
{
  if ( *((_DWORD *)this + 3) && *((int *)this + 5) >= 0 )
    return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 6) + 116))(*((_DWORD *)this + 6));
  else
    return 0;
}


// ===== 8400c8 GLXPlayerPing::Prepare(void) =====
int __fastcall GLXPlayerPing::Prepare(GLXPlayerPing *this)
{
  int result; // r0
  int v3; // r3
  bool v4; // zf

  result = GLXPlayerPing::Init(this);
  v4 = result == 0;
  if ( result )
    v3 = 2;
  else
    result = -1;
  if ( !v4 )
  {
    *((_DWORD *)this + 9) = v3;
    return 0;
  }
  return result;
}


// ===== 8400ec GLXPlayerPing::Finish(void) =====
int __fastcall GLXPlayerPing::Finish(GLXPlayerPing *this)
{
  *((_DWORD *)this + 9) = 1;
  return 0;
}


// ===== 8400fc GLXPlayerPing::~GLXPlayerPing() =====
void __fastcall GLXPlayerPing::~GLXPlayerPing(GLXPlayerPing *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  int v6; // r3

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_9930D8;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 3) = 0;
  }
  v3 = *((void **)this + 4);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 4) = 0;
  }
  v4 = *((void **)this + 11);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 11) = 0;
  }
  v5 = *((void **)this + 10);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 10) = 0;
  }
  v6 = *((_DWORD *)this + 6);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)this + 6));
    *((_DWORD *)this + 6) = 0;
  }
}


// ===== 8401b0 GLXPlayerPing::~GLXPlayerPing() =====
void __fastcall GLXPlayerPing::~GLXPlayerPing(GLXPlayerPing *this)
{
  GLXPlayerPing::~GLXPlayerPing(this);
  LC_API_FREE_0(this);
}


// ===== 8401cc GLXPlayerPing::~GLXPlayerPing() =====
void __fastcall GLXPlayerPing::~GLXPlayerPing(GLXPlayerPing *this)
{
  void *v2; // r0
  void *v3; // r0
  void *v4; // r0
  void *v5; // r0
  int v6; // r3

  v2 = *((void **)this + 3);
  *(_DWORD *)this = off_9930D8;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 3) = 0;
  }
  v3 = *((void **)this + 4);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 4) = 0;
  }
  v4 = *((void **)this + 11);
  if ( v4 )
  {
    LC_API_FREE_0(v4);
    *((_DWORD *)this + 11) = 0;
  }
  v5 = *((void **)this + 10);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 10) = 0;
  }
  v6 = *((_DWORD *)this + 6);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)this + 6));
    *((_DWORD *)this + 6) = 0;
  }
}


// ===== 840280 GLXPlayerPing::WaitForEchoReply(int) =====
int __fastcall GLXPlayerPing::WaitForEchoReply(GLXPlayerPing *this, int a2)
{
  int v4; // r1
  fd_set v6; // [sp+8h] [bp-88h] BYREF
  struct timeval timeout; // [sp+88h] [bp-8h] BYREF

  LC_API_MEMSET_0(&v6, 0, 0x80u);
  v4 = *((_DWORD *)this + 6);
  v6.fds_bits[a2 >> 5] |= 1 << (a2 & 0x1F);
  timeout.tv_sec = 0;
  timeout.tv_usec = 0;
  return select(*(_DWORD *)(v4 + 8) + 1, &v6, nullptr, nullptr, &timeout);
}


// ===== 8402f8 GLXPlayerPing::RecvEchoReply(void) =====
int __fastcall GLXPlayerPing::RecvEchoReply(GLXPlayerPing *this)
{
  int v2; // r6
  int v3; // r12
  char *v5; // r0
  _BYTE v6[12]; // [sp+8h] [bp-14Ch] BYREF
  struct in_addr in; // [sp+14h] [bp-140h]
  unsigned __int8 v8; // [sp+1Ch] [bp-138h]
  unsigned __int8 v9; // [sp+1Dh] [bp-137h]
  unsigned __int16 v10; // [sp+20h] [bp-134h]
  unsigned __int16 v11; // [sp+22h] [bp-132h]
  int v12; // [sp+28h] [bp-12Ch]

  XP_API_MEMSET(v6, 0, 0x144u);
  v2 = (*(int (__fastcall **)(_DWORD, _BYTE *, int))(**((_DWORD **)this + 6) + 92))(*((_DWORD *)this + 6), v6, 324);
  if ( v2 >= 0 )
  {
    if ( v10 != *((_DWORD *)this + 12) || v8 )
    {
      v5 = inet_ntoa(in);
      XP_DEBUG_OUT("recv icmp packet from %s type=%d code=%d\n", v5, v8, v9);
      return -2;
    }
    else
    {
      v3 = XP_API_GET_TIME() - v12;
      *((_DWORD *)this + 7) = v3;
      if ( v3 <= 0 )
        XP_DEBUG_OUT("\nReply from: %s: bytes=%d seq:%d time<1ms\n", *((const char **)this + 4), 32, v11);
      else
        XP_DEBUG_OUT(
          "\nReply from: %s: bytes=%d seq:%d TTL=%d time=%dms\n",
          *((const char **)this + 4),
          32,
          v11,
          v6[8],
          v3);
    }
  }
  else
  {
    v2 = -1;
    *((_DWORD *)this + 7) = -1;
  }
  return v2;
}


// ===== 840454 GLXPlayerPing::SendEchoRequest(void) =====
int __fastcall GLXPlayerPing::SendEchoRequest(GLXPlayerPing *this)
{
  __int16 v2; // r1
  char *v3; // r2
  int v4; // r3
  int result; // r0

  if ( (`guard variable for'GLXPlayerPing::SendEchoRequest(void)::nId & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'GLXPlayerPing::SendEchoRequest(void)::nId) )
  {
    GLXPlayerPing::SendEchoRequest(void)::nId = *((_WORD *)this + 24);
    _cxa_guard_release(&`guard variable for'GLXPlayerPing::SendEchoRequest(void)::nId);
  }
  v2 = GLXPlayerPing::SendEchoRequest(void)::nSeq;
  word_A339C2 = 0;
  ++GLXPlayerPing::SendEchoRequest(void)::nSeq;
  GLXPlayerPing::SendEchoRequest(void)::echoReq = 8;
  byte_A339C1 = 0;
  word_A339C6 = v2;
  word_A339C4 = GLXPlayerPing::SendEchoRequest(void)::nId;
  v3 = &GLXPlayerPing::SendEchoRequest(void)::echoReq;
  LOBYTE(v4) = 32;
  do
  {
    v3[16] = v4;
    v4 = (unsigned __int8)(v4 + 1);
    ++v3;
  }
  while ( v4 != 64 );
  dword_A339CC = XP_API_GET_TIME();
  word_A339C2 = in_cksum((unsigned __int16 *)&GLXPlayerPing::SendEchoRequest(void)::echoReq, 48);
  result = (*(int (__fastcall **)(_DWORD, char *, int, _DWORD, _DWORD))(**((_DWORD **)this + 6) + 88))(
             *((_DWORD *)this + 6),
             &GLXPlayerPing::SendEchoRequest(void)::echoReq,
             48,
             *((_DWORD *)this + 4),
             *((_DWORD *)this + 5));
  if ( result < 0 )
    *((_DWORD *)this + 7) = -1;
  return result;
}


// ===== 840564 GLXPlayerPing::GLXPlayerPing(char const*,int) =====
void __fastcall GLXPlayerPing::GLXPlayerPing(GLXPlayerPing *this, const char *a2, int a3)
{
  void *v5; // r0
  _DWORD *v6; // r0
  _DWORD *v7; // r0

  *(_DWORD *)this = off_9930D8;
  *((_DWORD *)this + 7) = -1;
  *((_DWORD *)this + 9) = 1;
  *((_BYTE *)this + 8) = 1;
  *((_DWORD *)this + 5) = a3;
  v5 = XP_API_STRNEW(a2);
  *((_DWORD *)this + 3) = v5;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = GLXPlayerSocketFactory::GetSocket((int)v5, a3, 0);
  v6 = (_DWORD *)operator new(8u);
  *v6 = 0;
  v6[1] = 5000;
  *((_DWORD *)this + 11) = v6;
  v7 = (_DWORD *)operator new(8u);
  *v7 = 0;
  v7[1] = 5000;
  *((_DWORD *)this + 10) = v7;
  *((_DWORD *)this + 12) = 123;
}


// ===== 840600 GLXPlayerPing::GLXPlayerPing(char const*,int) =====
void __fastcall GLXPlayerPing::GLXPlayerPing(GLXPlayerPing *this, const char *a2, int a3)
{
  void *v5; // r0
  _DWORD *v6; // r0
  _DWORD *v7; // r0

  *(_DWORD *)this = off_9930D8;
  *((_DWORD *)this + 7) = -1;
  *((_DWORD *)this + 9) = 1;
  *((_BYTE *)this + 8) = 1;
  *((_DWORD *)this + 5) = a3;
  v5 = XP_API_STRNEW(a2);
  *((_DWORD *)this + 3) = v5;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 6) = GLXPlayerSocketFactory::GetSocket((int)v5, a3, 0);
  v6 = (_DWORD *)operator new(8u);
  *v6 = 0;
  v6[1] = 5000;
  *((_DWORD *)this + 11) = v6;
  v7 = (_DWORD *)operator new(8u);
  *v7 = 0;
  v7[1] = 5000;
  *((_DWORD *)this + 10) = v7;
  *((_DWORD *)this + 12) = 123;
}


// ===== 84069c GLXPlayerPing::Kernel(void) =====
int __fastcall GLXPlayerPing::Kernel(GLXPlayerPing *this)
{
  int *v2; // r7
  int v4; // r0
  void *v5; // r0
  char *v6; // r0
  int *v7; // r7
  int v8; // r0
  _DWORD *v9; // r7
  int *v10; // r7
  _DWORD *v11; // r7
  int *v12; // r7
  struct in_addr in; // [sp+8h] [bp-14h] BYREF
  int v14; // [sp+Ch] [bp-10h]
  int v15; // [sp+10h] [bp-Ch]

  switch ( *((_DWORD *)this + 9) )
  {
    case 2:
      v4 = (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 6) + 32))(
             *((_DWORD *)this + 6),
             *((_DWORD *)this + 3));
      if ( v4 )
      {
        v14 = 0;
        v15 = 0;
        in.s_addr = 0;
        memcpy(&in, **(const void ***)(v4 + 16), *(_DWORD *)(v4 + 12));
        v5 = *((void **)this + 4);
        if ( v5 )
        {
          LC_API_FREE_0(v5);
          *((_DWORD *)this + 4) = 0;
        }
        v6 = inet_ntoa(in);
        *((_DWORD *)this + 4) = XP_API_STRNEW(v6);
        goto LABEL_8;
      }
      break;
    case 3:
LABEL_8:
      if ( GLXPlayerPing::SendEchoRequest(this) < 0 )
        goto LABEL_2;
      *((_DWORD *)this + 9) = 4;
      v7 = *((int **)this + 10);
      *v7 = XP_API_GET_TIME();
      goto LABEL_10;
    case 4:
LABEL_10:
      v8 = GLXPlayerPing::WaitForEchoReply(this, *(_DWORD *)(*((_DWORD *)this + 6) + 8));
      if ( v8 < 0 )
      {
LABEL_2:
        *((_DWORD *)this + 7) = -1;
        v2 = *((int **)this + 11);
        *v2 = XP_API_GET_TIME();
        *((_DWORD *)this + 9) = 5;
      }
      else if ( v8 )
      {
        if ( GLXPlayerPing::RecvEchoReply(this) >= 0 )
        {
          v12 = *((int **)this + 11);
          *v12 = XP_API_GET_TIME();
          *((_DWORD *)this + 9) = 5;
        }
      }
      else
      {
        v9 = *((_DWORD **)this + 10);
        if ( XP_API_GET_TIME() - *v9 >= v9[1] )
        {
          XP_DEBUG_OUT("TimeOut\n");
          v10 = *((int **)this + 11);
          *v10 = XP_API_GET_TIME();
          *((_DWORD *)this + 7) = -2;
          *((_DWORD *)this + 9) = 3;
        }
      }
      break;
    case 5:
      v11 = *((_DWORD **)this + 11);
      if ( XP_API_GET_TIME() - *v11 >= v11[1] )
        *((_DWORD *)this + 9) = 3;
      break;
    default:
      break;
  }
  usleep(0x3E8u);
  return 0;
}


// ===== 840880 CAndroidSocket::Init(void) =====
void __fastcall CAndroidSocket::Init(CAndroidSocket *this)
{
  ;
}


// ===== 840884 CAndroidSocket::IsReadyForRW(void) =====
bool __fastcall CAndroidSocket::IsReadyForRW(CAndroidSocket *this)
{
  return (*((_DWORD *)this + (*((int *)this + 2) >> 5) + 539) & (1 << (*((_DWORD *)this + 2) & 0x1F))) != 0;
}


// ===== 8408ac CAndroidSocket::SendBroadcast(char const*,int,int) =====
ssize_t __fastcall CAndroidSocket::SendBroadcast(CAndroidSocket *this, const char *a2, size_t a3, int a4)
{
  int v5; // r0
  ssize_t v8; // r8
  int v10; // r0
  struct sockaddr v11; // [sp+Ch] [bp-18h] BYREF

  v5 = *((_DWORD *)this + 2);
  *(_DWORD *)&v11.sa_data[6] = 0;
  *(_DWORD *)&v11.sa_data[10] = 0;
  *(_DWORD *)&v11.sa_data[2] = -1;
  *(_WORD *)v11.sa_data = BYTE1(a4) | ((_WORD)a4 << 8);
  v11.sa_family = 2;
  v8 = sendto(v5, a2, a3, 0, &v11, 16);
  if ( v8 <= 0 )
  {
    v10 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
    XP_DEBUG_OUT("CAndroidSocket::SendBroadcast() [%d] last error = [%d]\n", a4, v10);
  }
  else
  {
    XP_DEBUG_OUT("CAndroidSocket::SendBroadcast() [%d] [%d] %s\n", a4, v8, a2);
  }
  return v8;
}


// ===== 8409a0 CAndroidSocket::SetBroadcast(void) =====
int __fastcall CAndroidSocket::SetBroadcast(CAndroidSocket *this)
{
  int v2; // r0
  int result; // r0
  int v4; // r0
  int v5; // [sp+Ch] [bp-4h] BYREF

  v2 = *((_DWORD *)this + 2);
  v5 = 1;
  result = setsockopt(v2, 1, 6, &v5, 4);
  if ( result < 0 )
  {
    v4 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
    return XP_DEBUG_OUT("CAndroidSocket::SetBroadcast() last error = [%d]\n", v4);
  }
  return result;
}


// ===== 840a04 CAndroidSocket::Listen(int) =====
int __fastcall CAndroidSocket::Listen(CAndroidSocket *this, int a2)
{
  int result; // r0

  result = listen(*((_DWORD *)this + 2), a2);
  if ( result < 0 )
    return XP_DEBUG_OUT("Listen failed!\n");
  return result;
}


// ===== 840a30 CAndroidSocket::GetSocketPort(void) =====
int __fastcall CAndroidSocket::GetSocketPort(CAndroidSocket *this)
{
  socklen_t v2; // [sp+0h] [bp-18h] BYREF
  struct sockaddr v3; // [sp+4h] [bp-14h] BYREF

  memset(&v3, 0, sizeof(v3));
  v2 = 16;
  getsockname(*((_DWORD *)this + 2), &v3, &v2);
  return (unsigned __int16)(unsigned __int8)v3.sa_data[1] | (unsigned __int16)(*(_WORD *)v3.sa_data << 8);
}


// ===== 840ab4 CAndroidSocket::GetSocketAddr(void) =====
char *__fastcall CAndroidSocket::GetSocketAddr(CAndroidSocket *this)
{
  struct hostent *v2; // r0
  char v3[256]; // [sp+4h] [bp-104h] BYREF

  XP_API_MEMSET(v3, 0, 0x100u);
  if ( gethostname(v3, 0x100u) )
    return nullptr;
  v2 = gethostbyname(v3);
  if ( !v2 )
    return nullptr;
  else
    return inet_ntoa((struct in_addr)(*(struct in_addr **)v2->h_addr_list)->s_addr);
}


// ===== 840b4c CAndroidSocket::RecvFromUnkownIP(char *,int,char **,int *) =====
ssize_t __fastcall CAndroidSocket::RecvFromUnkownIP(CAndroidSocket *this, char *a2, size_t a3, char **a4, int *a5)
{
  int v6; // r0
  ssize_t v9; // r0
  ssize_t v10; // r6
  char *v11; // r0
  char *v12; // r0
  unsigned int v13; // r3
  int v14; // r2
  int v16; // r0
  socklen_t v17; // [sp+8h] [bp-18h] BYREF
  struct sockaddr v18; // [sp+Ch] [bp-14h] BYREF

  v6 = *((_DWORD *)this + 2);
  v17 = 16;
  memset(v18.sa_data, 0, sizeof(v18.sa_data));
  v18.sa_family = 2;
  v9 = recvfrom(v6, a2, a3, 0, &v18, &v17);
  v10 = v9;
  if ( v9 <= 0 )
  {
    if ( v9 )
    {
      v16 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
      XP_DEBUG_OUT("CAndroidSocket::RecvFromUnkownIP() last error = [%d]\n", v16);
    }
  }
  else
  {
    v11 = inet_ntoa(*(struct in_addr *)&v18.sa_data[2]);
    v12 = (char *)XP_API_STRNEW(v11);
    v13 = *(unsigned __int16 *)v18.sa_data;
    *a4 = v12;
    v14 = (unsigned __int16)((v13 >> 8) | ((_WORD)v13 << 8));
    *a5 = v14;
    XP_DEBUG_OUT("CAndroidSocket::RecvFromUnkownIP()\n [%s:%d] [%d] %s\n", *a4, v14, v10, a2);
  }
  return v10;
}


// ===== 840c60 CAndroidSocket::GetHostName(char **) =====
int __fastcall CAndroidSocket::GetHostName(CAndroidSocket *this, char **a2)
{
  char name[256]; // [sp+4h] [bp-104h] BYREF

  gethostname(name, 0xFFu);
  *a2 = (char *)XP_API_STRNEW(name);
  return 0;
}


// ===== 840cc8 CAndroidSocket::RecvFrom(char *,int) =====
ssize_t __fastcall CAndroidSocket::RecvFrom(CAndroidSocket *this, char *a2, size_t a3)
{
  int v4; // r0
  ssize_t v6; // r0
  ssize_t v7; // r6
  char *v8; // r0
  char *v9; // r7
  int v11; // r0
  socklen_t v12; // [sp+8h] [bp-18h] BYREF
  struct sockaddr v13; // [sp+Ch] [bp-14h] BYREF

  v4 = *((_DWORD *)this + 2);
  v12 = 16;
  memset(v13.sa_data, 0, sizeof(v13.sa_data));
  v13.sa_family = 2;
  v6 = recvfrom(v4, a2, a3, 0, &v13, &v12);
  v7 = v6;
  if ( v6 <= 0 )
  {
    if ( v6 )
    {
      v11 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
      XP_DEBUG_OUT("CAndroidSocket::RecvFrom() last error = [%d]\n", v11);
    }
  }
  else
  {
    v8 = inet_ntoa(*(struct in_addr *)&v13.sa_data[2]);
    v9 = (char *)XP_API_STRNEW(v8);
    XP_DEBUG_OUT(
      "CAndroidSocket::RecvFrom()\n [%s:%d] [%d] %s\n",
      v9,
      (unsigned __int16)(unsigned __int8)v13.sa_data[1] | (unsigned __int16)(*(_WORD *)v13.sa_data << 8),
      v7,
      a2);
    if ( v9 )
      operator delete[](v9);
  }
  return v7;
}


// ===== 840de0 CAndroidSocket::SendTo(char const*,int,char const*,int) =====
ssize_t __fastcall CAndroidSocket::SendTo(CAndroidSocket *this, const char *a2, size_t a3, const char *a4, int a5)
{
  ssize_t v9; // r6
  in_addr_t v10; // r0
  int v11; // r1
  struct sockaddr v13; // [sp+Ch] [bp-18h] BYREF

  if ( !a4 )
    return 0;
  memset(&v13.sa_data[2], 0, 12);
  *(_WORD *)v13.sa_data = 0;
  v13.sa_family = 2;
  v10 = inet_addr(a4);
  v11 = *((_DWORD *)this + 2);
  *(_WORD *)v13.sa_data = BYTE1(a5) | ((_WORD)a5 << 8);
  *(_DWORD *)&v13.sa_data[2] = v10;
  v9 = sendto(v11, a2, a3, 0, &v13, 16);
  XP_DEBUG_OUT("CAndroidSocket::SendTo()\n [%s:%d] [%d] %s\n", a4, a5, v9, a2);
  return v9;
}


// ===== 840ed0 CAndroidSocket::CreateIcmpSocket(void) =====
int __fastcall CAndroidSocket::CreateIcmpSocket(CAndroidSocket *this)
{
  int result; // r0
  int v3; // r3
  bool v4; // nf

  result = socket(2, 2, 1);
  v4 = result < 0;
  if ( result >= 0 )
    v3 = 2;
  *((_DWORD *)this + 2) = result;
  if ( result < 0 )
    result = 0;
  else
    *((_DWORD *)this + 520) = v3;
  if ( !v4 )
    return 1;
  return result;
}


// ===== 840f04 CAndroidSocket::CreateUdpSocket(void) =====
int __fastcall CAndroidSocket::CreateUdpSocket(CAndroidSocket *this)
{
  int result; // r0
  int v3; // r3
  bool v4; // nf

  result = socket(2, 2, 17);
  v4 = result < 0;
  if ( result >= 0 )
    v3 = 2;
  *((_DWORD *)this + 2) = result;
  if ( result < 0 )
    result = 0;
  else
    *((_DWORD *)this + 520) = v3;
  if ( !v4 )
    return 1;
  return result;
}


// ===== 840f38 CAndroidSocket::CreateTcpSocket(void) =====
bool __fastcall CAndroidSocket::CreateTcpSocket(CAndroidSocket *this)
{
  int v2; // r0
  bool v3; // nf
  _BOOL4 result; // r0

  v2 = socket(2, 1, 6);
  v3 = v2 < 0;
  *((_DWORD *)this + 2) = v2;
  result = v2 >= 0;
  if ( !v3 )
    *((_DWORD *)this + 520) = result;
  return result;
}


// ===== 840f68 CAndroidSocket::CreateSocket(void) =====
int __fastcall CAndroidSocket::CreateSocket(CAndroidSocket *this)
{
  int v2; // r0
  int v4; // r0

  v2 = socket(2, 1, 0);
  *((_DWORD *)this + 2) = v2;
  if ( v2 >= 0 )
    return 1;
  v4 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
  XP_DEBUG_OUT("CWin32Socket::CreateSocket() error [%d] \n", v4);
  *((_DWORD *)this + 1) = 7;
  return 0;
}


// ===== 840fc8 CAndroidSocket::Bind(char *,ushort) =====
int __fastcall CAndroidSocket::Bind(CAndroidSocket *this, char *cp, unsigned int a3)
{
  int v5; // r0
  int v6; // r10
  unsigned int v7; // r8
  int v8; // r0
  int v10; // [sp+8h] [bp-18h] BYREF
  struct sockaddr v11; // [sp+Ch] [bp-14h] BYREF

  memset(&v11.sa_data[2], 0, 12);
  *(_DWORD *)&v11.sa_family = 2;
  if ( cp )
    inet_addr(cp);
  else
    *(_DWORD *)&v11.sa_data[2] = 0;
  v5 = *((_DWORD *)this + 2);
  v10 = 1;
  *(_WORD *)v11.sa_data = (a3 >> 8) | ((_WORD)a3 << 8);
  setsockopt(v5, 1, 2, &v10, 4);
  if ( bind(*((_DWORD *)this + 2), &v11, 16) < 0 )
  {
    v7 = (unsigned __int16)(a3 + 1);
    v6 = 0;
    do
    {
      v8 = *((_DWORD *)this + 2);
      *(_WORD *)v11.sa_data = (v7 >> 8) | ((_WORD)v7 << 8);
      ++v6;
      v7 = (unsigned __int16)(v7 + 1);
    }
    while ( bind(v8, &v11, 16) < 0 );
  }
  else
  {
    v6 = 0;
  }
  return v6 + a3;
}


// ===== 8410d8 CAndroidSocket::Recv(char *,int) =====
ssize_t __fastcall CAndroidSocket::Recv(CAndroidSocket *this, char *a2, size_t a3)
{
  ssize_t v3; // r4

  v3 = recv(*((_DWORD *)this + 2), a2, a3, 0);
  XP_API_GET_TIME();
  return v3;
}


// ===== 8410f8 CAndroidSocket::Send(char *,int) =====
ssize_t __fastcall CAndroidSocket::Send(CAndroidSocket *this, char *a2, size_t a3)
{
  int v6; // r9
  ssize_t v7; // r0
  ssize_t v8; // r5
  char v10[4]; // [sp+4h] [bp-1004h] BYREF

  v6 = XP_API_GET_TIME();
  v7 = send(*((_DWORD *)this + 2), a2, a3, 0);
  v8 = v7;
  if ( v7 < 4096 )
  {
    XP_API_MEMSET(v10, 0, 0x1000u);
    XP_API_MEMCPY(v10, a2, a3);
    XP_DEBUG_OUT("CAndroidSocket::Send() [time:%d]\n[%d] %s\n", v6, v8, v10);
  }
  else
  {
    XP_DEBUG_OUT("CAndroidSocket::Send() [time:%d]\n[%d]\n", v6, v7);
  }
  return v8;
}


// ===== 8411e8 CAndroidSocket::Select(GLXPlayerSocket::XSocketSelectFlag) =====
int __fastcall CAndroidSocket::Select(int a1, int a2)
{
  int v2; // r3
  fd_set *v5; // r6
  struct timeval timeout; // [sp+8h] [bp-Ch] BYREF

  v2 = *(_DWORD *)(a1 + 8);
  timeout.tv_sec = 0;
  timeout.tv_usec = 0;
  if ( v2 < 0 )
    return -1;
  v5 = (fd_set *)(a1 + 2156);
  LC_API_MEMSET_0((void *)(a1 + 2156), 0, 0x80u);
  *(_DWORD *)(a1 + 4 * ((*(int *)(a1 + 8) >> 5) + 538) + 4) |= 1 << (*(_DWORD *)(a1 + 8) & 0x1F);
  if ( !a2 )
    return select(*(_DWORD *)(a1 + 8) + 1, v5, nullptr, nullptr, &timeout);
  if ( a2 == 1 )
    return select(*(_DWORD *)(a1 + 8) + 1, nullptr, v5, nullptr, &timeout);
  else
    return -1;
}


// ===== 8412b4 CAndroidSocket::CloseSocket(void) =====
int __fastcall CAndroidSocket::CloseSocket(CAndroidSocket *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 2);
  if ( v1 >= 0 )
  {
    XP_DEBUG_OUT("CloseSocket() [%d]\n", v1);
    close(*((_DWORD *)this + 2));
    *((_DWORD *)this + 2) = -1;
  }
  return 1;
}


// ===== 8412f0 CAndroidSocket::ConnectTo(char *,int) =====
int __fastcall CAndroidSocket::ConnectTo(CAndroidSocket *this, char *a2, unsigned __int16 a3)
{
  int v3; // r6
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0
  socklen_t v12; // [sp+Ch] [bp-1Ch] BYREF
  int v13; // [sp+10h] [bp-18h] BYREF
  struct sockaddr v14; // [sp+14h] [bp-14h] BYREF

  v3 = *((_DWORD *)this + 535);
  if ( v3 )
  {
    if ( v3 != 1 )
      return 0;
    v8 = (*(int (__fastcall **)(CAndroidSocket *, int))(*(_DWORD *)this + 64))(this, 1);
    if ( v8 >= 0 )
    {
      if ( !v8 )
        return 0;
      v9 = *((_DWORD *)this + 2);
      v12 = 4;
      if ( getsockopt(v9, 1, 4, &v13, &v12) >= 0 && !v13 )
      {
        v10 = fcntl(*((_DWORD *)this + 2), 3, 0);
        if ( v10 >= 0 && fcntl(*((_DWORD *)this + 2), 4, v10 & 0xFFFFF7FF) >= 0 )
        {
          *((_DWORD *)this + 535) = 2;
          return 1;
        }
      }
    }
    goto LABEL_16;
  }
  XP_API_MEMSET(&v14, 0, 0x10u);
  v14.sa_family = 2;
  *(_DWORD *)&v14.sa_data[2] = inet_addr(a2);
  *(_WORD *)v14.sa_data = HIBYTE(a3) | (a3 << 8);
  if ( !(*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 48))(this) )
  {
    XP_DEBUG_OUT("CAndroidSocket::ConnectTo() err : can not set unblock!!!\n");
LABEL_16:
    (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
    *((_DWORD *)this + 535) = 3;
    *((_DWORD *)this + 1) = 7;
    return 0;
  }
  if ( connect(*((_DWORD *)this + 2), &v14, 16) >= 0
    || (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this) == 115 )
  {
    *((_DWORD *)this + 535) = 1;
    return 0;
  }
  else
  {
    v11 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
    XP_DEBUG_OUT("CAndroidSocket::Connect() err = %d \n", v11);
    (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
    *((_DWORD *)this + 535) = 3;
    *((_DWORD *)this + 1) = 7;
    return 0;
  }
}


// ===== 84152c CAndroidSocket::Connect(void) =====
int __fastcall CAndroidSocket::Connect(CAndroidSocket *this)
{
  int v1; // r6
  int v4; // r2
  int v5; // r3
  int v6; // r10
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r0
  socklen_t v11; // [sp+Ch] [bp-20h] BYREF
  int v12; // [sp+10h] [bp-1Ch] BYREF
  struct sockaddr v13; // [sp+14h] [bp-18h] BYREF

  v1 = *((_DWORD *)this + 535);
  if ( v1 )
  {
    if ( v1 != 1 )
      return 0;
    v7 = (*(int (__fastcall **)(CAndroidSocket *, int))(*(_DWORD *)this + 64))(this, 1);
    v6 = v7;
    if ( v7 < 0 )
      goto LABEL_20;
    if ( v7 )
    {
      v8 = *((_DWORD *)this + 2);
      v11 = 4;
      if ( getsockopt(v8, 1, 4, &v12, &v11) >= 0 )
      {
        v6 = v12;
        if ( !v12 )
        {
          v9 = fcntl(*((_DWORD *)this + 2), 3, 0);
          if ( v9 >= 0 && fcntl(*((_DWORD *)this + 2), 4, v9 & 0xFFFFF7FF) >= 0 )
          {
            *((_DWORD *)this + 535) = 2;
            return 1;
          }
          goto LABEL_17;
        }
      }
LABEL_20:
      (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
      *((_DWORD *)this + 535) = 3;
      *((_DWORD *)this + 1) = 7;
      return 0;
    }
    if ( XP_API_GET_TIME() - *((_DWORD *)this + 537) <= 30000 )
      return 0;
LABEL_17:
    (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
    *((_DWORD *)this + 535) = 3;
    *((_DWORD *)this + 1) = 7;
    return v6;
  }
  XP_API_MEMSET(&v13, 0, 0x10u);
  v4 = *((_DWORD *)this + 3);
  v13.sa_family = 2;
  XP_API_MEMCPY(&v13.sa_data[2], **(const void ***)(v4 + 16), *(_DWORD *)(v4 + 12));
  v5 = *(_DWORD *)this;
  *(_WORD *)v13.sa_data = HIBYTE(*((_WORD *)this + 8)) | (*((_WORD *)this + 8) << 8);
  v6 = (*(int (__fastcall **)(CAndroidSocket *))(v5 + 48))(this);
  if ( !v6 )
  {
    XP_DEBUG_OUT("CAndroidSocket::Connect() err : can not set unblock!!!\n");
    goto LABEL_17;
  }
  if ( connect(*((_DWORD *)this + 2), &v13, 16) >= 0
    || (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this) == 115 )
  {
    *((_DWORD *)this + 535) = 1;
    *((_DWORD *)this + 537) = XP_API_GET_TIME();
    return 0;
  }
  else
  {
    v10 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
    XP_DEBUG_OUT("CAndroidSocket::Connect() err = %d \n", v10);
    (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
    *((_DWORD *)this + 535) = 3;
    *((_DWORD *)this + 1) = 7;
    return 0;
  }
}


// ===== 841790 CAndroidSocket::ConnectByName(char *,ushort) =====
int __fastcall CAndroidSocket::ConnectByName(CAndroidSocket *this, char *a2, unsigned __int16 a3)
{
  int v3; // r6
  int v7; // r10
  int v8; // r2
  char *v9; // r0
  int v10; // r0
  int v11; // r10
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r0
  socklen_t v16; // [sp+Ch] [bp-20h] BYREF
  int v17; // [sp+10h] [bp-1Ch] BYREF
  struct sockaddr v18; // [sp+14h] [bp-18h] BYREF

  v3 = *((_DWORD *)this + 535);
  if ( v3 )
  {
    if ( v3 != 1 )
      return 0;
    v10 = (*(int (__fastcall **)(CAndroidSocket *, int, unsigned __int16))(*(_DWORD *)this + 64))(this, 1, a3);
    v11 = v10;
    if ( v10 >= 0 )
    {
      if ( !v10 )
      {
        if ( XP_API_GET_TIME() - *((_DWORD *)this + 537) <= 30000 )
          return 0;
LABEL_16:
        (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
        *((_DWORD *)this + 535) = 3;
        *((_DWORD *)this + 1) = 7;
        return v11;
      }
      v12 = *((_DWORD *)this + 2);
      v16 = 4;
      if ( getsockopt(v12, 1, 4, &v17, &v16) >= 0 )
      {
        v11 = v17;
        if ( !v17 )
        {
          v13 = fcntl(*((_DWORD *)this + 2), 3, 0);
          if ( v13 >= 0 && fcntl(*((_DWORD *)this + 2), 4, v13 & 0xFFFFF7FF) >= 0 )
          {
            *((_DWORD *)this + 535) = 2;
            return 1;
          }
          goto LABEL_16;
        }
      }
    }
    (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
    *((_DWORD *)this + 535) = 3;
    *((_DWORD *)this + 1) = 7;
    return 0;
  }
  v7 = (*(int (__fastcall **)(CAndroidSocket *, char *, unsigned __int16))(*(_DWORD *)this + 32))(this, a2, a3);
  *((_DWORD *)this + 3) = v7;
  if ( !v7 )
  {
    if ( XP_API_GET_TIME() - *((_DWORD *)this + 538) > 9999 )
    {
      v15 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
      XP_DEBUG_OUT("CAndroidSocket::ConnectByName(): GetHostByName() err = %d \n", v15);
      (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
      *((_DWORD *)this + 1) = 7;
      *((_DWORD *)this + 535) = 3;
      *((_DWORD *)this + 536) = 0;
      return 0;
    }
    return 0;
  }
  XP_API_MEMSET(&v18, 0, 0x10u);
  v8 = *((_DWORD *)this + 3);
  v18.sa_family = 2;
  XP_API_MEMCPY(&v18.sa_data[2], **(const void ***)(v8 + 16), *(_DWORD *)(v8 + 12));
  *(_WORD *)v18.sa_data = HIBYTE(*((_WORD *)this + 8)) | (*((_WORD *)this + 8) << 8);
  XP_DEBUG_OUT("CIPhoneSocket::ConnectByName(): Server name is: %s\n", a2);
  v9 = inet_ntoa(*(struct in_addr *)&v18.sa_data[2]);
  XP_DEBUG_OUT("CIPhoneSocket::ConnectByName(): Server address is: %s\n", v9);
  if ( (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 48))(this) )
  {
    if ( connect(*((_DWORD *)this + 2), &v18, 16) >= 0
      || (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this) == 115 )
    {
      *((_DWORD *)this + 535) = 1;
      *((_DWORD *)this + 537) = XP_API_GET_TIME();
      return 0;
    }
    else
    {
      v14 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
      XP_DEBUG_OUT("CAndroidSocket::ConnectByName: connect() err = %d \n", v14);
      (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
      *((_DWORD *)this + 535) = 3;
      *((_DWORD *)this + 1) = 7;
      return 0;
    }
  }
  else
  {
    XP_DEBUG_OUT("CAndroidSocket::ConnectByName(): SetNonBlocking() err : can not set unblock!!!\n");
    (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
    *((_DWORD *)this + 535) = 3;
    *((_DWORD *)this + 1) = 7;
    return 0;
  }
}


// ===== 841ad0 CAndroidSocket::SetNonBlocking(void) =====
int __fastcall CAndroidSocket::SetNonBlocking(CAndroidSocket *this)
{
  int v2; // r0
  int v4; // r0

  v2 = fcntl(*((_DWORD *)this + 2), 3, 0);
  if ( v2 >= 0 && fcntl(*((_DWORD *)this + 2), 4, v2 | 0x800) >= 0 )
    return 1;
  v4 = (*(int (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 44))(this);
  XP_DEBUG_OUT("CAndroidSocket::SetNonBlocking() err = %d \n", v4);
  (*(void (__fastcall **)(CAndroidSocket *))(*(_DWORD *)this + 60))(this);
  *((_DWORD *)this + 1) = 7;
  return 0;
}


// ===== 841b98 CAndroidSocket::GetLastError(void) =====
int __fastcall CAndroidSocket::GetLastError(CAndroidSocket *this)
{
  return *(_DWORD *)_errno();
}


// ===== 841ba8 threadGetHostByNameProcess(void *) =====
struct hostent *__fastcall threadGetHostByNameProcess(char *a1)
{
  const char *v1; // r4
  struct hostent *result; // r0
  struct hostent *v4; // r10
  int v5; // r7
  int v6; // r0
  int v7; // r3
  void **v8; // r7
  int v9; // r7
  void **v10; // r7

  v1 = a1 + 4;
  **(_DWORD **)a1 = 1;
  result = gethostbyname(a1 + 4);
  v4 = result;
  if ( result )
  {
    v5 = l_count;
    if ( l_count <= 3 )
    {
      v6 = operator new(0x14u);
      v7 = l_count;
      l_host[v5] = v6;
      XP_API_MEMSET((void *)l_host[v7], 0, 0x14u);
      *(_DWORD *)(l_host[l_count] + 12) = v4->h_length;
      v8 = (void **)l_host[l_count];
      *v8 = XP_API_STRNEW(v1);
      v9 = l_host[l_count];
      *(_DWORD *)(v9 + 16) = operator new[](4u);
      v10 = *(void ***)(l_host[l_count] + 16);
      *v10 = XP_API_STRNEW(*(const char **)v4->h_addr_list);
      ++l_count;
      result = (struct hostent *)XP_DEBUG_OUT("GetHostByName() - Add %s \n", v1);
    }
    **(_DWORD **)a1 = 0;
  }
  return result;
}


// ===== 841ca8 CAndroidSocket::GetHostByName(char *) =====
int __fastcall CAndroidSocket::GetHostByName(CAndroidSocket *this, char *a2)
{
  int v4; // r7
  const char **v5; // r3
  struct hostent *v7; // r10
  int v8; // r8
  int v9; // r0
  int v10; // r3
  void **v11; // r8
  int v12; // r8
  void **v13; // r8

  if ( !a2 || (int)XP_API_STRLEN(a2) > 1024 )
    return 0;
  if ( l_count <= 0 )
  {
LABEL_12:
    v7 = gethostbyname(a2);
    if ( v7 )
    {
      v8 = l_count;
      if ( l_count <= 3 )
      {
        v9 = operator new(0x14u);
        v10 = l_count;
        l_host[v8] = v9;
        XP_API_MEMSET((void *)l_host[v10], 0, 0x14u);
        *(_DWORD *)(l_host[l_count] + 12) = v7->h_length;
        v11 = (void **)l_host[l_count];
        *v11 = XP_API_STRNEW(a2);
        v12 = l_host[l_count];
        *(_DWORD *)(v12 + 16) = operator new[](4u);
        v13 = *(void ***)(l_host[l_count] + 16);
        *v13 = XP_API_STRNEW(*(const char **)v7->h_addr_list);
        ++l_count;
        XP_DEBUG_OUT("GetHostByName() - Add %s \n", a2);
        v8 = l_count;
      }
      return l_host[v8 - 1];
    }
    return 0;
  }
  if ( *((_DWORD *)this + 536) == 1 )
    return 0;
  v4 = 0;
  while ( 1 )
  {
    v5 = (const char **)l_host[v4];
    if ( v5 )
    {
      if ( *v5 && !XP_API_STRCMP(a2, *v5) )
        break;
    }
    if ( l_count <= ++v4 )
      goto LABEL_12;
    if ( *((_DWORD *)this + 536) == 1 )
      return 0;
  }
  XP_DEBUG_OUT("GetHostByName() Existed %s \n", a2);
  return l_host[v4];
}


// ===== 841e4c CAndroidSocket::GetHostIP(char *) =====
struct hostent *__fastcall CAndroidSocket::GetHostIP(CAndroidSocket *this, char *a2)
{
  int v3; // r5
  struct hostent *result; // r0
  struct hostent *v5; // r6
  int v6; // r8
  int v7; // r0
  int v8; // r3
  void **v9; // r8
  int v10; // r8
  int *v11; // r8

  if ( l_count <= 0 )
  {
LABEL_6:
    result = gethostbyname((const char *)this);
    v5 = result;
    if ( result )
    {
      v6 = l_count;
      if ( l_count <= 3 )
      {
        v7 = operator new(0x14u);
        v8 = l_count;
        l_host[v6] = v7;
        XP_API_MEMSET((void *)l_host[v8], 0, 0x14u);
        *(_DWORD *)(l_host[l_count] + 12) = v5->h_length;
        v9 = (void **)l_host[l_count];
        *v9 = XP_API_STRNEW((const char *)this);
        v10 = l_host[l_count];
        *(_DWORD *)(v10 + 16) = operator new[](4u);
        v11 = *(int **)(l_host[l_count] + 16);
        *v11 = operator new[](v5->h_length);
        memcpy(**(void ***)(l_host[l_count] + 16), *(const void **)v5->h_addr_list, v5->h_length);
        ++l_count;
        XP_DEBUG_OUT("GetHostByName() - Add %s \n", (const char *)this);
        return v5;
      }
    }
  }
  else
  {
    v3 = 0;
    while ( XP_API_STRCMP((const char *)this, *(const char **)l_host[v3]) )
    {
      if ( l_count <= ++v3 )
        goto LABEL_6;
    }
    XP_DEBUG_OUT("GetHostByName() Existed %s \n", (const char *)this);
    return (struct hostent *)l_host[v3];
  }
  return result;
}


// ===== 841fbc CAndroidSocket::GetLocalIP(char *) =====
int __fastcall CAndroidSocket::GetLocalIP(CAndroidSocket *this, char *a2)
{
  int v2; // r0
  int v3; // r10
  struct in_addr *v4; // r4
  char *v5; // r0
  const char *v6; // r6
  const char *v7; // r8
  char *v8; // r0
  _DWORD v11[2]; // [sp+Ch] [bp-FB0h] BYREF
  _BYTE v12[4]; // [sp+14h] [bp-FA8h] BYREF

  v11[0] = 4000;
  v11[1] = v12;
  v2 = socket(2, 2, 0);
  v3 = v2;
  if ( v2 == -1 || ioctl(v2, 0x8912u, v11) < 0 )
    return 0;
  v4 = (struct in_addr *)v12;
  while ( v4 < (struct in_addr *)&v12[v11[0]] )
  {
    v5 = inet_ntoa(v4[5]);
    v6 = (const char *)v4;
    v4 += 8;
    v7 = v5;
    if ( LOWORD(v4[-4].s_addr) == 2 )
    {
      v8 = XP_API_STRCHR(v6, 58, 1);
      if ( v8 )
        *v8 = 0;
      ioctl(v3, 0x8913u, v6);
      if ( (v4[-4].s_addr & 1) != 0 )
      {
        if ( XP_API_STRCMP(v7, "127.0.0.1") )
          XP_API_STRCPY(a2, v7);
      }
    }
  }
  close(v3);
  return 1;
}


// ===== 84210c CAndroidSocket::Clearup(void) =====
void __fastcall CAndroidSocket::Clearup(CAndroidSocket *this)
{
  int v1; // r4
  int v2; // r10
  int v3; // r3
  void **v4; // r3
  _DWORD *v5; // r3
  void *v6; // r0
  int v7; // r3

  if ( l_count > 0 )
  {
    v1 = 0;
    v2 = 0;
    do
    {
      v3 = l_host[v1];
      ++v2;
      if ( *(_DWORD *)v3 )
      {
        LC_API_FREE_0(*(void **)v3);
        *(_DWORD *)l_host[v1] = 0;
        v3 = l_host[v1];
      }
      v4 = *(void ***)(v3 + 16);
      if ( *v4 )
      {
        LC_API_FREE_0(*v4);
        **(_DWORD **)(l_host[v1] + 16) = 0;
        v4 = *(void ***)(l_host[v1] + 16);
      }
      *v4 = nullptr;
      v5 = (_DWORD *)l_host[v1];
      v6 = (void *)v5[4];
      if ( v6 )
      {
        LC_API_FREE_0(v6);
        *(_DWORD *)(l_host[v1] + 16) = 0;
        v5 = (_DWORD *)l_host[v1];
      }
      if ( v5 )
      {
        LC_API_FREE_0(v5);
        l_host[v1] = 0;
      }
      v7 = l_count;
      l_host[v1++] = 0;
    }
    while ( v7 > v2 );
  }
  l_count = 0;
}


// ===== 842208 CAndroidSocket::Startup(void) =====
int __fastcall CAndroidSocket::Startup(CAndroidSocket *this)
{
  struct sigaction v2; // [sp+0h] [bp-14h] BYREF

  v2._u._sa_handler = (__sighandler_t)(&dword_0 + 1);
  dword_A339FC = 0;
  l_host[0] = 0;
  dword_A339F4 = 0;
  dword_A339F8 = 0;
  return sigaction_0(13, &v2, nullptr);
}


// ===== 842260 CAndroidSocket::~CAndroidSocket() =====
void __fastcall CAndroidSocket::~CAndroidSocket(CAndroidSocket *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 536);
  *(_DWORD *)this = off_9930F8;
  if ( v1 )
    pthread_join(*((_DWORD *)this + 571), nullptr);
  CAndroidSocket::CloseSocket(this);
  GLXPlayerSocket::~GLXPlayerSocket(this);
}


// ===== 8422b8 CAndroidSocket::~CAndroidSocket() =====
void __fastcall CAndroidSocket::~CAndroidSocket(CAndroidSocket *this)
{
  CAndroidSocket::~CAndroidSocket(this);
  LC_API_FREE_0(this);
}


// ===== 8422d4 CAndroidSocket::~CAndroidSocket() =====
void __fastcall CAndroidSocket::~CAndroidSocket(CAndroidSocket *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 536);
  *(_DWORD *)this = off_9930F8;
  if ( v1 )
    pthread_join(*((_DWORD *)this + 571), nullptr);
  CAndroidSocket::CloseSocket(this);
  GLXPlayerSocket::~GLXPlayerSocket(this);
}


// ===== 84232c CAndroidSocket::CAndroidSocket(char *,int,GLXPlayerSocketObserver *) =====
_DWORD *__fastcall CAndroidSocket::CAndroidSocket(_DWORD *a1, const char *a2, int a3, int a4)
{
  GLXPlayerSocket::GLXPlayerSocket(a1, a2, a3, a4);
  *a1 = off_9930F8;
  return a1;
}


// ===== 842360 CAndroidSocket::Accept(void) =====
GLXPlayerSocket *__fastcall CAndroidSocket::Accept(CAndroidSocket *this)
{
  int v1; // r7
  char *v2; // r8
  unsigned int v3; // r6
  GLXPlayerSocket *v4; // r4
  socklen_t v6; // [sp+0h] [bp-18h] BYREF
  struct sockaddr v7; // [sp+4h] [bp-14h] BYREF

  v6 = 16;
  v7.sa_family = 2;
  v1 = accept(*((_DWORD *)this + 2), &v7, &v6);
  v2 = inet_ntoa(*(struct in_addr *)&v7.sa_data[2]);
  v3 = *(unsigned __int16 *)v7.sa_data;
  v4 = (GLXPlayerSocket *)operator new(0xCF4u);
  CAndroidSocket::CAndroidSocket(v4, nullptr, 0, 0);
  GLXPlayerSocket::SetSocket((int)v4, v1);
  GLXPlayerSocket::SetAcceptIP(v4, v2);
  GLXPlayerSocket::SetAcceptPort((int)v4, (unsigned __int16)(v3 >> 8) | (unsigned __int16)((_WORD)v3 << 8));
  GLXPlayerSocket::SetSocketType((int)v4, 1);
  return v4;
}


// ===== 842430 CAndroidSocket::CAndroidSocket(char *,int,GLXPlayerSocketObserver *) =====
_DWORD *__fastcall CAndroidSocket::CAndroidSocket(_DWORD *a1, const char *a2, int a3, int a4)
{
  GLXPlayerSocket::GLXPlayerSocket(a1, a2, a3, a4);
  *a1 = off_9930F8;
  return a1;
}


// ===== 842464 rss::write(slim::XmlNode *) =====
void rss::write()
{
  ;
}


// ===== 842468 channel::write(slim::XmlNode *) =====
void channel::write()
{
  ;
}


// ===== 84246c item::write(slim::XmlNode *) =====
void item::write()
{
  ;
}


// ===== 842470 std::vector<item,std::allocator<item>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<item>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v3; // r4
  unsigned int v4; // r3
  unsigned int result; // r0

  v3 = 954437177 * ((a1[1] - *a1) >> 5);
  if ( 14913080 - v3 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer_0("vector");
  LOWORD(v4) = -29128;
  if ( v3 < a2 )
    result = v3 + a2;
  else
    result = 2 * v3;
  HIWORD(v4) = 227;
  if ( result > v4 || result < v3 )
    return 14913080;
  return result;
}


// ===== 8424f8 std::vector<channel,std::allocator<channel>>::_M_compute_next_size(uint) =====
unsigned int __fastcall std::vector<channel>::_M_compute_next_size(_DWORD *a1, unsigned int a2)
{
  unsigned int v2; // r4
  unsigned int result; // r0

  v2 = 1022611261 * ((a1[1] - *a1) >> 2);
  if ( 51130563 - v2 < a2 )
    __ZSt24__stl_throw_length_errorPKc_veneer_0("vector");
  if ( v2 < a2 )
    result = v2 + a2;
  else
    result = 2 * v2;
  if ( result > 0x30C30C3 || result < v2 )
    return 51130563;
  return result;
}


// ===== 842570 std::string::erase(uint,uint) =====
std::string *__fastcall std::string::erase(std::string *this, unsigned int a2, unsigned int a3)
{
  char *M_data; // r6
  char *M_finish; // r3
  int v7; // r5
  unsigned int v9; // r5
  int v10; // r5
  char *v11; // r5
  char *v12; // r6

  M_data = this->_M_start_of_storage._M_data;
  M_finish = this->_M_finish;
  v7 = M_finish - M_data;
  if ( a2 > M_finish - M_data )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer_0("basic_string");
    M_data = this->_M_start_of_storage._M_data;
    M_finish = this->_M_finish;
    v7 = M_finish - M_data;
  }
  v9 = v7 - a2;
  if ( v9 > a3 )
    v10 = a2 + a3;
  else
    v10 = a2 + v9;
  v11 = &M_data[v10];
  v12 = &M_data[a2];
  if ( v12 != v11 )
  {
    if ( M_finish + 1 != v11 )
    {
      memmove(v12, v11, M_finish + 1 - v11);
      M_finish = this->_M_finish;
    }
    this->_M_finish = &M_finish[v12 - v11];
  }
  return this;
}


// ===== 842608 item::operator=(item const&) =====
std::string *__fastcall item::operator=(std::string *a1, const char **a2)
{
  if ( a1 != (std::string *)a2 )
    std::string::_M_assign(a1, a2[5], a2[4]);
  if ( &a1[1] != (std::string *)(a2 + 6) )
    std::string::_M_assign(a1 + 1, a2[11], a2[10]);
  if ( &a1[2] != (std::string *)(a2 + 12) )
    std::string::_M_assign(a1 + 2, a2[17], a2[16]);
  if ( &a1[3] != (std::string *)(a2 + 18) )
    std::string::_M_assign(a1 + 3, a2[23], a2[22]);
  if ( &a1[4] != (std::string *)(a2 + 24) )
    std::string::_M_assign(a1 + 4, a2[29], a2[28]);
  if ( &a1[5] != (std::string *)(a2 + 30) )
    std::string::_M_assign(a1 + 5, a2[35], a2[34]);
  if ( &a1[6] != (std::string *)(a2 + 36) )
    std::string::_M_assign(a1 + 6, a2[41], a2[40]);
  if ( &a1[7] != (std::string *)(a2 + 42) )
    std::string::_M_assign(a1 + 7, a2[47], a2[46]);
  if ( &a1[8] != (std::string *)(a2 + 48) )
    std::string::_M_assign(a1 + 8, a2[53], a2[52]);
  if ( &a1[9] != (std::string *)(a2 + 54) )
    std::string::_M_assign(a1 + 9, a2[59], a2[58]);
  if ( &a1[10] != (std::string *)(a2 + 60) )
    std::string::_M_assign(a1 + 10, a2[65], a2[64]);
  if ( &a1[11] != (std::string *)(a2 + 66) )
    std::string::_M_assign(a1 + 11, a2[71], a2[70]);
  return a1;
}


// ===== 842764 std::vector<item,std::allocator<item>>::_M_erase(item*,item*,std::__false_type const&) =====
item *__fastcall std::vector<item>::_M_erase(int a1, item *this, int a3)
{
  item *v3; // r4
  int v6; // r3
  int v8; // r10
  item *v9; // r10
  int v10; // r6
  int v11; // r4
  std::string *v12; // r6
  std::string *v13; // r0

  v3 = *(item **)(a1 + 4);
  v6 = ((int)v3 - a3) >> 5;
  v8 = 954437177 * v6;
  if ( 954437177 * v6 > 0 )
  {
    v10 = 954437177 * v6;
    v11 = 0;
    do
    {
      item::operator=((std::string *)((char *)this + v11), (const char **)(a3 + v11));
      --v10;
      v11 += 288;
    }
    while ( v10 );
    v9 = (item *)((char *)this + 288 * v8);
    v3 = *(item **)(a1 + 4);
  }
  else
  {
    v9 = this;
  }
  if ( v3 != v9 )
  {
    v12 = (std::string *)v9;
    do
    {
      v13 = v12;
      v12 += 12;
      item::~item(v13);
    }
    while ( v3 != (item *)v12 );
  }
  *(_DWORD *)(a1 + 4) = v9;
  return this;
}


// ===== 842800 std::vector<item,std::allocator<item>>::_M_clear_after_move(void) =====
void __fastcall std::vector<item>::_M_clear_after_move(std::string **a1)
{
  std::string *v1; // r4
  std::string *v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 12;
      item::~item(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 32 * (((char *)a1[2] - (char *)v1) >> 5);
    if ( v4 > 0x80 )
      LC_API_FREE_0(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, v4);
  }
}


// ===== 84288c std::vector<item,std::allocator<item>>::_M_clear(void) =====
void __fastcall std::vector<item>::_M_clear(std::string **a1)
{
  std::string *v1; // r4
  std::string *v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 12;
      item::~item(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 32 * (((char *)a1[2] - (char *)v1) >> 5);
    if ( v4 > 0x80 )
      LC_API_FREE_0(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, v4);
  }
}


// ===== 842918 std::vector<channel,std::allocator<channel>>::_M_clear_after_move(void) =====
void __fastcall std::vector<channel>::_M_clear_after_move(channel **a1)
{
  channel *v1; // r4
  channel *v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 = (channel *)((char *)v1 - 84);
      channel::~channel(v1);
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = 4 * ((a1[2] - v1) >> 2);
    if ( v4 > 0x80 )
      LC_API_FREE_0(v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v1, v4);
  }
}


// ===== 842994 std::allocator<item>::_M_allocate(uint,uint &) =====
int __fastcall std::allocator<item>::_M_allocate(int a1, unsigned int a2, unsigned int *a3)
{
  int result; // r0
  unsigned int v5; // r5

  if ( a2 > 0xE38E38 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return 0;
  v5 = 288 * a2;
  result = operator new(288 * a2);
  *a3 = v5 / 0x120;
  return result;
}


// ===== 8429fc std::allocator<channel>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<channel>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x30C30C3 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 84 * a2;
  if ( 84 * a2 > 0x80 )
    result = (void *)operator new(84 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&__n);
  *a3 = __n / 0x54;
  return result;
}


// ===== 842a88 item::read(slim::XmlNode const*) =====
std::string *__fastcall item::read(std::string *this, const slim::XmlNode *a2)
{
  int Child; // r0
  const char *v5; // r6
  size_t v6; // r0
  int v7; // r0
  const char *v8; // r6
  size_t v9; // r0
  int v10; // r0
  const char *v11; // r6
  size_t v12; // r0
  int v13; // r0
  const char *v14; // r6
  size_t v15; // r0
  int v16; // r0
  const char *v17; // r6
  size_t v18; // r0
  int v19; // r0
  const char *v20; // r6
  size_t v21; // r0
  int v22; // r0
  const char *v23; // r6
  size_t v24; // r0
  int v25; // r0
  const char *v26; // r6
  size_t v27; // r0
  int v28; // r0
  const char *v29; // r6
  size_t v30; // r0
  int v31; // r0
  const char *v32; // r6
  size_t v33; // r0
  int v34; // r0
  const char *v35; // r6
  size_t v36; // r0
  std::string *result; // r0
  const char *M_data; // r4
  size_t v39; // r0

  if ( !a2 )
    _assert2();
  Child = slim::XmlNode::findChild(a2, "id");
  if ( Child )
  {
    v5 = *(const char **)(Child + 44);
    v6 = LC_API_STRLEN_0(v5);
    std::string::_M_assign(this, v5, &v5[v6]);
  }
  v7 = slim::XmlNode::findChild(a2, "title");
  if ( v7 )
  {
    v8 = *(const char **)(v7 + 44);
    v9 = LC_API_STRLEN_0(v8);
    std::string::_M_assign(this + 1, v8, &v8[v9]);
  }
  v10 = slim::XmlNode::findChild(a2, "description");
  if ( v10 )
  {
    v11 = *(const char **)(v10 + 44);
    v12 = LC_API_STRLEN_0(v11);
    std::string::_M_assign(this + 2, v11, &v11[v12]);
  }
  v13 = slim::XmlNode::findChild(a2, "link");
  if ( v13 )
  {
    v14 = *(const char **)(v13 + 44);
    v15 = LC_API_STRLEN_0(v14);
    std::string::_M_assign(this + 3, v14, &v14[v15]);
  }
  v16 = slim::XmlNode::findChild(a2, "attachment_id");
  if ( v16 )
  {
    v17 = *(const char **)(v16 + 44);
    v18 = LC_API_STRLEN_0(v17);
    std::string::_M_assign(this + 4, v17, &v17[v18]);
  }
  v19 = slim::XmlNode::findChild(a2, "fileType");
  if ( v19 )
  {
    v20 = *(const char **)(v19 + 44);
    v21 = LC_API_STRLEN_0(v20);
    std::string::_M_assign(this + 5, v20, &v20[v21]);
  }
  v22 = slim::XmlNode::findChild(a2, "fileSize");
  if ( v22 )
  {
    v23 = *(const char **)(v22 + 44);
    v24 = LC_API_STRLEN_0(v23);
    std::string::_M_assign(this + 6, v23, &v23[v24]);
  }
  v25 = slim::XmlNode::findChild(a2, "width");
  if ( v25 )
  {
    v26 = *(const char **)(v25 + 44);
    v27 = LC_API_STRLEN_0(v26);
    std::string::_M_assign(this + 7, v26, &v26[v27]);
  }
  v28 = slim::XmlNode::findChild(a2, "height");
  if ( v28 )
  {
    v29 = *(const char **)(v28 + 44);
    v30 = LC_API_STRLEN_0(v29);
    std::string::_M_assign(this + 8, v29, &v29[v30]);
  }
  v31 = slim::XmlNode::findChild(a2, "times");
  if ( v31 )
  {
    v32 = *(const char **)(v31 + 44);
    v33 = LC_API_STRLEN_0(v32);
    std::string::_M_assign(this + 9, v32, &v32[v33]);
  }
  v34 = slim::XmlNode::findChild(a2, "button_left");
  if ( v34 )
  {
    v35 = *(const char **)(v34 + 44);
    v36 = LC_API_STRLEN_0(v35);
    std::string::_M_assign(this + 10, v35, &v35[v36]);
  }
  result = (std::string *)slim::XmlNode::findChild(a2, "button_right");
  if ( result )
  {
    M_data = result[1]._M_start_of_storage._M_data;
    v39 = LC_API_STRLEN_0(M_data);
    return std::string::_M_assign(this + 11, M_data, &M_data[v39]);
  }
  return result;
}


// ===== 842d70 item::item(item const&) =====
void __fastcall item::item(item *this, const std::string *a2)
{
  std::string::string((std::string *)this, a2);
  std::string::string((std::string *)this + 1, a2 + 1);
  std::string::string((std::string *)this + 2, a2 + 2);
  std::string::string((std::string *)this + 3, a2 + 3);
  std::string::string((std::string *)this + 4, a2 + 4);
  std::string::string((std::string *)this + 5, a2 + 5);
  std::string::string((std::string *)this + 6, a2 + 6);
  std::string::string((std::string *)this + 7, a2 + 7);
  std::string::string((std::string *)this + 8, a2 + 8);
  std::string::string((std::string *)this + 9, a2 + 9);
  std::string::string((std::string *)this + 10, a2 + 10);
  std::string::string((std::string *)this + 11, a2 + 11);
}


// ===== 842e0c std::vector<item,std::allocator<item>>::vector(std::vector<item,std::allocator<item>> const&) =====
int *__fastcall std::vector<item>::vector(int *a1, int *a2)
{
  int v4; // r3
  int v5; // r6
  int v6; // r0
  unsigned int v7; // r3
  int v8; // r8
  int v9; // r7
  int v10; // r3
  int v11; // r10
  int v12; // r5
  int v14; // [sp+4h] [bp-8h] BYREF

  v4 = (a2[1] - *a2) >> 5;
  v5 = 0;
  *a1 = 0;
  v14 = 954437177 * v4;
  a1[1] = 0;
  a1[2] = 0;
  v6 = std::allocator<item>::_M_allocate((int)(a1 + 2), 954437177 * v4, (unsigned int *)&v14);
  v7 = v14;
  *a1 = v6;
  a1[1] = v6;
  a1[2] = v6 + 288 * v7;
  v8 = *a2;
  v9 = v6;
  v10 = (a2[1] - *a2) >> 5;
  v11 = 954437177 * v10;
  if ( 954437177 * v10 > 0 )
  {
    v12 = 954437177 * v10;
    do
    {
      item::item((item *)(v9 + v5), (const std::string *)(v8 + v5));
      --v12;
      v5 += 288;
    }
    while ( v12 );
    v9 += 288 * v11;
  }
  a1[1] = v9;
  return a1;
}


// ===== 842ee4 std::vector<item,std::allocator<item>>::_M_fill_insert_aux(item*,uint,item const&,std::__false_type const&) =====
int __fastcall std::vector<item>::_M_fill_insert_aux(_DWORD *a1, std::string *a2, unsigned int a3, std::string *a4)
{
  std::string *v6; // r6
  item *v7; // r8
  int v9; // r10
  const char **v10; // r10
  int v11; // r11
  item *v12; // r1
  int v13; // r9
  int v14; // r5
  int v15; // r5
  char *v16; // r9
  int v17; // r11
  int v18; // r11
  int v19; // r8
  int v21; // [sp+14h] [bp-130h]
  _BYTE v22[4]; // [sp+18h] [bp-12Ch] BYREF
  std::string v23[12]; // [sp+1Ch] [bp-128h] BYREF

  v6 = a2;
  if ( (unsigned int)a4 >= *a1 )
  {
    v7 = (item *)a1[1];
    if ( a4 < (std::string *)v7 )
    {
      item::item((item *)v23, a4);
      std::vector<item>::_M_fill_insert_aux(a1, v6, a3, v23, v22);
      item::~item(v23);
      return 16556;
    }
  }
  else
  {
    v7 = (item *)a1[1];
  }
  v9 = 954437177 * ((v7 - (item *)a2) >> 5);
  if ( a3 >= v9 )
  {
    v16 = (char *)v7 + 288 * (a3 - v9);
    v17 = 954437177 * ((int)(288 * (a3 - v9)) >> 5);
    if ( v17 > 0 )
    {
      do
      {
        item::item(v7, a4);
        --v17;
        v7 = (item *)((char *)v7 + 288);
      }
      while ( v17 );
    }
    a1[1] = v16;
    if ( v9 <= 0 )
    {
      a1[1] = &v16[288 * v9];
    }
    else
    {
      v18 = v9;
      v19 = 0;
      do
      {
        item::item((item *)&v16[v19 * 24], &v6[v19]);
        --v18;
        v19 += 12;
      }
      while ( v18 );
      a1[1] += 288 * v9;
      do
      {
        item::operator=(v6, (const char **)&a4->_M_buffers._M_end_of_storage);
        --v9;
        v6 += 12;
      }
      while ( v9 );
    }
  }
  else
  {
    v21 = 288 * a3;
    v10 = (const char **)((char *)v7 - 288 * a3);
    v11 = 954437177 * ((int)(288 * a3) >> 5);
    if ( v11 > 0 )
    {
      v13 = 0;
      do
      {
        item::item((item *)((char *)v7 + v13 * 4), (const std::string *)&v10[v13]);
        --v11;
        v13 += 72;
      }
      while ( v11 );
      v12 = (item *)a1[1];
    }
    else
    {
      v12 = v7;
    }
    a1[1] = (char *)v12 + v21;
    v14 = 954437177 * (((char *)v10 - (char *)v6) >> 5);
    if ( v14 > 0 )
    {
      do
      {
        v7 = (item *)((char *)v7 - 288);
        v10 -= 72;
        item::operator=((std::string *)v7, v10);
        --v14;
      }
      while ( v14 );
    }
    v15 = 954437177 * (v21 >> 5);
    if ( v15 > 0 )
    {
      do
      {
        item::operator=(v6, (const char **)&a4->_M_buffers._M_end_of_storage);
        --v15;
        v6 += 12;
      }
      while ( v15 );
    }
  }
  return 16556;
}


// ===== 843174 std::vector<item,std::allocator<item>>::_M_fill_insert(item*,uint,item const&) =====
void __fastcall std::vector<item>::_M_fill_insert(std::string **a1, std::string *a2, unsigned int a3, std::string *a4)
{
  int v8; // r0
  std::string *v9; // r11
  int v10; // r9
  item *v11; // r8
  int v12; // r10
  int v13; // r8
  std::string *v14; // r7
  int v15; // r10
  int v16; // r3
  int v17; // r10
  int v18; // r8
  int v19; // r6
  unsigned int v20; // r3
  int v21; // [sp+Ch] [bp-10h]
  unsigned int size; // [sp+10h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= 954437177 * (((char *)a1[2] - (char *)a1[1]) >> 5) )
    {
      std::vector<item>::_M_fill_insert_aux(a1, a2, a3, a4);
    }
    else
    {
      size = std::vector<item>::_M_compute_next_size(a1, a3);
      v8 = std::allocator<item>::_M_allocate((int)(a1 + 2), size, &size);
      v9 = *a1;
      v10 = v8;
      v21 = 954437177 * (((char *)a2 - (char *)*a1) >> 5);
      if ( v21 > 0 )
      {
        v12 = 954437177 * (((char *)a2 - (char *)*a1) >> 5);
        v13 = 0;
        do
        {
          item::item((item *)(v10 + v13 * 24), &v9[v13]);
          --v12;
          v13 += 12;
        }
        while ( v12 );
        v11 = (item *)(v10 + 288 * v21);
      }
      else
      {
        v11 = (item *)v8;
      }
      if ( a3 == 1 )
      {
        item::item(v11, a4);
        v14 = (std::string *)((char *)v11 + 288);
      }
      else
      {
        v14 = (std::string *)((char *)v11 + 288 * a3);
        v15 = 954437177 * (((char *)v14 - (char *)v11) >> 5);
        if ( v15 > 0 )
        {
          do
          {
            item::item(v11, a4);
            --v15;
            v11 = (item *)((char *)v11 + 288);
          }
          while ( v15 );
        }
      }
      v16 = ((char *)a1[1] - (char *)a2) >> 5;
      v17 = 954437177 * v16;
      if ( 954437177 * v16 > 0 )
      {
        v18 = 954437177 * v16;
        v19 = 0;
        do
        {
          item::item((item *)&v14[v19], &a2[v19]);
          --v18;
          v19 += 12;
        }
        while ( v18 );
        v14 += 12 * v17;
      }
      std::vector<item>::_M_clear_after_move(a1);
      v20 = size;
      *a1 = (std::string *)v10;
      a1[1] = v14;
      a1[2] = (std::string *)(v10 + 288 * v20);
    }
  }
}


// ===== 843338 std::vector<item,std::allocator<item>>::resize(uint,item const&) =====
void __fastcall std::vector<item>::resize(std::string **a1, unsigned int a2, std::string *a3)
{
  item *v3; // r12
  unsigned int v5; // r2
  item *v6; // r1

  v3 = (item *)a1[1];
  v5 = 954437177 * ((v3 - (item *)*a1) >> 5);
  if ( a2 >= v5 )
  {
    std::vector<item>::_M_fill_insert(a1, a1[1], a2 - v5, a3);
  }
  else
  {
    v6 = (item *)&(*a1)[12 * a2];
    if ( v6 != v3 )
      std::vector<item>::_M_erase((int)a1, v6, (int)a1[1]);
  }
}


// ===== 8433a8 std::vector<item,std::allocator<item>>::operator=(std::vector<item,std::allocator<item>> const&) =====
int __fastcall std::vector<item>::operator=(int a1, int *a2)
{
  std::string *v4; // r7
  int v5; // r1
  int v6; // r4
  int v7; // r2
  signed int v8; // r6
  int v9; // r9
  std::string *v10; // r10
  int v11; // r8
  std::string *v12; // r0
  int v14; // r9
  int v15; // r8
  int v16; // r10
  int v17; // r8
  int v18; // r4
  signed int v19; // r10
  int v20; // r8
  unsigned int v21; // r3
  int v22; // [sp+4h] [bp-8h] BYREF

  if ( a2 != (int *)a1 )
  {
    v4 = *(std::string **)a1;
    v5 = a2[1];
    v6 = *a2;
    v7 = (v5 - *a2) >> 5;
    v8 = 954437177 * v7;
    v9 = 954437177 * v7;
    if ( 954437177 * v7 > (unsigned int)(954437177 * ((*(_DWORD *)(a1 + 8) - *(_DWORD *)a1) >> 5)) )
    {
      v22 = 954437177 * v7;
      v4 = (std::string *)std::allocator<item>::_M_allocate(a1 + 8, v8, (unsigned int *)&v22);
      v19 = v8;
      if ( v8 > 0 )
      {
        v20 = 0;
        do
        {
          item::item((item *)&v4[v20], (const std::string *)(v6 + v20 * 24));
          --v19;
          v20 += 12;
        }
        while ( v19 );
      }
      std::vector<item>::_M_clear((std::string **)a1);
      v21 = v22;
      *(_DWORD *)a1 = v4;
      *(_DWORD *)(a1 + 8) = &v4[12 * v21];
      goto LABEL_11;
    }
    v10 = *(std::string **)(a1 + 4);
    if ( v8 > (unsigned int)(954437177 * (((char *)v10 - (char *)v4) >> 5)) )
    {
      v14 = v6 + 32 * (((char *)v10 - (char *)v4) >> 5);
      v15 = 954437177 * ((32 * (((char *)v10 - (char *)v4) >> 5)) >> 5);
      if ( v15 > 0 )
      {
        v16 = 0;
        do
        {
          item::operator=(&v4[v16], (const char **)(v6 + v16 * 24));
          --v15;
          v16 += 12;
        }
        while ( v15 );
        v4 = *(std::string **)a1;
        v10 = *(std::string **)(a1 + 4);
        v5 = a2[1];
        v14 = *a2 + 32 * (((int)v10 - *(_DWORD *)a1) >> 5);
      }
      v17 = 954437177 * ((v5 - v14) >> 5);
      if ( v17 <= 0 )
        goto LABEL_11;
      v18 = 0;
      do
      {
        item::item((item *)&v10[v18], (const std::string *)(v14 + v18 * 24));
        --v17;
        v18 += 12;
      }
      while ( v17 );
    }
    else
    {
      if ( v8 <= 0 )
        goto LABEL_9;
      v11 = 0;
      do
      {
        item::operator=(&v4[v11], (const char **)(v6 + v11 * 24));
        --v9;
        v11 += 12;
      }
      while ( v9 );
      v4 += 12 * v8;
      v10 = *(std::string **)(a1 + 4);
      while ( v4 != v10 )
      {
        v12 = v4;
        v4 += 12;
        item::~item(v12);
LABEL_9:
        ;
      }
    }
    v4 = *(std::string **)a1;
LABEL_11:
    *(_DWORD *)(a1 + 4) = v4 + 12 * v8;
  }
  return a1;
}


// ===== 8435ec channel::operator=(channel const&) =====
std::string *__fastcall channel::operator=(std::string *a1, int a2)
{
  if ( a1 != (std::string *)a2 )
    std::string::_M_assign(a1, *(const char **)(a2 + 20), *(const char **)(a2 + 16));
  if ( &a1[1] != (std::string *)(a2 + 24) )
    std::string::_M_assign(a1 + 1, *(const char **)(a2 + 44), *(const char **)(a2 + 40));
  if ( &a1[2] != (std::string *)(a2 + 48) )
    std::string::_M_assign(a1 + 2, *(const char **)(a2 + 68), *(const char **)(a2 + 64));
  std::vector<item>::operator=((int)&a1[3], (int *)(a2 + 72));
  return a1;
}


// ===== 843658 std::vector<channel,std::allocator<channel>>::_M_erase(channel*,channel*,std::__false_type const&) =====
channel *__fastcall std::vector<channel>::_M_erase(int a1, channel *this, int a3)
{
  channel *v3; // r4
  int v4; // r10
  channel *v8; // r10
  int v9; // r6
  int v10; // r4
  channel *v11; // r6
  channel *v12; // r0

  v3 = *(channel **)(a1 + 4);
  v4 = 1022611261 * (((int)v3 - a3) >> 2);
  if ( v4 > 0 )
  {
    v9 = 1022611261 * (((int)v3 - a3) >> 2);
    v10 = 0;
    do
    {
      channel::operator=((std::string *)((char *)this + v10), a3 + v10);
      --v9;
      v10 += 84;
    }
    while ( v9 );
    v8 = (channel *)((char *)this + 84 * v4);
    v3 = *(channel **)(a1 + 4);
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
      v11 = (channel *)((char *)v11 + 84);
      channel::~channel(v12);
    }
    while ( v3 != v11 );
  }
  *(_DWORD *)(a1 + 4) = v8;
  return this;
}


// ===== 8436e4 channel::channel(channel const&) =====
void __fastcall channel::channel(channel *this, const channel *a2)
{
  std::string::string((std::string *)this, (const std::string *)a2);
  std::string::string((std::string *)this + 1, (const std::string *)a2 + 1);
  std::string::string((std::string *)this + 2, (const std::string *)a2 + 2);
  std::vector<item>::vector((int *)this + 18, (int *)a2 + 18);
}


// ===== 843720 std::vector<channel,std::allocator<channel>>::_M_fill_insert_aux(channel*,uint,channel const&,std::__false_type const&) =====
void __fastcall std::vector<channel>::_M_fill_insert_aux(
        _DWORD *a1,
        std::string *a2,
        unsigned int a3,
        const channel *a4)
{
  std::string *v6; // r6
  channel *v7; // r8
  int v8; // r10
  int v9; // r11
  int v10; // r10
  channel *v11; // r2
  int v12; // r9
  int v13; // r9
  int v14; // r5
  unsigned int v15; // r2
  char *v16; // r9
  int v17; // r11
  int v18; // r11
  int v19; // r8
  int v21; // [sp+14h] [bp-68h]
  char v22[4]; // [sp+1Ch] [bp-60h] BYREF
  _BYTE v23[84]; // [sp+20h] [bp-5Ch] BYREF

  v6 = a2;
  if ( (unsigned int)a4 >= *a1 )
  {
    v7 = (channel *)a1[1];
    if ( a4 < v7 )
    {
      channel::channel((channel *)v23, a4);
      std::vector<channel>::_M_fill_insert_aux(a1, v6, a3, v23, v22);
      channel::~channel((channel *)v23);
      return;
    }
  }
  else
  {
    v7 = (channel *)a1[1];
  }
  v8 = 1022611261 * ((v7 - (channel *)a2) >> 2);
  if ( a3 >= v8 )
  {
    v15 = a3 - v8;
    v16 = (char *)v7 + 84 * v15;
    v17 = 1022611261 * ((int)(84 * v15) >> 2);
    if ( v17 > 0 )
    {
      do
      {
        channel::channel(v7, a4);
        --v17;
        v7 = (channel *)((char *)v7 + 84);
      }
      while ( v17 );
    }
    a1[1] = v16;
    if ( v8 <= 0 )
    {
      a1[1] = &v16[84 * v8];
    }
    else
    {
      v18 = v8;
      v19 = 0;
      do
      {
        channel::channel((channel *)&v16[v19], (const channel *)((char *)v6 + v19));
        --v18;
        v19 += 84;
      }
      while ( v18 );
      a1[1] += 84 * v8;
      do
      {
        channel::operator=(v6, (int)a4);
        --v8;
        v6 = (std::string *)((char *)v6 + 84);
      }
      while ( v8 );
    }
  }
  else
  {
    v9 = 1022611261 * ((int)(84 * a3) >> 2);
    v21 = 84 * a3;
    v10 = (int)v7 - 84 * a3;
    if ( v9 > 0 )
    {
      v12 = 0;
      do
      {
        channel::channel((channel *)((char *)v7 + v12), (const channel *)(v10 + v12));
        --v9;
        v12 += 84;
      }
      while ( v9 );
      v11 = (channel *)a1[1];
    }
    else
    {
      v11 = v7;
    }
    v13 = 1022611261 * ((v10 - (int)v6) >> 2);
    a1[1] = (char *)v11 + v21;
    if ( v13 > 0 )
    {
      do
      {
        v7 = (channel *)((char *)v7 - 84);
        v10 -= 84;
        channel::operator=((std::string *)v7, v10);
        --v13;
      }
      while ( v13 );
    }
    v14 = 1022611261 * (v21 >> 2);
    if ( v14 > 0 )
    {
      do
      {
        channel::operator=(v6, (int)a4);
        --v14;
        v6 = (std::string *)((char *)v6 + 84);
      }
      while ( v14 );
    }
  }
}


// ===== 84394c std::vector<channel,std::allocator<channel>>::_M_fill_insert(channel*,uint,channel const&) =====
void __fastcall std::vector<channel>::_M_fill_insert(channel **a1, std::string *a2, unsigned int a3, const channel *a4)
{
  channel *v8; // r0
  channel *v9; // r9
  channel *v10; // r10
  channel *v11; // r7
  int v12; // r11
  int v13; // r7
  channel *v14; // r8
  int v15; // r9
  int v16; // r9
  int v17; // r7
  int v18; // r6
  size_t v19; // r3
  int v20; // [sp+Ch] [bp-10h]
  size_t size; // [sp+10h] [bp-Ch] BYREF

  if ( a3 )
  {
    if ( a3 <= 1022611261 * ((a1[2] - a1[1]) >> 2) )
    {
      std::vector<channel>::_M_fill_insert_aux(a1, a2, a3, a4);
    }
    else
    {
      size = std::vector<channel>::_M_compute_next_size(a1, a3);
      v8 = (channel *)std::allocator<channel>::_M_allocate((int)(a1 + 2), size, &size);
      v9 = *a1;
      v10 = v8;
      v20 = 1022611261 * (((char *)a2 - (char *)*a1) >> 2);
      if ( v20 > 0 )
      {
        v12 = 1022611261 * (((char *)a2 - (char *)*a1) >> 2);
        v13 = 0;
        do
        {
          channel::channel((channel *)((char *)v10 + v13), (channel *)((char *)v9 + v13));
          --v12;
          v13 += 84;
        }
        while ( v12 );
        v11 = (channel *)((char *)v10 + 84 * v20);
      }
      else
      {
        v11 = v8;
      }
      if ( a3 == 1 )
      {
        channel::channel(v11, a4);
        v14 = (channel *)((char *)v11 + 84);
      }
      else
      {
        v14 = (channel *)((char *)v11 + 84 * a3);
        v15 = 1022611261 * ((v14 - v11) >> 2);
        if ( v15 > 0 )
        {
          do
          {
            channel::channel(v11, a4);
            --v15;
            v11 = (channel *)((char *)v11 + 84);
          }
          while ( v15 );
        }
      }
      v16 = 1022611261 * ((a1[1] - (channel *)a2) >> 2);
      if ( v16 > 0 )
      {
        v17 = 1022611261 * ((a1[1] - (channel *)a2) >> 2);
        v18 = 0;
        do
        {
          channel::channel((channel *)((char *)v14 + v18), (const channel *)((char *)a2 + v18));
          --v17;
          v18 += 84;
        }
        while ( v17 );
        v14 = (channel *)((char *)v14 + 84 * v16);
      }
      std::vector<channel>::_M_clear_after_move(a1);
      v19 = size;
      *a1 = v10;
      a1[1] = v14;
      a1[2] = (channel *)((char *)v10 + 84 * v19);
    }
  }
}


// ===== 843acc std::vector<channel,std::allocator<channel>>::resize(uint,channel const&) =====
void __fastcall std::vector<channel>::resize(int a1, unsigned int a2, const channel *a3)
{
  channel *v3; // r12
  unsigned int v4; // r5
  channel *v5; // r1

  v3 = *(channel **)(a1 + 4);
  v4 = 1022611261 * (((int)v3 - *(_DWORD *)a1) >> 2);
  if ( a2 >= v4 )
  {
    std::vector<channel>::_M_fill_insert((channel **)a1, *(std::string **)(a1 + 4), a2 - v4, a3);
  }
  else
  {
    v5 = (channel *)(*(_DWORD *)a1 + 84 * a2);
    if ( v5 != v3 )
      std::vector<channel>::_M_erase(a1, v5, *(_DWORD *)(a1 + 4));
  }
}


// ===== 843b2c trimHTMLstr(std::string) =====
int __fastcall trimHTMLstr(std::string a1)
{
  __int64 v1; // kr00_8
  char **v2; // r6
  char *v3; // r4
  size_t v4; // r0
  char *v5; // r10
  unsigned int v6; // r9
  size_t v7; // r0
  size_t v8; // r0
  int v9; // r11
  int i; // r4
  unsigned int v11; // r2
  _DWORD v13[10]; // [sp+8h] [bp-28h] BYREF
  int v14; // [sp+30h] [bp+0h] BYREF

  v1 = *(_QWORD *)&a1._M_buffers._M_end_of_storage;
  v13[0] = "&lt;";
  v13[1] = "<";
  v13[2] = "&gt;";
  v13[3] = ">";
  v13[4] = "&amp;";
  v13[5] = "&";
  v13[6] = "&quot;";
  v13[7] = "\"";
  v2 = (char **)v13;
  v13[8] = "&apos;";
  v13[9] = "'";
  do
  {
    v3 = *v2;
    while ( 1 )
    {
      v8 = LC_API_STRLEN_0(v3);
      v9 = std::string::find((std::string *)HIDWORD(v1), v3, 0, v8);
      if ( v9 < 0 )
        break;
      v4 = LC_API_STRLEN_0(v3);
      v5 = v2[1];
      v6 = v4;
      v7 = LC_API_STRLEN_0(v5);
      std::string::replace((std::string *)HIDWORD(v1), v9, v6, v5, v7);
    }
    v2 += 2;
  }
  while ( v2 != (char **)&v14 );
  for ( i = 0; ; std::string::erase((std::string *)HIDWORD(v1), i, v11 + 1) )
  {
    i = std::string::find((std::string *)HIDWORD(v1), "<", i, 1u);
    if ( i < 0 )
      break;
    v11 = std::string::find((std::string *)HIDWORD(v1), ">", i, 1u);
    if ( v11 == -1 )
      v11 = *(_DWORD *)(HIDWORD(v1) + 16) - *(_DWORD *)(HIDWORD(v1) + 20);
  }
  std::string::string((std::string *)v1, (const std::string *)HIDWORD(v1));
  return v1;
}


// ===== 843c60 channel::channel(void) =====
void __fastcall channel::channel(channel *this)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, 0x10u);
  **((_BYTE **)this + 4) = 0;
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 6, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 16) = (char *)this + 48;
  *((_DWORD *)this + 17) = (char *)this + 48;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 12, 0x10u);
  **((_BYTE **)this + 16) = 0;
  *((_DWORD *)this + 20) = 0;
  *((_DWORD *)this + 18) = 0;
  *((_DWORD *)this + 19) = 0;
}


// ===== 843cd8 item::item(void) =====
void __fastcall item::item(item *this)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(this, 0x10u);
  **((_BYTE **)this + 4) = 0;
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 6, 0x10u);
  **((_BYTE **)this + 10) = 0;
  *((_DWORD *)this + 16) = (char *)this + 48;
  *((_DWORD *)this + 17) = (char *)this + 48;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 12, 0x10u);
  **((_BYTE **)this + 16) = 0;
  *((_DWORD *)this + 22) = (char *)this + 72;
  *((_DWORD *)this + 23) = (char *)this + 72;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 18, 0x10u);
  **((_BYTE **)this + 22) = 0;
  *((_DWORD *)this + 28) = (char *)this + 96;
  *((_DWORD *)this + 29) = (char *)this + 96;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 24, 0x10u);
  **((_BYTE **)this + 28) = 0;
  *((_DWORD *)this + 34) = (char *)this + 120;
  *((_DWORD *)this + 35) = (char *)this + 120;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 30, 0x10u);
  **((_BYTE **)this + 34) = 0;
  *((_DWORD *)this + 40) = (char *)this + 144;
  *((_DWORD *)this + 41) = (char *)this + 144;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 36, 0x10u);
  **((_BYTE **)this + 40) = 0;
  *((_DWORD *)this + 46) = (char *)this + 168;
  *((_DWORD *)this + 47) = (char *)this + 168;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 42, 0x10u);
  **((_BYTE **)this + 46) = 0;
  *((_DWORD *)this + 52) = (char *)this + 192;
  *((_DWORD *)this + 53) = (char *)this + 192;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 48, 0x10u);
  **((_BYTE **)this + 52) = 0;
  *((_DWORD *)this + 58) = (char *)this + 216;
  *((_DWORD *)this + 59) = (char *)this + 216;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 54, 0x10u);
  **((_BYTE **)this + 58) = 0;
  *((_DWORD *)this + 64) = (char *)this + 240;
  *((_DWORD *)this + 65) = (char *)this + 240;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 60, 0x10u);
  **((_BYTE **)this + 64) = 0;
  *((_DWORD *)this + 70) = (char *)this + 264;
  *((_DWORD *)this + 71) = (char *)this + 264;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 66, 0x10u);
  **((_BYTE **)this + 70) = 0;
}


// ===== 843e64 channel::read(slim::XmlNode const*) =====
int __fastcall channel::read(channel *this, const slim::XmlNode *a2)
{
  int Child; // r0
  const char *v5; // r6
  size_t v6; // r0
  int v7; // r0
  const char *v8; // r6
  size_t v9; // r0
  int v10; // r0
  const char *v11; // r6
  size_t v12; // r0
  int result; // r0
  const slim::XmlNode *i; // r7
  unsigned int v15; // [sp+0h] [bp-134h]
  int v16; // [sp+8h] [bp-12Ch] BYREF
  std::string v17[12]; // [sp+Ch] [bp-128h] BYREF

  if ( !a2 )
    _assert2();
  v16 = 0;
  Child = slim::XmlNode::findChild(a2, "title");
  if ( Child )
  {
    v5 = *(const char **)(Child + 44);
    v6 = LC_API_STRLEN_0(v5);
    std::string::_M_assign((std::string *const)this, v5, &v5[v6]);
  }
  v7 = slim::XmlNode::findChild(a2, "link");
  if ( v7 )
  {
    v8 = *(const char **)(v7 + 44);
    v9 = LC_API_STRLEN_0(v8);
    std::string::_M_assign((std::string *const)this + 1, v8, &v8[v9]);
  }
  v10 = slim::XmlNode::findChild(a2, "description");
  if ( v10 )
  {
    v11 = *(const char **)(v10 + 44);
    v12 = LC_API_STRLEN_0(v11);
    std::string::_M_assign((std::string *const)this + 2, v11, &v11[v12]);
  }
  result = slim::XmlNode::findFirstChild(a2, "item", &v16);
  for ( i = (const slim::XmlNode *)result; result; i = (const slim::XmlNode *)result )
  {
    v15 = 954437177 * ((*((_DWORD *)this + 19) - *((_DWORD *)this + 18)) >> 5) + 1;
    item::item((item *)v17);
    std::vector<item>::resize((std::string **)this + 18, v15, v17);
    item::~item(v17);
    item::read((std::string *)(*((_DWORD *)this + 19) - 288), i);
    result = slim::XmlNode::findNextChild(a2, "item", &v16);
  }
  return result;
}


// ===== 844050 rss::read(slim::XmlNode const*) =====
int __fastcall rss::read(rss *this, const slim::XmlNode *a2)
{
  int result; // r0
  const slim::XmlNode *i; // r7
  unsigned int v6; // [sp+0h] [bp-6Ch]
  int v7; // [sp+Ch] [bp-60h] BYREF
  _BYTE v8[84]; // [sp+10h] [bp-5Ch] BYREF

  if ( !a2 )
    _assert2();
  v7 = 0;
  result = slim::XmlNode::findFirstChild(a2, "channel", &v7);
  for ( i = (const slim::XmlNode *)result; result; i = (const slim::XmlNode *)result )
  {
    v6 = 1022611261 * ((*((_DWORD *)this + 1) - *(_DWORD *)this) >> 2) + 1;
    channel::channel((channel *)v8);
    std::vector<channel>::resize((int)this, v6, (const channel *)v8);
    channel::~channel((channel *)v8);
    channel::read((channel *)(*((_DWORD *)this + 1) - 84), i);
    result = slim::XmlNode::findNextChild(a2, "channel", &v7);
  }
  return result;
}


// ===== 844180 slim::XmlDocument::loadFromStream(std::istream &) =====
int __fastcall slim::XmlDocument::loadFromStream(slim::XmlDocument *this, std::istream *a2)
{
  return 0;
}


// ===== 844188 slim::XmlDocument::save(char const*,slim::Encode) =====
int slim::XmlDocument::save()
{
  return 1;
}


// ===== 844190 slim::utf8toutf16(char const*,uint,wchar_t *,uint) =====
wchar_t *__fastcall slim::utf8toutf16(slim *this, const char *a2, unsigned int a3, wchar_t *a4, unsigned int a5)
{
  wchar_t *i; // r4
  int v6; // r2
  __int16 v7; // r5
  char v9; // r12

  if ( a2 )
  {
    v6 = a3 + 4;
    for ( i = (wchar_t *)(&dword_0 + 1); ; i = (wchar_t *)((char *)i + 1) )
    {
      v7 = *(unsigned __int8 *)this;
      if ( (v7 & 0x80u) == 0 )
        break;
      if ( (v7 & 0xE0) == 0xC0 )
      {
        if ( (unsigned int)a2 <= 1 )
          return (wchar_t *)((char *)i - 1);
        v9 = *((_BYTE *)this + 1);
        this = (slim *)((char *)this + 2);
        *(_DWORD *)(v6 - 4) = v7 & 0x1F | (32 * (v9 & 0x3F));
        a2 -= 2;
        goto LABEL_4;
      }
      if ( (v7 & 0xF0) != 0xE0 || (unsigned int)a2 <= 2 )
        return (wchar_t *)((char *)i - 1);
      *(_DWORD *)(v6 - 4) = *((_BYTE *)this + 2) & 0x3F
                          | (unsigned __int16)(v7 << 12)
                          | ((*((_BYTE *)this + 1) & 0x3F) << 6);
      this = (slim *)((char *)this + 3);
      a2 -= 3;
      if ( a4 == i )
        return i;
LABEL_5:
      v6 += 4;
      if ( !a2 )
        return i;
    }
    *(_DWORD *)(v6 - 4) = (char)v7;
    this = (slim *)((char *)this + 1);
    --a2;
LABEL_4:
    if ( a4 == i )
      return i;
    goto LABEL_5;
  }
  return nullptr;
}


// ===== 844270 slim::utf16toutf8(wchar_t const*,uint,char *,uint) =====
char *__fastcall slim::utf16toutf8(slim *this, const wchar_t *a2, _BYTE *a3, char *a4, unsigned int a5)
{
  char *result; // r0
  char *v6; // r12
  char *v7; // r1
  bool v8; // zf
  unsigned int v9; // r4
  int v10; // r4

  if ( a2 )
  {
    v6 = (char *)this + 4;
    v7 = (char *)a2 - 1;
    result = nullptr;
    while ( 1 )
    {
      v9 = *((_DWORD *)v6 - 1);
      if ( v9 <= 0x7F )
        break;
      if ( v9 > 0x7FF )
      {
        if ( a4 < result + 3 )
          return result;
        result += 3;
        *a3 = ~(~(v9 >> 12 << 27) >> 27);
        a3[1] = ~(~(((*((_DWORD *)v6 - 1) >> 6) & 0x3Fu) << 25) >> 25);
        a3[2] = ~(~((*((_DWORD *)v6 - 1) & 0x3Fu) << 25) >> 25);
        a3 += 3;
LABEL_6:
        v8 = v7 == nullptr;
        v6 += 4;
        --v7;
        if ( v8 )
          return result;
      }
      else
      {
        if ( a4 < result + 2 )
          return result;
        v8 = v7 == nullptr;
        result += 2;
        *a3 = ~(~(v9 >> 6 << 26) >> 26);
        v10 = *((_DWORD *)v6 - 1);
        --v7;
        v6 += 4;
        a3[1] = ~(~((v10 & 0x3Fu) << 25) >> 25);
        a3 += 2;
        if ( v8 )
          return result;
      }
    }
    if ( result == a4 )
      return result;
    *a3++ = v9;
    ++result;
    goto LABEL_6;
  }
  return nullptr;
}


// ===== 844368 slim::detectUtf8(char const*,uint) =====
int __fastcall slim::detectUtf8(slim *this, const char *a2, unsigned int a3)
{
  int v3; // r3

  if ( !a2 )
    return 1;
  while ( 1 )
  {
    v3 = *(char *)this;
    if ( v3 >= 0 )
    {
      this = (slim *)((char *)this + 1);
      --a2;
      goto LABEL_3;
    }
    if ( (v3 & 0xF0) == 0xE0 )
      break;
    if ( (v3 & 0xE0) == 0xC0 )
    {
      if ( (unsigned int)a2 <= 1 || (*((_BYTE *)this + 1) & 0xC0) != 0x80 )
        return 0;
      this = (slim *)((char *)this + 2);
      a2 -= 2;
LABEL_3:
      if ( !a2 )
        return 1;
    }
    else
    {
      if ( (v3 & 0xF8) != 0xF0
        || (unsigned int)a2 <= 3
        || (*((_BYTE *)this + 1) & 0xC0) != 0x80
        || (*((_BYTE *)this + 2) & 0xC0) != 0x80
        || (*((_BYTE *)this + 3) & 0xC0) != 0x80 )
      {
        return 0;
      }
      a2 -= 4;
      this = (slim *)((char *)this + 4);
      if ( !a2 )
        return 1;
    }
  }
  if ( (unsigned int)a2 > 2 && (*((_BYTE *)this + 1) & 0xC0) == 0x80 && (*((_BYTE *)this + 2) & 0xC0) == 0x80 )
  {
    this = (slim *)((char *)this + 3);
    a2 -= 3;
    goto LABEL_3;
  }
  return 0;
}


// ===== 844464 slim::XmlDocument::findLabel(char const*&,uint,char const*&,uint &) =====
int __fastcall slim::XmlDocument::findLabel(
        slim::XmlDocument *this,
        const char **a2,
        size_t a3,
        const char **a4,
        unsigned int *a5)
{
  char *v8; // r0
  char *v9; // r5
  const char *v10; // r2
  char *v11; // r0
  int result; // r0
  const void *v13; // r8
  size_t v14; // r7
  char *v15; // r0
  int v16; // r8

  v8 = (char *)memchr(*a2, 60, a3);
  if ( !v8 )
    return 0;
  v9 = v8 + 1;
  *a4 = v8 + 1;
  v10 = (const char *)(*a2 - (v8 + 1) + a3);
  if ( (unsigned int)v10 > 6 && v8[1] == 33 && v8[2] == 45 && v8[3] == 45 )
  {
    v13 = v8 + 4;
    v14 = (size_t)(v10 - 5);
    while ( 1 )
    {
      v15 = (char *)memchr(v13, 45, v14);
      if ( !v15 )
        break;
      v16 = v15 - (_BYTE *)v13;
      if ( v15[1] == 45 && v15[2] == 62 )
      {
        *a5 = (unsigned int)&v15[2 - (_DWORD)v9];
        *a2 = v15 + 3;
        return 1;
      }
      v14 += ~v16;
      v13 = v15 + 1;
    }
    return 0;
  }
  v11 = (char *)memchr(v8 + 1, 62, (size_t)v10);
  if ( !v11 )
    return 0;
  *a5 = v11 - v9;
  *a2 = v11 + 1;
  result = *a5;
  if ( *a5 )
    return 1;
  return result;
}


// ===== 844574 slim::XmlDocument::loadFromFile(char const*) =====
int __fastcall slim::XmlDocument::loadFromFile(slim::XmlDocument *this, const char *a2)
{
  if ( !a2 )
    _assert2();
  return 0;
}


// ===== 8445bc slim::XmlNode::findAttribute(char const*) =====
int __fastcall slim::XmlNode::findAttribute(slim::XmlNode *this, const char *a2)
{
  char *i; // r4
  char *v4; // r6
  int v5; // r5

  v4 = (char *)this + 52;
  for ( i = *((char **)this + 13); v4 != i; i = *(char **)i )
  {
    v5 = *((_DWORD *)i + 2);
    if ( v5 )
    {
      if ( !LC_API_STRCMP_0(*(const char **)(v5 + 20), a2) )
        return v5;
    }
    else
    {
      _assert2();
      if ( !LC_API_STRCMP_0((_BYTE *)&dword_0 + 1, a2) )
        return v5;
    }
  }
  return 0;
}


// ===== 844660 slim::XmlNode::findNextChild(char const*,std::priv::_List_iterator<slim::XmlNode*,std::_Const_traits<slim::XmlNode*>> &) =====
int __fastcall slim::XmlNode::findNextChild(int a1, char *a2, _DWORD **a3)
{
  _DWORD *v6; // r3
  _DWORD *v7; // r6
  int v8; // r4
  _DWORD *v10; // r3

  if ( !a2 )
    _assert2();
  v6 = *a3;
  v7 = (_DWORD *)(a1 + 64);
  if ( v7 != *a3 )
  {
    while ( 1 )
    {
      v10 = (_DWORD *)*v6;
      *a3 = v10;
      if ( v7 == v10 )
        break;
      v8 = v10[2];
      if ( !v8 )
        _assert2();
      if ( std::operator==<char>(v8, a2) )
        return v8;
      v6 = *a3;
    }
  }
  return 0;
}


// ===== 84473c slim::XmlNode::findFirstChild(char const*,std::priv::_List_iterator<slim::XmlNode*,std::_Const_traits<slim::XmlNode*>> &) =====
int __fastcall slim::XmlNode::findFirstChild(int a1, char *a2, _DWORD **a3)
{
  _DWORD *v6; // r3
  _DWORD *v7; // r6
  _DWORD *v8; // t1
  int v9; // r4

  if ( !a2 )
    _assert2();
  v8 = *(_DWORD **)(a1 + 64);
  v7 = (_DWORD *)(a1 + 64);
  v6 = v8;
  *a3 = v8;
  while ( v7 != v6 )
  {
    v9 = v6[2];
    if ( v9 )
    {
      if ( std::operator==<char>(v6[2], a2) )
        return v9;
    }
    else
    {
      _assert2();
      if ( std::operator==<char>(0, a2) )
        return v9;
    }
    v6 = (_DWORD *)**a3;
    *a3 = v6;
  }
  return 0;
}


// ===== 844828 slim::XmlNode::findChild(char const*) =====
int __fastcall slim::XmlNode::findChild(slim::XmlNode *this, char *a2)
{
  char *i; // r4
  char *v5; // r6
  char *v6; // t1
  int v7; // r5

  if ( !a2 )
    _assert2();
  v6 = *((char **)this + 16);
  v5 = (char *)this + 64;
  for ( i = v6; v5 != i; i = *(char **)i )
  {
    v7 = *((_DWORD *)i + 2);
    if ( v7 )
    {
      if ( std::operator==<char>(*((_DWORD *)i + 2), a2) )
        return v7;
    }
    else
    {
      _assert2();
      if ( std::operator==<char>(0, a2) )
        return v7;
    }
  }
  return 0;
}


// ===== 844904 std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(uint) [clone] =====
void std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block()
{
  ;
}


// ===== 844908 slim::XmlBase::XmlBase(void) =====
slim::XmlBase *__fastcall slim::XmlBase::XmlBase(slim::XmlBase *this)
{
  *((_DWORD *)this + 4) = this;
  *((_DWORD *)this + 5) = this;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 4) = 0;
  *((_DWORD *)this + 10) = (char *)this + 24;
  *((_DWORD *)this + 11) = (char *)this + 24;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block();
  **((_BYTE **)this + 10) = 0;
  return this;
}


// ===== 84494c slim::XmlNode::XmlNode(slim::NodeType,slim::XmlNode*) =====
slim::XmlBase *__fastcall slim::XmlNode::XmlNode(slim::XmlBase *a1, int a2, int a3)
{
  slim::XmlBase::XmlBase(a1);
  *((_DWORD *)a1 + 12) = a2;
  *((_DWORD *)a1 + 14) = (char *)a1 + 52;
  *((_DWORD *)a1 + 15) = a3;
  *((_DWORD *)a1 + 17) = (char *)a1 + 64;
  *((_DWORD *)a1 + 13) = (char *)a1 + 52;
  *((_DWORD *)a1 + 16) = (char *)a1 + 64;
  return a1;
}


// ===== 844988 slim::XmlNode::XmlNode(slim::NodeType,slim::XmlNode*) =====
slim::XmlBase *__fastcall slim::XmlNode::XmlNode(slim::XmlBase *a1, int a2, int a3)
{
  slim::XmlBase::XmlBase(a1);
  *((_DWORD *)a1 + 12) = a2;
  *((_DWORD *)a1 + 14) = (char *)a1 + 52;
  *((_DWORD *)a1 + 15) = a3;
  *((_DWORD *)a1 + 17) = (char *)a1 + 64;
  *((_DWORD *)a1 + 13) = (char *)a1 + 52;
  *((_DWORD *)a1 + 16) = (char *)a1 + 64;
  return a1;
}


// ===== 8449c4 slim::XmlDocument::XmlDocument(void) =====
slim::XmlDocument *__fastcall slim::XmlDocument::XmlDocument(slim::XmlDocument *this)
{
  slim::XmlNode::XmlNode(this, 0, 0);
  return this;
}


// ===== 8449e0 slim::XmlDocument::XmlDocument(void) =====
slim::XmlDocument *__fastcall slim::XmlDocument::XmlDocument(slim::XmlDocument *this)
{
  slim::XmlNode::XmlNode(this, 0, 0);
  return this;
}


// ===== 8449fc slim::XmlNode::clearAttribute(void) =====
void __fastcall slim::XmlNode::clearAttribute(slim::XmlNode *this)
{
  char *v1; // r5
  char *v2; // r6
  _DWORD *v4; // r4
  _DWORD *v5; // r0
  size_t v6; // r1
  _DWORD *v7; // r0
  size_t v8; // r1
  char *v9; // r0
  char *v10; // r4

  v2 = (char *)this + 52;
  v1 = *((char **)this + 13);
  if ( (char *)this + 52 != v1 )
  {
    do
    {
      v4 = *((_DWORD **)v1 + 2);
      if ( v4 )
      {
        v5 = (_DWORD *)v4[11];
        if ( v5 != v4 + 6 && v5 )
        {
          v6 = v4[6] - (_DWORD)v5;
          if ( v6 > 0x80 )
            LC_API_FREE_0(v5);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v5, v6);
        }
        v7 = (_DWORD *)v4[5];
        if ( v7 != v4 && v7 )
        {
          v8 = *v4 - (_DWORD)v7;
          if ( v8 > 0x80 )
            LC_API_FREE_0(v7);
          else
            __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v7, v8);
        }
        LC_API_FREE_0(v4);
      }
      v1 = *(char **)v1;
    }
    while ( v2 != v1 );
  }
  v9 = *((char **)this + 13);
  if ( v1 != v9 )
  {
    while ( 1 )
    {
      v10 = *(char **)v9;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v9, 0xCu);
      if ( v10 == v1 )
        break;
      v9 = v10;
    }
  }
  *((_DWORD *)this + 14) = v1;
  *((_DWORD *)this + 13) = v1;
}


// ===== 844acc slim::XmlBase::~XmlBase() =====
void __fastcall slim::XmlBase::~XmlBase(slim::XmlBase *this)
{
  char *v1; // r3
  char *v3; // r0
  size_t v4; // r1
  slim::XmlBase *v5; // r0
  size_t v6; // r1

  v1 = (char *)this + 24;
  v3 = *((char **)this + 11);
  if ( v3 != v1 && v3 )
  {
    v4 = *((_DWORD *)this + 6) - (_DWORD)v3;
    if ( v4 > 0x80 )
      LC_API_FREE_0(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v3, v4);
  }
  v5 = *((slim::XmlBase **)this + 5);
  if ( v5 != this && v5 )
  {
    v6 = *(_DWORD *)this - (_DWORD)v5;
    if ( v6 > 0x80 )
      LC_API_FREE_0(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v5, v6);
  }
}


// ===== 844b44 slim::XmlNode::~XmlNode() =====
void __fastcall slim::XmlNode::~XmlNode(slim::XmlNode ***this)
{
  slim::XmlNode **v2; // r0
  slim::XmlNode *v3; // r4
  slim::XmlNode **v4; // r0
  slim::XmlNode *v5; // r4

  slim::XmlNode::clearAttribute((slim::XmlNode *)this);
  slim::XmlNode::clearChild((slim::XmlNode *)this);
  v2 = *(this + 16);
  if ( v2 != (slim::XmlNode **)(this + 16) )
  {
    while ( 1 )
    {
      v3 = *v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0xCu);
      if ( v3 == (slim::XmlNode *)(this + 16) )
        break;
      v2 = (slim::XmlNode **)v3;
    }
    v2 = (slim::XmlNode **)(this + 16);
  }
  *(this + 16) = v2;
  *(this + 17) = v2;
  v4 = *(this + 13);
  if ( v4 != (slim::XmlNode **)(this + 13) )
  {
    while ( 1 )
    {
      v5 = *v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, 0xCu);
      if ( v5 == (slim::XmlNode *)(this + 13) )
        break;
      v4 = (slim::XmlNode **)v5;
    }
    v4 = (slim::XmlNode **)(this + 13);
  }
  *(this + 13) = v4;
  *(this + 14) = v4;
  slim::XmlBase::~XmlBase((slim::XmlBase *)this);
}


// ===== 844bd8 slim::XmlNode::clearChild(void) =====
void __fastcall slim::XmlNode::clearChild(slim::XmlNode *this)
{
  slim::XmlNode ****v1; // r4
  slim::XmlNode ****v2; // r5
  slim::XmlNode ***v4; // r9
  slim::XmlNode ****v5; // r0
  slim::XmlNode ****v6; // r5

  v2 = (slim::XmlNode ****)((char *)this + 64);
  v1 = *((slim::XmlNode *****)this + 16);
  if ( (slim::XmlNode ****)((char *)this + 64) != v1 )
  {
    do
    {
      v4 = v1[2];
      if ( v4 )
      {
        slim::XmlNode::~XmlNode(v1[2]);
        LC_API_FREE_0(v4);
      }
      else
      {
        _assert2();
      }
      v1 = (slim::XmlNode ****)*v1;
    }
    while ( v2 != v1 );
  }
  v5 = *((slim::XmlNode *****)this + 16);
  if ( v1 != v5 )
  {
    while ( 1 )
    {
      v6 = (slim::XmlNode ****)*v5;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v5, 0xCu);
      if ( v6 == v1 )
        break;
      v5 = v6;
    }
  }
  *((_DWORD *)this + 17) = v1;
  *((_DWORD *)this + 16) = v1;
}


// ===== 844c8c slim::XmlNode::~XmlNode() =====
void __fastcall slim::XmlNode::~XmlNode(slim::XmlNode ***this)
{
  slim::XmlNode **v2; // r0
  slim::XmlNode *v3; // r4
  slim::XmlNode **v4; // r0
  slim::XmlNode *v5; // r4

  slim::XmlNode::clearAttribute((slim::XmlNode *)this);
  slim::XmlNode::clearChild((slim::XmlNode *)this);
  v2 = *(this + 16);
  if ( v2 != (slim::XmlNode **)(this + 16) )
  {
    while ( 1 )
    {
      v3 = *v2;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v2, 0xCu);
      if ( v3 == (slim::XmlNode *)(this + 16) )
        break;
      v2 = (slim::XmlNode **)v3;
    }
    v2 = (slim::XmlNode **)(this + 16);
  }
  *(this + 16) = v2;
  *(this + 17) = v2;
  v4 = *(this + 13);
  if ( v4 != (slim::XmlNode **)(this + 13) )
  {
    while ( 1 )
    {
      v5 = *v4;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer_0(v4, 0xCu);
      if ( v5 == (slim::XmlNode *)(this + 13) )
        break;
      v4 = (slim::XmlNode **)v5;
    }
    v4 = (slim::XmlNode **)(this + 13);
  }
  *(this + 13) = v4;
  *(this + 14) = v4;
  slim::XmlBase::~XmlBase((slim::XmlBase *)this);
}


// ===== 844d20 slim::XmlNode::addAttribute(char const*,char const*) =====
std::string *__fastcall slim::XmlNode::addAttribute(slim::XmlNode *this, const char *a2, const char *a3)
{
  std::string *v6; // r4
  size_t v7; // r0
  size_t v8; // r0
  _DWORD *v9; // r0
  _DWORD *v10; // r3
  size_t v12; // [sp+4h] [bp-8h] BYREF

  v6 = (std::string *)operator new(0x30u);
  slim::XmlBase::XmlBase((slim::XmlBase *)v6);
  if ( a2 )
  {
    v7 = LC_API_STRLEN_0(a2);
    std::string::_M_assign(v6, a2, &a2[v7]);
  }
  if ( a3 )
  {
    v8 = LC_API_STRLEN_0(a3);
    std::string::_M_assign(v6 + 1, a3, &a3[v8]);
  }
  v12 = 12;
  v9 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v12);
  v9[2] = v6;
  v10 = *((_DWORD **)this + 14);
  *v9 = (char *)this + 52;
  v9[1] = v10;
  *v10 = v9;
  *((_DWORD *)this + 14) = v9;
  return v6;
}


// ===== 844db8 slim::XmlDocument::parseLabel(slim::XmlNode *,char const*,uint) =====
const char *__fastcall slim::XmlDocument::parseLabel(
        slim::XmlDocument *this,
        std::string *a2,
        const char *__f,
        unsigned int a4)
{
  int v5; // r2
  bool v8; // zf
  const char *v9; // r5
  const char *result; // r0
  int v11; // r3
  int v12; // r3
  int v13; // t1
  bool v14; // zf
  const char *v15; // r7
  int v16; // t1
  int v17; // r4
  const char *v18; // r8
  const char *v19; // r2
  int v20; // r3
  int v21; // t1
  bool v22; // zf
  const void *v23; // r5
  const char *v24; // r6
  std::string *v25; // r10
  const char *v26; // r1

  v5 = *__f;
  v8 = v5 == 47;
  if ( v5 != 47 )
    v8 = v5 == 32;
  if ( v8 || v5 == 62 )
  {
    v9 = __f;
    result = (const char *)std::string::_M_assign(a2, __f, __f);
    v11 = *__f;
    if ( v11 != 32 )
      return result;
    goto LABEL_15;
  }
  v9 = __f;
  do
  {
    v13 = *++v9;
    v12 = v13;
    v14 = v13 == 47;
    if ( v13 != 47 )
      v14 = v12 == 32;
  }
  while ( !v14 && v12 != 62 );
  result = (const char *)std::string::_M_assign(a2, __f, v9);
  v11 = *v9;
  if ( v11 == 32 )
  {
LABEL_15:
    v15 = &__f[a4];
    if ( v15 > v9 )
    {
      while ( 1 )
      {
        v11 = (char)v11;
        if ( (char)v11 == 32 )
        {
          do
          {
            v16 = *++v9;
            v11 = v16;
          }
          while ( v16 == 32 );
        }
        v17 = v11 != 61;
        v18 = v9;
        if ( v11 == 61 )
        {
          v19 = v9;
        }
        else if ( v11 == 47 || v11 == 62 )
        {
          v19 = v9;
          v17 = 0;
        }
        else
        {
          v19 = v9;
          do
          {
            v21 = *++v19;
            v20 = v21;
            v22 = v21 == 61;
            if ( v21 != 61 )
              v22 = v20 == 32;
          }
          while ( !v22 && v20 != 47 && v20 != 62 );
          v17 = v19 - v9;
          v9 = v19;
        }
        result = (const char *)memchr(v9, 34, v15 - v19);
        if ( !result )
          break;
        v23 = result + 1;
        result = (const char *)memchr(v23, 34, v15 - (_BYTE *)v23);
        v24 = result;
        if ( !result )
          break;
        v25 = slim::XmlNode::addAttribute((slim::XmlNode *)a2, nullptr, nullptr);
        std::string::_M_assign(v25, v18, &v18[v17]);
        v26 = (const char *)v23;
        v9 = v24 + 1;
        result = (const char *)std::string::_M_assign(v25 + 1, v26, v24);
        if ( v15 <= v24 + 1 )
          break;
        LOBYTE(v11) = v24[1];
      }
    }
  }
  return result;
}


// ===== 844f44 slim::XmlNode::addChild(char const*,slim::NodeType) =====
slim::XmlBase *__fastcall slim::XmlNode::addChild(int a1, const char *a2, int a3)
{
  slim::XmlBase *v5; // r4
  size_t v7; // r0
  _DWORD *v8; // r0
  _DWORD *v9; // r3
  size_t v11; // [sp+Ch] [bp-4h] BYREF

  if ( (unsigned int)(a3 - 1) > 1 )
    return nullptr;
  v5 = (slim::XmlBase *)operator new(0x48u);
  slim::XmlNode::XmlNode(v5, a3, a1);
  if ( a2 )
  {
    v7 = LC_API_STRLEN_0(a2);
    std::string::_M_assign((std::string *const)v5, a2, &a2[v7]);
  }
  v11 = 12;
  v8 = __ZNSt12__node_alloc11_M_allocateERj_veneer_0(&v11);
  v8[2] = v5;
  v9 = *(_DWORD **)(a1 + 68);
  *v8 = a1 + 64;
  v8[1] = v9;
  *v9 = v8;
  *(_DWORD *)(a1 + 68) = v8;
  return v5;
}


// ===== 844fdc slim::XmlDocument::parse(char const*,uint) =====
int __fastcall slim::XmlDocument::parse(slim::XmlDocument *this, const char *a2, unsigned int a3)
{
  int v3; // r9
  const char *v4; // r4
  const char *v6; // r6
  slim::XmlDocument *v7; // r5
  int v8; // r3
  std::string *v9; // r4
  std::string *v10; // r0
  unsigned int v12; // [sp+14h] [bp-8h] BYREF
  char *__f; // [sp+18h] [bp-4h] BYREF
  const char *v14; // [sp+1Ch] [bp+0h] BYREF

  v3 = 0;
  v4 = a2;
  v14 = a2;
  v6 = &a2[a3];
  __f = nullptr;
  v12 = 0;
  v7 = this;
LABEL_2:
  if ( v4 < v6 )
  {
    do
    {
      if ( !v7 )
      {
        _assert2();
        v4 = v14;
      }
      if ( !slim::XmlDocument::findLabel(this, &v14, v6 - v4, (const char **)&__f, &v12) )
        break;
      v8 = *__f;
      if ( v8 == 47 )
      {
        if ( !v3 )
          return 0;
        if ( *((_DWORD *)v7 + 12) == 1 && *((slim::XmlDocument **)v7 + 16) == (slim::XmlDocument *)((char *)v7 + 64) )
          std::string::_M_assign((std::string *const)v7 + 1, v4, __f - 1);
        v7 = *((slim::XmlDocument **)v7 + 15);
        --v3;
        v4 = v14;
        goto LABEL_2;
      }
      if ( v8 != 63 )
      {
        if ( v8 == 33 )
        {
          if ( v12 <= 4 )
            return 0;
          v10 = (std::string *)slim::XmlNode::addChild((int)v7, nullptr, 2);
          std::string::_M_assign(v10, __f + 3, &__f[v12 - 2]);
          v4 = v14;
        }
        else
        {
          v9 = (std::string *)slim::XmlNode::addChild((int)v7, nullptr, 1);
          slim::XmlDocument::parseLabel(this, v9, __f, v12);
          if ( __f[v12 - 1] != 47 )
          {
            v7 = (slim::XmlDocument *)v9;
            ++v3;
          }
          v4 = v14;
        }
        goto LABEL_2;
      }
      v4 = v14;
    }
    while ( v14 < v6 );
  }
  if ( v3 )
    return 0;
  if ( this != v7 )
    _assert2();
  return 1;
}


// ===== 8451dc slim::XmlDocument::loadFromMemory(char const*,uint) =====
int __fastcall slim::XmlDocument::loadFromMemory(slim::XmlDocument *this, const char *a2, unsigned int a3)
{
  int v6; // r3

  slim::XmlNode::clearChild(this);
  if ( a3 <= 2 )
    return 0;
  v6 = *(unsigned __int8 *)a2;
  if ( v6 == 254 )
  {
    if ( *((unsigned __int8 *)a2 + 1) != 255 )
      return slim::XmlDocument::parse(this, a2, a3);
  }
  else
  {
    if ( v6 != 255 )
    {
      if ( v6 == 239 && *((unsigned __int8 *)a2 + 1) == 187 && *((unsigned __int8 *)a2 + 2) == 191 )
        return 0;
      return slim::XmlDocument::parse(this, a2, a3);
    }
    if ( *((unsigned __int8 *)a2 + 1) != 254 )
      return slim::XmlDocument::parse(this, a2, a3);
  }
  return 0;
}


// ===== 845268 slim::XmlNode::writeNode(std::string &,int) =====
std::string *__fastcall slim::XmlNode::writeNode(char **this, std::string *a2, int a3)
{
  int i; // r5
  char **j; // r5
  char *v8; // r6
  size_t v9; // r0
  char *v10; // r6
  size_t v11; // r0
  int v12; // r5
  char *v13; // r5
  size_t v14; // r0
  char *v16; // [sp+0h] [bp-14h]

  if ( a3 < 0 )
    return (std::string *)slim::XmlNode::writeChildNodes((slim::XmlNode *)this, a2, a3);
  if ( a3 )
  {
    for ( i = 0; i != a3; ++i )
      std::string::push_back(a2, byte_9);
  }
  if ( *(this + 12) == (_BYTE *)&dword_0 + 2 )
  {
    std::string::_M_append(a2, "<!--", "");
    std::string::_M_append(a2, *(this + 5), *(this + 4));
    return std::string::_M_append(a2, "-->\r\n", "");
  }
  else
  {
    std::string::push_back(a2, &off_3C);
    std::string::_M_append(a2, *(this + 5), *(this + 4));
    for ( j = (char **)*(this + 13); j != this + 13; j = (char **)*j )
    {
      v8 = j[2];
      if ( !v8 )
        _assert2();
      std::string::push_back(a2, &dword_20);
      v16 = *((char **)v8 + 5);
      v9 = LC_API_STRLEN_0(v16);
      std::string::_M_append(a2, v16, &v16[v9]);
      std::string::_M_append(a2, "=\"", "");
      v10 = *((char **)v8 + 11);
      v11 = LC_API_STRLEN_0(v10);
      std::string::_M_append(a2, v10, &v10[v11]);
      std::string::push_back(a2, (_BYTE *)&dword_20 + 2);
    }
    if ( *(this + 16) == (char *)(this + 16) && *(this + 11) == *(this + 10) )
    {
      return std::string::_M_append(a2, "/>\r\n", "");
    }
    else
    {
      std::string::_M_append(a2, ">", "");
      if ( this + 16 == (char **)*(this + 16) )
      {
        std::string::_M_append(a2, *(this + 11), *(this + 10));
      }
      else
      {
        std::string::_M_append(a2, "\r\n", "");
        slim::XmlNode::writeChildNodes((slim::XmlNode *)this, a2, a3);
        if ( a3 )
        {
          v12 = 0;
          do
          {
            ++v12;
            std::string::push_back(a2, byte_9);
          }
          while ( v12 != a3 );
        }
      }
      std::string::_M_append(a2, "</", "");
      v13 = *(this + 5);
      v14 = LC_API_STRLEN_0(v13);
      std::string::_M_append(a2, v13, &v13[v14]);
      return std::string::_M_append(a2, ">\r\n", "");
    }
  }
}


// ===== 845518 slim::XmlNode::writeChildNodes(std::string &,int) =====
std::string *__fastcall slim::XmlNode::writeChildNodes(std::string *this, std::string *a2, int a3)
{
  int v4; // r8
  std::string *i; // r4
  std::string *v6; // r6
  char **v7; // r5

  v4 = a3 + 1;
  v6 = (std::string *)((char *)this + 64);
  for ( i = *((std::string **)this + 16); v6 != i; i = (std::string *)i->_M_buffers._M_end_of_storage )
  {
    v7 = *(char ***)&i->_M_buffers._M_static_buf[8];
    if ( !v7 )
      _assert2();
    this = slim::XmlNode::writeNode(v7, a2, v4);
  }
  return this;
}


// ===== 84559c Thread::IsCurrectThreadRunning(void) =====
bool __fastcall Thread::IsCurrectThreadRunning(Thread *this)
{
  int v1; // r0
  bool v2; // zf

  v1 = pthread_kill(*((_DWORD *)this + 1), 0);
  v2 = v1 == 22;
  if ( v1 != 22 )
    v2 = v1 == 3;
  return !v2;
}


// ===== 8455c0 Thread::Run(void) =====
int __fastcall Thread::Run(Thread *this)
{
  pthread_t v2; // r0
  int result; // r0

  v2 = pthread_self();
  for ( result = XP_DEBUG_OUT("PthredSelf: %d\n", v2);
        !*((_BYTE *)this + 8);
        result = (*(int (__fastcall **)(Thread *))(*(_DWORD *)this + 12))(this) )
  {
    ;
  }
  return result;
}


// ===== 84560c Thread::Stop(void) =====
int __fastcall Thread::Stop(Thread *this)
{
  void *v1; // r5
  void *v4; // [sp+4h] [bp-8h] BYREF

  v1 = (void *)*((unsigned __int8 *)this + 8);
  if ( *((_BYTE *)this + 8) )
    return 0;
  *((_BYTE *)this + 8) = 1;
  if ( !Thread::IsCurrectThreadRunning(this) || (v4 = v1, !pthread_join(*((_DWORD *)this + 1), &v4)) )
  {
    (*(void (__fastcall **)(Thread *))(*(_DWORD *)this + 16))(this);
    return 0;
  }
  (*(void (__fastcall **)(Thread *))(*(_DWORD *)this + 16))(this);
  return -1;
}


// ===== 845688 Thread::Start(void) =====
int __fastcall Thread::Start(Thread *this)
{
  int result; // r0

  if ( (*(int (__fastcall **)(Thread *))(*(_DWORD *)this + 8))(this) < 0 )
    return -1;
  *((_BYTE *)this + 8) = 0;
  result = pthread_create((pthread_t *)this + 1, nullptr, (void *(*)(void *))threadfun, this);
  if ( result )
    return -1;
  return result;
}


// ===== 8456e4 threadfun(void *) =====
void __fastcall __noreturn threadfun(Thread *a1)
{
  Thread::Run(a1);
  pthread_exit((char *)&dword_0 + 1);
}


// ===== 8456f4 sub_8456F4 =====
void __fastcall sub_8456F4(int a1, int a2, int a3, int a4, int a5, int a6)
{
  __asm { POP             {R4,PC} }
}


// ===== 8456fc Connection::getNextIncomingPacket(void) =====
int __fastcall Connection::getNextIncomingPacket(Connection *this)
{
  int v1; // r4
  int v3; // r0
  int v4; // r2

  v1 = *((_DWORD *)this + 2059);
  if ( v1 )
  {
    v3 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 108))(*((_DWORD *)this + 2059));
    v4 = *((_DWORD *)this + 2060);
    *((_DWORD *)this + 2059) = v3;
    if ( v1 == v4 )
      *((_DWORD *)this + 2060) = v3;
    (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)v1 + 112))(v1, 0);
  }
  return v1;
}


// ===== 845754 Connection::isConnected(void) =====
int __fastcall Connection::isConnected(Connection *this)
{
  return *((unsigned __int8 *)this + 14);
}


// ===== 84575c Connection::set_connected(bool) =====
int __fastcall Connection::set_connected(int this, bool a2)
{
  *(_BYTE *)(this + 14) = a2;
  return this;
}


// ===== 845764 Connection::cleanRetryData(void) =====
int __fastcall Connection::cleanRetryData(int this)
{
  int v1; // r3
  int v2; // r5

  v1 = *(_DWORD *)(this + 8252);
  v2 = this;
  if ( v1 )
  {
    this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v1 + 4))(*(_DWORD *)(this + 8252));
    *(_DWORD *)(v2 + 8252) = 0;
  }
  return this;
}


// ===== 845798 Connection::getTimeOfLastReqest(void) =====
int __fastcall Connection::getTimeOfLastReqest(Connection *this)
{
  return *((_DWORD *)this + 2062);
}


// ===== 8457a4 Connection::saveRetryData(DataPacket *) =====
int __fastcall Connection::saveRetryData(int this, DataPacket *a2)
{
  int v3; // r4
  DefaultDataPacket *v4; // r7
  void (__fastcall *v5)(DefaultDataPacket *, int, int); // r5
  int v6; // r8
  int v7; // r0

  v3 = this;
  if ( a2 )
  {
    Connection::cleanRetryData(this);
    v4 = (DefaultDataPacket *)operator new(0x101Cu);
    DefaultDataPacket::DefaultDataPacket(v4);
    *(_DWORD *)(v3 + 8252) = v4;
    v5 = *(void (__fastcall **)(DefaultDataPacket *, int, int))(*(_DWORD *)v4 + 104);
    v6 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 100))(a2);
    v7 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
    v5(v4, v6, v7);
    this = XP_API_GET_TIME();
    *(_DWORD *)(v3 + 8248) = this;
  }
  return this;
}


// ===== 84581c Connection::connect(void) =====
int __fastcall Connection::connect(Connection *this)
{
  int v1; // r5
  int result; // r0
  int v4; // r2
  int v5; // r3
  int v6; // r3
  int v7; // r0
  int v8; // r3

  v1 = *((_DWORD *)this + 1);
  if ( v1 )
  {
    if ( v1 == 1 )
    {
      result = (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 2053) + 56))(
                 *((_DWORD *)this + 2053),
                 *((_DWORD *)this + 2055),
                 0);
      if ( result )
      {
        v6 = *(_DWORD *)this;
        *((_BYTE *)this + 14) = 1;
        (*(void (__fastcall **)(Connection *))(v6 + 16))(this);
        (*(void (__fastcall **)(Connection *))(*(_DWORD *)this + 12))(this);
        v7 = XP_API_GET_TIME();
        v8 = *((_DWORD *)this + 2053);
        *((_DWORD *)this + 2061) = v7;
        *((_DWORD *)this + 1) = 2;
        *(_DWORD *)(v8 + 2140) = 0;
        return 1;
      }
      v4 = *((_DWORD *)this + 2053);
      if ( *(_DWORD *)(v4 + 2140) >= 2u )
      {
        *((_DWORD *)this + 1) = 3;
        *(_DWORD *)(v4 + 2140) = 0;
        return result;
      }
    }
    return 0;
  }
  if ( *((_DWORD *)this + 2055) && *((_DWORD *)this + 2056) )
  {
    result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2053) + 40))(*((_DWORD *)this + 2053));
    if ( result )
      v5 = 1;
    else
      v5 = 3;
    *((_DWORD *)this + 1) = v5;
    if ( result )
      return 0;
  }
  else
  {
    *((_DWORD *)this + 1) = 3;
    return 0;
  }
  return result;
}


// ===== 845944 Connection::addIncomingPacket(DataPacket *) =====
int __fastcall Connection::addIncomingPacket(int this, DataPacket *a2)
{
  int v3; // r4
  int v4; // r3

  v3 = this;
  if ( a2 )
  {
    if ( *(_DWORD *)(this + 8236) )
    {
      v4 = *(_DWORD *)(this + 8240);
      if ( v4 )
      {
        this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 112))(*(_DWORD *)(this + 8240));
        *(_DWORD *)(v3 + 8240) = a2;
      }
      else
      {
        return XP_DEBUG_OUT("addIncomingPacket: Error!");
      }
    }
    else
    {
      *(_DWORD *)(this + 8240) = a2;
      *(_DWORD *)(this + 8236) = a2;
    }
  }
  return this;
}


// ===== 8459b4 Connection::addOutgoingPacket(DataPacket *) =====
int __fastcall Connection::addOutgoingPacket(int this, DataPacket *a2)
{
  int v3; // r4
  int v4; // r3

  v3 = this;
  if ( a2 )
  {
    if ( *(_BYTE *)(this + 14) )
    {
      if ( *(_DWORD *)(this + 8228) )
      {
        v4 = *(_DWORD *)(this + 8232);
        if ( v4 )
        {
          this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v4 + 112))(*(_DWORD *)(this + 8232));
          *(_DWORD *)(v3 + 8232) = a2;
        }
        else
        {
          return XP_DEBUG_OUT("addOutgoingPacket: Error!");
        }
      }
      else
      {
        *(_DWORD *)(this + 8232) = a2;
        *(_DWORD *)(this + 8228) = a2;
        return (*(int (__fastcall **)(int))(*(_DWORD *)this + 8))(this);
      }
    }
    else
    {
      return (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 4))(a2);
    }
  }
  return this;
}


// ===== 845a50 Connection::sendRetryData(void) =====
int __fastcall Connection::sendRetryData(int this)
{
  int v1; // r4
  DefaultDataPacket *v2; // r5
  void (__fastcall *v3)(DefaultDataPacket *, int, int); // r6
  int v4; // r8
  int v5; // r0

  v1 = this;
  if ( *(_DWORD *)(this + 8252) )
  {
    v2 = (DefaultDataPacket *)operator new(0x101Cu);
    DefaultDataPacket::DefaultDataPacket(v2);
    v3 = *(void (__fastcall **)(DefaultDataPacket *, int, int))(*(_DWORD *)v2 + 104);
    v4 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 8252) + 100))(*(_DWORD *)(v1 + 8252));
    v5 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 8252) + 96))(*(_DWORD *)(v1 + 8252));
    v3(v2, v4, v5);
    Connection::addOutgoingPacket(v1, v2);
    this = XP_API_GET_TIME();
    *(_DWORD *)(v1 + 8248) = this;
  }
  return this;
}


// ===== 845ad8 Connection::keepConnectionAlive(void) =====
int __fastcall Connection::keepConnectionAlive(Connection *this)
{
  DefaultDataPacket *v3; // r4

  if ( XP_API_GET_TIME() - *((_DWORD *)this + 2061) <= 10000 )
    return 0;
  v3 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v3);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v3 + 8))(v3, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v3 + 8))(v3, 97);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v3 + 92))(v3);
  Connection::addOutgoingPacket((int)this, v3);
  return 1;
}


// ===== 845b60 Connection::sendKickOutPlayerPackage(char *) =====
int __fastcall Connection::sendKickOutPlayerPackage(int this, char *a2)
{
  int v3; // r5
  DefaultDataPacket *v4; // r4
  void (__fastcall *v5)(DefaultDataPacket *, char *, _DWORD); // r7
  unsigned __int8 v6; // r0

  v3 = this;
  if ( a2 )
  {
    v4 = (DefaultDataPacket *)operator new(0x101Cu);
    DefaultDataPacket::DefaultDataPacket(v4);
    (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 103);
    (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 114);
    (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 107);
    v5 = *(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v4 + 40);
    v6 = XP_API_STRLEN(a2);
    v5(v4, a2, v6);
    (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v4 + 92))(v4);
    Connection::saveRetryData(v3, v4);
    return Connection::addOutgoingPacket(v3, v4);
  }
  return this;
}


// ===== 845c0c Connection::sendUpdateSessionPackage(int) =====
int __fastcall Connection::sendUpdateSessionPackage(Connection *this, unsigned __int8 a2)
{
  DefaultDataPacket *v4; // r4

  v4 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v4);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 101);
  (*(void (__fastcall **)(DefaultDataPacket *, _DWORD))(*(_DWORD *)v4 + 8))(v4, a2);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v4 + 92))(v4);
  Connection::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 845ca4 Connection::sendFinishGamePackage(void) =====
int __fastcall Connection::sendFinishGamePackage(Connection *this)
{
  DefaultDataPacket *v2; // r4

  v2 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 102);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v2 + 92))(v2);
  Connection::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 845d24 Connection::sendStartGamePackage(void) =====
int __fastcall Connection::sendStartGamePackage(Connection *this)
{
  DefaultDataPacket *v2; // r4

  v2 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 115);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v2 + 92))(v2);
  Connection::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 845da4 Connection::sendListSessionsByDataPackage(uchar,int,char *,int) =====
int __fastcall Connection::sendListSessionsByDataPackage(
        Connection *this,
        int a2,
        int a3,
        char *a4,
        unsigned __int8 a5)
{
  DefaultDataPacket *v9; // r5

  v9 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v9);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v9 + 8))(v9, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v9 + 8))(v9, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v9 + 8))(v9, 108);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v9 + 8))(v9, a2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v9 + 16))(v9, a3);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v9 + 8))(v9, 100);
  (*(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v9 + 40))(v9, a4, a5);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v9 + 92))(v9);
  Connection::saveRetryData((int)this, v9);
  return Connection::addOutgoingPacket((int)this, v9);
}


// ===== 845e88 Connection::sendListSessionsByNamePackage(uchar,int,char *) =====
int __fastcall Connection::sendListSessionsByNamePackage(Connection *this, int a2, int a3, char *a4)
{
  DefaultDataPacket *v8; // r5
  void (__fastcall *v9)(DefaultDataPacket *, char *, _DWORD); // r7
  unsigned __int8 v10; // r0

  v8 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v8);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, 108);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, a2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 16))(v8, a3);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, 110);
  v9 = *(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v8 + 40);
  v10 = XP_API_STRLEN(a4);
  v9(v8, a4, v10);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v8 + 92))(v8);
  Connection::saveRetryData((int)this, v8);
  return Connection::addOutgoingPacket((int)this, v8);
}


// ===== 845f70 Connection::sendListSessionsAllPackage(uchar,int) =====
int __fastcall Connection::sendListSessionsAllPackage(Connection *this, int a2, int a3)
{
  DefaultDataPacket *v6; // r5

  v6 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v6);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, 108);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, a2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 16))(v6, a3);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, 97);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v6 + 92))(v6);
  Connection::saveRetryData((int)this, v6);
  return Connection::addOutgoingPacket((int)this, v6);
}


// ===== 846034 Connection::sendListSessionsPackage(uchar,int) =====
int __fastcall Connection::sendListSessionsPackage(Connection *this, int a2, int a3)
{
  DefaultDataPacket *v6; // r5

  v6 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v6);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, 108);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 8))(v6, a2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v6 + 16))(v6, a3);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v6 + 92))(v6);
  Connection::saveRetryData((int)this, v6);
  return Connection::addOutgoingPacket((int)this, v6);
}


// ===== 8460e4 Connection::sendLeaveSessionPackage(void) =====
int __fastcall Connection::sendLeaveSessionPackage(Connection *this)
{
  DefaultDataPacket *v2; // r4

  v2 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 113);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v2 + 92))(v2);
  Connection::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 846164 Connection::sendJoinSessionPackage(char *) =====
int __fastcall Connection::sendJoinSessionPackage(Connection *this, char *a2)
{
  DefaultDataPacket *v4; // r4
  void (__fastcall *v5)(DefaultDataPacket *, char *, _DWORD); // r7
  unsigned __int8 v6; // r0

  v4 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v4);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 106);
  v5 = *(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v4 + 40);
  v6 = XP_API_STRLEN(a2);
  v5(v4, a2, v6);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v4 + 92))(v4);
  Connection::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 846208 Connection::sendQuickGamePackage(void) =====
int __fastcall Connection::sendQuickGamePackage(Connection *this)
{
  DefaultDataPacket *v2; // r4

  v2 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 117);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v2 + 92))(v2);
  Connection::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 846288 Connection::sendCreateSessionPackage(char *,char *,int) =====
int __fastcall Connection::sendCreateSessionPackage(Connection *this, char *a2, char *a3, unsigned __int8 a4)
{
  DefaultDataPacket *v8; // r6
  void (__fastcall *v9)(DefaultDataPacket *, char *, _DWORD); // r8
  unsigned __int8 v10; // r0

  v8 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v8);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v8 + 8))(v8, 99);
  v9 = *(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v8 + 40);
  v10 = XP_API_STRLEN(a2);
  v9(v8, a2, v10);
  if ( !a3 )
    a3 = " ";
  (*(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v8 + 40))(v8, a3, a4);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v8 + 92))(v8);
  Connection::saveRetryData((int)this, v8);
  return Connection::addOutgoingPacket((int)this, v8);
}


// ===== 846364 Connection::sendFinishConnectionPackage(void) =====
int __fastcall Connection::sendFinishConnectionPackage(Connection *this)
{
  DefaultDataPacket *v2; // r4
  int result; // r0

  v2 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v2);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 115);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v2 + 8))(v2, 120);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v2 + 92))(v2);
  Connection::addOutgoingPacket((int)this, v2);
  result = XP_API_GET_TIME();
  *((_DWORD *)this + 2062) = result;
  return result;
}


// ===== 8463d0 Connection::sendLoginPackage(char *) =====
int __fastcall Connection::sendLoginPackage(Connection *this, char *a2)
{
  DefaultDataPacket *v4; // r4
  void (__fastcall *v5)(DefaultDataPacket *, char *, _DWORD); // r7
  unsigned __int8 v6; // r0

  v4 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v4);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 103);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 105);
  XP_DEBUG_OUT("Connection::sendLoginPackage()\nuser=[%s]\n", a2);
  v5 = *(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v4 + 40);
  v6 = XP_API_STRLEN(a2);
  v5(v4, a2, v6);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v4 + 92))(v4);
  Connection::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 846488 Connection::sendEstablishConnectionPackage(void) =====
int __fastcall Connection::sendEstablishConnectionPackage(Connection *this)
{
  int v2; // r6
  DefaultDataPacket *v3; // r4
  DefaultDataPacket *v4; // r4
  int result; // r0

  *((_DWORD *)this + 2066) = 0;
  *((_DWORD *)this + 2065) = 0;
  *((_DWORD *)this + 2067) = 0;
  v2 = XP_API_GET_RANDOM(*((const char **)this + 2064));
  XP_DEBUG_OUT("EstablishConnection random = %d\n", v2);
  v3 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v3);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v3 + 8))(v3, 115);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v3 + 8))(v3, 119);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v3 + 16))(v3, v2);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v3 + 92))(v3);
  Connection::addOutgoingPacket((int)this, v3);
  v4 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v4);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 115);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 8))(v4, 114);
  (*(void (__fastcall **)(DefaultDataPacket *, int))(*(_DWORD *)v4 + 16))(v4, v2);
  (*(void (__fastcall **)(DefaultDataPacket *))(*(_DWORD *)v4 + 92))(v4);
  Connection::addOutgoingPacket((int)this, v4);
  *((_DWORD *)this + 2062) = XP_API_GET_TIME();
  result = XP_API_GET_TIME();
  *((_DWORD *)this + 2) = result;
  return result;
}


// ===== 8465b8 Connection::disconnect(void) =====
void *__fastcall Connection::disconnect(Connection *this)
{
  int v1; // r3
  int v3; // r3
  int i; // r5
  int v5; // r5
  void *result; // r0

  v1 = *((_DWORD *)this + 2053);
  *((_BYTE *)this + 14) = 0;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 60))(v1);
    v3 = *((_DWORD *)this + 2053);
    if ( v3 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*((_DWORD *)this + 2053));
    *((_DWORD *)this + 2053) = 0;
  }
  Connection::cleanRetryData((int)this);
  for ( i = *((_DWORD *)this + 2059); i; i = *((_DWORD *)this + 2059) )
  {
    *((_DWORD *)this + 2059) = (*(int (__fastcall **)(int))(*(_DWORD *)i + 108))(i);
    (*(void (__fastcall **)(int))(*(_DWORD *)i + 4))(i);
  }
  v5 = *((_DWORD *)this + 2057);
  *((_DWORD *)this + 2060) = 0;
  for ( *((_DWORD *)this + 2059) = 0; v5; v5 = *((_DWORD *)this + 2057) )
  {
    *((_DWORD *)this + 2057) = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 108))(v5);
    (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
  }
  *((_DWORD *)this + 2057) = 0;
  *((_DWORD *)this + 2058) = 0;
  XP_API_MEMSET((char *)this + 15, 0, 0x1001u);
  result = XP_API_MEMSET((char *)this + 4112, 0, 0x1001u);
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 2061) = 0;
  *((_DWORD *)this + 2062) = 0;
  return result;
}


// ===== 8466fc Connection::receiveDataLen(void) =====
int __fastcall Connection::receiveDataLen(Connection *this)
{
  int v1; // r1
  int v3; // r1
  int result; // r0
  char *v5; // r5
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r2
  int v10; // r2
  DefaultDataPacket *v11; // r6

  v1 = *((_DWORD *)this + 2067);
  if ( v1 )
  {
    if ( v1 != 1 )
      return XP_DEBUG_OUT("Connection::receiveDataLen-- error m_iRecvStep = %d\n");
    v5 = (char *)this + 15;
    if ( !*((_DWORD *)this + 2065) )
      XP_API_MEMSET((char *)this + 15, 0, 0x1001u);
    result = (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 2053) + 64))(*((_DWORD *)this + 2053), 0);
    if ( result >= 0 )
    {
      result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2053) + 76))(*((_DWORD *)this + 2053));
      if ( result )
      {
        result = (*(int (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 2053) + 72))(
                   *((_DWORD *)this + 2053),
                   (char *)this + *((_DWORD *)this + 2065) + 15,
                   *((_DWORD *)this + 2066) - *((_DWORD *)this + 2065));
        if ( result >= 0 )
        {
          if ( !result )
            return (int)Connection::disconnect(this);
          v6 = *((_DWORD *)this + 2065);
          v7 = *((_DWORD *)this + 2066);
          if ( v6 < v7 )
          {
            v6 += result;
            *((_DWORD *)this + 2065) = v6;
          }
          if ( v6 == v7 )
          {
            v11 = (DefaultDataPacket *)operator new(0x101Cu);
            DefaultDataPacket::DefaultDataPacket(v11);
            (*(void (__fastcall **)(DefaultDataPacket *, char *, _DWORD))(*(_DWORD *)v11 + 104))(
              v11,
              v5,
              *((_DWORD *)this + 2065));
            Connection::addIncomingPacket((int)this, v11);
            result = (int)XP_API_MEMSET(v5, 0, 0x80u);
            *((_DWORD *)this + 2066) = 0;
            *((_DWORD *)this + 2065) = 0;
            *((_DWORD *)this + 2067) = 0;
          }
          else if ( v6 > v7 )
          {
            Connection::disconnect(this);
            return XP_DEBUG_OUT("Connection::receiveDataLen-- more data step1: m_iNeedRecvDataLen = %d, m_iRecvDataBufLen = %d\n");
          }
        }
      }
    }
  }
  else
  {
    v3 = *((_DWORD *)this + 2065);
    *((_DWORD *)this + 2066) = 1;
    if ( !v3 )
      XP_API_MEMSET((char *)this + 15, 0, 0x1001u);
    result = (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 2053) + 64))(*((_DWORD *)this + 2053), 0);
    if ( result >= 0 )
    {
      result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2053) + 76))(*((_DWORD *)this + 2053));
      if ( result )
      {
        result = (*(int (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 2053) + 72))(
                   *((_DWORD *)this + 2053),
                   (char *)this + *((_DWORD *)this + 2065) + 15,
                   *((_DWORD *)this + 2066) - *((_DWORD *)this + 2065));
        if ( result >= 0 )
        {
          if ( result )
          {
            v8 = *((_DWORD *)this + 2065);
            v9 = *((_DWORD *)this + 2066);
            if ( v8 < v9 )
            {
              v8 += result;
              *((_DWORD *)this + 2065) = v8;
            }
            if ( v9 == v8 )
            {
              v10 = *((unsigned __int8 *)this + 15);
              *((_DWORD *)this + 2067) = 1;
              *((_DWORD *)this + 2066) = v10;
              *((_DWORD *)this + 2065) = 0;
            }
            else if ( v9 < v8 )
            {
              Connection::disconnect(this);
              return XP_DEBUG_OUT("ConnectionLobby::receiveDataLen-- error,more data\n");
            }
            return result;
          }
          return (int)Connection::disconnect(this);
        }
      }
    }
  }
  return result;
}


// ===== 84699c Connection::sendData(void) =====
Connection *__fastcall Connection::sendData(Connection *this)
{
  Connection *v1; // r4
  char v2; // r0
  int v3; // r3
  const void *v4; // r8
  size_t v5; // r0
  int v6; // r8
  int (__fastcall *v7)(int, char *, int); // r7
  int v8; // r0
  int v9; // r0
  int v10; // r6

  v1 = this;
  if ( *((_DWORD *)this + 2057) )
  {
    if ( Connection::isConnected(this) )
    {
      v2 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 2057) + 96))(*((_DWORD *)v1 + 2057));
      v3 = *((_DWORD *)v1 + 2057);
      *((_BYTE *)v1 + 4112) = v2;
      v4 = (const void *)(*(int (__fastcall **)(int))(*(_DWORD *)v3 + 100))(v3);
      v5 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 2057) + 96))(*((_DWORD *)v1 + 2057));
      XP_API_MEMCPY((char *)v1 + 4113, v4, v5);
      if ( (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)v1 + 2053) + 64))(*((_DWORD *)v1 + 2053), 1) < 0 )
      {
        return (Connection *)XP_DEBUG_OUT("sendData: select error.");
      }
      else
      {
        v6 = *((_DWORD *)v1 + 2053);
        v7 = *(int (__fastcall **)(int, char *, int))(*(_DWORD *)v6 + 68);
        v8 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 2057) + 96))(*((_DWORD *)v1 + 2057));
        if ( v7(v6, (char *)v1 + 4112, v8 + 1) < 0 )
        {
          return (Connection *)Connection::disconnect(v1);
        }
        else
        {
          v9 = XP_API_GET_TIME();
          v10 = *((_DWORD *)v1 + 2057);
          *((_DWORD *)v1 + 2061) = v9;
          *((_DWORD *)v1 + 2057) = (*(int (__fastcall **)(int))(*(_DWORD *)v10 + 108))(v10);
          this = (Connection *)(*(int (__fastcall **)(int))(*(_DWORD *)v10 + 4))(v10);
          if ( *((_DWORD *)v1 + 2057) )
            return (Connection *)(*(int (__fastcall **)(Connection *))(*(_DWORD *)v1 + 8))(v1);
          else
            *((_DWORD *)v1 + 2058) = 0;
        }
      }
    }
    else
    {
      XP_DEBUG_OUT("sendData: PPP not open, disconnect.");
      return (Connection *)Connection::disconnect(v1);
    }
  }
  return this;
}


// ===== 846b14 Connection::~Connection() =====
void __fastcall Connection::~Connection(void **this)
{
  int v2; // r3
  int v3; // r3

  *this = off_993188;
  Connection::disconnect((Connection *)this);
  LC_API_FREE_0(*(this + 2055));
  v2 = (int)*(this + 2053);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*(this + 2053));
  v3 = (int)*(this + 2054);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*(this + 2054));
    *(this + 2054) = nullptr;
  }
  LC_API_FREE_0(*(this + 2064));
  *(this + 2064) = nullptr;
}


// ===== 846bb0 Connection::~Connection() =====
void __fastcall Connection::~Connection(void **this)
{
  Connection::~Connection(this);
  LC_API_FREE_0(this);
}


// ===== 846bcc Connection::~Connection() =====
void __fastcall Connection::~Connection(void **this)
{
  int v2; // r3
  int v3; // r3

  *this = off_993188;
  Connection::disconnect((Connection *)this);
  LC_API_FREE_0(*(this + 2055));
  v2 = (int)*(this + 2053);
  if ( v2 )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*(this + 2053));
  v3 = (int)*(this + 2054);
  if ( v3 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 4))(*(this + 2054));
    *(this + 2054) = nullptr;
  }
  LC_API_FREE_0(*(this + 2064));
  *(this + 2064) = nullptr;
}


// ===== 846c68 Connection::setName(char *) =====
void *__fastcall Connection::setName(Connection *this, char *a2)
{
  void *v3; // r0
  void *result; // r0

  v3 = *((void **)this + 2064);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 2064) = 0;
  }
  result = XP_API_STRNEW(a2);
  *((_DWORD *)this + 2064) = result;
  return result;
}


// ===== 846ca4 Connection::Connection(char *,int) =====
void __fastcall Connection::Connection(Connection *this, char *a2, int a3)
{
  Elf32_Dyn **v3; // r3

  v3 = &__GLOBAL_OFFSET_TABLE_;
  if ( !a2 )
    v3 = (Elf32_Dyn **)(elf_hash_bucket + 8000);
  *(_DWORD *)this = off_993188;
  if ( a2 )
    *((_DWORD *)this + 2055) = XP_API_STRNEW(a2);
  else
    *(Elf32_Dyn **)((char *)v3 + (_DWORD)this) = nullptr;
  *((_DWORD *)this + 2056) = a3;
  *((_DWORD *)this + 2057) = 0;
  *((_DWORD *)this + 2058) = 0;
  *((_DWORD *)this + 2059) = 0;
  *((_DWORD *)this + 2060) = 0;
  *((_DWORD *)this + 2063) = 0;
  *((_BYTE *)this + 14) = 0;
  XP_API_MEMSET((char *)this + 15, 0, 0x1001u);
  XP_API_MEMSET((char *)this + 4112, 0, 0x1001u);
  *((_DWORD *)this + 2061) = 0;
  *((_DWORD *)this + 2062) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 2053) = GLXPlayerSocketFactory::GetSocket(*((_DWORD *)this + 2055), *((_DWORD *)this + 2056), 0);
  *((_DWORD *)this + 2066) = 0;
  *((_DWORD *)this + 2054) = 0;
  *((_DWORD *)this + 2064) = 0;
  *((_DWORD *)this + 2065) = 0;
  *((_DWORD *)this + 2067) = 0;
  *((_DWORD *)this + 1) = 0;
}


// ===== 846dac Connection::Connection(char *,int) =====
void __fastcall Connection::Connection(Connection *this, char *a2, int a3)
{
  Elf32_Dyn **v3; // r3

  v3 = &__GLOBAL_OFFSET_TABLE_;
  if ( !a2 )
    v3 = (Elf32_Dyn **)(elf_hash_bucket + 8000);
  *(_DWORD *)this = off_993188;
  if ( a2 )
    *((_DWORD *)this + 2055) = XP_API_STRNEW(a2);
  else
    *(Elf32_Dyn **)((char *)v3 + (_DWORD)this) = nullptr;
  *((_DWORD *)this + 2056) = a3;
  *((_DWORD *)this + 2057) = 0;
  *((_DWORD *)this + 2058) = 0;
  *((_DWORD *)this + 2059) = 0;
  *((_DWORD *)this + 2060) = 0;
  *((_DWORD *)this + 2063) = 0;
  *((_BYTE *)this + 14) = 0;
  XP_API_MEMSET((char *)this + 15, 0, 0x1001u);
  XP_API_MEMSET((char *)this + 4112, 0, 0x1001u);
  *((_DWORD *)this + 2061) = 0;
  *((_DWORD *)this + 2062) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 2053) = GLXPlayerSocketFactory::GetSocket(*((_DWORD *)this + 2055), *((_DWORD *)this + 2056), 0);
  *((_DWORD *)this + 2066) = 0;
  *((_DWORD *)this + 2054) = 0;
  *((_DWORD *)this + 2064) = 0;
  *((_DWORD *)this + 2065) = 0;
  *((_DWORD *)this + 2067) = 0;
  *((_DWORD *)this + 1) = 0;
}


// ===== 846eb4 ConnectionLobby::sendRetryData(void) =====
int __fastcall ConnectionLobby::sendRetryData(int this)
{
  int v1; // r4
  DataPacketLobby *v2; // r5
  void (__fastcall *v3)(DataPacketLobby *, int, int); // r6
  int v4; // r8
  int v5; // r0

  v1 = this;
  if ( *(_DWORD *)(this + 8252) )
  {
    v2 = (DataPacketLobby *)operator new(0x24u);
    DataPacketLobby::DataPacketLobby(v2);
    v3 = *(void (__fastcall **)(DataPacketLobby *, int, int))(*(_DWORD *)v2 + 104);
    v4 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 8252) + 100))(*(_DWORD *)(v1 + 8252));
    v5 = (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 8252) + 96))(*(_DWORD *)(v1 + 8252));
    v3(v2, v4, v5);
    Connection::addOutgoingPacket(v1, v2);
    this = XP_API_GET_TIME();
    *(_DWORD *)(v1 + 8248) = this;
  }
  return this;
}


// ===== 846f3c ConnectionLobby::keepConnectionAlive(void) =====
int __fastcall ConnectionLobby::keepConnectionAlive(ConnectionLobby *this)
{
  DataPacketLobby *v3; // r5

  if ( XP_API_GET_TIME() - *((_DWORD *)this + 2061) <= 10000 )
    return 0;
  v3 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v3 + 156))(v3, 9);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v3 + 92))(v3);
  Connection::addOutgoingPacket((int)this, v3);
  return 1;
}


// ===== 846fb0 ConnectionLobby::saveRetryData(DataPacket *) =====
int __fastcall ConnectionLobby::saveRetryData(int this, DataPacket *a2)
{
  int v3; // r4
  DataPacketLobby *v4; // r7
  void (__fastcall *v5)(DataPacketLobby *, int, int); // r5
  int v6; // r8
  int v7; // r0

  v3 = this;
  if ( a2 )
  {
    Connection::cleanRetryData(this);
    v4 = (DataPacketLobby *)operator new(0x24u);
    DataPacketLobby::DataPacketLobby(v4);
    *(_DWORD *)(v3 + 8252) = v4;
    v5 = *(void (__fastcall **)(DataPacketLobby *, int, int))(*(_DWORD *)v4 + 104);
    v6 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 100))(a2);
    v7 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
    v5(v4, v6, v7);
    this = XP_API_GET_TIME();
    *(_DWORD *)(v3 + 8248) = this;
  }
  return this;
}


// ===== 847028 ConnectionLobby::sendGetPlayerCounter(void) =====
int __fastcall ConnectionLobby::sendGetPlayerCounter(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 156))(v2, 101);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 847080 ConnectionLobby::sendGetLobbyForFriendWithGameParam(int,uchar,uchar,char *,int,CLobbyParameterAndQuery *) =====
int __fastcall ConnectionLobby::sendGetLobbyForFriendWithGameParam(
        ConnectionLobby *this,
        int a2,
        int a3,
        int a4,
        char *a5,
        __int16 a6,
        CLobbyParameterAndQuery *a7)
{
  DataPacketLobby *v11; // r5
  void *v12; // r6
  int v14; // [sp+4h] [bp-8h] BYREF

  v11 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v11);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v11 + 156))(v11, 99);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v11 + 16))(v11, a2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v11 + 8))(v11, a4);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v11 + 16))(v11, 0);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v11 + 8))(v11, a3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v11 + 8))(v11, a4);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v11 + 56))(v11, a5, a6);
  if ( a7 )
  {
    v14 = 0;
    v12 = (void *)(*(int (__fastcall **)(CLobbyParameterAndQuery *, int *))(*(_DWORD *)a7 + 16))(a7, &v14);
    if ( v12 )
    {
      (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v11 + 56))(v11, v12, (__int16)v14);
      LC_API_FREE_0(v12);
    }
  }
  else
  {
    (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v11 + 8))(v11, 0);
  }
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v11 + 92))(v11);
  ConnectionLobby::saveRetryData((int)this, v11);
  return Connection::addOutgoingPacket((int)this, v11);
}


// ===== 8471d0 ConnectionLobby::sendGetLobbyForNameWithGameParam(char *) =====
int __fastcall ConnectionLobby::sendGetLobbyForNameWithGameParam(ConnectionLobby *this, char *a2)
{
  DataPacketLobby *v4; // r4
  void (__fastcall *v5)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v6; // r0

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 156))(v4, 97);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v4 + 16))(v4, 0);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v4 + 8))(v4, 0);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v4 + 16))(v4, 0);
  v5 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v4 + 76);
  v6 = XP_API_STRLEN(a2);
  v5(v4, a2, v6);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 847288 ConnectionLobby::sendGetLobbyListPackageWithGameParam(int,int,int,uchar,CLobbyParameterAndQuery *,uchar) =====
int __fastcall ConnectionLobby::sendGetLobbyListPackageWithGameParam(
        ConnectionLobby *this,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        CLobbyParameterAndQuery *a6,
        unsigned __int8 a7)
{
  DataPacketLobby *v10; // r5
  void *v11; // r6
  int v13; // [sp+4h] [bp-4h] BYREF

  v10 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v10);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 156))(v10, 96);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 16))(v10, a3);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v10 + 8))(v10, a5);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 16))(v10, a4);
  if ( a6 )
  {
    v13 = 0;
    v11 = (void *)(*(int (__fastcall **)(CLobbyParameterAndQuery *, int *))(*(_DWORD *)a6 + 16))(a6, &v13);
    if ( v11 )
    {
      (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v10 + 56))(v10, v11, (__int16)v13);
      LC_API_FREE_0(v11);
    }
  }
  else
  {
    (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v10 + 8))(v10, 0);
  }
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v10 + 8))(v10, a7);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v10 + 92))(v10);
  ConnectionLobby::saveRetryData((int)this, v10);
  return Connection::addOutgoingPacket((int)this, v10);
}


// ===== 8473b0 ConnectionLobby::sendKickOutPackage(char *) =====
int __fastcall ConnectionLobby::sendKickOutPackage(ConnectionLobby *this, char *a2)
{
  DataPacketLobby *v4; // r4
  void (__fastcall *v5)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v6; // r0

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 156))(v4, 24);
  v5 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v4 + 60);
  v6 = XP_API_STRLEN(a2);
  v5(v4, a2, v6);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 84742c ConnectionLobby::sendCancelAutoMatchPackage(void) =====
int __fastcall ConnectionLobby::sendCancelAutoMatchPackage(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 156))(v2, 74);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 847484 ConnectionLobby::sendAutoMatchPackage(char *,int,char *,int,short,short) =====
int __fastcall ConnectionLobby::sendAutoMatchPackage(
        ConnectionLobby *this,
        char *a2,
        __int16 a3,
        char *a4,
        __int16 a5,
        __int16 a6,
        __int16 a7)
{
  DataPacketLobby *v11; // r5

  v11 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v11);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v11 + 156))(v11, 56);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v11 + 76))(v11, a2, a3);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v11 + 32))(v11, a6);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v11 + 32))(v11, a7);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v11 + 76))(v11, a4, a5);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v11 + 92))(v11);
  ConnectionLobby::saveRetryData((int)this, v11);
  return Connection::addOutgoingPacket((int)this, v11);
}


// ===== 847554 ConnectionLobby::sendGetLobbyForFriend(int,uchar,uchar,char *,int) =====
int __fastcall ConnectionLobby::sendGetLobbyForFriend(
        ConnectionLobby *this,
        int a2,
        int a3,
        int a4,
        char *a5,
        __int16 a6)
{
  DataPacketLobby *v10; // r5

  v10 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v10);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 156))(v10, 54);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 16))(v10, a2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 8))(v10, a4);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v10 + 16))(v10, 0);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 8))(v10, a3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 8))(v10, a4);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v10 + 56))(v10, a5, a6);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v10 + 92))(v10);
  ConnectionLobby::saveRetryData((int)this, v10);
  return Connection::addOutgoingPacket((int)this, v10);
}


// ===== 84763c ConnectionLobby::sendGetLobbyForName(char *) =====
int __fastcall ConnectionLobby::sendGetLobbyForName(ConnectionLobby *this, char *a2)
{
  DataPacketLobby *v4; // r4
  void (__fastcall *v5)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v6; // r0

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 156))(v4, 52);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v4 + 16))(v4, 0);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v4 + 8))(v4, 0);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v4 + 16))(v4, 0);
  v5 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v4 + 76);
  v6 = XP_API_STRLEN(a2);
  v5(v4, a2, v6);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 8476f4 ConnectionLobby::sendGetLobbyInfo(int) =====
int __fastcall ConnectionLobby::sendGetLobbyInfo(ConnectionLobby *this, int a2)
{
  DataPacketLobby *v4; // r4

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 156))(v4, 22);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 16))(v4, a2);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 847764 ConnectionLobby::sendSetUserParameter(char *,short) =====
int __fastcall ConnectionLobby::sendSetUserParameter(ConnectionLobby *this, char *a2, int a3)
{
  DataPacketLobby *v6; // r4

  v6 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v6);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 156))(v6, 36);
  (*(void (__fastcall **)(DataPacketLobby *, char *, int))(*(_DWORD *)v6 + 76))(v6, a2, a3);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v6 + 92))(v6);
  ConnectionLobby::saveRetryData((int)this, v6);
  return Connection::addOutgoingPacket((int)this, v6);
}


// ===== 8477dc ConnectionLobby::sendSetGameParameter(char *,short,CLobbyParameterAndQuery *) =====
int __fastcall ConnectionLobby::sendSetGameParameter(
        ConnectionLobby *this,
        char *a2,
        int a3,
        CLobbyParameterAndQuery *a4)
{
  DataPacketLobby *v8; // r5
  void *v9; // r6
  int v11; // [sp+4h] [bp-4h] BYREF

  v8 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v8);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 156))(v8, 33);
  (*(void (__fastcall **)(DataPacketLobby *, char *, int))(*(_DWORD *)v8 + 76))(v8, a2, a3);
  if ( a4 )
  {
    v11 = 0;
    v9 = (void *)(*(int (__fastcall **)(CLobbyParameterAndQuery *, int *))(*(_DWORD *)a4 + 16))(a4, &v11);
    if ( v9 )
    {
      (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v8 + 56))(v8, v9, (__int16)v11);
      LC_API_FREE_0(v9);
    }
  }
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v8 + 92))(v8);
  ConnectionLobby::saveRetryData((int)this, v8);
  return Connection::addOutgoingPacket((int)this, v8);
}


// ===== 8478ac ConnectionLobby::sendRejoinLobbyPackage(int) =====
int __fastcall ConnectionLobby::sendRejoinLobbyPackage(ConnectionLobby *this, int a2)
{
  DataPacketLobby *v4; // r4

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 156))(v4, 45);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 16))(v4, a2);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 84791c ConnectionLobby::sendSetPlayerStatusPackage(uchar) =====
int __fastcall ConnectionLobby::sendSetPlayerStatusPackage(ConnectionLobby *this, int a2)
{
  DataPacketLobby *v4; // r4

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 156))(v4, 39);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, a2);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 84798c ConnectionLobby::sendLunchLobbyGamePackage(void) =====
int __fastcall ConnectionLobby::sendLunchLobbyGamePackage(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 156))(v2, 42);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 8479e4 ConnectionLobby::sendLeaveLobbyPackage(void) =====
int __fastcall ConnectionLobby::sendLeaveLobbyPackage(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 156))(v2, 19);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 847a3c ConnectionLobby::sendGetLobbyListPackage(int,int,int,uchar,CLobbyParameterAndQuery *,uchar) =====
int __fastcall ConnectionLobby::sendGetLobbyListPackage(
        ConnectionLobby *this,
        int a2,
        int a3,
        int a4,
        unsigned __int8 a5,
        CLobbyParameterAndQuery *a6,
        unsigned __int8 a7)
{
  DataPacketLobby *v10; // r5
  void *v11; // r6
  int v13; // [sp+4h] [bp-4h] BYREF

  v10 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v10);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 156))(v10, 13);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 16))(v10, a3);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v10 + 8))(v10, a5);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v10 + 16))(v10, a4);
  if ( a6 )
  {
    v13 = 0;
    v11 = (void *)(*(int (__fastcall **)(CLobbyParameterAndQuery *, int *))(*(_DWORD *)a6 + 16))(a6, &v13);
    if ( v11 )
    {
      (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v10 + 56))(v10, v11, (__int16)v13);
      LC_API_FREE_0(v11);
    }
  }
  else
  {
    (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v10 + 8))(v10, 0);
  }
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v10 + 8))(v10, a7);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v10 + 92))(v10);
  ConnectionLobby::saveRetryData((int)this, v10);
  return Connection::addOutgoingPacket((int)this, v10);
}


// ===== 847b64 ConnectionLobby::sendJoinPredefinedLobbyPackage(char *,int,char *,int,int,CLobbyParameterAndQuery *,CLobbyParameterAndQuery *) =====
int __fastcall ConnectionLobby::sendJoinPredefinedLobbyPackage(
        ConnectionLobby *this,
        char *a2,
        __int16 a3,
        char *a4,
        __int16 a5,
        __int16 a6,
        CLobbyParameterAndQuery *a7,
        CLobbyParameterAndQuery *a8)
{
  DataPacketLobby *v12; // r5
  void *v13; // r7
  void *v14; // r6
  int v16; // [sp+4h] [bp-4h] BYREF

  v12 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v12);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v12 + 156))(v12, 103);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v12 + 76))(v12, a2, a3);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v12 + 76))(v12, a4, a5);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v12 + 32))(v12, a6);
  if ( a7 )
  {
    v16 = 0;
    v13 = (void *)(*(int (__fastcall **)(CLobbyParameterAndQuery *, int *))(*(_DWORD *)a7 + 16))(a7, &v16);
    if ( v13 )
    {
      (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v12 + 56))(v12, v13, (__int16)v16);
      LC_API_FREE_0(v13);
    }
    if ( a8 )
      goto LABEL_5;
LABEL_9:
    (*(void (__fastcall **)(DataPacketLobby *, CLobbyParameterAndQuery *))(*(_DWORD *)v12 + 8))(v12, a8);
    goto LABEL_7;
  }
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v12 + 8))(v12, 0);
  if ( !a8 )
    goto LABEL_9;
LABEL_5:
  v16 = 0;
  v14 = (void *)(*(int (__fastcall **)(CLobbyParameterAndQuery *, int *))(*(_DWORD *)a8 + 16))(a8, &v16);
  if ( v14 )
  {
    (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v12 + 56))(v12, v14, (__int16)v16);
    LC_API_FREE_0(v14);
  }
LABEL_7:
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v12 + 92))(v12);
  ConnectionLobby::saveRetryData((int)this, v12);
  return Connection::addOutgoingPacket((int)this, v12);
}


// ===== 847ce8 ConnectionLobby::sendJoinLobbyPackage(int,uchar,char *,int) =====
int __fastcall ConnectionLobby::sendJoinLobbyPackage(ConnectionLobby *this, int a2, int a3, char *a4, __int16 a5)
{
  DataPacketLobby *v9; // r5

  v9 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v9);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 156))(v9, 15);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 16))(v9, a2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 8))(v9, a3);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v9 + 76))(v9, a4, a5);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v9 + 92))(v9);
  ConnectionLobby::saveRetryData((int)this, v9);
  return Connection::addOutgoingPacket((int)this, v9);
}


// ===== 847d90 ConnectionLobby::sendCreateLobbyPackageWithGameCenter(int,char *,uchar,uchar,int,char *,int,char *,int,CLobbyParameterAndQuery *,std::list<std::string,std::allocator<std::string>>) =====
int __fastcall ConnectionLobby::sendCreateLobbyPackageWithGameCenter(
        int a1,
        int a2,
        const char *a3,
        int a4,
        unsigned __int8 a5,
        __int16 a6,
        int a7,
        __int16 a8,
        int a9,
        __int16 a10,
        int a11,
        _DWORD **a12)
{
  DataPacketLobby *v15; // r7
  void (__fastcall *v16)(DataPacketLobby *, const char *, _DWORD); // r9
  __int16 v17; // r0
  void *v18; // r6
  _DWORD *v19; // r6
  int v20; // r1
  _DWORD *i; // r5
  int v23; // [sp+10h] [bp-24h] BYREF
  std::string v24; // [sp+14h] [bp-20h] BYREF

  v15 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v15);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v15 + 156))(v15, 11);
  v16 = *(void (__fastcall **)(DataPacketLobby *, const char *, _DWORD))(*(_DWORD *)v15 + 60);
  v17 = XP_API_STRLEN(a3);
  v16(v15, a3, v17);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v15 + 8))(v15, a4);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v15 + 8))(v15, a5);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v15 + 32))(v15, a6);
  (*(void (__fastcall **)(DataPacketLobby *, int, _DWORD))(*(_DWORD *)v15 + 76))(v15, a7, a8);
  (*(void (__fastcall **)(DataPacketLobby *, int, _DWORD))(*(_DWORD *)v15 + 76))(v15, a9, a10);
  if ( a11 )
  {
    v23 = 0;
    v18 = (void *)(*(int (__fastcall **)(int, int *))(*(_DWORD *)a11 + 16))(a11, &v23);
    if ( v18 )
    {
      (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v15 + 56))(v15, v18, (__int16)v23);
      LC_API_FREE_0(v18);
    }
  }
  else
  {
    (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v15 + 8))(v15, 0);
  }
  v19 = *a12;
  if ( *a12 == a12 )
  {
    v20 = 0;
  }
  else
  {
    LOBYTE(v20) = 0;
    do
    {
      v19 = (_DWORD *)*v19;
      LOBYTE(v20) = v20 + 1;
    }
    while ( a12 != v19 );
    v20 = (unsigned __int8)v20;
  }
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v15 + 8))(v15, v20);
  for ( i = *a12; v19 != i; i = (_DWORD *)*i )
  {
    v24._M_finish = (char *)&v24;
    v24._M_start_of_storage._M_data = (char *)&v24;
    std::string::_M_range_initialize(&v24, (const char *)i[7], (const char *)i[6]);
    (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v15 + 60))(
      v15,
      v24._M_start_of_storage._M_data,
      (__int16)(LOWORD(v24._M_finish) - LOWORD(v24._M_start_of_storage._M_data)));
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v24);
  }
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v15 + 92))(v15);
  ConnectionLobby::saveRetryData(a1, v15);
  Connection::addOutgoingPacket(a1, v15);
  return 16556;
}


// ===== 847fe0 ConnectionLobby::sendCreateLobbyPackage(int,char *,uchar,uchar,int,char *,int,char *,int,CLobbyParameterAndQuery *) =====
int __fastcall ConnectionLobby::sendCreateLobbyPackage(
        ConnectionLobby *this,
        int a2,
        char *a3,
        int a4,
        unsigned __int8 a5,
        __int16 a6,
        char *a7,
        __int16 a8,
        char *a9,
        __int16 a10,
        CLobbyParameterAndQuery *a11)
{
  DataPacketLobby *v14; // r5
  void (__fastcall *v15)(DataPacketLobby *, char *, _DWORD); // r10
  __int16 v16; // r0
  void *v17; // r6
  int v19; // [sp+4h] [bp-4h] BYREF

  v14 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v14);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v14 + 156))(v14, 11);
  v15 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v14 + 60);
  v16 = XP_API_STRLEN(a3);
  v15(v14, a3, v16);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v14 + 8))(v14, a4);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v14 + 8))(v14, a5);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v14 + 32))(v14, a6);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v14 + 76))(v14, a7, a8);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v14 + 76))(v14, a9, a10);
  if ( a11 )
  {
    v19 = 0;
    v17 = (void *)(*(int (__fastcall **)(CLobbyParameterAndQuery *, int *))(*(_DWORD *)a11 + 16))(a11, &v19);
    if ( v17 )
    {
      (*(void (__fastcall **)(DataPacketLobby *, void *, _DWORD))(*(_DWORD *)v14 + 56))(v14, v17, (__int16)v19);
      LC_API_FREE_0(v17);
    }
  }
  else
  {
    (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v14 + 8))(v14, 0);
  }
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v14 + 92))(v14);
  ConnectionLobby::saveRetryData((int)this, v14);
  return Connection::addOutgoingPacket((int)this, v14);
}


// ===== 848140 ConnectionLobby::sendLobbyLoginPackageWithGameCenter(long,char *,short,uchar,uchar,char *,char *) =====
int __fastcall ConnectionLobby::sendLobbyLoginPackageWithGameCenter(
        ConnectionLobby *this,
        int a2,
        char *a3,
        int a4,
        unsigned __int8 a5,
        unsigned __int8 a6,
        char *a7,
        char *a8)
{
  DataPacketLobby *v12; // r5
  void (__fastcall *v13)(DataPacketLobby *, char *, _DWORD); // r8
  __int16 v14; // r0
  void (__fastcall *v15)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v16; // r0

  v12 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v12);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v12 + 156))(v12, 5);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v12 + 16))(v12, a2);
  (*(void (__fastcall **)(DataPacketLobby *, char *, int))(*(_DWORD *)v12 + 60))(v12, a3, a4);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v12 + 8))(v12, a5);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v12 + 8))(v12, a6);
  v13 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v12 + 60);
  v14 = XP_API_STRLEN(a7);
  v13(v12, a7, v14);
  v15 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v12 + 60);
  v16 = XP_API_STRLEN(a8);
  v15(v12, a8, v16);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v12 + 92))(v12);
  ConnectionLobby::saveRetryData((int)this, v12);
  return Connection::addOutgoingPacket((int)this, v12);
}


// ===== 848258 ConnectionLobby::sendLobbyLoginPackage(long,char *,short,uchar) =====
int __fastcall ConnectionLobby::sendLobbyLoginPackage(
        ConnectionLobby *this,
        int a2,
        char *a3,
        int a4,
        unsigned __int8 a5)
{
  DataPacketLobby *v9; // r5

  v9 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v9);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 156))(v9, 5);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 16))(v9, a2);
  (*(void (__fastcall **)(DataPacketLobby *, char *, int))(*(_DWORD *)v9 + 60))(v9, a3, a4);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v9 + 8))(v9, a5);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v9 + 92))(v9);
  ConnectionLobby::saveRetryData((int)this, v9);
  return Connection::addOutgoingPacket((int)this, v9);
}


// ===== 848300 ConnectionLobby::sendKickOutPlayerPackage(char *) =====
int __fastcall ConnectionLobby::sendKickOutPlayerPackage(int this, char *a2)
{
  int v3; // r5
  DataPacketLobby *v4; // r4
  void (__fastcall *v5)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v6; // r0

  v3 = this;
  if ( a2 )
  {
    v4 = (DataPacketLobby *)operator new(0x24u);
    DataPacketLobby::DataPacketLobby(v4);
    (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 103);
    (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 114);
    (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 107);
    v5 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v4 + 60);
    v6 = XP_API_STRLEN(a2);
    v5(v4, a2, v6);
    (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
    ConnectionLobby::saveRetryData(v3, v4);
    return Connection::addOutgoingPacket(v3, v4);
  }
  return this;
}


// ===== 8483ac ConnectionLobby::sendUpdateSessionPackage(int) =====
int __fastcall ConnectionLobby::sendUpdateSessionPackage(ConnectionLobby *this, unsigned __int8 a2)
{
  DataPacketLobby *v4; // r4

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 101);
  (*(void (__fastcall **)(DataPacketLobby *, _DWORD))(*(_DWORD *)v4 + 8))(v4, a2);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 848444 ConnectionLobby::sendFinishGamePackage(void) =====
int __fastcall ConnectionLobby::sendFinishGamePackage(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 102);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 8484c4 ConnectionLobby::sendStartGamePackage(void) =====
int __fastcall ConnectionLobby::sendStartGamePackage(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 115);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 848544 ConnectionLobby::sendListSessionsByDataPackage(uchar,int,char *,int) =====
int __fastcall ConnectionLobby::sendListSessionsByDataPackage(
        ConnectionLobby *this,
        int a2,
        int a3,
        char *a4,
        __int16 a5)
{
  DataPacketLobby *v9; // r5

  v9 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v9);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 8))(v9, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 8))(v9, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 8))(v9, 108);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 8))(v9, a2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 16))(v9, a3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v9 + 8))(v9, 100);
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v9 + 60))(v9, a4, a5);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v9 + 92))(v9);
  ConnectionLobby::saveRetryData((int)this, v9);
  return Connection::addOutgoingPacket((int)this, v9);
}


// ===== 848628 ConnectionLobby::sendListSessionsByNamePackage(uchar,int,char *) =====
int __fastcall ConnectionLobby::sendListSessionsByNamePackage(ConnectionLobby *this, int a2, int a3, char *a4)
{
  DataPacketLobby *v8; // r5
  void (__fastcall *v9)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v10; // r0

  v8 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v8);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, 108);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, a2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 16))(v8, a3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, 110);
  v9 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v8 + 60);
  v10 = XP_API_STRLEN(a4);
  v9(v8, a4, v10);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v8 + 92))(v8);
  ConnectionLobby::saveRetryData((int)this, v8);
  return Connection::addOutgoingPacket((int)this, v8);
}


// ===== 848710 ConnectionLobby::sendListSessionsAllPackage(uchar,int) =====
int __fastcall ConnectionLobby::sendListSessionsAllPackage(ConnectionLobby *this, int a2, int a3)
{
  DataPacketLobby *v6; // r5

  v6 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v6);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, 108);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, a2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 16))(v6, a3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, 97);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v6 + 92))(v6);
  ConnectionLobby::saveRetryData((int)this, v6);
  return Connection::addOutgoingPacket((int)this, v6);
}


// ===== 8487d4 ConnectionLobby::sendListSessionsPackage(uchar,int) =====
int __fastcall ConnectionLobby::sendListSessionsPackage(ConnectionLobby *this, int a2, int a3)
{
  DataPacketLobby *v6; // r5

  v6 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v6);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, 108);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 8))(v6, a2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v6 + 16))(v6, a3);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v6 + 92))(v6);
  ConnectionLobby::saveRetryData((int)this, v6);
  return Connection::addOutgoingPacket((int)this, v6);
}


// ===== 848884 ConnectionLobby::sendLeaveSessionPackage(void) =====
int __fastcall ConnectionLobby::sendLeaveSessionPackage(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 113);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 848904 ConnectionLobby::sendJoinSessionPackage(char *) =====
int __fastcall ConnectionLobby::sendJoinSessionPackage(ConnectionLobby *this, char *a2)
{
  DataPacketLobby *v4; // r4
  void (__fastcall *v5)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v6; // r0

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 106);
  v5 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v4 + 60);
  v6 = XP_API_STRLEN(a2);
  v5(v4, a2, v6);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 8489a8 ConnectionLobby::sendQuickGamePackage(void) =====
int __fastcall ConnectionLobby::sendQuickGamePackage(ConnectionLobby *this)
{
  DataPacketLobby *v2; // r4

  v2 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v2);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v2 + 8))(v2, 117);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v2 + 92))(v2);
  ConnectionLobby::saveRetryData((int)this, v2);
  return Connection::addOutgoingPacket((int)this, v2);
}


// ===== 848a28 ConnectionLobby::sendCreateSessionPackage(char *,char *,int) =====
int __fastcall ConnectionLobby::sendCreateSessionPackage(ConnectionLobby *this, char *a2, char *a3, __int16 a4)
{
  DataPacketLobby *v8; // r6
  void (__fastcall *v9)(DataPacketLobby *, char *, _DWORD); // r8
  __int16 v10; // r0

  v8 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v8);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v8 + 8))(v8, 99);
  v9 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v8 + 60);
  v10 = XP_API_STRLEN(a2);
  v9(v8, a2, v10);
  if ( !a3 )
    a3 = " ";
  (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v8 + 60))(v8, a3, a4);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v8 + 92))(v8);
  ConnectionLobby::saveRetryData((int)this, v8);
  return Connection::addOutgoingPacket((int)this, v8);
}


// ===== 848b04 ConnectionLobby::sendLoginPackage(char *) =====
int __fastcall ConnectionLobby::sendLoginPackage(ConnectionLobby *this, char *a2)
{
  DataPacketLobby *v4; // r4
  void (__fastcall *v5)(DataPacketLobby *, char *, _DWORD); // r7
  __int16 v6; // r0

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 103);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 114);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v4 + 8))(v4, 105);
  XP_DEBUG_OUT("ConnectionLobby::sendLoginPackage()\nuser=[%s]\n", a2);
  v5 = *(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v4 + 60);
  v6 = XP_API_STRLEN(a2);
  v5(v4, a2, v6);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v4 + 92))(v4);
  ConnectionLobby::saveRetryData((int)this, v4);
  return Connection::addOutgoingPacket((int)this, v4);
}


// ===== 848bbc ConnectionLobby::sendFinishConnectionPackage(void) =====
int __fastcall ConnectionLobby::sendFinishConnectionPackage(ConnectionLobby *this)
{
  int v2; // r6
  DataPacketLobby *v3; // r4
  int result; // r0

  v2 = XP_API_GET_RANDOM(nullptr);
  v3 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v3 + 156))(v3, 3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v3 + 16))(v3, v2);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v3 + 92))(v3);
  Connection::addOutgoingPacket((int)this, v3);
  result = XP_API_GET_TIME();
  *((_DWORD *)this + 2062) = result;
  return result;
}


// ===== 848c34 ConnectionLobby::sendEstablishConnectionPackage(void) =====
int __fastcall ConnectionLobby::sendEstablishConnectionPackage(ConnectionLobby *this)
{
  int v2; // r6
  DataPacketLobby *v3; // r4
  int result; // r0

  *((_DWORD *)this + 2065) = 0;
  *((_DWORD *)this + 2067) = 0;
  *((_DWORD *)this + 2066) = 0;
  v2 = XP_API_GET_RANDOM(nullptr);
  v3 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v3);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v3 + 156))(v3, 1);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)v3 + 16))(v3, v2);
  (*(void (__fastcall **)(DataPacketLobby *))(*(_DWORD *)v3 + 92))(v3);
  Connection::addOutgoingPacket((int)this, v3);
  *((_DWORD *)this + 2062) = XP_API_GET_TIME();
  result = XP_API_GET_TIME();
  *((_DWORD *)this + 2068) = result;
  return result;
}


// ===== 848cd0 ConnectionLobby::receiveDataLen(void) =====
int __fastcall ConnectionLobby::receiveDataLen(ConnectionLobby *this)
{
  int v1; // r1
  int v3; // r1
  char *v4; // r5
  int result; // r0
  char *v6; // r5
  int v7; // r3
  int v8; // r2
  int v9; // r3
  int v10; // r2
  int v11; // r2
  int v12; // r2
  DataPacketLobby *v13; // r6

  v1 = *((_DWORD *)this + 2067);
  if ( v1 )
  {
    if ( v1 != 1 )
      return XP_DEBUG_OUT("ConnectionLobby::receiveDataLen-- error m_iRecvStep = %d\n");
    v6 = (char *)this + 15;
    if ( !*((_DWORD *)this + 2065) )
      XP_API_MEMSET((char *)this + 15, 0, 0x1001u);
    result = (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 2053) + 64))(*((_DWORD *)this + 2053), 0);
    if ( result >= 0 )
    {
      result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2053) + 76))(*((_DWORD *)this + 2053));
      if ( result )
      {
        result = (*(int (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 2053) + 72))(
                   *((_DWORD *)this + 2053),
                   (char *)this + *((_DWORD *)this + 2065) + 15,
                   *((_DWORD *)this + 2066) - *((_DWORD *)this + 2065));
        if ( result >= 0 )
        {
          if ( !result )
            return (int)Connection::disconnect(this);
          v7 = *((_DWORD *)this + 2065);
          v8 = *((_DWORD *)this + 2066);
          if ( v7 < v8 )
          {
            v7 += result;
            *((_DWORD *)this + 2065) = v7;
          }
          if ( v7 == v8 )
          {
            v13 = (DataPacketLobby *)operator new(0x24u);
            DataPacketLobby::DataPacketLobby(v13);
            (*(void (__fastcall **)(DataPacketLobby *, char *, _DWORD))(*(_DWORD *)v13 + 104))(
              v13,
              v6,
              *((_DWORD *)this + 2065));
            Connection::addIncomingPacket((int)this, v13);
            result = (int)XP_API_MEMSET(v6, 0, 0x80u);
            *((_DWORD *)this + 2066) = 0;
            *((_DWORD *)this + 2065) = 0;
            *((_DWORD *)this + 2067) = 0;
          }
          else if ( v7 > v8 )
          {
            Connection::disconnect(this);
            return XP_DEBUG_OUT(
                     "ConnectionLobby::receiveDataLen-- more data, step1: m_iNeedRecvDataLen = %d, m_iRecvDataBufLen = %d\n");
          }
        }
      }
    }
  }
  else
  {
    v3 = *((_DWORD *)this + 2065);
    *((_DWORD *)this + 2066) = 2;
    v4 = (char *)this + 15;
    if ( !v3 )
      XP_API_MEMSET((char *)this + 15, 0, 0x1001u);
    result = (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 2053) + 64))(*((_DWORD *)this + 2053), 0);
    if ( result >= 0 )
    {
      result = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 2053) + 76))(*((_DWORD *)this + 2053));
      if ( result )
      {
        result = (*(int (__fastcall **)(_DWORD, char *, int))(**((_DWORD **)this + 2053) + 72))(
                   *((_DWORD *)this + 2053),
                   (char *)this + *((_DWORD *)this + 2065) + 15,
                   *((_DWORD *)this + 2066) - *((_DWORD *)this + 2065));
        if ( result >= 0 )
        {
          if ( result )
          {
            v9 = *((_DWORD *)this + 2065);
            v10 = *((_DWORD *)this + 2066);
            if ( v9 < v10 )
            {
              v9 += result;
              *((_DWORD *)this + 2065) = v9;
            }
            if ( v9 == v10 )
            {
              v11 = *((unsigned __int8 *)this + 15) << 8;
              *((_DWORD *)this + 2066) = v11;
              v12 = (unsigned __int8)v4[1] | v11;
              *((_DWORD *)this + 2066) = v12;
              if ( v12 > 4096 )
              {
                Connection::disconnect(this);
                return XP_DEBUG_OUT("ConnectionLobby::receiveDataLen-- error,more than 2048 ONLINE_MAX_PACKET_SIZE\n");
              }
              else
              {
                *((_DWORD *)this + 2067) = 1;
                *((_DWORD *)this + 2065) = 0;
                v4[2] = 0;
              }
            }
            else if ( v9 > v10 )
            {
              Connection::disconnect(this);
              return XP_DEBUG_OUT("ConnectionLobby::receiveDataLen-- error,more data\n");
            }
            return result;
          }
          return (int)Connection::disconnect(this);
        }
      }
    }
  }
  return result;
}


// ===== 848fac ConnectionLobby::sendData(void) =====
Connection *__fastcall ConnectionLobby::sendData(Connection *this)
{
  Connection *v1; // r4
  int v2; // r7
  int (__fastcall *v3)(int, int, int); // r6
  int v4; // r8
  int v5; // r0
  int v6; // r0
  int v7; // r6

  v1 = this;
  if ( *((_DWORD *)this + 2057) )
  {
    if ( Connection::isConnected(this) )
    {
      if ( (*(int (__fastcall **)(_DWORD, int))(**((_DWORD **)v1 + 2053) + 64))(*((_DWORD *)v1 + 2053), 1) < 0 )
      {
        return (Connection *)XP_DEBUG_OUT("sendData: select error.");
      }
      else
      {
        v2 = *((_DWORD *)v1 + 2053);
        v3 = *(int (__fastcall **)(int, int, int))(*(_DWORD *)v2 + 68);
        v4 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 2057) + 100))(*((_DWORD *)v1 + 2057));
        v5 = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)v1 + 2057) + 96))(*((_DWORD *)v1 + 2057));
        if ( v3(v2, v4, v5) < 0 )
        {
          return (Connection *)Connection::disconnect(v1);
        }
        else
        {
          v6 = XP_API_GET_TIME();
          v7 = *((_DWORD *)v1 + 2057);
          *((_DWORD *)v1 + 2061) = v6;
          *((_DWORD *)v1 + 2057) = (*(int (__fastcall **)(int))(*(_DWORD *)v7 + 108))(v7);
          this = (Connection *)(*(int (__fastcall **)(int))(*(_DWORD *)v7 + 4))(v7);
          if ( *((_DWORD *)v1 + 2057) )
            return (Connection *)(*(int (__fastcall **)(Connection *))(*(_DWORD *)v1 + 8))(v1);
          else
            *((_DWORD *)v1 + 2058) = 0;
        }
      }
    }
    else
    {
      XP_DEBUG_OUT("sendData: PPP not open, disconnect.");
      return (Connection *)Connection::disconnect(v1);
    }
  }
  return this;
}


// ===== 8490e0 ConnectionLobby::~ConnectionLobby() =====
void __fastcall ConnectionLobby::~ConnectionLobby(void **this)
{
  *this = off_9931A8;
  Connection::~Connection(this);
}


// ===== 849114 ConnectionLobby::~ConnectionLobby() =====
void __fastcall ConnectionLobby::~ConnectionLobby(void **this)
{
  ConnectionLobby::~ConnectionLobby(this);
  LC_API_FREE_0(this);
}


// ===== 849130 ConnectionLobby::~ConnectionLobby() =====
void __fastcall ConnectionLobby::~ConnectionLobby(void **this)
{
  *this = off_9931A8;
  Connection::~Connection(this);
}


// ===== 849164 ConnectionLobby::ConnectionLobby(char *,int) =====
void __fastcall ConnectionLobby::ConnectionLobby(ConnectionLobby *this, char *a2, int a3)
{
  Connection::Connection(this, a2, a3);
  *(_DWORD *)this = off_9931A8;
}


// ===== 849198 ConnectionLobby::ConnectionLobby(char *,int) =====
void __fastcall ConnectionLobby::ConnectionLobby(ConnectionLobby *this, char *a2, int a3)
{
  Connection::Connection(this, a2, a3);
  *(_DWORD *)this = off_9931A8;
}


// ===== 8491cc DataPacket::~DataPacket() =====
void __fastcall DataPacket::~DataPacket(DataPacket *this)
{
  ;
}


// ===== 8491d0 DataPacket::addBlob(char *,short) =====
int __fastcall DataPacket::addBlob(DataPacket *this, char *a2, __int16 a3)
{
  return 0;
}


// ===== 8491d8 DataPacket::getBlob(char *&,short &) =====
int __fastcall DataPacket::getBlob(DataPacket *this, char **a2, __int16 *a3)
{
  return 0;
}


// ===== 8491e0 DataPacket::InitMessage(int) =====
void __fastcall DataPacket::InitMessage(DataPacket *this, int a2)
{
  ;
}


// ===== 8491e4 DataPacket::GetMessageType(void) =====
int __fastcall DataPacket::GetMessageType(DataPacket *this)
{
  return -1;
}


// ===== 8491ec DataPacket::InitMMOMessage(short) =====
void __fastcall DataPacket::InitMMOMessage(DataPacket *this, __int16 a2)
{
  ;
}


// ===== 8491f0 DataPacket::GetMMOMessageType(void) =====
int __fastcall DataPacket::GetMMOMessageType(DataPacket *this)
{
  return -1;
}


// ===== 8491f8 DataPacketLobby::addByteLenString(char const*,uchar) =====
int __fastcall DataPacketLobby::addByteLenString(DataPacketLobby *this, const char *a2, unsigned __int8 a3)
{
  return 0;
}


// ===== 849200 DataPacketLobby::getByteLenString(char *&,uchar &) =====
int __fastcall DataPacketLobby::getByteLenString(DataPacketLobby *this, char **a2, unsigned __int8 *a3)
{
  return 0;
}


// ===== 849208 DataPacketLobby::addByteLenWideString(wchar_t const*,uchar) =====
int __fastcall DataPacketLobby::addByteLenWideString(DataPacketLobby *this, const wchar_t *a2, unsigned __int8 a3)
{
  return 0;
}


// ===== 849210 DataPacketLobby::getByteLenWideString(wchar_t *&,uchar &) =====
int __fastcall DataPacketLobby::getByteLenWideString(DataPacketLobby *this, wchar_t **a2, unsigned __int8 *a3)
{
  return 0;
}


// ===== 849218 DataPacketLobby::addShortLenWideString(wchar_t const*,uchar) =====
int __fastcall DataPacketLobby::addShortLenWideString(DataPacketLobby *this, const wchar_t *a2, unsigned __int8 a3)
{
  return 0;
}


// ===== 849220 DataPacketLobby::getShortLenWideString(wchar_t *&,uchar &) =====
int __fastcall DataPacketLobby::getShortLenWideString(DataPacketLobby *this, wchar_t **a2, unsigned __int8 *a3)
{
  return 0;
}


// ===== 849228 DataPacketLobby::InitMessage(int) =====
int __fastcall DataPacketLobby::InitMessage(DataPacketLobby *this, int a2)
{
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)this + 8))(this, 1);
  (*(void (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)this + 8))(this, 2);
  return (*(int (__fastcall **)(DataPacketLobby *, int))(*(_DWORD *)this + 16))(this, a2);
}


// ===== 849270 DataPacketLobby::InitMMOMessage(short) =====
int __fastcall DataPacketLobby::InitMMOMessage(DataPacketLobby *this, __int16 a2)
{
  return (*(int (__fastcall **)(DataPacketLobby *, __int16))(*(_DWORD *)this + 32))(this, a2);
}


// ===== 849284 DataPacketLobby::GetMessageType(void) =====
int __fastcall DataPacketLobby::GetMessageType(DataPacketLobby *this)
{
  int v2; // [sp+4h] [bp-8h] BYREF

  v2 = 0;
  (*(void (__fastcall **)(DataPacketLobby *, int *))(*(_DWORD *)this + 20))(this, &v2);
  return v2;
}


// ===== 8492b0 DataPacketLobby::GetMMOMessageType(void) =====
int __fastcall DataPacketLobby::GetMMOMessageType(DataPacketLobby *this)
{
  __int16 v2; // [sp+6h] [bp-6h] BYREF

  v2 = 0;
  (*(void (__fastcall **)(DataPacketLobby *, __int16 *))(*(_DWORD *)this + 36))(this, &v2);
  return v2;
}


// ===== 8492dc DataPacketLobby::WillBeFull(int) =====
bool __fastcall DataPacketLobby::WillBeFull(DataPacketLobby *this, int a2)
{
  return a2 + *((_DWORD *)this + 3) > *((_DWORD *)this + 1);
}


// ===== 8492f8 DataPacketLobby::getByte(uchar &) =====
int __fastcall DataPacketLobby::getByte(DataPacketLobby *this, unsigned __int8 *a2)
{
  int v2; // r4
  int v3; // r12
  int v5; // r2
  int result; // r0
  bool v7; // cc

  v5 = *((_DWORD *)this + 3);
  result = *((_DWORD *)this + 4);
  v7 = v5 < result;
  if ( v5 >= result )
  {
    result = 0;
  }
  else
  {
    v2 = *((_DWORD *)this + 2);
    v3 = v5 + 1;
  }
  if ( v7 )
    LOBYTE(v5) = *(_BYTE *)(v2 + v5);
  else
    *a2 = result;
  if ( v7 )
  {
    *a2 = v5;
    *((_DWORD *)this + 3) = v3;
    return 1;
  }
  return result;
}


// ===== 849334 DataPacketLobby::getShort(short &) =====
int __fastcall DataPacketLobby::getShort(DataPacketLobby *this, __int16 *a2)
{
  int v3; // r2
  int v5; // r5

  *a2 = 0;
  v3 = *((_DWORD *)this + 3);
  if ( *((_DWORD *)this + 4) - 1 <= v3 )
    return 0;
  *a2 = *(unsigned __int8 *)(*((_DWORD *)this + 2) + v3) << 8;
  v5 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v3 + 1;
  *a2 |= *(unsigned __int8 *)(v5 + v3 + 1);
  *((_DWORD *)this + 3) = v3 + 2;
  return 1;
}


// ===== 84939c DataPacketLobby::getInt(int &) =====
int __fastcall DataPacketLobby::getInt(DataPacketLobby *this, int *a2)
{
  int v2; // r12
  int v4; // r0
  int v6; // r3
  int v7; // r4
  int v8; // r12
  int v9; // r5
  int v10; // r0
  int v11; // r3
  int v12; // r6
  int v13; // r3

  *a2 = 0;
  v2 = *((_DWORD *)this + 4);
  v4 = *((_DWORD *)this + 3);
  if ( v2 - 3 <= v4 )
    return 0;
  v6 = v4 + 1;
  v7 = v4 + 2;
  v8 = v4 + 3;
  v9 = v4 + 4;
  *a2 = *(unsigned __int8 *)(*((_DWORD *)this + 2) + v4) << 24;
  v10 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v6;
  v11 = *(unsigned __int8 *)(v10 + v6);
  *a2 |= v11 << 16;
  v12 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v7;
  *a2 |= *(unsigned __int8 *)(v12 + v7) << 8;
  v13 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v7 + 1;
  *a2 |= *(unsigned __int8 *)(v13 + v8);
  *((_DWORD *)this + 3) = v9;
  return 1;
}


// ===== 84943c DataPacketLobby::getFloat(float &) =====
int __fastcall DataPacketLobby::getFloat(DataPacketLobby *this, float *a2)
{
  int v3; // r2
  int v5; // r4
  int v6; // r12
  char v7; // r0
  int v8; // r2
  int v9; // r6
  int v10; // r4
  int v11; // r12

  *a2 = 0.0;
  v3 = *((_DWORD *)this + 3);
  if ( *((_DWORD *)this + 4) - 3 <= v3 )
    return 0;
  v5 = v3 + 1;
  v6 = v3 + 2;
  v7 = *(_BYTE *)(*((_DWORD *)this + 2) + v3);
  v8 = v3 + 3;
  *(_BYTE *)a2 = v7;
  v9 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v5;
  *((_BYTE *)a2 + 1) = *(_BYTE *)(v9 + v5);
  v10 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v6;
  *((_BYTE *)a2 + 2) = *(_BYTE *)(v10 + v6);
  v11 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v8;
  *((_BYTE *)a2 + 3) = *(_BYTE *)(v11 + v8);
  *((_DWORD *)this + 3) = v8 + 1;
  return 1;
}


// ===== 8494c0 DataPacketLobby::getMessageLen(void) =====
int __fastcall DataPacketLobby::getMessageLen(DataPacketLobby *this)
{
  return *((_DWORD *)this + 4);
}


// ===== 8494c8 DataPacketLobby::getMessageBody(void) =====
int __fastcall DataPacketLobby::getMessageBody(DataPacketLobby *this)
{
  return *((_DWORD *)this + 2);
}


// ===== 8494d0 DataPacketLobby::packMessage(void) =====
_DWORD *__fastcall DataPacketLobby::packMessage(_DWORD *this)
{
  int v1; // r3
  _BYTE *v2; // r2

  v1 = *(this + 3);
  v2 = (_BYTE *)*(this + 2);
  *(this + 4) = v1;
  *v2 = (unsigned __int16)(v1 - 2) >> 8;
  *(_BYTE *)(*(this + 2) + 1) = *((_BYTE *)this + 16) - 2;
  return this;
}


// ===== 8494fc DataPacketLobby::getNextPacket(void) =====
int __fastcall DataPacketLobby::getNextPacket(DataPacketLobby *this)
{
  return *((_DWORD *)this + 5);
}


// ===== 849504 DataPacketLobby::setNextPacket(DataPacket *) =====
int __fastcall DataPacketLobby::setNextPacket(int this, DataPacket *a2)
{
  *(_DWORD *)(this + 20) = a2;
  return this;
}


// ===== 84950c DataPacketLobby::IsSendByTcp(void) =====
bool __fastcall DataPacketLobby::IsSendByTcp(DataPacketLobby *this)
{
  int v1; // r0
  bool v2; // zf

  v1 = *((_DWORD *)this + 6);
  v2 = v1 == 1;
  if ( v1 != 1 )
    return v1 == 3;
  return v2;
}


// ===== 849524 DataPacketLobby::IsSendByUdp(void) =====
bool __fastcall DataPacketLobby::IsSendByUdp(DataPacketLobby *this)
{
  return *((_DWORD *)this + 6) == 2;
}


// ===== 849538 DataPacketLobby::getDataType(void) =====
int __fastcall DataPacketLobby::getDataType(DataPacketLobby *this)
{
  return *((_DWORD *)this + 6);
}


// ===== 849540 DataPacketLobby::setDataType(int) =====
int __fastcall DataPacketLobby::setDataType(int this, int a2)
{
  *(_DWORD *)(this + 24) = a2;
  return this;
}


// ===== 849548 DataPacketLobby::getPort(void) =====
int __fastcall DataPacketLobby::getPort(DataPacketLobby *this)
{
  return *((_DWORD *)this + 8);
}


// ===== 849550 DataPacketLobby::setPort(int) =====
int __fastcall DataPacketLobby::setPort(int this, int a2)
{
  *(_DWORD *)(this + 32) = a2;
  return this;
}


// ===== 849558 DataPacketLobby::getIP(void) =====
int __fastcall DataPacketLobby::getIP(DataPacketLobby *this)
{
  return *((_DWORD *)this + 7);
}


// ===== 849560 DataPacketLobby::String2Packet(char *,int) =====
int __fastcall DataPacketLobby::String2Packet(DataPacketLobby *this, char *a2, int a3)
{
  int v3; // r12
  int v4; // r5
  __int16 v5; // r4
  int v6; // r4

  v3 = *((_DWORD *)this + 3);
  v4 = v3 + 1;
  v5 = (unsigned __int8)a2[v3];
  *((_DWORD *)this + 3) = v3 + 1;
  LOWORD(v3) = (unsigned __int8)a2[v3 + 1];
  *((_DWORD *)this + 3) = v4 + 1;
  v6 = (__int16)(v3 | (v5 << 8));
  if ( v6 + 1 >= a3 )
    return -1;
  (*(void (__fastcall **)(DataPacketLobby *, char *, int))(*(_DWORD *)this + 104))(this, a2 + 2, v6);
  return v6 + 2;
}


// ===== 8495b8 DataPacketLobby::Packet2String(char *,int &) =====
void *__fastcall DataPacketLobby::Packet2String(DataPacketLobby *this, char *a2, int *a3)
{
  void *result; // r0

  *a2 = *((_BYTE *)this + 17);
  a2[1] = *((_DWORD *)this + 4);
  *a3 = 2;
  result = XP_API_MEMCPY(a2 + 2, *((const void **)this + 2), *((_DWORD *)this + 4));
  *a3 += *((_DWORD *)this + 4);
  return result;
}


// ===== 849600 DataPacketLobby::setMessageBody(uchar *,int) =====
void *__fastcall DataPacketLobby::setMessageBody(void **this, unsigned __int8 *a2, size_t a3)
{
  void *result; // r0

  result = XP_API_MEMCPY(*(this + 2), a2, a3);
  *(this + 3) = nullptr;
  *(this + 4) = (void *)a3;
  return result;
}


// ===== 849624 DataPacketLobby::~DataPacketLobby() =====
void __fastcall DataPacketLobby::~DataPacketLobby(DataPacketLobby *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 7);
  *(_DWORD *)this = off_993280;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 7) = 0;
  }
  v3 = *((void **)this + 2);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 849684 DataPacketLobby::~DataPacketLobby() =====
void __fastcall DataPacketLobby::~DataPacketLobby(DataPacketLobby *this)
{
  DataPacketLobby::~DataPacketLobby(this);
  LC_API_FREE_0(this);
}


// ===== 8496a0 DataPacket::~DataPacket() =====
void __fastcall DataPacket::~DataPacket(DataPacket *this)
{
  LC_API_FREE_0(this);
}


// ===== 8496b4 DataPacketLobby::~DataPacketLobby() =====
void __fastcall DataPacketLobby::~DataPacketLobby(DataPacketLobby *this)
{
  void *v2; // r0
  void *v3; // r0

  v2 = *((void **)this + 7);
  *(_DWORD *)this = off_993280;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 7) = 0;
  }
  v3 = *((void **)this + 2);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 849714 DataPacketLobby::setIP(char *) =====
void *__fastcall DataPacketLobby::setIP(DataPacketLobby *this, char *a2)
{
  void *v3; // r0
  void *result; // r0

  v3 = *((void **)this + 7);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 7) = 0;
  }
  result = XP_API_STRNEW(a2);
  *((_DWORD *)this + 7) = result;
  return result;
}


// ===== 849748 DataPacketLobby::getShortLenString(char *&,short &) =====
int __fastcall DataPacketLobby::getShortLenString(DataPacketLobby *this, char **a2, unsigned __int16 *a3)
{
  int v3; // r3
  __int16 v7; // r2
  int v8; // r1
  int v9; // r0
  int result; // r0
  char *v11; // r0

  *a3 = 0;
  v3 = *((_DWORD *)this + 3);
  v7 = *(unsigned __int8 *)(*((_DWORD *)this + 2) + v3);
  v8 = v3 + 1;
  v3 += 2;
  *a3 = v7 << 8;
  v9 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v8;
  *a3 |= *(unsigned __int8 *)(v9 + v8);
  *((_DWORD *)this + 3) = v3;
  result = *a3;
  if ( v3 > *((_DWORD *)this + 4) - (__int16)result )
    return 0;
  if ( *a3 )
  {
    v11 = (char *)operator new[]((__int16)result + 1);
    *a2 = v11;
    XP_API_MEMCPY(v11, (const void *)(*((_DWORD *)this + 2) + *((_DWORD *)this + 3)), (__int16)*a3);
    (*a2)[(__int16)*a3] = 0;
    *((_DWORD *)this + 3) += (__int16)*a3;
    return 1;
  }
  else
  {
    *a2 = nullptr;
  }
  return result;
}


// ===== 84980c DataPacketLobby::getBlob(char *&,short &) =====
int __fastcall DataPacketLobby::getBlob(DataPacketLobby *this, char **a2, __int16 *a3)
{
  int v6; // r0
  char *v8; // r0
  signed int v9; // r2

  if ( (*(int (__fastcall **)(DataPacketLobby *, __int16 *))(*(_DWORD *)this + 36))(this, a3)
    && (v6 = *a3, v6 >= 0)
    && *((_DWORD *)this + 3) <= *((_DWORD *)this + 1) - v6 )
  {
    v8 = (char *)operator new[](v6 + 1);
    *a2 = v8;
    v8[*a3] = 0;
    v9 = *a3;
    if ( v9 <= 0 )
    {
      return 1;
    }
    else
    {
      XP_API_MEMCPY(*a2, (const void *)(*((_DWORD *)this + 2) + *((_DWORD *)this + 3)), v9);
      *((_DWORD *)this + 3) += *a3;
      return 1;
    }
  }
  else
  {
    *a2 = nullptr;
    *a3 = 0;
    return 0;
  }
}


// ===== 8498bc DataPacketLobby::AllocateMoreMomery(void) =====
int __fastcall DataPacketLobby::AllocateMoreMomery(DataPacketLobby *this)
{
  unsigned int v2; // r5
  void *v3; // r0
  void *v4; // r6
  void *v5; // r0

  v2 = 2 * *((_DWORD *)this + 1);
  v3 = (void *)operator new[](v2);
  v4 = v3;
  if ( !v3 )
    return 0;
  XP_API_MEMSET(v3, 0, v2);
  XP_API_MEMCPY(v4, *((const void **)this + 2), *((_DWORD *)this + 3));
  v5 = *((void **)this + 2);
  if ( v5 )
  {
    LC_API_FREE_0(v5);
    *((_DWORD *)this + 2) = 0;
  }
  *((_DWORD *)this + 1) = v2;
  *((_DWORD *)this + 2) = v4;
  return 1;
}


// ===== 849924 DataPacketLobby::addPacket(DataPacket *) =====
void *__fastcall DataPacketLobby::addPacket(DataPacketLobby *this, DataPacket *a2)
{
  int v4; // r5
  int v5; // r2
  int v6; // r3
  DataPacket *v7; // r0
  int v8; // r1
  int v9; // r3
  void *v10; // r6
  const void *v11; // r0
  void *result; // r0

  v4 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
  if ( DataPacketLobby::WillBeFull(this, v4) && !DataPacketLobby::AllocateMoreMomery(this) )
    return (void *)XP_DEBUG_OUT("addPacket failed : memory leak\n");
  v5 = *((_DWORD *)this + 3);
  v6 = v5 + 1;
  *(_BYTE *)(*((_DWORD *)this + 2) + v5) = BYTE1(v4);
  v5 += 2;
  v7 = a2;
  *(_BYTE *)(*((_DWORD *)this + 2) + v6) = v4;
  v8 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v5;
  v9 = *(_DWORD *)a2;
  v10 = (void *)(v8 + v5);
  v11 = (const void *)(*(int (__fastcall **)(DataPacket *))(v9 + 100))(v7);
  result = XP_API_MEMCPY(v10, v11, v4);
  *((_DWORD *)this + 3) += v4;
  return result;
}


// ===== 8499d8 DataPacketLobby::addShortLenString(char const*,short) =====
int __fastcall DataPacketLobby::addShortLenString(DataPacketLobby *this, const char *a2, size_t a3)
{
  bool v3; // zf
  _BOOL4 v8; // r0
  int v9; // r3
  int v10; // r2
  int v11; // r0

  v3 = a2 == nullptr;
  if ( a2 )
    v3 = a3 == 0;
  if ( v3 )
    return 0;
  v8 = DataPacketLobby::WillBeFull(this, a3);
  if ( v8 && !DataPacketLobby::AllocateMoreMomery(this) )
    return 0;
  v9 = *((_DWORD *)this + 3);
  v10 = v9 + 1;
  *(_BYTE *)(*((_DWORD *)this + 2) + v9) = BYTE1(a3);
  v9 += 2;
  *(_BYTE *)(*((_DWORD *)this + 2) + v10) = a3;
  v11 = *((_DWORD *)this + 2);
  *((_DWORD *)this + 3) = v9;
  XP_API_MEMCPY((void *)(v11 + v9), a2, a3);
  *((_DWORD *)this + 3) += a3;
  return 1;
}


// ===== 849a68 DataPacketLobby::addQueryString(char const*,short) =====
int __fastcall DataPacketLobby::addQueryString(DataPacketLobby *this, const char *a2, size_t a3)
{
  bool v3; // zf
  _BOOL4 v8; // r0

  v3 = a2 == nullptr;
  if ( a2 )
    v3 = a3 == 0;
  if ( v3 )
    return 0;
  v8 = DataPacketLobby::WillBeFull(this, a3);
  if ( v8 && !DataPacketLobby::AllocateMoreMomery(this) )
    return 0;
  XP_API_MEMCPY((void *)(*((_DWORD *)this + 2) + *((_DWORD *)this + 3)), a2, a3);
  *((_DWORD *)this + 3) += a3;
  return 1;
}


// ===== 849ad8 DataPacketLobby::addBlob(char *,short) =====
int __fastcall DataPacketLobby::addBlob(DataPacketLobby *this, char *a2, size_t a3)
{
  int v3; // r3
  size_t v4; // r5
  int v6; // r1
  int result; // r0

  v3 = (a2 == nullptr) | (a3 >> 31);
  v4 = a3;
  if ( v3 )
    v6 = 2;
  else
    v6 = a3 + 2;
  if ( v3 )
    v4 = 0;
  if ( !DataPacketLobby::WillBeFull(this, v6) || (result = DataPacketLobby::AllocateMoreMomery(this)) != 0 )
  {
    (*(void (__fastcall **)(DataPacketLobby *, size_t))(*(_DWORD *)this + 32))(this, v4);
    if ( v4 )
    {
      XP_API_MEMCPY((void *)(*((_DWORD *)this + 2) + *((_DWORD *)this + 3)), a2, v4);
      result = 1;
      *((_DWORD *)this + 3) += v4;
    }
    else
    {
      return 1;
    }
  }
  return result;
}


// ===== 849b6c DataPacketLobby::addFloat(float) =====
int __fastcall DataPacketLobby::addFloat(DataPacketLobby *this, float a2)
{
  int v3; // r3
  int v4; // r1
  int v5; // r2
  int v6; // r0
  int v7; // r0
  int result; // r0

  if ( !DataPacketLobby::WillBeFull(this, 4) || (result = DataPacketLobby::AllocateMoreMomery(this)) != 0 )
  {
    v3 = *((_DWORD *)this + 3);
    v4 = v3 + 1;
    v5 = v3 + 2;
    *(_BYTE *)(*((_DWORD *)this + 2) + v3) = LOBYTE(a2);
    v6 = *((_DWORD *)this + 2);
    *((_DWORD *)this + 3) = v3 + 1;
    v3 += 3;
    *(_BYTE *)(v6 + v4) = BYTE1(a2);
    v7 = *((_DWORD *)this + 2);
    *((_DWORD *)this + 3) = v5;
    *(_BYTE *)(v7 + v5) = BYTE2(a2);
    *(_BYTE *)(*((_DWORD *)this + 2) + v3) = HIBYTE(a2);
    *((_DWORD *)this + 3) = v3 + 1;
    return 1;
  }
  return result;
}


// ===== 849bfc DataPacketLobby::addInt(int) =====
int __fastcall DataPacketLobby::addInt(DataPacketLobby *this, int a2)
{
  int v4; // r2
  int v5; // r3
  int result; // r0

  if ( !DataPacketLobby::WillBeFull(this, 4) || (result = DataPacketLobby::AllocateMoreMomery(this)) != 0 )
  {
    v4 = *((_DWORD *)this + 3);
    v5 = v4 + 1;
    *(_BYTE *)(*((_DWORD *)this + 2) + v4) = HIBYTE(a2);
    v4 += 2;
    *(_BYTE *)(*((_DWORD *)this + 2) + v5) = BYTE2(a2);
    *(_BYTE *)(*((_DWORD *)this + 2) + v4) = BYTE1(a2);
    *(_BYTE *)(*((_DWORD *)this + 2) + v4 + 1) = a2;
    *((_DWORD *)this + 3) = v4 + 2;
    return 1;
  }
  return result;
}


// ===== 849c78 DataPacketLobby::addShort(short) =====
int __fastcall DataPacketLobby::addShort(DataPacketLobby *this, __int16 a2)
{
  int v4; // r2
  int result; // r0

  if ( !DataPacketLobby::WillBeFull(this, 2) || (result = DataPacketLobby::AllocateMoreMomery(this)) != 0 )
  {
    v4 = *((_DWORD *)this + 3);
    *(_BYTE *)(*((_DWORD *)this + 2) + v4) = HIBYTE(a2);
    *(_BYTE *)(*((_DWORD *)this + 2) + v4 + 1) = a2;
    *((_DWORD *)this + 3) = v4 + 2;
    return 1;
  }
  return result;
}


// ===== 849cd4 DataPacketLobby::addByte(uchar) =====
int __fastcall DataPacketLobby::addByte(DataPacketLobby *this, unsigned __int8 a2)
{
  int v4; // r3
  int result; // r0

  if ( !DataPacketLobby::WillBeFull(this, 1) || (result = DataPacketLobby::AllocateMoreMomery(this)) != 0 )
  {
    v4 = *((_DWORD *)this + 3);
    *(_BYTE *)(*((_DWORD *)this + 2) + v4) = a2;
    *((_DWORD *)this + 3) = v4 + 1;
    return 1;
  }
  return result;
}


// ===== 849d20 DataPacketLobby::DataPacketLobby(DataPacket *) =====
void __fastcall DataPacketLobby::DataPacketLobby(DataPacketLobby *this, DataPacket *a2)
{
  int v4; // r0
  void *v5; // r0
  size_t v6; // r2
  unsigned __int8 *v7; // r6
  size_t v8; // r0

  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_993280;
  v4 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 116))(a2);
  *((_DWORD *)this + 1) = 4096;
  *((_DWORD *)this + 6) = v4;
  v5 = (void *)operator new[](0x1000u);
  v6 = *((_DWORD *)this + 1);
  *((_DWORD *)this + 2) = v5;
  XP_API_MEMSET(v5, 0, v6);
  v7 = (unsigned __int8 *)(*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 100))(a2);
  v8 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
  DataPacketLobby::setMessageBody((void **)this, v7, v8);
}


// ===== 849dcc DataPacketLobby::DataPacketLobby(DataPacket *) =====
void __fastcall DataPacketLobby::DataPacketLobby(DataPacketLobby *this, DataPacket *a2)
{
  int v4; // r0
  void *v5; // r0
  size_t v6; // r2
  unsigned __int8 *v7; // r6
  size_t v8; // r0

  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_993280;
  v4 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 116))(a2);
  *((_DWORD *)this + 1) = 4096;
  *((_DWORD *)this + 6) = v4;
  v5 = (void *)operator new[](0x1000u);
  v6 = *((_DWORD *)this + 1);
  *((_DWORD *)this + 2) = v5;
  XP_API_MEMSET(v5, 0, v6);
  v7 = (unsigned __int8 *)(*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 100))(a2);
  v8 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
  DataPacketLobby::setMessageBody((void **)this, v7, v8);
}


// ===== 849e78 DataPacketLobby::DataPacketLobby(void) =====
void __fastcall DataPacketLobby::DataPacketLobby(DataPacketLobby *this)
{
  void *v2; // r0

  *(_DWORD *)this = off_993280;
  *((_DWORD *)this + 3) = 2;
  *((_DWORD *)this + 6) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 1) = 4096;
  v2 = (void *)operator new[](0x1000u);
  *((_DWORD *)this + 2) = v2;
  XP_API_MEMSET(v2, 0, *((_DWORD *)this + 1));
}


// ===== 849ee8 DataPacketLobby::getPacket(DataPacket *&) =====
int __fastcall DataPacketLobby::getPacket(DataPacketLobby *this, DataPacket **a2)
{
  DataPacketLobby *v4; // r5
  int v5; // r1
  int v6; // r2
  __int16 v7; // r0
  int v8; // r5
  int result; // r0

  v4 = (DataPacketLobby *)operator new(0x24u);
  DataPacketLobby::DataPacketLobby(v4);
  *a2 = v4;
  v5 = *((_DWORD *)this + 3);
  v6 = *((_DWORD *)this + 2);
  LOWORD(v4) = *(unsigned __int8 *)(v6 + v5);
  *((_DWORD *)this + 3) = v5 + 1;
  v7 = *(unsigned __int8 *)(v6 + v5 + 1);
  v5 += 2;
  *((_DWORD *)this + 3) = v5;
  v8 = (__int16)(v7 | ((_WORD)v4 << 8));
  result = (*(int (__fastcall **)(_DWORD, int, int))(*(_DWORD *)*a2 + 104))(*a2, v6 + v5, v8);
  *((_DWORD *)this + 3) += v8;
  return result;
}


// ===== 849f5c DataPacketLobby::DataPacketLobby(void) =====
void __fastcall DataPacketLobby::DataPacketLobby(DataPacketLobby *this)
{
  void *v2; // r0

  *(_DWORD *)this = off_993280;
  *((_DWORD *)this + 3) = 2;
  *((_DWORD *)this + 6) = 1;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 1) = 4096;
  v2 = (void *)operator new[](0x1000u);
  *((_DWORD *)this + 2) = v2;
  XP_API_MEMSET(v2, 0, *((_DWORD *)this + 1));
}


// ===== 849fcc DefaultDataPacket::addQueryString(char const*,short) =====
int __fastcall DefaultDataPacket::addQueryString(DefaultDataPacket *this, const char *a2, __int16 a3)
{
  return 0;
}


// ===== 849fd4 DefaultDataPacket::addShortLenString(char const*,short) =====
int __fastcall DefaultDataPacket::addShortLenString(DefaultDataPacket *this, const char *a2, __int16 a3)
{
  return 0;
}


// ===== 849fdc DefaultDataPacket::getShortLenString(char *&,short &) =====
int __fastcall DefaultDataPacket::getShortLenString(DefaultDataPacket *this, char **a2, __int16 *a3)
{
  return 0;
}


// ===== 849fe4 DefaultDataPacket::addShortLenWideString(wchar_t const*,uchar) =====
int __fastcall DefaultDataPacket::addShortLenWideString(DefaultDataPacket *this, const wchar_t *a2, unsigned __int8 a3)
{
  return 0;
}


// ===== 849fec DefaultDataPacket::getShortLenWideString(wchar_t *&,uchar &) =====
int __fastcall DefaultDataPacket::getShortLenWideString(DefaultDataPacket *this, wchar_t **a2, unsigned __int8 *a3)
{
  return 0;
}


// ===== 849ff4 DefaultDataPacket::addByte(uchar) =====
int __fastcall DefaultDataPacket::addByte(int this, unsigned __int8 a2)
{
  int v2; // r12
  int v3; // r3

  v3 = *(_DWORD *)(this + 4104);
  if ( v3 >= 4096 )
  {
    this = 0;
  }
  else
  {
    v2 = v3 + 1;
    *(_BYTE *)(this + v3 + 4) = a2;
  }
  if ( v3 < 4096 )
  {
    *(_DWORD *)(this + 4104) = v2;
    return 1;
  }
  return this;
}


// ===== 84a01c DefaultDataPacket::getByte(uchar &) =====
char *__fastcall DefaultDataPacket::getByte(DefaultDataPacket *this, unsigned __int8 *a2)
{
  unsigned __int8 v2; // r4
  int v4; // r0
  int v5; // r2
  bool v6; // cc
  char *result; // r0

  v4 = *((_DWORD *)this + 1026);
  v5 = *((_DWORD *)this + 1025);
  v6 = v5 < v4;
  if ( v5 >= v4 )
  {
    result = nullptr;
  }
  else
  {
    result = (char *)this + v5;
    v2 = *((_BYTE *)this + v5 + 4);
  }
  if ( v6 )
  {
    ++v5;
    *a2 = v2;
  }
  else
  {
    *a2 = (unsigned __int8)result;
  }
  if ( v6 )
  {
    *((_DWORD *)this + 1025) = v5;
    return (_BYTE *)(&dword_0 + 1);
  }
  return result;
}


// ===== 84a060 DefaultDataPacket::addShort(short) =====
int __fastcall DefaultDataPacket::addShort(int this, __int16 a2)
{
  int v2; // r4
  int v3; // r3
  int v4; // r12

  v3 = *(_DWORD *)(this + 4104);
  v4 = 4094;
  if ( v3 > 4094 )
  {
    this = 0;
  }
  else
  {
    v2 = v3 + 2;
    v4 = this + v3 + 1;
    *(_BYTE *)(this + v3 + 4) = HIBYTE(a2);
  }
  if ( v3 <= 4094 )
  {
    *(_BYTE *)(v4 + 4) = a2;
    *(_DWORD *)(this + 4104) = v2;
    return 1;
  }
  return this;
}


// ===== 84a0a4 DefaultDataPacket::getShort(short &) =====
int __fastcall DefaultDataPacket::getShort(DefaultDataPacket *this, __int16 *a2)
{
  int v2; // r12
  int v4; // r0
  __int16 v6; // r4
  int v7; // r0
  __int16 v8; // r4
  int v9; // r12

  *a2 = 0;
  v2 = *((_DWORD *)this + 1026);
  v4 = *((_DWORD *)this + 1025);
  if ( v2 - 1 <= v4 )
    return 0;
  v6 = *((unsigned __int8 *)this + v4 + 4);
  v7 = v4 + 1;
  *a2 = v6 << 8;
  *((_DWORD *)this + 1025) = v7;
  v8 = *((unsigned __int8 *)this + v7 + 4);
  v9 = v7 + 1;
  *a2 |= v8;
  *((_DWORD *)this + 1025) = v9;
  return 1;
}


// ===== 84a114 DefaultDataPacket::addInt(int) =====
int __fastcall DefaultDataPacket::addInt(DefaultDataPacket *this, int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 1026);
  if ( v2 > 4092 )
    return 0;
  *((_BYTE *)this + v2 + 4) = HIBYTE(a2);
  *((_BYTE *)this + v2 + 5) = BYTE2(a2);
  *((_BYTE *)this + v2 + 6) = BYTE1(a2);
  *((_BYTE *)this + v2 + 7) = a2;
  *((_DWORD *)this + 1026) = v2 + 4;
  return 1;
}


// ===== 84a17c DefaultDataPacket::getInt(int &) =====
int __fastcall DefaultDataPacket::getInt(DefaultDataPacket *this, int *a2)
{
  int v3; // r4
  int v4; // r0
  int v6; // r4
  int v7; // r0
  int v8; // r5
  int v9; // r5
  int v10; // r4
  int v11; // r3

  *a2 = 0;
  v3 = *((_DWORD *)this + 1026);
  v4 = *((_DWORD *)this + 1025);
  if ( v3 - 3 <= v4 )
    return 0;
  v6 = *((unsigned __int8 *)this + v4 + 4);
  v7 = v4 + 1;
  *a2 = v6 << 24;
  *((_DWORD *)this + 1025) = v7;
  v8 = *((unsigned __int8 *)this + v7++ + 4);
  *a2 |= v8 << 16;
  *((_DWORD *)this + 1025) = v7;
  v9 = *((unsigned __int8 *)this + v7++ + 4);
  *a2 |= v9 << 8;
  *((_DWORD *)this + 1025) = v7;
  v10 = *((unsigned __int8 *)this + v7 + 4);
  v11 = v7 + 1;
  *a2 |= v10;
  *((_DWORD *)this + 1025) = v11;
  return 1;
}


// ===== 84a224 DefaultDataPacket::addFloat(float) =====
int __fastcall DefaultDataPacket::addFloat(DefaultDataPacket *this, float a2)
{
  int v2; // r2
  char *v4; // r1
  int v5; // r2

  v2 = *((_DWORD *)this + 1026);
  if ( v2 > 4092 )
    return 0;
  v4 = (char *)this + v2;
  v5 = v2 + 1;
  v4[4] = LOBYTE(a2);
  *((_DWORD *)this + 1026) = v5;
  *((_BYTE *)this + v5++ + 4) = BYTE1(a2);
  *((_DWORD *)this + 1026) = v5;
  *((_BYTE *)this + v5++ + 4) = BYTE2(a2);
  *((_BYTE *)this + v5 + 4) = HIBYTE(a2);
  *((_DWORD *)this + 1026) = v5 + 1;
  return 1;
}


// ===== 84a2a4 DefaultDataPacket::getFloat(float &) =====
int __fastcall DefaultDataPacket::getFloat(DefaultDataPacket *this, float *a2)
{
  int v2; // r12
  int v4; // r0
  char v6; // r4
  int v7; // r0
  char v8; // r4
  char v9; // r4
  char v10; // r4
  int v11; // r12

  *a2 = 0.0;
  v2 = *((_DWORD *)this + 1026);
  v4 = *((_DWORD *)this + 1025);
  if ( v2 - 3 <= v4 )
    return 0;
  v6 = *((_BYTE *)this + v4 + 4);
  v7 = v4 + 1;
  *(_BYTE *)a2 = v6;
  *((_DWORD *)this + 1025) = v7;
  v8 = *((_BYTE *)this + v7++ + 4);
  *((_BYTE *)a2 + 1) = v8;
  *((_DWORD *)this + 1025) = v7;
  v9 = *((_BYTE *)this + v7++ + 4);
  *((_BYTE *)a2 + 2) = v9;
  *((_DWORD *)this + 1025) = v7;
  v10 = *((_BYTE *)this + v7 + 4);
  v11 = v7 + 1;
  *((_BYTE *)a2 + 3) = v10;
  *((_DWORD *)this + 1025) = v11;
  return 1;
}


// ===== 84a330 DefaultDataPacket::getMessageLen(void) =====
int __fastcall DefaultDataPacket::getMessageLen(DefaultDataPacket *this)
{
  return *((_DWORD *)this + 1026);
}


// ===== 84a33c DefaultDataPacket::getMessageBody(void) =====
char *__fastcall DefaultDataPacket::getMessageBody(DefaultDataPacket *this)
{
  return (char *)this + 4;
}


// ===== 84a344 DefaultDataPacket::packMessage(void) =====
void __fastcall DefaultDataPacket::packMessage(DefaultDataPacket *this)
{
  ;
}


// ===== 84a348 DefaultDataPacket::getNextPacket(void) =====
int __fastcall DefaultDataPacket::getNextPacket(DefaultDataPacket *this)
{
  return *((_DWORD *)this + 1027);
}


// ===== 84a354 DefaultDataPacket::setNextPacket(DataPacket *) =====
int __fastcall DefaultDataPacket::setNextPacket(int this, DataPacket *a2)
{
  *(_DWORD *)(this + 4108) = a2;
  return this;
}


// ===== 84a360 DefaultDataPacket::IsSendByTcp(void) =====
bool __fastcall DefaultDataPacket::IsSendByTcp(DefaultDataPacket *this)
{
  int v1; // r0
  bool v2; // zf

  v1 = *((_DWORD *)this + 1028);
  v2 = v1 == 1;
  if ( v1 != 1 )
    return v1 == 3;
  return v2;
}


// ===== 84a37c DefaultDataPacket::IsSendByUdp(void) =====
bool __fastcall DefaultDataPacket::IsSendByUdp(DefaultDataPacket *this)
{
  return *((_DWORD *)this + 1028) == 2;
}


// ===== 84a394 DefaultDataPacket::getDataType(void) =====
int __fastcall DefaultDataPacket::getDataType(DefaultDataPacket *this)
{
  return *((_DWORD *)this + 1028);
}


// ===== 84a3a0 DefaultDataPacket::setDataType(int) =====
int __fastcall DefaultDataPacket::setDataType(int this, int a2)
{
  *(_DWORD *)(this + 4112) = a2;
  return this;
}


// ===== 84a3ac DefaultDataPacket::getPort(void) =====
int __fastcall DefaultDataPacket::getPort(DefaultDataPacket *this)
{
  return *((_DWORD *)this + 1030);
}


// ===== 84a3b8 DefaultDataPacket::setPort(int) =====
int __fastcall DefaultDataPacket::setPort(int this, int a2)
{
  *(_DWORD *)(this + 4120) = a2;
  return this;
}


// ===== 84a3c4 DefaultDataPacket::getIP(void) =====
int __fastcall DefaultDataPacket::getIP(DefaultDataPacket *this)
{
  return *((_DWORD *)this + 1029);
}


// ===== 84a3d0 DefaultDataPacket::String2Packet(char *,int) =====
int __fastcall DefaultDataPacket::String2Packet(DefaultDataPacket *this, char *a2, int a3)
{
  int v3; // r4

  v3 = (unsigned __int8)a2[1] | (*a2 << 8);
  if ( v3 + 1 >= a3 )
    return -1;
  (*(void (__fastcall **)(DefaultDataPacket *, char *, int))(*(_DWORD *)this + 104))(this, a2 + 2, v3);
  return v3 + 2;
}


// ===== 84a410 DefaultDataPacket::Packet2String(char *,int &) =====
void *__fastcall DefaultDataPacket::Packet2String(DefaultDataPacket *this, char *a2, int *a3)
{
  void *result; // r0

  *a2 = BYTE1(*((_DWORD *)this + 1026));
  a2[1] = *((_DWORD *)this + 1026);
  *a3 = 2;
  result = XP_API_MEMCPY(a2 + 2, (char *)this + 4, *((_DWORD *)this + 1026));
  *a3 += *((_DWORD *)this + 1026);
  return result;
}


// ===== 84a460 DefaultDataPacket::addPacket(DataPacket *) =====
void *__fastcall DefaultDataPacket::addPacket(DefaultDataPacket *this, DataPacket *a2)
{
  int v4; // r0
  int v5; // r2
  size_t v6; // r6
  int v7; // r8
  const void *v8; // r0
  void *result; // r0

  v4 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
  v5 = *((_DWORD *)this + 1026);
  v6 = v4;
  v7 = v5 + 2;
  *((_BYTE *)this + v5 + 4) = BYTE1(v4);
  *((_BYTE *)this + v5 + 5) = v4;
  *((_DWORD *)this + 1026) = v5 + 2;
  v8 = (const void *)(*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 100))(a2);
  result = XP_API_MEMCPY((char *)this + v7 + 4, v8, v6);
  *((_DWORD *)this + 1026) += v6;
  return result;
}


// ===== 84a4dc DefaultDataPacket::setMessageBody(uchar *,int) =====
void *__fastcall DefaultDataPacket::setMessageBody(DefaultDataPacket *this, unsigned __int8 *a2, size_t a3)
{
  void *result; // r0

  result = XP_API_MEMCPY((char *)this + 4, a2, a3);
  *((_DWORD *)this + 1025) = 0;
  *((_DWORD *)this + 1026) = a3;
  return result;
}


// ===== 84a508 DefaultDataPacket::DefaultDataPacket(DataPacket *) =====
void __fastcall DefaultDataPacket::DefaultDataPacket(DefaultDataPacket *this, DataPacket *a2)
{
  unsigned __int8 *v4; // r7
  size_t v5; // r0

  *(_DWORD *)this = off_993338;
  *((_DWORD *)this + 1029) = 0;
  *((_DWORD *)this + 1030) = 0;
  *((_DWORD *)this + 1028) = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 116))(a2);
  v4 = (unsigned __int8 *)(*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 100))(a2);
  v5 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
  DefaultDataPacket::setMessageBody(this, v4, v5);
  *((_DWORD *)this + 1027) = 0;
}


// ===== 84a5a4 DefaultDataPacket::DefaultDataPacket(DataPacket *) =====
void __fastcall DefaultDataPacket::DefaultDataPacket(DefaultDataPacket *this, DataPacket *a2)
{
  unsigned __int8 *v4; // r7
  size_t v5; // r0

  *(_DWORD *)this = off_993338;
  *((_DWORD *)this + 1029) = 0;
  *((_DWORD *)this + 1030) = 0;
  *((_DWORD *)this + 1028) = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 116))(a2);
  v4 = (unsigned __int8 *)(*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 100))(a2);
  v5 = (*(int (__fastcall **)(DataPacket *))(*(_DWORD *)a2 + 96))(a2);
  DefaultDataPacket::setMessageBody(this, v4, v5);
  *((_DWORD *)this + 1027) = 0;
}


// ===== 84a640 DefaultDataPacket::addByteLenWideString(wchar_t const*,uchar) =====
int __fastcall DefaultDataPacket::addByteLenWideString(DefaultDataPacket *this, const wchar_t *a2, int a3)
{
  int v3; // r6
  unsigned int v4; // r3
  unsigned int v6; // r0
  bool v7; // zf
  int v8; // r6

  v4 = *((_DWORD *)this + 1026);
  if ( v4 > 4 * (1024 - a3) )
    return 0;
  v6 = v4 + 1;
  v7 = a3 == 0;
  if ( a3 )
    v7 = a2 == nullptr;
  *((_BYTE *)this + v4 + 4) = a3;
  if ( v7 )
    v3 = 4 * a3;
  *((_DWORD *)this + 1026) = v6;
  if ( v7 )
  {
    *((_DWORD *)this + 1026) = v6 + v3;
  }
  else
  {
    v8 = 4 * a3;
    XP_API_MEMCPY((char *)this + v6 + 4, a2, 4 * a3);
    *((_DWORD *)this + 1026) += v8;
  }
  return 1;
}


// ===== 84a6c4 DefaultDataPacket::addByteLenString(char const*,uchar) =====
int __fastcall DefaultDataPacket::addByteLenString(DefaultDataPacket *this, const char *a2, size_t a3)
{
  signed int v3; // r3
  int v6; // r0
  bool v7; // zf

  v3 = *((_DWORD *)this + 1026);
  if ( v3 > (int)(4096 - a3) )
    return 0;
  v6 = v3 + 1;
  v7 = a3 == 0;
  if ( a3 )
    v7 = a2 == nullptr;
  *((_BYTE *)this + v3 + 4) = a3;
  *((_DWORD *)this + 1026) = v6;
  if ( v7 )
  {
    *((_DWORD *)this + 1026) = v6 + a3;
  }
  else
  {
    XP_API_MEMCPY((char *)this + v6 + 4, a2, a3);
    *((_DWORD *)this + 1026) += a3;
  }
  return 1;
}


// ===== 84a740 DefaultDataPacket::~DefaultDataPacket() =====
void __fastcall DefaultDataPacket::~DefaultDataPacket(DefaultDataPacket *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1029);
  *(_DWORD *)this = off_993338;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 1029) = 0;
  }
}


// ===== 84a78c DefaultDataPacket::~DefaultDataPacket() =====
void __fastcall DefaultDataPacket::~DefaultDataPacket(DefaultDataPacket *this)
{
  DefaultDataPacket::~DefaultDataPacket(this);
  LC_API_FREE_0(this);
}


// ===== 84a7a8 DefaultDataPacket::~DefaultDataPacket() =====
void __fastcall DefaultDataPacket::~DefaultDataPacket(DefaultDataPacket *this)
{
  void *v2; // r0

  v2 = *((void **)this + 1029);
  *(_DWORD *)this = off_993338;
  if ( v2 )
  {
    LC_API_FREE_0(v2);
    *((_DWORD *)this + 1029) = 0;
  }
}


// ===== 84a7f4 DefaultDataPacket::setIP(char *) =====
void *__fastcall DefaultDataPacket::setIP(DefaultDataPacket *this, char *a2)
{
  void *v3; // r0
  void *result; // r0

  v3 = *((void **)this + 1029);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 1029) = 0;
  }
  result = XP_API_STRNEW(a2);
  *((_DWORD *)this + 1029) = result;
  return result;
}


// ===== 84a830 DefaultDataPacket::getByteLenWideString(wchar_t *&,uchar &) =====
int __fastcall DefaultDataPacket::getByteLenWideString(DefaultDataPacket *this, wchar_t **a2, unsigned __int8 *a3)
{
  unsigned int v3; // r3
  unsigned __int8 v6; // r2
  int v8; // r2
  int v9; // r0
  wchar_t *v11; // r0
  int v12; // r2
  wchar_t *v13; // r3

  v3 = *((_DWORD *)this + 1025);
  v6 = *((_BYTE *)this + v3++ + 4);
  *a3 = v6;
  *((_DWORD *)this + 1025) = v3;
  v8 = *((_DWORD *)this + 1026);
  v9 = *a3;
  if ( v3 > v8 - 4 * v9 )
    return 0;
  v11 = (wchar_t *)operator new[](4 * (v9 + 1));
  *a2 = v11;
  v12 = *a3;
  v13 = v11;
  if ( *a3 )
  {
    XP_API_MEMCPY(v11, (char *)this + *((_DWORD *)this + 1025) + 4, 4 * v12);
    v13 = *a2;
    v12 = *a3;
  }
  v13[v12] = 0;
  *((_DWORD *)this + 1025) += 4 * *a3;
  return 1;
}


// ===== 84a8e0 DefaultDataPacket::getByteLenString(char *&,uchar &) =====
int __fastcall DefaultDataPacket::getByteLenString(DefaultDataPacket *this, char **a2, unsigned __int8 *a3)
{
  int v3; // r3
  unsigned __int8 v6; // r2
  int v8; // r2
  int v9; // r0
  char *v11; // r0
  size_t v12; // r2
  char *v13; // r3

  v3 = *((_DWORD *)this + 1025);
  v6 = *((_BYTE *)this + v3++ + 4);
  *a3 = v6;
  *((_DWORD *)this + 1025) = v3;
  v8 = *((_DWORD *)this + 1026);
  v9 = *a3;
  if ( v3 > v8 - v9 )
    return 0;
  v11 = (char *)operator new[](v9 + 1);
  *a2 = v11;
  v12 = *a3;
  v13 = v11;
  if ( *a3 )
  {
    XP_API_MEMCPY(v11, (char *)this + *((_DWORD *)this + 1025) + 4, v12);
    v13 = *a2;
    v12 = *a3;
  }
  v13[v12] = 0;
  *((_DWORD *)this + 1025) += *a3;
  return 1;
}


// ===== 84a988 DefaultDataPacket::DefaultDataPacket(void) =====
void __fastcall DefaultDataPacket::DefaultDataPacket(DefaultDataPacket *this)
{
  *((_DWORD *)this + 1028) = 1;
  *(_DWORD *)this = off_993338;
  *((_DWORD *)this + 1029) = 0;
  *((_DWORD *)this + 1030) = 0;
  *((_DWORD *)this + 1026) = 0;
  *((_DWORD *)this + 1025) = 0;
  *((_DWORD *)this + 1027) = 0;
  XP_API_MEMSET((char *)this + 4, 0, 0x1000u);
}


// ===== 84a9fc DefaultDataPacket::getPacket(DataPacket *&) =====
int __fastcall DefaultDataPacket::getPacket(DefaultDataPacket *this, DataPacket **a2)
{
  DefaultDataPacket *v4; // r6
  int v5; // r3
  __int16 v6; // r2
  int v7; // r6
  int result; // r0

  v4 = (DefaultDataPacket *)operator new(0x101Cu);
  DefaultDataPacket::DefaultDataPacket(v4);
  *a2 = v4;
  v5 = *((_DWORD *)this + 1025);
  LOWORD(v4) = *((unsigned __int8 *)this + v5 + 4);
  *((_DWORD *)this + 1025) = v5 + 1;
  v6 = *((unsigned __int8 *)this + v5 + 5);
  *((_DWORD *)this + 1025) = v5 + 2;
  v7 = (__int16)(v6 | ((_WORD)v4 << 8));
  result = (*(int (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)*a2 + 104))(*a2, (char *)this + v5 + 6, v7);
  *((_DWORD *)this + 1025) += v7;
  return result;
}


// ===== 84aa7c DefaultDataPacket::DefaultDataPacket(void) =====
void __fastcall DefaultDataPacket::DefaultDataPacket(DefaultDataPacket *this)
{
  *((_DWORD *)this + 1028) = 1;
  *(_DWORD *)this = off_993338;
  *((_DWORD *)this + 1029) = 0;
  *((_DWORD *)this + 1030) = 0;
  *((_DWORD *)this + 1026) = 0;
  *((_DWORD *)this + 1025) = 0;
  *((_DWORD *)this + 1027) = 0;
  XP_API_MEMSET((char *)this + 4, 0, 0x1000u);
}


// ===== 84aaf0 GLXPlayerMPBase::LoadConfig(void) =====
int __fastcall GLXPlayerMPBase::LoadConfig(GLXPlayerMPBase *this)
{
  *((_DWORD *)this + 22) = 0;
  return 1;
}


// ===== 84ab00 GLXPlayerMPBase::Init(void) =====
int __fastcall GLXPlayerMPBase::Init(GLXPlayerMPBase *this)
{
  *((_BYTE *)this + 112) = 0;
  *((_DWORD *)this + 26) = 0;
  *((_DWORD *)this + 27) = 0;
  return GLXPlayerMPBase::LoadConfig(this);
}


// ===== 84ab14 GLXPlayerMPBase::GLXPlayerMPBase(GLXPlayerMPBaseObserver *) =====
void __fastcall GLXPlayerMPBase::GLXPlayerMPBase(GLXPlayerMPBase *this, GLXPlayerMPBaseObserver *a2)
{
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_9933F0;
  *((_BYTE *)this + 113) = 0;
  GLXPlayerMPBase::Init(this);
}


// ===== 84ab54 GLXPlayerMPBase::GLXPlayerMPBase(GLXPlayerMPBaseObserver *) =====
void __fastcall GLXPlayerMPBase::GLXPlayerMPBase(GLXPlayerMPBase *this, GLXPlayerMPBaseObserver *a2)
{
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_9933F0;
  *((_BYTE *)this + 113) = 0;
  GLXPlayerMPBase::Init(this);
}


// ===== 84ab94 GLXPlayerMPBase::getErrMsg(void) =====
int __fastcall GLXPlayerMPBase::getErrMsg(GLXPlayerMPBase *this)
{
  return *((_DWORD *)this + 19);
}


// ===== 84ab9c GLXPlayerMPBase::setErrMsg(char *) =====
void __fastcall GLXPlayerMPBase::setErrMsg(GLXPlayerMPBase *this, char *a2)
{
  void *v3; // r0

  v3 = *((void **)this + 19);
  if ( v3 )
  {
    operator delete[](v3);
    *((_DWORD *)this + 19) = 0;
  }
  if ( a2 )
    *((_DWORD *)this + 19) = XP_API_STRNEW(a2);
}


// ===== 84abd8 GLXPlayerMPBase::setErrMsg(void) =====
void __fastcall GLXPlayerMPBase::setErrMsg(GLXPlayerMPBase *this)
{
  void *v2; // r0
  int v3; // r3
  int v4; // r0
  unsigned int v5; // r7
  size_t v6; // r5
  const void *v7; // r6
  void *v8; // r0

  v2 = *((void **)this + 19);
  if ( v2 )
  {
    operator delete[](v2);
    *((_DWORD *)this + 19) = 0;
  }
  v3 = *((_DWORD *)this + 26);
  if ( v3 )
  {
    v4 = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v3 + 96))(*((_DWORD *)this + 26));
    v5 = v4 + 1;
    v6 = v4;
    v7 = (const void *)(*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 26) + 100))(*((_DWORD *)this + 26));
    v8 = (void *)operator new[](v5);
    *((_DWORD *)this + 19) = v8;
    XP_API_MEMSET(v8, 0, v5);
    XP_API_MEMCPY(*((void **)this + 19), v7, v6);
  }
}


// ===== 84ac64 GLXPlayerMPBase::mpSendLogin(char *) =====
int __fastcall GLXPlayerMPBase::mpSendLogin(GLXPlayerMPBase *this, char *a2)
{
  int v4; // r3
  int v6; // r6
  char v7[8]; // [sp+0h] [bp-1008h] BYREF

  XP_DEBUG_OUT("GLXPlayerMPbyP2P::mpSendLogin(){\n");
  if ( *((_BYTE *)this + 96) && *((unsigned __int8 *)this + 96) <= 1u )
  {
    XP_API_MEMSET(v7, 0, 0x1001u);
    LC_API_STRCPY_0(v7, a2);
    XP_DEBUG_OUT("GLXPlayerMPbyP2P::mpLoginNickname %s", v7);
    *((_DWORD *)this + 20) = -1;
    Connection::sendLoginPackage(*((Connection **)this + 21), v7);
    *((_BYTE *)this + 113) = 1;
    v6 = *((_DWORD *)this + 21);
    *(_DWORD *)(v6 + 8) = XP_API_GET_TIME();
    return XP_DEBUG_OUT("}\n");
  }
  else
  {
    v4 = *((_DWORD *)this + 1);
    *((_DWORD *)this + 20) = 0;
    return (*(int (__fastcall **)(int))(*(_DWORD *)v4 + 16))(v4);
  }
}


// ===== 84ad78 GLXPlayerMPBase::mpSendEstablishConnection(void) =====
void *__fastcall GLXPlayerMPBase::mpSendEstablishConnection(GLXPlayerMPBase *this)
{
  int v2; // r3
  Connection *v3; // r5
  void *result; // r0
  int v5; // r3

  if ( *((_BYTE *)this + 96) )
  {
    v5 = *((_DWORD *)this + 1);
    *((_DWORD *)this + 20) = 0;
    return (void *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 8))(v5);
  }
  else
  {
    if ( *((_DWORD *)this + 21) )
    {
      (*(void (__fastcall **)(GLXPlayerMPBase *))(*(_DWORD *)this + 24))(this);
      v2 = *((_DWORD *)this + 21);
      if ( v2 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*((_DWORD *)this + 21));
      *((_DWORD *)this + 21) = 0;
    }
    *((_DWORD *)this + 20) = -1;
    v3 = (Connection *)operator new(0x2050u);
    Connection::Connection(v3, *((char **)this + 22), *((_DWORD *)this + 23));
    *((_DWORD *)this + 21) = v3;
    result = Connection::setName(v3, (char *)this + 8);
    *((_BYTE *)this + 112) = 1;
    *((_DWORD *)this + 27) = 1;
  }
  return result;
}


// ===== 84ae28 GLXPlayerMPBase::mpSendDisconnect(void) =====
Connection *__fastcall GLXPlayerMPBase::mpSendDisconnect(GLXPlayerMPBase *this)
{
  Connection *result; // r0
  int v3; // r3
  int v4; // r4
  int v5; // r3

  result = *((Connection **)this + 21);
  if ( result )
  {
    if ( Connection::isConnected(result) )
    {
      v3 = *((_DWORD *)this + 21);
      *((_DWORD *)this + 20) = -1;
      (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 20))(v3);
      *((_BYTE *)this + 113) = 1;
      v4 = *((_DWORD *)this + 21);
      result = (Connection *)XP_API_GET_TIME();
      *(_DWORD *)(v4 + 8) = result;
    }
    else
    {
      (*(void (__fastcall **)(GLXPlayerMPBase *))(*(_DWORD *)this + 24))(this);
      v5 = *((_DWORD *)this + 1);
      *((_DWORD *)this + 20) = 0;
      return (Connection *)(*(int (__fastcall **)(int))(*(_DWORD *)v5 + 12))(v5);
    }
  }
  return result;
}


// ===== 84aea8 GLXPlayerMPBase::~GLXPlayerMPBase() =====
void __fastcall GLXPlayerMPBase::~GLXPlayerMPBase(GLXPlayerMPBase *this)
{
  int v1; // r1
  void *v3; // r0

  v1 = *((_DWORD *)this + 26);
  *(_DWORD *)this = off_9933F0;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 26) = 0;
  }
  v3 = *((void **)this + 19);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 19) = 0;
  }
}


// ===== 84af14 GLXPlayerMPBase::~GLXPlayerMPBase() =====
void __fastcall GLXPlayerMPBase::~GLXPlayerMPBase(GLXPlayerMPBase *this)
{
  GLXPlayerMPBase::~GLXPlayerMPBase(this);
  LC_API_FREE_0(this);
}


// ===== 84af30 GLXPlayerMPBase::~GLXPlayerMPBase() =====
void __fastcall GLXPlayerMPBase::~GLXPlayerMPBase(GLXPlayerMPBase *this)
{
  int v1; // r1
  void *v3; // r0

  v1 = *((_DWORD *)this + 26);
  *(_DWORD *)this = off_9933F0;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 26) = 0;
  }
  v3 = *((void **)this + 19);
  if ( v3 )
  {
    LC_API_FREE_0(v3);
    *((_DWORD *)this + 19) = 0;
  }
}


// ===== 84af9c index2adr =====
_DWORD *__fastcall index2adr(_DWORD *a1, int a2)
{
  unsigned int v2; // r1
  int v4; // r3
  int v5; // r1
  int v6; // r3

  if ( a2 > 0 )
  {
    v2 = a1[3] + 8 * (a2 - 1);
    if ( v2 >= a1[2] )
      return &luaO_nilobject_;
    return (_DWORD *)v2;
  }
  if ( a2 < -9999 )
  {
    switch ( a2 )
    {
      case -10001:
        v2 = (unsigned int)(a1 + 20);
        v6 = *(_DWORD *)(**(_DWORD **)(a1[5] + 4) + 12);
        a1[21] = 5;
        a1[20] = v6;
        break;
      case -10000:
        return (_DWORD *)(a1[4] + 92);
      case -10002:
        return a1 + 18;
      default:
        v4 = -10002 - a2;
        v5 = **(_DWORD **)(a1[5] + 4);
        if ( v4 > *(unsigned __int8 *)(v5 + 7) )
          return &luaO_nilobject_;
        else
          return (_DWORD *)(v5 + 8 * v4 + 12);
    }
    return (_DWORD *)v2;
  }
  return (_DWORD *)(a1[2] + 8 * a2);
}


// ===== 84b08c luaA_pushobject =====
int __fastcall luaA_pushobject(int result, _DWORD *a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(result + 8);
  *v2 = *a2;
  v2[1] = a2[1];
  *(_DWORD *)(result + 8) += 8;
  return result;
}


// ===== 84b0b0 lua_xmove =====
int __fastcall lua_xmove(int result, int a2, int a3)
{
  int v3; // r4
  int v4; // r3
  _DWORD *v5; // r12
  _DWORD *v6; // r5

  if ( result != a2 )
  {
    v3 = *(_DWORD *)(result + 8) - 8 * a3;
    *(_DWORD *)(result + 8) = v3;
    if ( a3 > 0 )
    {
      v4 = 0;
      while ( 1 )
      {
        v5 = *(_DWORD **)(a2 + 8);
        v6 = (_DWORD *)(v3 + 8 * v4);
        *(_DWORD *)(a2 + 8) = v5 + 2;
        ++v4;
        *v5 = *v6;
        v5[1] = v6[1];
        if ( v4 == a3 )
          break;
        v3 = *(_DWORD *)(result + 8);
      }
    }
  }
  return result;
}


// ===== 84b110 lua_setlevel =====
int __fastcall lua_setlevel(int a1, int a2)
{
  int result; // r0

  result = *(unsigned __int16 *)(a1 + 52);
  *(_WORD *)(a2 + 52) = result;
  return result;
}


// ===== 84b11c lua_atpanic =====
int __fastcall lua_atpanic(int a1, int a2)
{
  int v2; // r3
  int result; // r0

  v2 = *(_DWORD *)(a1 + 16);
  result = *(_DWORD *)(v2 + 88);
  *(_DWORD *)(v2 + 88) = a2;
  return result;
}


// ===== 84b12c lua_gettop =====
int __fastcall lua_gettop(int a1)
{
  return (*(_DWORD *)(a1 + 8) - *(_DWORD *)(a1 + 12)) >> 3;
}


// ===== 84b140 lua_settop =====
int __fastcall lua_settop(int result, int a2)
{
  unsigned int v2; // r3
  int v3; // r1
  unsigned int i; // r2
  int v5; // r2

  if ( a2 < 0 )
  {
    *(_DWORD *)(result + 8) += 8 * (a2 + 1);
  }
  else
  {
    v2 = *(_DWORD *)(result + 8);
    v3 = 8 * a2;
    for ( i = *(_DWORD *)(result + 12) + v3; i > v2; i = v5 + v3 )
    {
      *(_DWORD *)(v2 + 4) = 0;
      v5 = *(_DWORD *)(result + 12);
      v2 += 8;
      *(_DWORD *)(result + 8) = v2;
    }
    *(_DWORD *)(result + 8) = i;
  }
  return result;
}


// ===== 84b19c lua_remove =====
_DWORD *__fastcall lua_remove(_DWORD *a1, int a2)
{
  _DWORD *result; // r0
  unsigned int v4; // r1
  _DWORD *i; // r3

  result = index2adr(a1, a2);
  v4 = a1[2];
  for ( i = result + 2; (unsigned int)i < v4; i += 2 )
  {
    *result = *i;
    result[1] = i[1];
    v4 = a1[2];
    result = i;
  }
  a1[2] = v4 - 8;
  return result;
}


// ===== 84b1ec lua_insert =====
_DWORD *__fastcall lua_insert(_DWORD *a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v4; // r3

  result = index2adr(a1, a2);
  v4 = (_DWORD *)a1[2];
  if ( result < v4 )
  {
    do
    {
      *v4 = *(v4 - 2);
      v4 -= 2;
      v4[3] = v4[1];
    }
    while ( result < v4 );
    v4 = (_DWORD *)a1[2];
  }
  *result = *v4;
  result[1] = v4[1];
  return result;
}


// ===== 84b234 lua_pushvalue =====
_DWORD *__fastcall lua_pushvalue(_DWORD *a1, int a2)
{
  _DWORD *result; // r0
  _DWORD *v4; // r3

  result = index2adr(a1, a2);
  v4 = (_DWORD *)a1[2];
  *v4 = *result;
  v4[1] = result[1];
  a1[2] += 8;
  return result;
}


// ===== 84b264 lua_type =====
int __fastcall lua_type(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0

  v2 = index2adr(a1, a2);
  if ( v2 == (_DWORD *)&luaO_nilobject_ )
    return -1;
  else
    return v2[1];
}


// ===== 84b288 lua_typename =====
const char *__fastcall lua_typename(int a1, int a2)
{
  if ( a2 == -1 )
    return "no value";
  else
    return luaT_typenames[a2];
}


// ===== 84b2b4 lua_iscfunction =====
bool __fastcall lua_iscfunction(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0

  v2 = index2adr(a1, a2);
  return v2[1] == 6 && *(_BYTE *)(*v2 + 6) != 0;
}


// ===== 84b2e4 lua_isstring =====
bool __fastcall lua_isstring(_DWORD *a1, int a2)
{
  return (unsigned int)(lua_type(a1, a2) - 3) <= 1;
}


// ===== 84b300 lua_isuserdata =====
bool __fastcall lua_isuserdata(_DWORD *a1, int a2)
{
  int v2; // r0
  bool v3; // zf

  v2 = index2adr(a1, a2)[1];
  v3 = v2 == 7;
  if ( v2 != 7 )
    return v2 == 2;
  return v3;
}


// ===== 84b320 lua_toboolean =====
bool __fastcall lua_toboolean(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0
  int v3; // r3

  v2 = index2adr(a1, a2);
  v3 = v2[1];
  if ( !v3 )
    return 0;
  if ( v3 == 1 )
    return *v2 != 0;
  return 1;
}


// ===== 84b35c lua_tocfunction =====
int __fastcall lua_tocfunction(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0

  v2 = index2adr(a1, a2);
  if ( v2[1] == 6 && *(_BYTE *)(*v2 + 6) )
    return *(_DWORD *)(*v2 + 16);
  else
    return 0;
}


// ===== 84b390 lua_touserdata =====
int __fastcall lua_touserdata(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0
  int v3; // r3
  int result; // r0

  v2 = index2adr(a1, a2);
  v3 = v2[1];
  if ( v3 == 2 )
    return *v2;
  if ( v3 == 7 )
    result = *v2;
  else
    result = 0;
  if ( v3 == 7 )
    result += 24;
  return result;
}


// ===== 84b3c0 lua_tothread =====
int __fastcall lua_tothread(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0

  v2 = index2adr(a1, a2);
  if ( v2[1] == 8 )
    return *v2;
  else
    return 0;
}


// ===== 84b3dc lua_topointer =====
int __fastcall lua_topointer(_DWORD *a1, int a2)
{
  int *v4; // r0
  int result; // r0

  v4 = index2adr(a1, a2);
  switch ( v4[1] )
  {
    case 2:
    case 7:
      result = lua_touserdata(a1, a2);
      break;
    case 5:
    case 6:
    case 8:
      result = *v4;
      break;
    default:
      result = 0;
      break;
  }
  return result;
}


// ===== 84b43c lua_pushnil =====
int __fastcall lua_pushnil(int result)
{
  *(_DWORD *)(*(_DWORD *)(result + 8) + 4) = 0;
  *(_DWORD *)(result + 8) += 8;
  return result;
}


// ===== 84b458 lua_pushnumber =====
int __fastcall lua_pushnumber(int result, int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(result + 8);
  v2[1] = 3;
  *v2 = a2;
  *(_DWORD *)(result + 8) += 8;
  return result;
}


// ===== 84b478 lua_pushinteger =====
float __fastcall lua_pushinteger(int a1, int a2)
{
  int v4; // r3

  v4 = *(_DWORD *)(a1 + 8);
  *(_DWORD *)(v4 + 4) = 3;
  *(float *)v4 = (float)a2;
  *(_DWORD *)(a1 + 8) += 8;
  return (float)a2;
}


// ===== 84b4a8 lua_pushboolean =====
__int64 __fastcall lua_pushboolean(__int64 result)
{
  _DWORD *v1; // r3

  v1 = *(_DWORD **)(result + 8);
  HIDWORD(result) = HIDWORD(result) != 0;
  *v1 = HIDWORD(result);
  v1[1] = 1;
  *(_DWORD *)(result + 8) += 8;
  return result;
}


// ===== 84b4cc lua_pushlightuserdata =====
int __fastcall lua_pushlightuserdata(int result, int a2)
{
  _DWORD *v2; // r3

  v2 = *(_DWORD **)(result + 8);
  *v2 = a2;
  v2[1] = 2;
  *(_DWORD *)(result + 8) += 8;
  return result;
}


// ===== 84b4e8 lua_pushthread =====
bool __fastcall lua_pushthread(int a1)
{
  _DWORD *v1; // r3
  int v2; // r3

  v1 = *(_DWORD **)(a1 + 8);
  *v1 = a1;
  v1[1] = 8;
  v2 = *(_DWORD *)(a1 + 16);
  *(_DWORD *)(a1 + 8) += 8;
  return *(_DWORD *)(v2 + 100) == a1;
}


// ===== 84b518 lua_getmetatable =====
_DWORD *__fastcall lua_getmetatable(_DWORD *a1, int a2)
{
  _DWORD *result; // r0
  int v4; // r1
  _DWORD *v5; // r2
  int v6; // r3
  int v7; // r3

  result = index2adr(a1, a2);
  v6 = result[1];
  if ( v6 == 5 || v6 == 7 )
  {
    v7 = *(_DWORD *)(*result + 8);
  }
  else
  {
    v5 = (_DWORD *)a1[4];
    v7 = v5[v6 + 31];
  }
  if ( v7 )
  {
    v5 = (_DWORD *)a1[2];
    v4 = 5;
  }
  else
  {
    result = nullptr;
  }
  if ( v7 )
  {
    *v5 = v7;
    v5[1] = v4;
    result = &dword_0 + 1;
    a1[2] += 8;
  }
  return result;
}


// ===== 84b57c lua_getfenv =====
_DWORD *__fastcall lua_getfenv(_DWORD *a1, int a2)
{
  _DWORD *result; // r0
  int v4; // r3
  _DWORD *v5; // r3
  int v6; // r2
  int v7; // r2
  _DWORD *v8; // r3

  result = index2adr(a1, a2);
  v4 = result[1];
  if ( v4 == 7 )
  {
LABEL_5:
    v5 = (_DWORD *)a1[2];
    v6 = *(_DWORD *)(*result + 12);
    v5[1] = 5;
    *v5 = v6;
    a1[2] += 8;
    return result;
  }
  if ( v4 != 8 )
  {
    if ( v4 != 6 )
    {
      *(_DWORD *)(a1[2] + 4) = 0;
      a1[2] += 8;
      return result;
    }
    goto LABEL_5;
  }
  v7 = *result;
  v8 = (_DWORD *)a1[2];
  *v8 = *(_DWORD *)(*result + 72);
  v8[1] = *(_DWORD *)(v7 + 76);
  a1[2] += 8;
  return result;
}


// ===== 84b610 lua_status =====
int __fastcall lua_status(int a1)
{
  return *(unsigned __int8 *)(a1 + 6);
}


// ===== 84b618 lua_getallocf =====
int __fastcall lua_getallocf(int a1, _DWORD *a2)
{
  if ( a2 )
    *a2 = *(_DWORD *)(*(_DWORD *)(a1 + 16) + 16);
  return *(_DWORD *)(*(_DWORD *)(a1 + 16) + 12);
}


// ===== 84b634 lua_setallocf =====
int __fastcall lua_setallocf(int result, int a2, int a3)
{
  *(_DWORD *)(*(_DWORD *)(result + 16) + 16) = a3;
  *(_DWORD *)(*(_DWORD *)(result + 16) + 12) = a2;
  return result;
}


// ===== 84b648 lua_getupvalue =====
char *__fastcall lua_getupvalue(_DWORD *a1, int a2, int a3)
{
  _DWORD *v5; // r0
  char *result; // r0
  int v7; // r3
  _DWORD *v8; // r5
  _DWORD *v9; // r3
  int v10; // r2

  v5 = index2adr(a1, a2);
  if ( v5[1] != 6 )
    return nullptr;
  v7 = *v5;
  if ( *(_BYTE *)(*v5 + 6) )
  {
    if ( a3 > 0 && a3 <= *(unsigned __int8 *)(v7 + 7) )
    {
      v8 = (_DWORD *)(v7 + 8 * a3 + 12);
      result = "";
LABEL_7:
      v9 = (_DWORD *)a1[2];
      *v9 = *v8;
      v9[1] = v8[1];
      a1[2] += 8;
      return result;
    }
    return nullptr;
  }
  v10 = *(_DWORD *)(v7 + 16);
  if ( a3 <= 0 || a3 > *(_DWORD *)(v10 + 36) )
    return nullptr;
  result = (char *)(*(_DWORD *)(*(_DWORD *)(v10 + 28) + 4 * (a3 - 1)) + 16);
  v8 = *(_DWORD **)(*(_DWORD *)(v7 + 4 * a3 + 16) + 8);
  if ( result )
    goto LABEL_7;
  return result;
}


// ===== 84b704 lua_setupvalue =====
char *__fastcall lua_setupvalue(_DWORD *a1, int a2, int a3)
{
  _DWORD *v5; // r0
  char *v6; // r4
  int v8; // r1
  _DWORD *v9; // r1
  _DWORD *v10; // r3
  int *v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r2

  v5 = index2adr(a1, a2);
  if ( v5[1] != 6 )
    return nullptr;
  v8 = *v5;
  if ( *(_BYTE *)(*v5 + 6) )
  {
    if ( a3 > 0 && a3 <= *(unsigned __int8 *)(v8 + 7) )
    {
      v9 = (_DWORD *)(v8 + 8 * a3 + 12);
      v6 = "";
      goto LABEL_8;
    }
    return nullptr;
  }
  v12 = *(_DWORD *)(v8 + 16);
  if ( a3 <= 0 || a3 > *(_DWORD *)(v12 + 36) )
    return nullptr;
  v13 = *(_DWORD *)(*(_DWORD *)(v12 + 28) + 4 * (a3 - 1));
  v14 = *(_DWORD *)(v8 + 4 * a3 + 16);
  v6 = (char *)(v13 + 16);
  v9 = *(_DWORD **)(v14 + 8);
  if ( v13 == -16 )
    return v6;
LABEL_8:
  v10 = (_DWORD *)(a1[2] - 8);
  a1[2] = v10;
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = (int *)a1[2];
  if ( v11[1] <= 3 || (*(_BYTE *)(*v11 + 5) & 3) == 0 || (*(_BYTE *)(*v5 + 5) & 4) == 0 )
    return v6;
  luaC_barrierf(a1);
  return v6;
}


// ===== 84b7fc lua_setfenv =====
int __fastcall lua_setfenv(_DWORD *a1, int a2)
{
  _DWORD *v3; // r0
  int v4; // r3
  int v6; // r3
  int v7; // r2
  int v8; // r3
  int v9; // r3
  int v10; // r2

  v3 = index2adr(a1, a2);
  v4 = v3[1];
  if ( v4 != 7 )
  {
    if ( v4 == 8 )
    {
      v9 = *v3;
      v10 = *(_DWORD *)(a1[2] - 8);
      *(_DWORD *)(v9 + 76) = 5;
      *(_DWORD *)(v9 + 72) = v10;
      goto LABEL_6;
    }
    if ( v4 != 6 )
    {
      a1[2] -= 8;
      return 0;
    }
  }
  *(_DWORD *)(*v3 + 12) = *(_DWORD *)(a1[2] - 8);
LABEL_6:
  v6 = a1[2];
  v7 = *(_DWORD *)(v6 - 8);
  v8 = v6 - 8;
  if ( (*(_BYTE *)(v7 + 5) & 3) != 0 && (*(_BYTE *)(*v3 + 5) & 4) != 0 )
  {
    luaC_barrierf(a1);
    a1[2] -= 8;
    return 1;
  }
  else
  {
    a1[2] = v8;
    return 1;
  }
}


// ===== 84b8b4 lua_newuserdata =====
int __fastcall lua_newuserdata(_DWORD *a1, int a2)
{
  _DWORD *v3; // r3
  _DWORD *v4; // r2
  bool v5; // zf
  int v6; // r0
  int *v7; // r3
  int v9; // [sp+4h] [bp-4h]

  if ( *(_DWORD *)(a1[4] + 68) >= *(_DWORD *)(a1[4] + 64) )
  {
    v9 = a2;
    luaC_step();
    a2 = v9;
  }
  v3 = (_DWORD *)a1[5];
  v4 = (_DWORD *)a1[10];
  v5 = v3 == v4;
  if ( v3 == v4 )
    v4 = (_DWORD *)a1[18];
  else
    v3 = (_DWORD *)v3[1];
  if ( !v5 )
  {
    v3 = (_DWORD *)*v3;
    v4 = (_DWORD *)v3[3];
  }
  v6 = luaS_newudata(a1, a2, v4, v3);
  v7 = (int *)a1[2];
  v7[1] = 7;
  *v7 = v6;
  a1[2] += 8;
  return v6 + 24;
}


// ===== 84b934 lua_concat =====
int __fastcall lua_concat(int result, int a2)
{
  int v3; // r4
  int *v4; // r5

  v3 = result;
  if ( a2 <= 1 )
  {
    if ( !a2 )
    {
      v4 = *(int **)(result + 8);
      result = luaS_newlstr(result, "", 0);
      *v4 = result;
      v4[1] = 4;
      *(_DWORD *)(v3 + 8) += 8;
    }
  }
  else
  {
    if ( *(_DWORD *)(*(_DWORD *)(result + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(result + 16) + 64) )
      luaC_step();
    result = luaV_concat(v3, a2, ((*(_DWORD *)(v3 + 8) - *(_DWORD *)(v3 + 12)) >> 3) - 1);
    *(_DWORD *)(v3 + 8) += 8 * (1 - a2);
  }
  return result;
}


// ===== 84b9d4 lua_pushlstring =====
int __fastcall lua_pushlstring(int a1, void *a2, size_t a3)
{
  int *v4; // r5
  int result; // r0
  size_t v6; // [sp+0h] [bp-Ch]
  void *v7; // [sp+4h] [bp-8h]

  if ( *(_DWORD *)(*(_DWORD *)(a1 + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(a1 + 16) + 64) )
  {
    v7 = a2;
    v6 = a3;
    luaC_step();
    a3 = v6;
    a2 = v7;
  }
  v4 = *(int **)(a1 + 8);
  result = luaS_newlstr(a1, a2, a3);
  *v4 = result;
  v4[1] = 4;
  *(_DWORD *)(a1 + 8) += 8;
  return result;
}


// ===== 84ba30 lua_next =====
int __fastcall lua_next(_DWORD *a1, int a2)
{
  _DWORD *v3; // r0
  int result; // r0
  int v5; // r3
  int v6; // r3

  v3 = index2adr(a1, a2);
  result = luaH_next(a1, *v3, a1[2] - 8);
  v5 = a1[2];
  if ( result )
    v6 = v5 + 8;
  else
    v6 = v5 - 8;
  a1[2] = v6;
  return result;
}


// ===== 84ba6c lua_error =====
void __noreturn lua_error()
{
  luaG_errormsg();
}


// ===== 84ba7c lua_gc =====
int __fastcall lua_gc(int a1, int a2, int a3)
{
  int v4; // r5
  int result; // r0
  unsigned int v6; // r3
  unsigned int v7; // r2
  unsigned int v8; // r2

  v4 = *(_DWORD *)(a1 + 16);
  switch ( a2 )
  {
    case 0:
      *(_DWORD *)(v4 + 64) = -3;
      result = 0;
      break;
    case 1:
      *(_DWORD *)(v4 + 64) = *(_DWORD *)(v4 + 68);
      result = 0;
      break;
    case 2:
      luaC_fullgc();
      result = 0;
      break;
    case 3:
      result = *(_DWORD *)(v4 + 68) >> 10;
      break;
    case 4:
      result = *(_DWORD *)(v4 + 68) & 0x3FF;
      break;
    case 5:
      v6 = *(_DWORD *)(v4 + 68);
      v7 = a3 << 10;
      if ( v7 > v6 )
        v8 = 0;
      else
        v8 = v6 - v7;
      *(_DWORD *)(v4 + 64) = v8;
      while ( v6 >= v8 )
      {
        luaC_step(a1);
        if ( !*(_BYTE *)(v4 + 21) )
          return 1;
        v8 = *(_DWORD *)(v4 + 64);
        v6 = *(_DWORD *)(v4 + 68);
      }
      result = 0;
      break;
    case 6:
      result = *(_DWORD *)(v4 + 80);
      *(_DWORD *)(v4 + 80) = a3;
      break;
    case 7:
      result = *(_DWORD *)(v4 + 84);
      *(_DWORD *)(v4 + 84) = a3;
      break;
    default:
      result = -1;
      break;
  }
  return result;
}


// ===== 84bb6c lua_dump =====
int __fastcall lua_dump(int a1)
{
  int v1; // r12

  v1 = *(_DWORD *)(a1 + 8);
  if ( *(_DWORD *)(v1 - 4) != 6 || *(_BYTE *)(*(_DWORD *)(v1 - 8) + 6) )
    return 1;
  else
    return luaU_dump(a1);
}


// ===== 84bbbc lua_load =====
int __fastcall lua_load(int a1, int a2, int a3, const char *a4)
{
  const char *v4; // r6
  _BYTE v7[20]; // [sp+4h] [bp-14h] BYREF

  v4 = a4;
  if ( !a4 )
    v4 = "?";
  luaZ_init(a1, v7, a2);
  return luaD_protectedparser(a1, v7, v4);
}


// ===== 84bc10 lua_cpcall =====
int __fastcall lua_cpcall(int a1, int a2, int a3)
{
  int v3; // r12
  int v4; // r3
  _DWORD v6[3]; // [sp+8h] [bp-Ch] BYREF

  v3 = *(_DWORD *)(a1 + 8);
  v4 = *(_DWORD *)(a1 + 32);
  v6[0] = a2;
  v6[1] = a3;
  return ((int (__fastcall *)(int, int (*)(), _DWORD *, int, _DWORD))luaD_pcall)(a1, f_Ccall, v6, v3 - v4, 0);
}


// ===== 84bc50 lua_pcall =====
int __fastcall lua_pcall(_DWORD *a1, int a2, int a3, int a4)
{
  char *v4; // lr
  int v8; // r3
  int result; // r0
  int v10; // r3
  unsigned int v11; // r2
  _DWORD *v12; // r0
  _DWORD v13[2]; // [sp+8h] [bp-8h] BYREF

  v4 = (char *)a4;
  if ( a4 )
  {
    v12 = index2adr(a1, a4);
    v8 = a1[8];
    v4 = (char *)v12 - v8;
  }
  else
  {
    v8 = a1[8];
  }
  v13[0] = a1[2] + 8 * ~a2;
  v13[1] = a3;
  result = luaD_pcall(a1, f_call, v13, v13[0] - v8, v4);
  if ( a3 == -1 )
  {
    v10 = a1[5];
    v11 = a1[2];
    if ( v11 >= *(_DWORD *)(v10 + 8) )
      *(_DWORD *)(v10 + 8) = v11;
  }
  return result;
}


// ===== 84bcdc lua_pushcclosure =====
int __fastcall lua_pushcclosure(_DWORD *a1, int a2, int a3)
{
  _DWORD *v6; // r3
  _DWORD *v7; // r2
  bool v8; // zf
  int result; // r0
  int *v10; // r1
  int v11; // r2
  int v12; // r3
  int v13; // r12
  int v14; // r1

  if ( *(_DWORD *)(a1[4] + 68) >= *(_DWORD *)(a1[4] + 64) )
    luaC_step(a1);
  v6 = (_DWORD *)a1[5];
  v7 = (_DWORD *)a1[10];
  v8 = v6 == v7;
  if ( v6 == v7 )
    v7 = (_DWORD *)a1[18];
  else
    v6 = (_DWORD *)v6[1];
  if ( !v8 )
  {
    v6 = (_DWORD *)*v6;
    v7 = (_DWORD *)v6[3];
  }
  result = luaF_newCclosure(a1, a3, v7, v6);
  *(_DWORD *)(result + 16) = a2;
  v10 = (int *)(a1[2] - 8 * a3);
  a1[2] = v10;
  if ( a3 )
  {
    v11 = 2 * (a3 - 1);
    v12 = result + 8 * a3 + 20;
    v13 = 0;
    while ( 1 )
    {
      ++v13;
      *(_DWORD *)(v12 - 8) = v10[v11];
      v14 = v10[v11 + 1];
      v11 -= 2;
      *(_DWORD *)(v12 - 4) = v14;
      v12 -= 8;
      if ( a3 == v13 )
        break;
      v10 = (int *)a1[2];
    }
    v10 = (int *)a1[2];
  }
  *v10 = result;
  v10[1] = 6;
  a1[2] += 8;
  return result;
}


// ===== 84bda8 f_Ccall =====
int __fastcall f_Ccall(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v2; // r3
  _DWORD *v3; // r2
  bool v5; // zf
  int v7; // r1
  int *v8; // r3
  _DWORD *v9; // r3
  int v10; // r1

  v2 = (_DWORD *)a1[5];
  v3 = (_DWORD *)a1[10];
  v5 = v2 == v3;
  if ( v2 == v3 )
    v3 = (_DWORD *)a1[18];
  else
    v2 = (_DWORD *)v2[1];
  if ( !v5 )
  {
    v2 = (_DWORD *)*v2;
    v3 = (_DWORD *)v2[3];
  }
  v7 = luaF_newCclosure(a1, 0, v3, v2);
  *(_DWORD *)(v7 + 16) = *a2;
  v8 = (int *)a1[2];
  *v8 = v7;
  v8[1] = 6;
  v9 = (_DWORD *)(a1[2] + 8);
  a1[2] = v9;
  *v9 = a2[1];
  v9[1] = 2;
  v10 = a1[2];
  a1[2] = v10 + 8;
  return luaD_call(a1, v10 - 8, 0);
}


// ===== 84be2c f_call =====
int __fastcall f_call(int a1, _DWORD *a2)
{
  return luaD_call(a1, *a2, a2[1]);
}


// ===== 84be34 lua_call =====
int __fastcall lua_call(int a1, int a2, int a3)
{
  int result; // r0
  int v6; // r3
  unsigned int v7; // r2

  result = luaD_call(a1, *(_DWORD *)(a1 + 8) + 8 * ~a2, a3);
  if ( a3 == -1 )
  {
    v6 = *(_DWORD *)(a1 + 20);
    v7 = *(_DWORD *)(a1 + 8);
    if ( v7 >= *(_DWORD *)(v6 + 8) )
      *(_DWORD *)(v6 + 8) = v7;
  }
  return result;
}


// ===== 84be70 lua_setmetatable =====
int __fastcall lua_setmetatable(_DWORD *a1, int a2)
{
  _DWORD *v3; // r0
  int v4; // r3
  int v5; // r2
  int v6; // r3

  v3 = index2adr(a1, a2);
  v4 = a1[2];
  v5 = *(_DWORD *)(v4 - 4);
  if ( v5 )
    v5 = *(_DWORD *)(v4 - 8);
  v6 = v3[1];
  if ( v6 == 5 )
  {
    *(_DWORD *)(*v3 + 8) = v5;
    if ( v5 && (*(_BYTE *)(v5 + 5) & 3) != 0 && (*(_BYTE *)(*v3 + 5) & 4) != 0 )
      luaC_barrierback(a1);
  }
  else if ( v6 == 7 )
  {
    *(_DWORD *)(*v3 + 8) = v5;
    if ( v5 && (*(_BYTE *)(v5 + 5) & 3) != 0 && (*(_BYTE *)(*v3 + 5) & 4) != 0 )
      luaC_barrierf(a1);
  }
  else
  {
    *(_DWORD *)(a1[4] + 4 * v6 + 124) = v5;
  }
  a1[2] -= 8;
  return 1;
}


// ===== 84bf30 lua_rawseti =====
_DWORD *__fastcall lua_rawseti(_DWORD *a1, int a2, int a3)
{
  _DWORD *v5; // r6
  int v6; // r5
  _DWORD *result; // r0
  int v8; // r2

  v5 = index2adr(a1, a2);
  v6 = a1[2];
  result = (_DWORD *)luaH_setnum(a1, *v5, a3);
  *result = *(_DWORD *)(v6 - 8);
  result[1] = *(_DWORD *)(v6 - 4);
  v8 = a1[2];
  if ( *(int *)(v8 - 4) > 3 && (*(_BYTE *)(*(_DWORD *)(v8 - 8) + 5) & 3) != 0 && (*(_BYTE *)(*v5 + 5) & 4) != 0 )
  {
    result = (_DWORD *)luaC_barrierback(a1);
    a1[2] -= 8;
  }
  else
  {
    a1[2] = v8 - 8;
  }
  return result;
}


// ===== 84bfc0 lua_rawset =====
_DWORD *__fastcall lua_rawset(_DWORD *a1, int a2)
{
  _DWORD *v3; // r0
  int v4; // r5
  _DWORD *v5; // r6
  _DWORD *result; // r0
  int v7; // r3

  v3 = index2adr(a1, a2);
  v4 = a1[2];
  v5 = v3;
  result = (_DWORD *)luaH_set(a1, *v3, v4 - 16);
  *result = *(_DWORD *)(v4 - 8);
  result[1] = *(_DWORD *)(v4 - 4);
  v7 = a1[2];
  if ( *(int *)(v7 - 4) > 3 && (*(_BYTE *)(*(_DWORD *)(v7 - 8) + 5) & 3) != 0 && (*(_BYTE *)(*v5 + 5) & 4) != 0 )
  {
    result = (_DWORD *)luaC_barrierback(a1);
    a1[2] -= 16;
  }
  else
  {
    a1[2] = v7 - 16;
  }
  return result;
}


// ===== 84c04c lua_pushstring =====
int __fastcall lua_pushstring(int a1, char *a2)
{
  size_t v4; // r0

  if ( !a2 )
    return lua_pushnil(a1);
  v4 = LC_API_STRLEN_0(a2);
  return lua_pushlstring(a1, a2, v4);
}


// ===== 84c080 lua_setfield =====
int __fastcall lua_setfield(_DWORD *a1, int a2, char *a3)
{
  _DWORD *v5; // r5
  size_t v6; // r0
  int v7; // r0
  int v8; // r3
  int result; // r0
  _DWORD v10[2]; // [sp+0h] [bp-8h] BYREF

  v5 = index2adr(a1, a2);
  v6 = LC_API_STRLEN_0(a3);
  v7 = luaS_newlstr((int)a1, a3, v6);
  v8 = a1[2];
  v10[0] = v7;
  v10[1] = 4;
  result = ((int (__fastcall *)(_DWORD *, _DWORD *, _DWORD *, int))luaV_settable)(a1, v5, v10, v8 - 8);
  a1[2] -= 8;
  return result;
}


// ===== 84c0e8 lua_settable =====
int __fastcall lua_settable(_DWORD *a1, int a2)
{
  _DWORD *v3; // r0
  int result; // r0

  v3 = index2adr(a1, a2);
  result = luaV_settable(a1, v3, a1[2] - 16, a1[2] - 8);
  a1[2] -= 16;
  return result;
}


// ===== 84c11c lua_createtable =====
int __fastcall lua_createtable(int a1, int a2, int a3)
{
  int *v4; // r5
  int result; // r0
  int v6; // [sp+0h] [bp-Ch]
  int v7; // [sp+4h] [bp-8h]

  if ( *(_DWORD *)(*(_DWORD *)(a1 + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(a1 + 16) + 64) )
  {
    v7 = a2;
    v6 = a3;
    luaC_step(a1);
    a3 = v6;
    a2 = v7;
  }
  v4 = *(int **)(a1 + 8);
  result = luaH_new(a1, a2, a3);
  *v4 = result;
  v4[1] = 5;
  *(_DWORD *)(a1 + 8) += 8;
  return result;
}


// ===== 84c178 lua_rawgeti =====
_DWORD *__fastcall lua_rawgeti(_DWORD *a1, int a2, int a3)
{
  _DWORD *v5; // r0
  _DWORD *result; // r0
  _DWORD *v7; // r3

  v5 = index2adr(a1, a2);
  result = (_DWORD *)luaH_getnum(*v5, a3);
  v7 = (_DWORD *)a1[2];
  *v7 = *result;
  v7[1] = result[1];
  a1[2] += 8;
  return result;
}


// ===== 84c1b8 lua_rawget =====
_DWORD *__fastcall lua_rawget(_DWORD *a1, int a2)
{
  _DWORD *v3; // r0
  _DWORD *result; // r0
  int v5; // r3

  v3 = index2adr(a1, a2);
  result = (_DWORD *)luaH_get(*v3, a1[2] - 8);
  v5 = a1[2];
  *(_DWORD *)(v5 - 8) = *result;
  *(_DWORD *)(v5 - 4) = result[1];
  return result;
}


// ===== 84c1ec lua_getfield =====
int __fastcall lua_getfield(_DWORD *a1, int a2, char *a3)
{
  _DWORD *v5; // r5
  size_t v6; // r0
  int v7; // r3
  int result; // r0
  _DWORD v9[2]; // [sp+0h] [bp-8h] BYREF

  v5 = index2adr(a1, a2);
  v6 = LC_API_STRLEN_0(a3);
  v9[0] = luaS_newlstr((int)a1, a3, v6);
  v7 = a1[2];
  v9[1] = 4;
  result = ((int (__fastcall *)(_DWORD *, _DWORD *, _DWORD *, int))luaV_gettable)(a1, v5, v9, v7);
  a1[2] += 8;
  return result;
}


// ===== 84c250 lua_gettable =====
int __fastcall lua_gettable(_DWORD *a1, int a2, int a3, int a4, int a5, int a6)
{
  _DWORD *v7; // r1

  v7 = index2adr(a1, a2);
  return luaV_gettable(a1, v7, a1[2] - 8, a1[2] - 8, a5, a6);
}


// ===== 84c278 lua_pushvfstring =====
int __fastcall lua_pushvfstring(int a1, int a2, int a3)
{
  int v5; // [sp+0h] [bp-8h]
  int v6; // [sp+4h] [bp-4h]

  if ( *(_DWORD *)(*(_DWORD *)(a1 + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(a1 + 16) + 64) )
  {
    v6 = a2;
    v5 = a3;
    luaC_step(a1);
    a3 = v5;
    a2 = v6;
  }
  return luaO_pushvfstring(a1, a2, a3);
}


// ===== 84c2bc lua_pushfstring =====
int lua_pushfstring(int a1, int a2, ...)
{
  va_list varg_r2; // [sp+18h] [bp+Ch] BYREF

  va_start(varg_r2, a2);
  if ( *(_DWORD *)(*(_DWORD *)(a1 + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(a1 + 16) + 64) )
    luaC_step(a1);
  return luaO_pushvfstring(a1, a2, (char *)&varg_r2);
}


// ===== 84c30c lua_objlen =====
int __fastcall lua_objlen(_DWORD *a1, int a2)
{
  _DWORD *v3; // r0
  _DWORD *v4; // r4
  int result; // r0

  v3 = index2adr(a1, a2);
  v4 = v3;
  switch ( v3[1] )
  {
    case 3:
      if ( !luaV_tostring(a1, v3) )
        goto LABEL_4;
      goto LABEL_3;
    case 4:
LABEL_3:
      result = *(_DWORD *)(*v4 + 12);
      break;
    case 5:
      result = luaH_getn(*v3);
      break;
    case 7:
      result = *(_DWORD *)(*v3 + 16);
      break;
    default:
LABEL_4:
      result = 0;
      break;
  }
  return result;
}


// ===== 84c384 lua_tolstring =====
int __fastcall lua_tolstring(_DWORD *a1, int a2, _DWORD *a3)
{
  _DWORD *v6; // r0
  int result; // r0

  v6 = index2adr(a1, a2);
  if ( v6[1] != 4 )
  {
    result = luaV_tostring(a1, v6);
    if ( !result )
    {
      if ( !a3 )
        return 0;
      *a3 = 0;
      return result;
    }
    if ( *(_DWORD *)(a1[4] + 68) >= *(_DWORD *)(a1[4] + 64) )
      luaC_step(a1);
    v6 = index2adr(a1, a2);
  }
  if ( a3 )
    *a3 = *(_DWORD *)(*v6 + 12);
  return *v6 + 16;
}


// ===== 84c410 lua_tointeger =====
int __fastcall lua_tointeger(_DWORD *a1, int a2)
{
  float *v2; // r0
  int v3; // r2
  float *v4; // r3
  int v6; // [sp+0h] [bp-Ch] BYREF

  v2 = (float *)index2adr(a1, a2);
  v3 = *((_DWORD *)v2 + 1);
  v4 = v2;
  if ( v3 == 3 )
    return (int)*v4;
  v4 = (float *)luaV_tonumber(v2, &v6, v3, v2);
  if ( v4 )
    return (int)*v4;
  else
    return 0;
}


// ===== 84c450 lua_tonumber =====
int __fastcall lua_tonumber(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0
  int v3; // r2
  int v4; // r3
  int v6; // [sp+0h] [bp-Ch] BYREF

  v2 = index2adr(a1, a2);
  v3 = v2[1];
  v4 = (int)v2;
  if ( v3 == 3 )
    return *(_DWORD *)v4;
  v4 = luaV_tonumber(v2, &v6, v3, v2);
  if ( v4 )
    return *(_DWORD *)v4;
  else
    return 0;
}


// ===== 84c48c lua_isnumber =====
bool __fastcall lua_isnumber(_DWORD *a1, int a2)
{
  _DWORD *v2; // r0
  int v3; // r2
  int v4; // r3
  int v6; // [sp+0h] [bp-Ch] BYREF

  v2 = index2adr(a1, a2);
  v4 = v2[1];
  return v4 == 3 || luaV_tonumber(v2, &v6, v3, v4) != 0;
}


// ===== 84c4c0 lua_lessthan =====
int __fastcall lua_lessthan(_DWORD *a1, int a2, int a3)
{
  _DWORD *v5; // r4
  _DWORD *v6; // r0

  v5 = index2adr(a1, a2);
  v6 = index2adr(a1, a3);
  if ( v5 == (_DWORD *)&luaO_nilobject_ || v6 == (_DWORD *)&luaO_nilobject_ )
    return 0;
  else
    return luaV_lessthan(a1, v5, v6);
}


// ===== 84c518 lua_equal =====
bool __fastcall lua_equal(_DWORD *a1, int a2, int a3)
{
  _DWORD *v5; // r4
  _DWORD *v6; // r0

  v5 = index2adr(a1, a2);
  v6 = index2adr(a1, a3);
  return v5 != (_DWORD *)&luaO_nilobject_
      && v6 != (_DWORD *)&luaO_nilobject_
      && v5[1] == v6[1]
      && luaV_equalval(a1, v5, v6) != 0;
}


// ===== 84c588 lua_rawequal =====
int __fastcall lua_rawequal(_DWORD *a1, int a2, int a3)
{
  _DWORD *v5; // r4
  _DWORD *v6; // r0

  v5 = index2adr(a1, a2);
  v6 = index2adr(a1, a3);
  if ( v5 == (_DWORD *)&luaO_nilobject_ || v6 == (_DWORD *)&luaO_nilobject_ )
    return 0;
  else
    return luaO_rawequalObj(v5, v6);
}


// ===== 84c5dc lua_replace =====
int __fastcall lua_replace(_DWORD *a1, int a2)
{
  int result; // r0
  int v5; // r2
  int v6; // r2
  int v7; // r3
  int v8; // r1
  int v9; // r2

  if ( a2 == -10001 )
  {
    if ( a1[5] == a1[10] )
      luaG_runerror();
    index2adr(a1, -10001);
    v8 = **(_DWORD **)(a1[5] + 4);
    *(_DWORD *)(v8 + 12) = *(_DWORD *)(a1[2] - 8);
    v9 = a1[2];
    v7 = v9 - 8;
    result = *(_DWORD *)(v9 - 4);
    if ( result <= 3 )
      goto LABEL_12;
    result = *(unsigned __int8 *)(*(_DWORD *)(v9 - 8) + 5);
    if ( (result & 3) == 0 )
      goto LABEL_12;
    goto LABEL_9;
  }
  result = (int)index2adr(a1, a2);
  v5 = a1[2];
  *(_DWORD *)result = *(_DWORD *)(v5 - 8);
  *(_DWORD *)(result + 4) = *(_DWORD *)(v5 - 4);
  if ( a2 >= -10002 )
  {
LABEL_11:
    v7 = a1[2] - 8;
    goto LABEL_12;
  }
  v6 = a1[2];
  v7 = v6 - 8;
  if ( *(int *)(v6 - 4) > 3 && (*(_BYTE *)(*(_DWORD *)(v6 - 8) + 5) & 3) != 0 )
  {
    v8 = **(_DWORD **)(a1[5] + 4);
LABEL_9:
    result = *(unsigned __int8 *)(v8 + 5);
    if ( (result & 4) != 0 )
    {
      result = luaC_barrierf(a1);
      goto LABEL_11;
    }
  }
LABEL_12:
  a1[2] = v7;
  return result;
}


// ===== 84c6e8 lua_newthread =====
int __fastcall lua_newthread(int a1)
{
  int result; // r0
  int *v3; // r3

  if ( *(_DWORD *)(*(_DWORD *)(a1 + 16) + 68) >= *(_DWORD *)(*(_DWORD *)(a1 + 16) + 64) )
    luaC_step(a1);
  result = luaE_newthread(a1);
  v3 = *(int **)(a1 + 8);
  *v3 = result;
  v3[1] = 8;
  *(_DWORD *)(a1 + 8) += 8;
  return result;
}


// ===== 84c72c lua_checkstack =====
int __fastcall lua_checkstack(_DWORD *a1, int a2)
{
  int v3; // r2
  int v4; // r5
  int v5; // r1
  unsigned int v6; // r2

  if ( a2 > 8000 )
    return 0;
  v3 = a1[2];
  if ( a2 + ((v3 - a1[3]) >> 3) > 8000 )
    return 0;
  if ( a2 <= 0 )
    return 1;
  v4 = 8 * a2;
  if ( a1[7] - v3 <= 8 * a2 )
  {
    luaD_growstack();
    v3 = a1[2];
  }
  v5 = a1[5];
  v6 = v3 + v4;
  if ( *(_DWORD *)(v5 + 8) >= v6 )
    return 1;
  *(_DWORD *)(v5 + 8) = v6;
  return 1;
}


// ===== 84c7ac luaL_buffinit =====
int __fastcall luaL_buffinit(int result, _DWORD *a2)
{
  a2[1] = 0;
  a2[2] = result;
  *a2 = a2 + 3;
  return result;
}


// ===== 84c7c4 getS =====
int __fastcall getS(int a1, int *a2, _DWORD *a3)
{
  int result; // r0

  result = a2[1];
  if ( result )
  {
    *a3 = result;
    result = *a2;
    a2[1] = 0;
  }
  return result;
}


// ===== 84c7e0 luaL_newstate =====
int luaL_newstate()
{
  int v0; // r0
  int v1; // r4

  v0 = lua_newstate(l_alloc, 0);
  v1 = v0;
  if ( v0 )
    lua_atpanic(v0, (int)panic);
  return v1;
}


// ===== 84c818 panic =====
void __fastcall __noreturn panic(_DWORD *a1)
{
  const char *v1; // r0

  v1 = (const char *)lua_tolstring(a1, -1, nullptr);
  fprintf((FILE *)&_sF + 2, "PANIC: unprotected error in call to Lua API (%s)\n", v1);
}


// ===== 84c860 l_alloc =====
void *__fastcall l_alloc(int a1, void *p, int a3, size_t a4)
{
  if ( a4 )
    return realloc(p, a4);
  free(p);
  return nullptr;
}


// ===== 84c88c luaL_loadbuffer =====
int __fastcall luaL_loadbuffer(int a1, int a2, int a3, const char *a4)
{
  _DWORD v5[3]; // [sp+0h] [bp-Ch] BYREF

  v5[0] = a2;
  v5[1] = a3;
  return lua_load(a1, (int)getS, (int)v5, a4);
}


// ===== 84c8b8 luaL_loadstring =====
int __fastcall luaL_loadstring(int a1, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return luaL_loadbuffer(a1, (int)a2, v4, a2);
}


// ===== 84c8e4 luaL_unref =====
_DWORD *__fastcall luaL_unref(_DWORD *result, unsigned int a2, int a3)
{
  int v4; // r4
  _DWORD *v5; // r5

  v4 = a2;
  v5 = result;
  if ( a3 >= 0 )
  {
    if ( a2 == 0 || a2 >= 0xFFFFD8F1 )
      v4 = a2 + 1 + lua_gettop((int)result);
    lua_rawgeti(v5, v4, 0);
    lua_rawseti(v5, v4, a3);
    lua_pushinteger((int)v5, a3);
    return lua_rawseti(v5, v4, 0);
  }
  return result;
}


// ===== 84c960 luaL_ref =====
int __fastcall luaL_ref(_DWORD *a1, unsigned int a2)
{
  int v2; // r5
  int v4; // r6

  v2 = a2;
  if ( a2 == 0 || a2 >= 0xFFFFD8F1 )
    v2 = a2 + 1 + lua_gettop((int)a1);
  if ( lua_type(a1, -1) )
  {
    lua_rawgeti(a1, v2, 0);
    v4 = lua_tointeger(a1, -1);
    lua_settop((int)a1, -2);
    if ( v4 )
    {
      lua_rawgeti(a1, v2, v4);
      lua_rawseti(a1, v2, 0);
    }
    else
    {
      v4 = lua_objlen(a1, v2) + 1;
    }
    lua_rawseti(a1, v2, v4);
  }
  else
  {
    lua_settop((int)a1, -2);
    return -1;
  }
  return v4;
}


// ===== 84ca38 emptybuffer =====
int __fastcall emptybuffer(_DWORD *a1)
{
  char *v2; // r0
  int v4; // r3

  v2 = (char *)*a1;
  if ( v2 == (char *)(a1 + 3) )
    return v2 - (char *)(a1 + 3);
  lua_pushlstring(a1[2], a1 + 3, v2 - (char *)(a1 + 3));
  v4 = a1[1];
  *a1 = a1 + 3;
  a1[1] = v4 + 1;
  return 1;
}


// ===== 84ca7c adjuststack =====
int __fastcall adjuststack(int result)
{
  int v1; // r6
  _DWORD *v2; // r7
  int v3; // r4
  unsigned int v4; // r5
  unsigned int v5; // r0
  int v6; // r3
  int v7; // r2

  v1 = result;
  if ( *(int *)(result + 4) > 1 )
  {
    v2 = *(_DWORD **)(result + 8);
    v3 = 1;
    v4 = lua_objlen(v2, -1);
    do
    {
      v5 = lua_objlen(v2, ~v3);
      v6 = *(_DWORD *)(v1 + 4);
      v7 = v4 > v5;
      v4 += v5;
      if ( v6 - v3 > 8 )
        v7 |= 1u;
      if ( !v7 )
        break;
      ++v3;
    }
    while ( v6 > v3 );
    result = lua_concat((int)v2, v3);
    *(_DWORD *)(v1 + 4) = *(_DWORD *)(v1 + 4) + 1 - v3;
  }
  return result;
}


// ===== 84cb08 luaL_addvalue =====
int __fastcall luaL_addvalue(int a1)
{
  _DWORD *v1; // r5
  const void *v3; // r0
  size_t v5[2]; // [sp+4h] [bp-8h] BYREF

  v1 = *(_DWORD **)(a1 + 8);
  v3 = (const void *)lua_tolstring(v1, -1, v5);
  if ( a1 + 1036 - *(_DWORD *)a1 >= v5[0] )
  {
    memcpy(*(void **)a1, v3, v5[0]);
    *(_DWORD *)a1 += v5[0];
    return lua_settop((int)v1, -2);
  }
  else
  {
    if ( emptybuffer((_DWORD *)a1) )
      lua_insert(v1, -2);
    ++*(_DWORD *)(a1 + 4);
    return adjuststack(a1);
  }
}


// ===== 84cbac luaL_prepbuffer =====
_DWORD *__fastcall luaL_prepbuffer(_DWORD *a1)
{
  if ( emptybuffer(a1) )
    adjuststack((int)a1);
  return a1 + 3;
}


// ===== 84cbd0 luaL_addlstring =====
_DWORD *__fastcall luaL_addlstring(_DWORD *result, int a2, int a3)
{
  _DWORD *v4; // r4
  _BYTE *v6; // r3
  int v7; // r6
  _DWORD *v8; // r8
  char v9; // r2
  char v10; // r2
  _BYTE *v11; // r3

  v4 = result;
  if ( a3 )
  {
    v6 = (_BYTE *)*result;
    v7 = 0;
    v8 = result + 259;
    do
    {
      while ( v6 < (_BYTE *)v8 )
      {
        v9 = *(_BYTE *)(a2 + v7++);
        *v6++ = v9;
        *v4 = v6;
        if ( a3 == v7 )
          return result;
      }
      result = luaL_prepbuffer(v4);
      v10 = *(_BYTE *)(a2 + v7);
      v11 = (_BYTE *)*v4;
      ++v7;
      *v11 = v10;
      v6 = v11 + 1;
      *v4 = v6;
    }
    while ( a3 != v7 );
  }
  return result;
}


// ===== 84cc40 luaL_addstring =====
_DWORD *__fastcall luaL_addstring(_DWORD *a1, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return luaL_addlstring(a1, (int)a2, v4);
}


// ===== 84cc68 luaL_pushresult =====
int __fastcall luaL_pushresult(_DWORD *a1)
{
  int result; // r0

  emptybuffer(a1);
  result = lua_concat(a1[2], a1[1]);
  a1[1] = 1;
  return result;
}


// ===== 84cc8c luaL_findtable =====
char *__fastcall luaL_findtable(_DWORD *a1, int a2, char *a3, int a4)
{
  char *v7; // r6
  int v9; // r2

  lua_pushvalue(a1, a2);
  while ( 1 )
  {
    v7 = strchr(a3, 46);
    if ( !v7 )
      v7 = &a3[LC_API_STRLEN_0(a3)];
    lua_pushlstring((int)a1, a3, v7 - a3);
    lua_rawget(a1, -2);
    if ( !lua_type(a1, -1) )
    {
      lua_settop((int)a1, -2);
      if ( *v7 == 46 )
        v9 = 1;
      else
        v9 = a4;
      lua_createtable((int)a1, 0, v9);
      lua_pushlstring((int)a1, a3, v7 - a3);
      lua_pushvalue(a1, -2);
      lua_settable(a1, -4);
      goto LABEL_4;
    }
    if ( lua_type(a1, -1) != 5 )
      break;
LABEL_4:
    lua_remove(a1, -2);
    a3 = v7 + 1;
    if ( *v7 != 46 )
      return nullptr;
  }
  lua_settop((int)a1, -3);
  return a3;
}


// ===== 84cd9c luaL_gsub =====
int __fastcall luaL_gsub(_DWORD *a1, char *a2, char *a3, char *a4)
{
  size_t v8; // r8
  char *v9; // r0
  char *v10; // r7
  _DWORD v12[259]; // [sp+8h] [bp-414h] BYREF

  v8 = LC_API_STRLEN_0(a3);
  luaL_buffinit((int)a1, v12);
  while ( 1 )
  {
    v9 = LC_API_STRSTR_0(a2, a3);
    v10 = v9;
    if ( !v9 )
      break;
    luaL_addlstring(v12, (int)a2, v9 - a2);
    luaL_addstring(v12, a4);
    a2 = &v10[v8];
  }
  luaL_addstring(v12, a2);
  luaL_pushresult(v12);
  return lua_tolstring(a1, -1, nullptr);
}


// ===== 84ce7c luaL_newmetatable =====
int __fastcall luaL_newmetatable(_DWORD *a1, char *a2)
{
  lua_getfield(a1, -10000, a2);
  if ( lua_type(a1, -1) )
    return 0;
  lua_settop((int)a1, -2);
  lua_createtable((int)a1, 0, 0);
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -10000, a2);
  return 1;
}


// ===== 84cef8 luaL_getmetafield =====
_DWORD *__fastcall luaL_getmetafield(_DWORD *a1, int a2, char *a3)
{
  _DWORD *result; // r0

  result = lua_getmetatable(a1, a2);
  if ( result )
  {
    lua_pushstring((int)a1, a3);
    lua_rawget(a1, -2);
    if ( lua_type(a1, -1) )
    {
      lua_remove(a1, -2);
      return &dword_0 + 1;
    }
    else
    {
      lua_settop((int)a1, -3);
      return nullptr;
    }
  }
  return result;
}


// ===== 84cf68 luaL_callmeta =====
_DWORD *__fastcall luaL_callmeta(_DWORD *a1, int a2, char *a3)
{
  int v3; // r4
  _DWORD *result; // r0
  char *v6; // [sp+4h] [bp-8h]

  v3 = a2;
  if ( (unsigned int)(a2 + 9999) <= 0x270F )
  {
    v6 = a3;
    v3 = a2 + 1 + lua_gettop((int)a1);
    a3 = v6;
  }
  result = luaL_getmetafield(a1, v3, a3);
  if ( result )
  {
    lua_pushvalue(a1, v3);
    lua_call((int)a1, 1, 1);
    return &dword_0 + 1;
  }
  return result;
}


// ===== 84cfe0 luaL_where =====
int __fastcall luaL_where(int a1, int a2)
{
  int v4; // [sp+0h] [bp-6Ch] BYREF
  int v5; // [sp+14h] [bp-58h]
  char v6[64]; // [sp+24h] [bp-48h] BYREF

  if ( lua_getstack(a1, a2, &v4) && (lua_getinfo(a1, "Sl"), v5 > 0) )
    return lua_pushfstring(a1, (int)"%s:%d: ", v6, v5);
  else
    return lua_pushlstring(a1, "", 0);
}


// ===== 84d098 luaL_error =====
void __noreturn luaL_error(int a1, int a2, ...)
{
  va_list varg_r2; // [sp+18h] [bp+Ch] BYREF

  va_start(varg_r2, a2);
  luaL_where(a1, 1);
  lua_pushvfstring(a1, a2, (int)&varg_r2);
  lua_concat(a1, 2);
  lua_error();
}


// ===== 84d0ec luaL_openlib =====
int __fastcall luaL_openlib(_DWORD *a1, char *a2, int *a3, int a4)
{
  int *v6; // r7
  int v8; // r10
  int v9; // r6
  int v10; // r9
  int v11; // t1

  v6 = a3;
  if ( a2 )
  {
    v9 = *a3;
    if ( *a3 )
    {
      v9 = 0;
      do
        ++v9;
      while ( a3[2 * v9] );
    }
    luaL_findtable(a1, -10000, "_LOADED", 1);
    lua_getfield(a1, -1, a2);
    if ( lua_type(a1, -1) != 5 )
    {
      lua_settop((int)a1, -2);
      if ( luaL_findtable(a1, -10002, a2, v9) )
        luaL_error((int)a1, (int)"name conflict for module '%s'", a2);
      lua_pushvalue(a1, -1);
      lua_setfield(a1, -3, a2);
    }
    v8 = ~a4;
    lua_remove(a1, -2);
    lua_insert(a1, ~a4);
  }
  else
  {
    v8 = ~a4;
  }
  if ( *v6 )
  {
    do
    {
      if ( a4 > 0 )
      {
        v10 = 0;
        do
        {
          ++v10;
          lua_pushvalue(a1, -a4);
        }
        while ( v10 != a4 );
      }
      lua_pushcclosure(a1, v6[1], a4);
      lua_setfield(a1, -2 - a4, (char *)*v6);
      v11 = v6[2];
      v6 += 2;
    }
    while ( v11 );
  }
  return lua_settop((int)a1, v8);
}


// ===== 84d264 luaL_register =====
int __fastcall luaL_register(_DWORD *a1, char *a2, int *a3)
{
  return luaL_openlib(a1, a2, a3, 0);
}


// ===== 84d26c luaL_checkstack =====
int __fastcall luaL_checkstack(_DWORD *a1, int a2, const char *a3)
{
  int result; // r0

  result = lua_checkstack(a1, a2);
  if ( !result )
    luaL_error((int)a1, (int)"stack overflow (%s)", a3);
  return result;
}


// ===== 84d2a4 luaL_argerror =====
void __fastcall __noreturn luaL_argerror(int a1, int a2, const char *a3)
{
  const char *v6; // r3
  _BYTE v7[4]; // [sp+8h] [bp-6Ch] BYREF
  const char *v8; // [sp+Ch] [bp-68h]
  char *v9; // [sp+10h] [bp-64h]

  if ( lua_getstack(a1, 0, v7) )
  {
    lua_getinfo(a1, "n");
    if ( LC_API_STRCMP_0(v9, "method") || (--a2, a2) )
    {
      v6 = v8;
      if ( !v8 )
      {
        v6 = "?";
        v8 = "?";
      }
      luaL_error(a1, (int)"bad argument #%d to '%s' (%s)", a2, v6, a3);
    }
    luaL_error(a1, (int)"calling '%s' on bad self (%s)", v8, a3);
  }
  luaL_error(a1, (int)"bad argument #%d (%s)", a2, a3);
}


// ===== 84d3c8 luaL_checkany =====
int __fastcall luaL_checkany(_DWORD *a1, int a2)
{
  int result; // r0

  result = lua_type(a1, a2);
  if ( result == -1 )
    luaL_argerror((int)a1, a2, "value expected");
  return result;
}


// ===== 84d400 luaL_typerror =====
void __fastcall __noreturn luaL_typerror(_DWORD *a1, int a2, const char *a3)
{
  int v6; // r0
  const char *v7; // r0
  const char *v8; // r0

  v6 = lua_type(a1, a2);
  v7 = lua_typename((int)a1, v6);
  v8 = (const char *)lua_pushfstring((int)a1, (int)"%s expected, got %s", a3, v7);
  luaL_argerror((int)a1, a2, v8);
}


// ===== 84d450 tag_error =====
void __fastcall __noreturn tag_error(_DWORD *a1, int a2, int a3)
{
  const char *v5; // r0

  v5 = lua_typename((int)a1, a3);
  luaL_typerror(a1, a2, v5);
}


// ===== 84d478 luaL_checkinteger =====
int __fastcall luaL_checkinteger(_DWORD *a1, int a2)
{
  int v4; // r4

  v4 = lua_tointeger(a1, a2);
  if ( !v4 && !lua_isnumber(a1, a2) )
    tag_error(a1, a2, 3);
  return v4;
}


// ===== 84d4c4 luaL_optinteger =====
int __fastcall luaL_optinteger(_DWORD *a1, int a2, int a3)
{
  if ( lua_type(a1, a2) <= 0 )
    return a3;
  else
    return luaL_checkinteger(a1, a2);
}


// ===== 84d4f8 luaL_checknumber =====
int __fastcall luaL_checknumber(_DWORD *a1, int a2)
{
  float v4; // r4

  v4 = COERCE_FLOAT(lua_tonumber(a1, a2));
  if ( v4 == 0.0 && !lua_isnumber(a1, a2) )
    tag_error(a1, a2, 3);
  return LODWORD(v4);
}


// ===== 84d550 luaL_optnumber =====
int __fastcall luaL_optnumber(_DWORD *a1, int a2, int a3)
{
  if ( lua_type(a1, a2) <= 0 )
    return a3;
  else
    return luaL_checknumber(a1, a2);
}


// ===== 84d584 luaL_checklstring =====
int __fastcall luaL_checklstring(_DWORD *a1, int a2, _DWORD *a3)
{
  int result; // r0

  result = lua_tolstring(a1, a2, a3);
  if ( !result )
    tag_error(a1, a2, 4);
  return result;
}


// ===== 84d5bc luaL_optlstring =====
int __fastcall luaL_optlstring(_DWORD *a1, int a2, const char *a3, size_t *a4)
{
  size_t v9; // r0

  if ( lua_type(a1, a2) > 0 )
    return luaL_checklstring(a1, a2, a4);
  if ( a4 )
  {
    if ( a3 )
      v9 = LC_API_STRLEN_0(a3);
    else
      v9 = 0;
    *a4 = v9;
  }
  return (int)a3;
}

