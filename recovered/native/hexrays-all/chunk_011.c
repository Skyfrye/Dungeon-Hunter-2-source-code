// ===== 3ebc0c ItemObject::_OnItemCollected(Projectile *,void *) =====
void __fastcall ItemObject::_OnItemCollected(ItemObject *this, Projectile *a2, void *a3)
{
  --ItemObject::s_numProjectiles;
}


// ===== 3ebc34 ItemObject::_GetCurrentPlayerRRId(void) =====
int __fastcall ItemObject::_GetCurrentPlayerRRId(ItemObject *this)
{
  return ItemObject::s_playerRRId;
}


// ===== 3ebc54 ItemObject::_GetNextPlayerRRId(void) =====
int __fastcall ItemObject::_GetNextPlayerRRId(ItemObject *this)
{
  int v1; // r5

  v1 = ItemObject::s_playerRRId++;
  ItemObject::s_playerRRId = (unsigned int)ItemObject::s_playerRRId % *(_DWORD *)(dword_99F76C + 1732);
  return v1;
}


// ===== 3ebca0 ItemObject::InitPost(void) =====
void __fastcall ItemObject::InitPost(ItemObject *this)
{
  ;
}


// ===== 3ebca4 ItemObject::ShowGlow(void) =====
void __fastcall ItemObject::ShowGlow(ItemObject *this)
{
  ;
}


// ===== 3ebca8 ItemObject::UpdateLocalization(void) =====
ItemInstance *__fastcall ItemObject::UpdateLocalization(ItemObject *this)
{
  ItemInstance *result; // r0

  result = (ItemInstance *)ItemInventory::GetItem((ItemObject *)((char *)this + 884), 0);
  if ( result )
    return (ItemInstance *)ItemInstance::UpdateLocalization(result);
  return result;
}


// ===== 3ebccc ItemObject::HideGlow(void) =====
int __fastcall ItemObject::HideGlow(int this)
{
  if ( *(_DWORD *)(this + 972) )
    return VisualFXManager::DropAnimatedFX((int)&Singleton<VisualFXManager>::s_inst, (AnimatedFX **)(this + 972));
  return this;
}


// ===== 3ebcf8 ItemObject::HideTooltip(void) =====
SWFAnimToolTip *__fastcall ItemObject::HideTooltip(ItemObject *this)
{
  SWFAnimToolTip *result; // r0

  result = *((SWFAnimToolTip **)this + 242);
  if ( result )
  {
    result = (SWFAnimToolTip *)SWFAnimToolTip::IsVisible(result);
    if ( result )
      return (SWFAnimToolTip *)SWFAnimToolTip::FadeOut(*((SWFAnimToolTip **)this + 242), 100);
  }
  return result;
}


// ===== 3ebd2c ItemObject::OnCollisionEnds(Character *) =====
ItemObject *__fastcall ItemObject::OnCollisionEnds(ItemObject *this, ItemObject **a2)
{
  ItemObject *v2; // r4

  v2 = this;
  if ( a2 )
  {
    if ( this != a2[1321] )
    {
      this = (ItemObject *)ItemObject::HideTooltip(this);
      *((_DWORD *)v2 + 241) = 0;
    }
  }
  return this;
}


// ===== 3ebd5c ItemObject::ShowTooltip(void) =====
int __fastcall ItemObject::ShowTooltip(ItemObject *this)
{
  const char **Item; // r0
  SWFAnimToolTip *v3; // r4
  const char **v4; // r8
  int result; // r0
  ItemInstance *v6; // r0
  SWFAnim *v7; // r8
  unsigned int Color; // r0
  int v9; // r8
  int v10; // r3
  RenderFX *v11; // r6
  gameswf::character *Char; // r5
  _BYTE v13[4]; // [sp+Ch] [bp-14h] BYREF
  double v14; // [sp+10h] [bp-10h]
  double v15; // [sp+18h] [bp-8h]

  Item = (const char **)ItemInventory::GetItem((ItemObject *)((char *)this + 884), 0);
  v3 = *((SWFAnimToolTip **)this + 242);
  v4 = Item;
  if ( !v3 )
  {
    v3 = (SWFAnimToolTip *)operator new(0xCu, 0);
    SWFAnimToolTip::SWFAnimToolTip(v3);
    *((_DWORD *)this + 242) = v3;
  }
  result = SWFAnimToolTip::IsVisible(v3);
  if ( !result )
  {
    SWFAnimToolTip::FadeIn(*((SWFAnimToolTip **)this + 242));
    SWFAnim::BindText(*(SWFAnim **)(*((_DWORD *)this + 242) + 8), "_text_itemname.text");
    SWFAnim::SetText(*(SWFAnim **)(*((_DWORD *)this + 242) + 8), v4[7]);
    v6 = (ItemInstance *)v4;
    v7 = *(SWFAnim **)(*((_DWORD *)this + 242) + 8);
    Color = ItemInstance::GetColor(v6);
    SWFAnim::SetTextColor(v7, Color, 0xFF000000);
    SWFAnim::SetPosition3D(*(_DWORD *)(*((_DWORD *)this + 242) + 8), (char *)this + 352);
    v9 = *((_DWORD *)PlayerManager::GetPlayerByCharacter(
                       (PlayerManager *)dword_99F76C,
                       *((const Character **)this + 239),
                       0)
         + 414);
    v10 = *(_DWORD *)(*((_DWORD *)this + 242) + 8);
    v11 = *(RenderFX **)(v10 + 8);
    Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)(v10 + 12));
    v13[1] = 2;
    v13[0] = 0;
    v15 = (double)v9;
    v14 = (double)v9;
    RenderFX::InvokeASCallback(v11, Char, "linkToPlayer", (const gameswf::as_value *)v13, 1);
    return gameswf::as_value::drop_refs((gameswf::as_value *)v13);
  }
  return result;
}


// ===== 3ebeb4 ItemObject::GetInteractionType(GameObject *) =====
int __fastcall ItemObject::GetInteractionType(ItemObject *this, GameObject *a2)
{
  if ( (*(int (__fastcall **)(ItemObject *, GameObject *))(*(_DWORD *)this + 136))(this, a2) )
    ItemInventory::GetItem((ItemObject *)((char *)this + 884), 0);
  return -1;
}


// ===== 3ebee4 ItemObject::Update(void) =====
SWFAnimToolTip *__fastcall ItemObject::Update(SWFAnimToolTip **this)
{
  SWFAnimToolTip *result; // r0
  int v3; // r7
  int v4; // r3

  if ( GameObject::IsAtDestination((GameObject *)this) )
    GameObject::Stop((GameObject *)this);
  GameObject::Update((GameObject *)this);
  result = *(this + 242);
  if ( result )
  {
    if ( SWFAnimToolTip::IsVisible(result) )
    {
      SWFAnim::SetPosition3D(*((_DWORD *)*(this + 242) + 2), this + 88);
      v4 = (int)*(this + 241);
      if ( v4 )
      {
        if ( this != *(SWFAnimToolTip ***)(v4 + 5284) )
          ItemObject::HideTooltip((ItemObject *)this);
      }
    }
    result = (SWFAnimToolTip *)SWFAnimToolTip::Update(*(this + 242));
  }
  v3 = *((unsigned __int16 *)this + 476);
  if ( (__int16)v3 > 0 )
  {
    result = (SWFAnimToolTip *)(v3 - Application::GetDt((Application *)&Singleton<Application>::s_inst));
    *((_WORD *)this + 476) = (_WORD)result;
  }
  return result;
}


// ===== 3ebfa0 ItemObject::SetRelativeAABB(aabb<float> const&,bool) =====
float __fastcall ItemObject::SetRelativeAABB(GameObject *this, int a2, int a3)
{
  if ( !a3 )
  {
    *((float *)this + 81) = *((float *)this + 81) * 1.5;
    *((float *)this + 82) = *((float *)this + 82) * 1.5;
    *((float *)this + 84) = *((float *)this + 84) * 1.5;
    *((float *)this + 85) = *((float *)this + 85) * 1.5;
  }
  return GameObject::UpdateAbsoluteAABB(this);
}


// ===== 3ebffc ItemObject::HasBeenLooted(void) =====
bool __fastcall ItemObject::HasBeenLooted(ItemObject *this)
{
  return ItemInventory::GetNumItems((ItemObject *)((char *)this + 884)) == 0;
}


// ===== 3ec014 ItemObject::IsInteractive(GameObject *) =====
int __fastcall ItemObject::IsInteractive(ItemObject *this, GameObject *a2)
{
  if ( !*((_BYTE *)this + 129) && *((_BYTE *)this + 128) )
    return (unsigned __int8)ItemObject::HasBeenLooted(this) ^ 1;
  else
    return 0;
}


// ===== 3ec048 ItemObject::OnCollisionBegins(Character *) =====
ItemObject *__fastcall ItemObject::OnCollisionBegins(ItemObject *this, Character *a2)
{
  ItemObject *v3; // r5

  v3 = this;
  if ( a2 )
  {
    this = (ItemObject *)ItemObject::HasBeenLooted(this);
    if ( !this )
    {
      this = (ItemObject *)(*(int (__fastcall **)(ItemObject *, Character *))(*(_DWORD *)v3 + 144))(v3, a2);
      if ( this == (ItemObject *)-1 )
      {
        this = (ItemObject *)CharStateMachine::SM_IsMoving((Character *)((char *)a2 + 1276), 0);
        if ( this )
          *((_DWORD *)v3 + 185) = a2;
      }
      else if ( v3 == *((ItemObject **)a2 + 1321) )
      {
        this = (ItemObject *)PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, a2);
        if ( this )
        {
          *((_DWORD *)v3 + 241) = a2;
          return (ItemObject *)ItemObject::ShowTooltip(v3);
        }
      }
    }
  }
  return this;
}


// ===== 3ec0f0 ItemObject::InitAgain(ItemInventory &,uint,Character const*) =====
int __fastcall ItemObject::InitAgain(ItemObject *this, ItemInventory *a2, unsigned int a3, const Character *a4)
{
  ItemInventory *v4; // r7
  ItemInstance *Item; // r0
  ItemInstance *v8; // r7
  int v9; // r8
  int v10; // r8
  int v11; // r8
  int v12; // r1
  float v13; // r6
  float v14; // r8
  PhysicalWorld *v15; // r10
  PhysicalObject *v16; // r8
  float v18[4]; // [sp+24h] [bp-10h] BYREF

  v4 = (ItemObject *)((char *)this + 884);
  ItemInventory::TransferItemTo(a2, a3, (ItemObject *)((char *)this + 884), 1, 0);
  Item = (ItemInstance *)ItemInventory::GetItem(v4, 0);
  v8 = Item;
  if ( Item )
  {
    if ( *(_DWORD *)(ItemInstance::GetItem(Item) + 84) != -1 )
    {
      v9 = Arrays::ItemAudioVisualTable::members;
      v10 = v9 + 20 * *(_DWORD *)(ItemInstance::GetItem(v8) + 84);
      *((_WORD *)this + 474) = *(_WORD *)(v10 + 4);
      *((_WORD *)this + 475) = *(_WORD *)(v10 + 8);
    }
    v11 = *((_DWORD *)this + 182);
    if ( v11 )
    {
      ItemInstance::GetColor(v8);
      (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(v11 + 56) + 28))(*(_DWORD *)(v11 + 56), 0, 0);
    }
    if ( a4 )
      *((_DWORD *)this + 239) = a4;
  }
  else if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "ii",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Items\\ItemObject.cpp",
      455);
  }
  v12 = *((__int16 *)this + 474);
  v13 = *((float *)this + 107);
  v14 = *((float *)this + 106);
  v18[2] = *((float *)this + 108);
  v18[0] = v14;
  v18[1] = v13;
  VoxSoundManager::Play3D(VoxSoundManager::s_instance, v12, v18, 0, COERCE_FLOAT(1), -1.0, -1.0);
  v15 = (PhysicalWorld *)dword_99F770;
  v16 = (PhysicalObject *)operator new(0x28u, 0);
  PhysicalObject::PhysicalObject(v16, v15, this, 0, 1, 1, 0, -3, 0x40u, 4u, 0);
  *(_DWORD *)v16 = off_968FB8;
  GameObject::SetPhysicalObject(this, v16, 0);
  return ItemObject::ShowGlow(this);
}


// ===== 3ec318 `non-virtual thunk to'ItemObject::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'ItemObject::DeclareProperties(ItemObject *this)
{
  return ItemObject::DeclareProperties((ItemObject *)((char *)this - 4));
}


// ===== 3ec320 ItemObject::DeclareProperties(void) =====
// attributes: thunk
int __fastcall ItemObject::DeclareProperties(GameObject *this)
{
  return GameObject::DeclareProperties(this);
}


// ===== 3ec324 ItemObject::ItemObject(ObjectBase::GO_IDS) =====
int __fastcall ItemObject::ItemObject(int a1)
{
  GameObject::GameObject(a1);
  ItemInventory::ItemInventory((ItemInventory *)(a1 + 884));
  *(_WORD *)(a1 + 960) = -1;
  *(_DWORD *)(a1 + 36) = off_9674EC;
  *(_DWORD *)(a1 + 884) = off_967504;
  *(_DWORD *)a1 = off_967410;
  *(_DWORD *)(a1 + 4) = &off_9674E0;
  *(_WORD *)(a1 + 940) = -1;
  *(_DWORD *)(a1 + 944) = 1075838976;
  *(_WORD *)(a1 + 948) = -1;
  *(_WORD *)(a1 + 950) = -1;
  *(_WORD *)(a1 + 952) = -1;
  *(_BYTE *)(a1 + 133) = 1;
  *(_BYTE *)(a1 + 750) = 0;
  *(_DWORD *)(a1 + 956) = 0;
  *(_DWORD *)(a1 + 964) = 0;
  *(_DWORD *)(a1 + 968) = 0;
  *(_DWORD *)(a1 + 972) = 0;
  return a1;
}


// ===== 3ec3cc ItemObject::ItemObject(ObjectBase::GO_IDS) =====
int __fastcall ItemObject::ItemObject(int a1)
{
  GameObject::GameObject(a1);
  ItemInventory::ItemInventory((ItemInventory *)(a1 + 884));
  *(_WORD *)(a1 + 960) = -1;
  *(_DWORD *)(a1 + 36) = off_9674EC;
  *(_DWORD *)(a1 + 884) = off_967504;
  *(_DWORD *)a1 = off_967410;
  *(_DWORD *)(a1 + 4) = &off_9674E0;
  *(_WORD *)(a1 + 940) = -1;
  *(_DWORD *)(a1 + 944) = 1075838976;
  *(_WORD *)(a1 + 948) = -1;
  *(_WORD *)(a1 + 950) = -1;
  *(_WORD *)(a1 + 952) = -1;
  *(_BYTE *)(a1 + 133) = 1;
  *(_BYTE *)(a1 + 750) = 0;
  *(_DWORD *)(a1 + 956) = 0;
  *(_DWORD *)(a1 + 964) = 0;
  *(_DWORD *)(a1 + 968) = 0;
  *(_DWORD *)(a1 + 972) = 0;
  return a1;
}


// ===== 3ec474 ItemObject::_DoAutoPickupHack(ItemObject*,GameObject const*,GameObject const*) =====
ItemInstance *__fastcall ItemObject::_DoAutoPickupHack(
        ItemObject *this,
        ItemObject *a2,
        const GameObject *a3,
        const GameObject *a4)
{
  ItemInstance *result; // r0
  bool v7; // zf
  ItemInstance *PickUpType; // r6

  result = (ItemInstance *)ItemInventory::GetItem((ItemObject *)((char *)this + 884), 0);
  v7 = result == nullptr;
  if ( result )
    v7 = this == nullptr;
  if ( !v7 )
  {
    PickUpType = (ItemInstance *)ItemInstance::GetPickUpType(result);
    result = (ItemInstance *)PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "PickUpType", "Automatic");
    if ( PickUpType == result )
    {
      if ( a3 )
        return (ItemInstance *)(*(int (__fastcall **)(ItemObject *, const GameObject *))(*(_DWORD *)this + 152))(
                                 this,
                                 a3);
    }
  }
  return result;
}


// ===== 3ec504 ItemObject::_GetNextPlayerQuestRRId(int) =====
int __fastcall ItemObject::_GetNextPlayerQuestRRId(ItemObject *this, int a2)
{
  PlayerManager *v3; // r6
  int v4; // r5
  int i; // r7
  int v6; // r9
  int *v7; // r1
  int *v8; // r3

  v3 = (PlayerManager *)dword_99F76C;
  v4 = ItemObject::s_playerQuestRRId;
  for ( i = *(_DWORD *)(dword_99F76C + 1732); ; v4 = (v4 + 1) % i )
  {
    v6 = *(_DWORD *)(PlayerManager::GetPlayer(v3, v4, 1) + 1632);
    v7 = (int *)(v6 + 940);
    v8 = *(int **)(v6 + 940);
    if ( v8 != (int *)(v6 + 940) )
    {
      while ( this != (ItemObject *)v8[2] )
      {
        v8 = (int *)*v8;
        if ( v7 == v8 )
        {
          v8 = (int *)(v6 + 940);
          break;
        }
      }
    }
    if ( v7 != v8 )
    {
      ItemObject::s_playerQuestRRId = (v4 + 1) % i;
      return v6;
    }
    if ( v4 == ItemObject::s_playerQuestRRId )
      break;
  }
  ItemObject::s_playerQuestRRId = (v4 + 1) % i;
  return 0;
}


// ===== 3ec5d4 Random::GetRandom(int,bool) [clone] =====
unsigned int __fastcall Random::GetRandom(unsigned int this, int a2, bool a3)
{
  if ( this )
  {
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    this = abs32(Random::s_seed % this);
  }
  ++Random::s_debugRandomCounters;
  return this;
}


// ===== 3ec668 ItemObject::_GetRandomDropPos(Point3D<float> &,GameObject const*,GameObject const*) =====
float __fastcall ItemObject::_GetRandomDropPos(float *a1, float *a2, float *a3)
{
  float v5; // r10
  float v6; // r8
  float v7; // r11
  float v8; // r10
  float v9; // r7
  float v10; // r9
  float v11; // r8
  int v12; // r1
  bool v13; // r2
  float v14; // r0
  int v15; // r1
  bool v16; // r2
  float v17; // r6
  float result; // r0
  float v19; // r6
  float v20; // r0
  int v21; // r1
  float v22; // r4
  bool v23; // r2
  float v24; // [sp+0h] [bp-1Ch]
  float v25; // [sp+4h] [bp-18h]
  float v26; // [sp+Ch] [bp-10h] BYREF
  float v27; // [sp+10h] [bp-Ch]
  float v28; // [sp+14h] [bp-8h]

  if ( a3 )
  {
    v5 = a3[89] - a2[89];
    v6 = a3[90] - a2[90];
    v26 = a3[88] - a2[88];
    v27 = v5;
    v28 = v6;
    Point3D<float>::normalize(&v26);
    v7 = v26;
    v8 = v27;
    v9 = v28;
    v10 = *(float *)&Vec3f_K;
    v11 = *(float *)&dword_99F880;
    v25 = *(float *)&dword_99F87C;
    v14 = (float)(Random::GetRandom((Random *)&dword_C8, v12, v13) + 150);
    v26 = v26 * v14;
    v27 = v27 * v14;
    v28 = v28 * v14;
    v17 = (float)(Random::GetRandom((Random *)&elf_hash_bucket[20], v15, v16) - 150);
    v24 = (float)((float)(v17 * (float)((float)(v9 * v10) - (float)(v11 * v7))) + v27) + a2[89];
    result = (float)((float)(v17 * (float)((float)(v8 * v11) - (float)(v9 * v25))) + v26) + a2[88];
    a1[2] = (float)((float)(v17 * (float)((float)(v25 * v7) - (float)(v8 * v10))) + v28) + a2[90];
    *a1 = result;
    a1[1] = v24;
  }
  else
  {
    v19 = a2[88];
    *a1 = v19;
    a1[1] = a2[89];
    a1[2] = a2[90];
    v20 = (float)(Random::GetRandom((Random *)&elf_hash_bucket[70], (int)a2, 0) - 250) + v19;
    *a1 = v20;
    v22 = a1[1];
    result = v22 + (float)(Random::GetRandom((Random *)&elf_hash_bucket[70], v21, v23) - 250);
    a1[1] = result;
  }
  return result;
}


// ===== 3ec8a0 ItemObject::DropAndAwardLoot(ItemInventory &,GameObject const*,GameObject const*,int) =====
_DWORD *__fastcall ItemObject::DropAndAwardLoot(
        ItemObject *this,
        ItemInventory *a2,
        const GameObject *a3,
        const GameObject *a4,
        int a5)
{
  _DWORD *result; // r0
  int LocalPlayer; // r0
  ItemObject *v10; // r0
  const GameObject *v11; // r3
  bool v12; // zf
  _DWORD v13[4]; // [sp+14h] [bp-10h] BYREF

  result = (_DWORD *)ItemInventory::GetNumItems(this);
  if ( result )
  {
    memset(v13, 0, 12);
    while ( 1 )
    {
      v12 = ItemInventory::GetNumItems(this) == 0;
      result = v13;
      if ( v12 )
        break;
      ItemObject::_GetRandomDropPos();
      ItemInventory::GetItem(this, 0);
      LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      v10 = (ItemObject *)ItemManager::Spawn(
                            (int)&Singleton<ItemManager>::s_inst,
                            this,
                            0,
                            (int)a2,
                            (int)a2 + 352,
                            (int)v13,
                            *(_DWORD *)(LocalPlayer + 1632));
      ItemObject::_DoAutoPickupHack(v10, a2, a3, v11);
    }
  }
  return result;
}


// ===== 3ec974 ItemObject::DropInventory(ItemInventory &,GameObject const*,GameObject const*,Character const*) =====
float *__fastcall ItemObject::DropInventory(
        ItemObject *this,
        ItemInventory *a2,
        const GameObject *a3,
        const GameObject *a4,
        const Character *a5)
{
  bool v9; // zf
  float *v10; // r1
  float *v11; // r2
  float *result; // r0
  int v13; // r10
  int v14; // r3
  float v15[4]; // [sp+1Ch] [bp-10h] BYREF

  if ( !a2 )
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
        "dropper",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Items\\ItemObject.cpp",
        255);
    }
  }
  memset(v15, 0, 12);
  while ( 1 )
  {
    v9 = ItemInventory::GetNumItems(this) == 0;
    v10 = (float *)a2;
    v11 = (float *)a3;
    result = v15;
    if ( v9 )
      break;
    while ( 1 )
    {
      ItemObject::_GetRandomDropPos(v15, v10, v11);
      v13 = ItemManager::Spawn(
              (ItemManager *)&Singleton<ItemManager>::s_inst,
              this,
              0,
              (int)a2,
              (float *)a2 + 88,
              v15,
              a4);
      if ( !(*(int (__fastcall **)(ItemInventory *))(*(_DWORD *)a2 + 36))(a2) )
        break;
      v14 = *((_DWORD *)PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, a2, 0) + 414);
      *(_WORD *)(v13 + 952) = 5000;
      *(_WORD *)(v13 + 960) = v14;
      v9 = ItemInventory::GetNumItems(this) == 0;
      v10 = (float *)a2;
      v11 = (float *)a3;
      result = v15;
      if ( v9 )
        return result;
    }
  }
  return result;
}


// ===== 3ecae4 ItemObject::GetInventoryToDrop(ItemInventory &,int,GameObject const*,int) =====
void __fastcall ItemObject::GetInventoryToDrop(
        ItemObject *this,
        ItemInventory *a2,
        int a3,
        const GameObject *a4,
        int a5)
{
  int Object; // r0
  int v9; // r8
  int v10; // r10
  ItemInstance *Property; // r9
  ItemInstance *v12; // r0
  _BYTE v13[12]; // [sp+Ch] [bp-Ch] BYREF

  if ( a3
    && (ObjectBase::GetHandle((ObjectBase *)v13), (Object = ObjectHandle::GetObject((ObjectHandle *)v13, 0)) != 0)
    && !*(_DWORD *)(Object + 244) )
  {
    v9 = Object + 4084;
    v10 = Object + 1376;
    Property = (ItemInstance *)CharProperties::_GetProperty(Object + 1376, Object + 4084, 195);
    v12 = (ItemInstance *)CharProperties::_GetProperty(v10, v9, 196);
    ItemInventory::AddLoot(this, (int)a2, Property, v12, (int)a4, 0);
  }
  else
  {
    ItemInventory::AddLoot(this, (int)a2, nullptr, nullptr, (int)a4, 0);
  }
}


// ===== 3ecba0 ItemObject::DropLootTable(int,GameObject const*,GameObject const*,int,bool) =====
void __fastcall ItemObject::DropLootTable(
        ItemObject *this,
        ItemInventory *a2,
        const GameObject *a3,
        const GameObject *a4,
        int a5,
        bool a6)
{
  Character *v10; // r4
  Character *Object; // r0
  Character *v12; // r0
  Character *v13; // r10
  int v14[14]; // [sp+0h] [bp-54h] BYREF
  _BYTE v15[12]; // [sp+38h] [bp-1Ch] BYREF
  _BYTE v16[16]; // [sp+44h] [bp-10h] BYREF

  if ( a3 )
  {
    ObjectBase::GetHandle((ObjectBase *)v16);
    Object = (Character *)ObjectHandle::GetObject((ObjectHandle *)v16, 0);
    v10 = Object;
    if ( !Object || *((_DWORD *)Object + 61) )
      v10 = nullptr;
  }
  else
  {
    v10 = nullptr;
  }
  if ( a2
    && (ObjectBase::GetHandle((ObjectBase *)v15),
        (v12 = (Character *)ObjectHandle::GetObject((ObjectHandle *)v15, 0)) != nullptr)
    && !*((_DWORD *)v12 + 61) )
  {
    v13 = v12;
    if ( Character::IsBoss(v12) || Character::IsMiniBoss(v13) )
      goto LABEL_12;
  }
  else
  {
    v13 = nullptr;
  }
  if ( v10 && ((*(int (__fastcall **)(Character *))(*(_DWORD *)v10 + 40))(v10) || v13 == v10) )
  {
LABEL_12:
    ItemInventory::ItemInventory((ItemInventory *)v14);
    ItemObject::GetInventoryToDrop((ItemObject *)v14, this, (int)a3, a4, v14[0]);
    ItemObject::DropAndAwardLoot((ItemObject *)v14, a2, a3, a4, v14[0]);
    ItemInventory::~ItemInventory((ItemInventory *)v14);
  }
}


// ===== 3eccc8 ItemObject::DropLootTable(int,GameObject const*,GameObject const*,Character const*,int) =====
void __fastcall ItemObject::DropLootTable(
        ItemObject *this,
        ItemInventory *a2,
        const GameObject *a3,
        const GameObject *a4,
        const Character *a5,
        int a6)
{
  int v10; // [sp+0h] [bp-48h]
  const Character *v11; // [sp+0h] [bp-48h]
  _BYTE v12[56]; // [sp+4h] [bp-44h] BYREF
  _BYTE v13[12]; // [sp+3Ch] [bp-Ch] BYREF

  if ( a3 )
  {
    ObjectBase::GetHandle((ObjectBase *)v13);
    ObjectHandle::GetObject((ObjectHandle *)v13, 0);
  }
  ItemInventory::ItemInventory((ItemInventory *)v12);
  ItemObject::GetInventoryToDrop((ItemObject *)v12, this, (int)a3, a5, v10);
  ItemObject::DropInventory((ItemObject *)v12, a2, a3, a4, v11);
  ItemInventory::~ItemInventory((ItemInventory *)v12);
}


// ===== 3ecd44 `non-virtual thunk to'ItemObject::~ItemObject() =====
void __fastcall `non-virtual thunk to'ItemObject::~ItemObject(ItemObject *this)
{
  ItemObject::~ItemObject((ItemObject *)((char *)this - 884));
}


// ===== 3ecd4c `non-virtual thunk to'ItemObject::~ItemObject() =====
void __fastcall `non-virtual thunk to'ItemObject::~ItemObject(ItemObject *this)
{
  ItemObject::~ItemObject((ItemObject *)((char *)this - 36));
}


// ===== 3ecd54 ItemObject::~ItemObject() =====
void __fastcall ItemObject::~ItemObject(ItemObject *this)
{
  SWFAnimToolTip *v1; // r5

  v1 = *((SWFAnimToolTip **)this + 242);
  *(_DWORD *)this = off_967410;
  *((_DWORD *)this + 1) = &off_9674E0;
  *((_DWORD *)this + 9) = off_9674EC;
  *((_DWORD *)this + 221) = off_967504;
  if ( v1 )
  {
    SWFAnimToolTip::~SWFAnimToolTip(v1);
    CustomFree(v1);
    *((_DWORD *)this + 242) = 0;
  }
  ItemObject::HideGlow((int)this);
  ItemInventory::~ItemInventory((ItemObject *)((char *)this + 884));
  GameObject::~GameObject(this);
}


// ===== 3ecdd4 `non-virtual thunk to'ItemObject::~ItemObject() =====
void __fastcall `non-virtual thunk to'ItemObject::~ItemObject(ItemObject *this)
{
  ItemObject::~ItemObject((ItemObject *)((char *)this - 884));
}


// ===== 3ecddc `non-virtual thunk to'ItemObject::~ItemObject() =====
void __fastcall `non-virtual thunk to'ItemObject::~ItemObject(ItemObject *this)
{
  ItemObject::~ItemObject((ItemObject *)((char *)this - 36));
}


// ===== 3ecde4 ItemObject::~ItemObject() =====
void __fastcall ItemObject::~ItemObject(ItemObject *this)
{
  ItemObject::~ItemObject(this);
  CustomFree(this);
}


// ===== 3ece00 ItemObject::~ItemObject() =====
void __fastcall ItemObject::~ItemObject(ItemObject *this)
{
  SWFAnimToolTip *v1; // r5

  v1 = *((SWFAnimToolTip **)this + 242);
  *(_DWORD *)this = off_967410;
  *((_DWORD *)this + 1) = &off_9674E0;
  *((_DWORD *)this + 9) = off_9674EC;
  *((_DWORD *)this + 221) = off_967504;
  if ( v1 )
  {
    SWFAnimToolTip::~SWFAnimToolTip(v1);
    CustomFree(v1);
    *((_DWORD *)this + 242) = 0;
  }
  ItemObject::HideGlow((int)this);
  ItemInventory::~ItemInventory((ItemObject *)((char *)this + 884));
  GameObject::~GameObject(this);
}


// ===== 3ece80 ItemObject::InitOnce(int) =====
int __fastcall ItemObject::InitOnce(ItemObject *this, int a2)
{
  int result; // r0
  const char *v5; // r5
  size_t v6; // r0

  *((_WORD *)this + 470) = a2;
  std::string::_M_assign((std::string *const)((char *)this + 656), "data/3D/GameObjects/itemdrops.bdae", "");
  *((_DWORD *)this + 236) = 1086324736;
  if ( a2 < 0 || a2 >= Arrays::ItemAudioVisualTable::size )
  {
    std::string::_M_assign((std::string *const)((char *)this + 680), "dummy_itemdrop_bag", "");
    GameObject::InitPost(this);
    result = *((_DWORD *)this + 182);
    if ( !result )
      return result;
    return VisualObject::ApplyMeshBox(result);
  }
  v5 = *(const char **)(Arrays::ItemAudioVisualTable::members + 20 * a2 + 16);
  v6 = LC_API_STRLEN_0(v5);
  std::string::_M_assign((std::string *const)((char *)this + 680), v5, &v5[v6]);
  GameObject::InitPost(this);
  result = *((_DWORD *)this + 182);
  if ( result )
    return VisualObject::ApplyMeshBox(result);
  return result;
}


// ===== 3ecf68 std::operator+<char,std::char_traits<char>,std::allocator<char>>(std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&,std::basic_string<char,std::char_traits<char>,std::allocator<char>> const&) =====
std::string *__fastcall std::operator+<char>(std::string *a1, int a2, int a3)
{
  int v6; // r1

  v6 = *(_DWORD *)(a2 + 16) - *(_DWORD *)(a2 + 20) + *(_DWORD *)(a3 + 16) - *(_DWORD *)(a3 + 20);
  a1->_M_finish = (char *)a1;
  a1->_M_start_of_storage._M_data = (char *)a1;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1, v6 + 1);
  *a1->_M_finish = 0;
  std::string::_M_append(a1, *(char **)(a2 + 20), *(char **)(a2 + 16));
  std::string::_M_append(a1, *(char **)(a3 + 20), *(char **)(a3 + 16));
  return a1;
}


// ===== 3ecfd8 std::allocator<StatusMsg>::allocate(uint,void const*) [clone] =====
void *std::allocator<StatusMsg>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 112;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3ecff8 MenuMessageManager<StatusMsg,4>::EnqueueMessage(StatusMsg const&,int,bool) [clone] =====
int __fastcall MenuMessageManager<StatusMsg,4>::EnqueueMessage(int a1)
{
  int result; // r0
  const char *v2; // r7
  MenuManager *Instance; // r0
  RenderFX *v4; // r6
  void *v5; // r0
  gameswf::character *Char; // r0
  _DWORD v8[4]; // [sp+Ch] [bp-28h] BYREF
  _BYTE v9[4]; // [sp+1Ch] [bp-18h] BYREF
  int v10; // [sp+20h] [bp-14h]
  int v11; // [sp+24h] [bp-10h]
  int v12; // [sp+28h] [bp-Ch]
  int v13; // [sp+2Ch] [bp-8h]

  std::deque<StatusMsg>::push_back(&dword_99FA90, a1);
  v8[0] = dword_99FA90;
  v8[1] = *(_DWORD *)algn_99FA94;
  v8[2] = *(_DWORD *)&algn_99FA94[4];
  v8[3] = *(_DWORD *)&algn_99FA94[8];
  result = std::priv::_Deque_iterator_base<StatusMsg>::_M_subtract(&dword_99FAA0, v8);
  if ( result == 1 )
  {
    v2 = StatusMsg::s_StartFuncName[0];
    Instance = (MenuManager *)MenuManager::GetInstance((MenuManager *)((char *)&dword_0 + 1));
    result = MenuManager::GetHUDRoot(Instance);
    v4 = (RenderFX *)result;
    if ( result )
    {
      if ( dword_9A53DC )
      {
        v5 = (void *)dword_9A53D8;
        if ( *(_BYTE *)(dword_9A53D8 + 4) )
        {
LABEL_10:
          Char = (gameswf::character *)DebugCachedCharacter::GetChar((DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar);
          v9[0] = 0;
          v12 = 0;
          v13 = 0;
          v9[1] = 2;
          v10 = 0;
          v11 = 0;
          RenderFX::InvokeASCallback(v4, Char, v2, (const gameswf::as_value *)v9, 1);
          return gameswf::as_value::drop_refs((gameswf::as_value *)v9);
        }
        if ( (*(_DWORD *)dword_9A53D8)-- == 1 )
          gameswf::free_internal(v5);
        dword_9A53DC = 0;
        dword_9A53D8 = 0;
      }
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar,
        StatusMsg::s_NodeName[0],
        v4,
        nullptr);
      goto LABEL_10;
    }
  }
  return result;
}


// ===== 3ed144 ItemObject::Interact(GameObject *) =====
char *__fastcall ItemObject::Interact(SWFAnimToolTip **this, GameObject *a2)
{
  char *result; // r0
  int *v4; // r7
  char *v5; // r3
  int v6; // r8
  char **Item; // r8
  int v8; // r9
  int v9; // r0
  ItemInventory *v10; // r2
  bool v11; // zf
  int v12; // r9
  int FontDef; // r0
  CMessaging *Online; // r0
  CMessaging *v15; // r8
  int v16; // r10
  char v17; // r9
  bool v18; // r2
  int Message; // r0
  int v20; // r1
  float v21; // r8
  float v22; // r10
  void *v23; // r8
  int v24; // r8
  char *PlayerByCharacter; // r0
  StringManager *v26; // r10
  int v27; // r0
  const char *v28; // r10
  size_t v29; // r0
  int Constant; // r0
  int v31; // r0
  unsigned int v32; // r0
  int v33; // r10
  int v34; // r7
  int v35; // r9
  int v36; // r8
  int v37; // r7
  int i; // r0
  int v39; // r1
  int IDFromName; // r1
  int v41; // [sp+14h] [bp-170h]
  std::priv::_String_base<char,std::allocator<char> > *v42; // [sp+18h] [bp-16Ch]
  std::priv::_String_base<char,std::allocator<char> > *v43; // [sp+18h] [bp-16Ch]
  ItemInventory *SavedOption; // [sp+1Ch] [bp-168h]
  ItemInventory *v45; // [sp+1Ch] [bp-168h]
  ItemInventory *String; // [sp+1Ch] [bp-168h]
  ItemInventory *v47; // [sp+1Ch] [bp-168h]
  ItemInventory *v48; // [sp+20h] [bp-164h]
  ItemInventory *v49; // [sp+20h] [bp-164h]
  std::priv::_String_base<char,std::allocator<char> > *v50; // [sp+24h] [bp-160h]
  std::priv::_String_base<char,std::allocator<char> > *v51; // [sp+24h] [bp-160h]
  std::priv::_String_base<char,std::allocator<char> > *v52; // [sp+28h] [bp-15Ch]
  float v53[3]; // [sp+30h] [bp-154h] BYREF
  _BYTE v54[12]; // [sp+3Ch] [bp-148h] BYREF
  char v55[4]; // [sp+48h] [bp-13Ch] BYREF
  std::string v56; // [sp+58h] [bp-12Ch] BYREF
  std::string v57; // [sp+74h] [bp-110h] BYREF
  std::string v58; // [sp+90h] [bp-F4h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v59; // [sp+ACh] [bp-D8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v60; // [sp+C4h] [bp-C0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v61; // [sp+DCh] [bp-A8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v62; // [sp+F4h] [bp-90h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v63; // [sp+10Ch] [bp-78h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v64; // [sp+124h] [bp-60h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v65; // [sp+13Ch] [bp-48h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v66; // [sp+154h] [bp-30h] BYREF
  char s[16]; // [sp+16Ch] [bp-18h] BYREF

  result = (char *)ItemObject::HasBeenLooted((ItemObject *)this);
  if ( result )
    return result;
  ObjectBase::GetHandle((ObjectBase *)v54);
  result = (char *)ObjectHandle::operator Character *(v54);
  v4 = (int *)result;
  if ( !result )
    return result;
  v5 = (char *)*(this + 239);
  if ( v5 )
  {
    if ( result != v5 )
      return result;
  }
  v6 = *((__int16 *)this + 480);
  if ( v6 != -1 )
  {
    result = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, (const Character *)result, 0);
    if ( v6 == *((_DWORD *)result + 414) && *((__int16 *)this + 476) > 0 )
      return result;
  }
  result = (char *)(*(int (__fastcall **)(int *))(*v4 + 40))(v4);
  if ( !result )
    return result;
  v48 = (ItemInventory *)(this + 221);
  Item = (char **)ItemInventory::GetItem((ItemInventory *)(this + 221), 0);
  SavedOption = (ItemInventory *)Application::GetSavedOption(
                                   (Application *)&Singleton<Application>::s_inst,
                                   "AutoTransmute");
  v8 = *(_DWORD *)(ItemInstance::GetItem((ItemInstance *)Item) + 104);
  v9 = ItemInstance::GetItem((ItemInstance *)Item);
  v11 = v8 == -1;
  if ( v8 == -1 )
    v10 = (ItemInventory *)(v4 + 223);
  v12 = *(_DWORD *)(v9 + 88);
  if ( v11 )
  {
    v45 = v10;
LABEL_14:
    if ( v12 != 14 || ItemInventory::GetNumPotions(v45) < *((char *)v4 + 936) )
    {
      v42 = (std::priv::_String_base<char,std::allocator<char> > *)Arrays::FontPalette::members;
      FontDef = ItemInstance::GetFontDef((ItemInstance *)Item);
      sprintf(s, "%x", *(_DWORD *)&v42->_M_buffers._M_static_buf[12 * FontDef + 8]);
      std::string::string((int)&v64, s);
      v63._M_finish = (char *)&v63;
      v63._M_start_of_storage._M_data = (char *)&v63;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
        (int)&v63,
        v64._M_finish - v64._M_start_of_storage._M_data + 15);
      *v63._M_finish = 0;
      std::string::_M_appendT<char const*>(&v63, "<font color=\"#", "", v55);
      std::string::_M_append((std::string *)&v63, v64._M_start_of_storage._M_data, v64._M_finish);
      std::operator+<char>((int)&v62, (int)&v63, "\">");
      std::string::string((int)&v61, Item[7]);
      std::operator+<char>(&v60, &v62, &v61);
      std::operator+<char>((int)&v65, (int)&v60, "</font>");
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v60);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v61);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v62);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v63);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v64);
      v56._M_finish = (char *)&v56;
      v56._M_start_of_storage._M_data = (char *)&v56;
      std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v56, 0x10u);
      *v56._M_finish = 0;
      std::string::_M_assign(&v56, v65._M_start_of_storage._M_data, v65._M_finish);
      if ( v4 == *(int **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632) )
        MenuMessageManager<StatusMsg,4>::EnqueueMessage((int)&v56);
      if ( *(_DWORD *)(ItemInstance::GetItem((ItemInstance *)Item) + 88) != 13
        && !*(_BYTE *)(GetOnline() + 5)
        && !Character::SG_GetGameDifficulty((Character *)v4) )
      {
        if ( *(_BYTE *)(dword_99F778 + 42) )
        {
          IDFromName = ScriptManager::GetIDFromName(
                         (ScriptManager *)&ScriptManager::s_inst,
                         "cinematic_Tuto_menuInvSheet",
                         1);
          if ( IDFromName != -1 )
            ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, IDFromName, -1, 0);
        }
      }
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v59, "isTracingItemPickedUp");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v59);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v59);
      ItemInventory::TransferInventoryTo(v48, v45, 0, 1);
      CharProperties::PROPS_AddInt((CharProperties *)(v4 + 344), 223, 1);
      v50 = (std::priv::_String_base<char,std::allocator<char> > *)TrophyManager::s_instance;
      if ( CharProperties::PROPS_GetInt((CharProperties *)(v4 + 344), 223, 0) >= 300
        && (*(int (__fastcall **)(int *))(*v4 + 40))(v4)
        && PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, (const Character *)v4) )
      {
        v35 = Arrays::TrophyTable::size;
        if ( Arrays::TrophyTable::size )
        {
          v47 = (ItemInventory *)v4;
          v36 = 0;
          v37 = Arrays::TrophyTable::m_memberNames;
          for ( i = LC_API_STRCMP_0("picked_up_300_drops", *(const char **)Arrays::TrophyTable::m_memberNames);
                ;
                i = LC_API_STRCMP_0("picked_up_300_drops", *(const char **)(v37 + 4 * v36)) )
          {
            if ( !i )
            {
              v4 = (int *)v47;
              v39 = v36;
              goto LABEL_58;
            }
            if ( ++v36 == v35 )
              break;
          }
          v4 = (int *)v47;
        }
        v39 = -1;
LABEL_58:
        TrophyManager::UnlockTrophy((TrophyManager *)v50, v39);
      }
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v56);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v65);
    }
    goto LABEL_21;
  }
  if ( ItemInstance::GetNumPowers((ItemInstance *)Item) < (unsigned int)SavedOption )
  {
    v66._M_finish = (char *)&v66;
    v66._M_start_of_storage._M_data = (char *)&v66;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v66, 0x10u);
    *v66._M_finish = 0;
    v43 = (std::priv::_String_base<char,std::allocator<char> > *)dword_99F760;
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "ITEMS_AUTO_TRANSMUTE");
    String = (ItemInventory *)StringManager::getString((StringManager *)v43, Constant);
    v52 = (std::priv::_String_base<char,std::allocator<char> > *)Arrays::FontPalette::members;
    v51 = (std::priv::_String_base<char,std::allocator<char> > *)ItemInstance::GetFontDef((ItemInstance *)Item);
    v31 = Character::INV_TransmuteItem((Character *)v4, (ItemInstance *)Item, 1);
    if ( String )
    {
      v41 = v31;
      sprintf(s, "#%06X", *(_DWORD *)&v52->_M_buffers._M_static_buf[12 * (_DWORD)v51 + 8] & 0xFFFFFF);
      StringManager::parse((StringManager *)dword_99F760, (std::string *)&v66, (const char *)String, s, Item[7], v41);
    }
    v58._M_finish = (char *)&v58;
    v58._M_start_of_storage._M_data = (char *)&v58;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v58, 0x10u);
    *v58._M_finish = 0;
    std::string::_M_assign(&v58, v66._M_start_of_storage._M_data, v66._M_finish);
    MenuMessageManager<StatusMsg,4>::EnqueueMessage((int)&v58);
    v32 = ItemInventory::TransferItemTo(v48, 0, (ItemInventory *)(v4 + 223), 0, 1);
    Character::INV_TransmuteItem((Character *)v4, v32, 0);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v58);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v66);
  }
  else
  {
    v45 = (ItemInventory *)(v4 + 223);
    if ( !ItemInventory::IsInventoryFull((ItemInventory *)(v4 + 223)) )
      goto LABEL_14;
    v57._M_finish = (char *)&v57;
    v57._M_start_of_storage._M_data = (char *)&v57;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v57, 0x10u);
    *v57._M_finish = 0;
    v26 = (StringManager *)dword_99F760;
    v27 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_INVENTORY_FULL");
    v28 = (const char *)StringManager::getString(v26, v27);
    v29 = LC_API_STRLEN_0(v28);
    std::string::_M_assign(&v57, v28, &v28[v29]);
    MenuMessageManager<StatusMsg,4>::EnqueueMessage((int)&v57);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v57);
  }
LABEL_21:
  result = (char *)ItemObject::HasBeenLooted((ItemObject *)this);
  if ( result )
  {
    Online = (CMessaging *)GetOnline();
    if ( *((_BYTE *)Online + 5) && *(_BYTE *)(v4[222] + 10) )
    {
      v15 = (CMessaging *)CMessaging::Get(Online);
      v16 = (int)*(this + 66);
      v17 = *((_BYTE *)v4 + 264);
      Message = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (const char *)&dword_0 + 1, v18);
      *(_BYTE *)(Message + 84) = v17;
      *(_BYTE *)(Message + 80) = 5;
      *(_WORD *)(Message + 82) = v16;
      CMessaging::SendMsg(v15, (CMessage *)Message);
    }
    v20 = *((__int16 *)this + 475);
    v21 = *((float *)this + 90);
    v22 = *((float *)this + 88);
    LODWORD(v53[1]) = *(this + 89);
    v53[2] = v21;
    v53[0] = v22;
    VoxSoundManager::Play3D(VoxSoundManager::s_instance, v20, v53, 0, COERCE_FLOAT(1), -1.0, -1.0);
    v23 = *(this + 242);
    if ( v23 )
    {
      SWFAnimToolTip::~SWFAnimToolTip(*(this + 242));
      CustomFree(v23);
      *(this + 242) = nullptr;
    }
    ItemObject::HideGlow((ItemObject *)this);
    if ( this == (SWFAnimToolTip **)v4[1321] )
      v4[1321] = 0;
    v24 = `guard variable for'ItemObject::Interact(GameObject *)::fxId & 1;
    if ( (`guard variable for'ItemObject::Interact(GameObject *)::fxId & 1) == 0
      && _cxa_guard_acquire(&`guard variable for'ItemObject::Interact(GameObject *)::fxId) )
    {
      v33 = Arrays::AnimatedEffectTable::size;
      if ( Arrays::AnimatedEffectTable::size )
      {
        v49 = (ItemInventory *)v4;
        v34 = Arrays::AnimatedEffectTable::m_memberNames;
        do
        {
          if ( !LC_API_STRCMP_0("loot_orb_fx", *(const char **)(v34 + 4 * v24)) )
          {
            v4 = (int *)v49;
            goto LABEL_45;
          }
          ++v24;
        }
        while ( v24 != v33 );
        v4 = (int *)v49;
      }
      v24 = -1;
LABEL_45:
      ItemObject::Interact(GameObject *)::fxId = v24;
      _cxa_guard_release(&`guard variable for'ItemObject::Interact(GameObject *)::fxId);
    }
    VisualFXManager::PlayAnimFXSet(
      (int)&Singleton<VisualFXManager>::s_inst,
      ItemObject::Interact(GameObject *)::fxId,
      v4 + 88,
      0,
      0);
    ItemManager::DeSpawn((ItemManager *)&Singleton<ItemManager>::s_inst, (ItemObject *)this);
    PlayerByCharacter = PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, (const Character *)v4, 0);
    return (char *)PlayerStatManager::IncrementStat(
                     (int)&Singleton<PlayerStatManager>::s_inst,
                     4,
                     *((_DWORD *)PlayerByCharacter + 414));
  }
  return result;
}


// ===== 3edab4 `global constructor keyed to'.._.._sources_Game_Objects_Items_ItemObject.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Objects_Items_ItemObject.cpp(CMessage *a1)
{
  CMessage *(*v1)(bool); // r2
  CMessage *(*v2)(bool); // r2
  CMessage *(*v3)(bool); // r2
  CMessage *(*v4)(bool); // r2
  CMessage *(*v5)(bool); // r2
  CMessage *(*v6)(bool); // r2
  CMessage *(*v7)(bool); // r2
  CMessage *(*v8)(bool); // r2
  CMessage *(*v9)(bool); // r2
  CMessage *(*v10)(bool); // r2
  CMessage *(*v11)(bool); // r2
  CMessage *(*v12)(bool); // r2
  CMessage *(*v13)(bool); // r2
  CMessage *v14; // r0
  int result; // r0
  int *v16; // r4
  _DWORD *v17; // r9
  unsigned int v18; // r11
  int *v19; // r3
  int v20; // r2
  int v21; // r3
  _DWORD *v22; // r6
  unsigned int v23; // r7
  int v24; // r12
  int v25; // r3
  _DWORD *v26; // r6
  unsigned int v27; // r7
  int v28; // r12
  int v29; // r3
  _DWORD *v30; // r6
  unsigned int v31; // r7
  int v32; // r12
  int v33; // r3
  _DWORD *v34; // r6
  unsigned int v35; // r7
  int v36; // r12
  int v37; // r3
  _DWORD *v38; // r6
  unsigned int v39; // r7
  int v40; // r12
  int v41; // r3
  size_t v42; // [sp+4h] [bp-8h] BYREF

  dword_9A30A8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A30A4 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A30AD = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A30AE = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A30AF = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A30B0 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A30B1 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A30B2 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A30B3 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A30B4 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A30B5 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A30B6 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A30B7 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A30B8 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A30B9 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A30BA = result;
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
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = 1;
    Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = (int)off_95B150;
    v16 = &dword_99FA90;
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0;
      v16[5] = 0;
      v16[6] = 0;
      v16[7] = 0;
      v16[8] = 0;
      v16[9] = 8;
      v17 = std::allocator<StatusMsg *>::allocate((int)(v16 + 8), 8u);
      v16[8] = (int)v17;
      v18 = (unsigned int)(v16[9] - 1) >> 1;
      v17[v18] = std::allocator<StatusMsg>::allocate();
      v19 = &v17[v18];
      v16[3] = (int)v19;
      v20 = *v19;
      v16[7] = (int)v19;
      v16[1] = v20;
      v16[2] = v20 + 112;
      v21 = *v19;
      *v16 = v20;
      v16[6] = v21 + 112;
      v16[4] = v21;
      v16[5] = v21;
      v16 += 10;
    }
    while ( v16 != &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst );
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<StatusMsg,4>>::s_inst,
               (int)MenuMessageManager<StatusMsg,4>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = 1;
    dword_99FB58 = (int)byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    v22 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    v42 = 112;
    dword_99FB54 = (int)v22;
    v23 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v22[v23] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FB40 = (int)&v22[v23];
    v24 = v22[v23];
    dword_99FB50 = (int)&v22[v23];
    dword_99FB3C = v24 + 112;
    dword_99FB38 = v24;
    v25 = v22[v23];
    dword_99FB4C = v25 + 112;
    dword_99FB34 = v24;
    dword_99FB44 = v25;
    dword_99FB48 = v25;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst,
               (int)MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = 1;
    dword_99FB84 = (int)byte_8;
    Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = (int)off_95B170;
    dword_99FB60 = 0;
    dword_99FB64 = 0;
    dword_99FB68 = 0;
    dword_99FB6C = 0;
    dword_99FB70 = 0;
    dword_99FB74 = 0;
    dword_99FB78 = 0;
    dword_99FB7C = 0;
    dword_99FB80 = 0;
    v26 = std::allocator<TutorialMsg *>::allocate((int)&dword_99FB80, (unsigned int)byte_8);
    v42 = 128;
    dword_99FB80 = (int)v26;
    v27 = (unsigned int)(dword_99FB84 - 1) >> 1;
    v26[v27] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FB6C = (int)&v26[v27];
    v28 = v26[v27];
    dword_99FB7C = (int)&v26[v27];
    dword_99FB68 = v28 + 128;
    dword_99FB64 = v28;
    v29 = v26[v27];
    dword_99FB78 = v29 + 128;
    dword_99FB60 = v28;
    dword_99FB70 = v29;
    dword_99FB74 = v29;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<TutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = 1;
    dword_99FBB0 = (int)byte_8;
    Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = (int)off_95B180;
    dword_99FB8C = 0;
    dword_99FB90 = 0;
    dword_99FB94 = 0;
    dword_99FB98 = 0;
    dword_99FB9C = 0;
    dword_99FBA0 = 0;
    dword_99FBA4 = 0;
    dword_99FBA8 = 0;
    dword_99FBAC = 0;
    v30 = std::allocator<DialogMsg *>::allocate((int)&dword_99FBAC, (unsigned int)byte_8);
    v42 = 76;
    dword_99FBAC = (int)v30;
    v31 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    v30[v31] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FB98 = (int)&v30[v31];
    v32 = v30[v31];
    dword_99FBA8 = (int)&v30[v31];
    dword_99FB94 = v32 + 76;
    dword_99FB90 = v32;
    v33 = v30[v31];
    dword_99FBA4 = v33 + 76;
    dword_99FB8C = v32;
    dword_99FB9C = v33;
    dword_99FBA0 = v33;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<DialogMsg,1>>::s_inst,
               (int)MenuMessageManager<DialogMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = 1;
    dword_99FBDC = (int)byte_8;
    Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = (int)off_95B190;
    dword_99FBB8 = 0;
    dword_99FBBC = 0;
    dword_99FBC0 = 0;
    dword_99FBC4 = 0;
    dword_99FBC8 = 0;
    dword_99FBCC = 0;
    dword_99FBD0 = 0;
    dword_99FBD4 = 0;
    dword_99FBD8 = 0;
    v34 = std::allocator<CharMenuTutorialMsg *>::allocate((int)&dword_99FBD8, (unsigned int)byte_8);
    v42 = 104;
    dword_99FBD8 = (int)v34;
    v35 = (unsigned int)(dword_99FBDC - 1) >> 1;
    v34[v35] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FBC4 = (int)&v34[v35];
    v36 = v34[v35];
    dword_99FBD4 = (int)&v34[v35];
    dword_99FBC0 = v36 + 104;
    dword_99FBBC = v36;
    v37 = v34[v35];
    dword_99FBD0 = v37 + 104;
    dword_99FBB8 = v36;
    dword_99FBC8 = v37;
    dword_99FBCC = v37;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = 1;
    dword_99FC08 = (int)byte_8;
    Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = (int)off_95B1A0;
    dword_99FBE4 = 0;
    dword_99FBE8 = 0;
    dword_99FBEC = 0;
    dword_99FBF0 = 0;
    dword_99FBF4 = 0;
    dword_99FBF8 = 0;
    dword_99FBFC = 0;
    dword_99FC00 = 0;
    dword_99FC04 = 0;
    v38 = std::allocator<AchievementMsg *>::allocate((int)&dword_99FC04, (unsigned int)byte_8);
    v42 = 120;
    dword_99FC04 = (int)v38;
    v39 = (unsigned int)(dword_99FC08 - 1) >> 1;
    v38[v39] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v42);
    dword_99FBF0 = (int)&v38[v39];
    v40 = v38[v39];
    dword_99FC00 = (int)&v38[v39];
    dword_99FBEC = v40 + 120;
    dword_99FBE8 = v40;
    v41 = v38[v39];
    dword_99FBFC = v41 + 120;
    dword_99FBE4 = v40;
    dword_99FBF4 = v41;
    dword_99FBF8 = v41;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
               (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<ItemManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<ItemManager>::s_inst = 1;
    ItemManager::ItemManager((ItemManager *)&Singleton<ItemManager>::s_inst);
    result = _aeabi_atexit((int)&Singleton<ItemManager>::s_inst, (int)ItemManager::~ItemManager, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<VisualFXManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<VisualFXManager>::s_inst = 1;
    VisualFXManager::VisualFXManager((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<VisualFXManager>::s_inst,
             (int)VisualFXManager::~VisualFXManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 3ee3ac QE_PickedUpLiftable::~QE_PickedUpLiftable() =====
void __fastcall QE_PickedUpLiftable::~QE_PickedUpLiftable(QE_PickedUpLiftable *this)
{
  ;
}


// ===== 3ee3b0 LiftableObject::IsUpdatable(void) =====
int __fastcall LiftableObject::IsUpdatable(LiftableObject *this)
{
  return 1;
}


// ===== 3ee3b8 LiftableObject::IsAnimated(void) =====
int __fastcall LiftableObject::IsAnimated(LiftableObject *this)
{
  return 1;
}


// ===== 3ee3c0 LiftableObject::IsUpdatingPositionFromVisual(void) =====
bool __fastcall LiftableObject::IsUpdatingPositionFromVisual(LiftableObject *this)
{
  return *((_DWORD *)this + 228) != 0;
}


// ===== 3ee3d0 LiftableObject::IsUpdatingPositionFromPhysics(void) =====
bool __fastcall LiftableObject::IsUpdatingPositionFromPhysics(LiftableObject *this)
{
  return *((_DWORD *)this + 228) == 0;
}


// ===== 3ee3e0 LiftableObject::IsInteractive(GameObject *) =====
int __fastcall LiftableObject::IsInteractive(LiftableObject *this, GameObject *a2)
{
  if ( *((_BYTE *)this + 129) || *((_DWORD *)this + 228) )
    return 0;
  else
    return *((unsigned __int8 *)this + 916) ^ 1;
}


// ===== 3ee40c LiftableObject::IsObstacle(void) =====
int __fastcall LiftableObject::IsObstacle(LiftableObject *this)
{
  return 1;
}


// ===== 3ee414 LiftableObject::GetObstacleRadius(void) =====
int __fastcall LiftableObject::GetObstacleRadius(LiftableObject *this)
{
  return 1125515264;
}


// ===== 3ee420 LiftableObject::GetObstacleStrength(void) =====
int __fastcall LiftableObject::GetObstacleStrength(LiftableObject *this)
{
  return 1092616192;
}


// ===== 3ee42c LiftableObject::GetDataId(void) =====
int __fastcall LiftableObject::GetDataId(LiftableObject *this)
{
  return *((_DWORD *)this + 221);
}


// ===== 3ee434 LiftableObject::__Callback(glitch::scene::ITimelineController *,void *) =====
void __fastcall LiftableObject::__Callback(int a1, int a2)
{
  *(_BYTE *)(a2 + 916) = 0;
}


// ===== 3ee440 LiftableObject::GetInteractionType(GameObject *) =====
int __fastcall LiftableObject::GetInteractionType(LiftableObject *this, GameObject *a2)
{
  GameObject *v2; // r3

  v2 = *((GameObject **)this + 228);
  if ( !v2 )
    return 4;
  if ( v2 == a2 )
    return 5;
  return -1;
}


// ===== 3ee460 LiftableObject::Interact(GameObject *) =====
void __fastcall LiftableObject::Interact(LiftableObject *this, GameObject *a2)
{
  ;
}


// ===== 3ee464 LiftableObject::IsZonable(void) =====
// attributes: thunk
int __fastcall LiftableObject::IsZonable(GameObject *this)
{
  return GameObject::MeetCondition(this);
}


// ===== 3ee468 LiftableObject::Release(void) =====
int __fastcall LiftableObject::Release(LiftableObject *this)
{
  VisualObject *v2; // r7
  _DWORD *v3; // r6
  int result; // r0
  float v5[3]; // [sp+8h] [bp-1Ch] BYREF
  _DWORD v6[4]; // [sp+14h] [bp-10h] BYREF

  if ( !*((_DWORD *)this + 228) )
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
        "m_owner",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Complex\\LiftableObject.cpp",
        233);
    }
  }
  v2 = *((VisualObject **)this + 182);
  v3 = *((_DWORD **)v2 + 2);
  glitch::scene::ISceneNode::getAbsolutePosition(v6, v3);
  v5[0] = *(float *)v6;
  v5[1] = *(float *)&v6[1];
  v5[2] = *(float *)&v6[2];
  GameObject::SetPosition(this, v5, 1);
  GameObject::SetScale(this, (char *)this + 920);
  PFWorld::ValidatePosition((int)&Singleton<PFWorld>::s_inst, (int)this + 352, (int)this + 456);
  VisualObject::Sync(v2);
  (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
    *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
    v3);
  result = PhysicalObject::enableFilter(*((PhysicalObject **)this + 183));
  *((_DWORD *)this + 228) = 0;
  *((_BYTE *)this + 932) = 1;
  return result;
}


// ===== 3ee5a8 LiftableObject::Drop(void) =====
int __fastcall LiftableObject::Drop(LiftableObject *this)
{
  int result; // r0

  LiftableObject::Release(this);
  result = (*(int (__fastcall **)(_DWORD, const char *, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 182) + 56) + 32))(
             *(_DWORD *)(*((_DWORD *)this + 182) + 56),
             "drop",
             0);
  if ( result )
    *((_BYTE *)this + 916) = 1;
  return result;
}


// ===== 3ee5fc LiftableObject::PickUp(GameObject *) =====
int __fastcall LiftableObject::PickUp(LiftableObject *this, GameObject *a2)
{
  VisualObject *v5; // r8
  int v6; // r7
  bool v7; // zf
  int SpecificNode; // r10
  EventManager *CurrentLevel; // r6
  int v10; // r7
  int v11; // r5
  _DWORD v12[4]; // [sp+8h] [bp-2Ch] BYREF
  char v13; // [sp+18h] [bp-1Ch]
  char v14; // [sp+19h] [bp-1Bh]
  int v15; // [sp+1Ch] [bp-18h]
  int v16; // [sp+20h] [bp-14h]
  _DWORD v17[3]; // [sp+24h] [bp-10h] BYREF

  if ( *((_DWORD *)this + 228) )
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
        "m_owner == 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Complex\\LiftableObject.cpp",
        186);
    }
  }
  if ( !a2 )
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
        "owner != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Complex\\LiftableObject.cpp",
        187);
    }
  }
  if ( *((_DWORD *)this + 228) || !a2 )
    return 0;
  v5 = *((VisualObject **)a2 + 182);
  v6 = *((_DWORD *)this + 182);
  if ( !v5 )
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
        "ownerVO",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Complex\\LiftableObject.cpp",
        199);
    }
  }
  if ( !v6 )
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
        "myVO",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Complex\\LiftableObject.cpp",
        200);
    }
  }
  v7 = v5 == nullptr;
  if ( v5 )
    v7 = v6 == 0;
  if ( v7 )
    return 0;
  SpecificNode = VisualObject::GetSpecificNode(v5, "projectile_node");
  if ( !SpecificNode )
    SpecificNode = *((_DWORD *)v5 + 2);
  VisualObject::SetPosition(v6, &Vec3f_Origin);
  v17[2] = 1065353216;
  v17[0] = 1065353216;
  v17[1] = 1065353216;
  VisualObject::SetScaling(v6, v17);
  (*(void (__fastcall **)(int, _DWORD))(*(_DWORD *)SpecificNode + 92))(SpecificNode, *(_DWORD *)(v6 + 8));
  PhysicalObject::disableFilter(*((PhysicalObject **)this + 183));
  PhysicalObject::unpin(*((PhysicalObject **)this + 183));
  *((_DWORD *)this + 228) = a2;
  CurrentLevel = (EventManager *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  if ( !CurrentLevel )
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
        "level",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Complex\\LiftableObject.cpp",
        223);
    }
  }
  v10 = (*(int (__fastcall **)(LiftableObject *))(*(_DWORD *)this + 200))(this);
  v11 = *((_DWORD *)this + 25);
  v12[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "PickedUpLiftable");
  v12[0] = off_967530;
  v12[3] = v11;
  v14 = 0;
  v15 = -1;
  v16 = v10;
  v12[2] = 0;
  v13 = 0;
  EventManager::RaiseAsync(CurrentLevel, (const IEvent *)v12);
  return 1;
}


// ===== 3ee970 QE_PickedUpLiftable::~QE_PickedUpLiftable() =====
void __fastcall QE_PickedUpLiftable::~QE_PickedUpLiftable(QE_PickedUpLiftable *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 3ee9a4 LiftableObject::Update(void) =====
VisualObject *__fastcall LiftableObject::Update(PhysicalObject **this)
{
  VisualObject *result; // r0
  float v3[4]; // [sp+4h] [bp-10h] BYREF

  if ( *((_BYTE *)this + 932) )
  {
    PhysicalObject::pin(*(this + 183));
    *((_BYTE *)this + 932) = 0;
  }
  result = *(this + 182);
  if ( result )
  {
    memset(v3, 0, 12);
    VisualObject::GetPosition(result, v3);
    return GameObject::SetPosition((GameObject *)this, v3, 1);
  }
  return result;
}


// ===== 3eea10 LiftableObject::InitPost(void) =====
int __fastcall LiftableObject::InitPost(LiftableObject *this)
{
  int result; // r0
  const char *v3; // r5
  int v4; // r8
  int v5; // r4
  int v6; // r10
  int v7; // r3
  const char *v8; // r4
  size_t v9; // r0
  int v10; // r1
  VisualObject *v11; // r4

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) )
  {
    v3 = *((const char **)this + 227);
    if ( *((const char **)this + 226) != v3 )
    {
      v4 = Arrays::LiftableObjects::size;
      if ( !Arrays::LiftableObjects::size )
      {
LABEL_15:
        *((_DWORD *)this + 221) = -1;
        GameObject::InitPost(this);
        result = GameObject::MeetCondition(this);
        v10 = result;
        if ( result )
        {
LABEL_11:
          v11 = *((VisualObject **)this + 182);
          if ( v11 )
          {
            (*(void (__fastcall **)(_DWORD *, _DWORD (*)(LiftableObject *__hidden, glitch::scene::ITimelineController *, void *), LiftableObject *, _DWORD, _DWORD))(**((_DWORD **)v11 + 14) + 44))(
              *((_DWORD **)v11 + 14),
              LiftableObject::__Callback,
              this,
              0,
              0);
            (*(void (__fastcall **)(_DWORD *, const char *, int, _DWORD, _DWORD))(**((_DWORD **)v11 + 14) + 32))(
              *((_DWORD **)v11 + 14),
              "idle",
              1,
              0,
              0);
            return VisualObject::ApplyMeshBox(v11);
          }
          return result;
        }
        return (*(int (__fastcall **)(LiftableObject *, int))(*(_DWORD *)this + 64))(this, v10);
      }
      v5 = 0;
      v6 = Arrays::LiftableObjects::m_memberNames;
      while ( LC_API_STRCMP_0(v3, *(const char **)(v6 + 4 * v5)) )
      {
        if ( ++v5 == v4 )
          goto LABEL_15;
      }
      *((_DWORD *)this + 221) = v5;
      if ( v5 != -1 )
      {
        v7 = *(_DWORD *)(Arrays::LiftableObjects::members + 8 * v5 + 4);
        if ( v7 != -1 )
        {
          v8 = *(const char **)(Arrays::GameObjectDict::members + 12 * v7 + 8);
          v9 = LC_API_STRLEN_0(v8);
          std::string::_M_assign((std::string *const)((char *)this + 656), v8, &v8[v9]);
        }
      }
    }
    GameObject::InitPost(this);
    result = GameObject::MeetCondition(this);
    v10 = result;
    if ( result )
      goto LABEL_11;
    return (*(int (__fastcall **)(LiftableObject *, int))(*(_DWORD *)this + 64))(this, v10);
  }
  return result;
}


// ===== 3eebc4 `non-virtual thunk to'LiftableObject::~LiftableObject() =====
void __fastcall `non-virtual thunk to'LiftableObject::~LiftableObject(LiftableObject *this)
{
  LiftableObject::~LiftableObject((LiftableObject *)((char *)this - 36));
}


// ===== 3eebcc LiftableObject::~LiftableObject() =====
void __fastcall LiftableObject::~LiftableObject(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_967548;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_96761C;
  *((_DWORD *)this + 9) = off_967628;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 37);
  GameObject::~GameObject((GameObject *)this);
}


// ===== 3eec18 `non-virtual thunk to'LiftableObject::~LiftableObject() =====
void __fastcall `non-virtual thunk to'LiftableObject::~LiftableObject(LiftableObject *this)
{
  LiftableObject::~LiftableObject((LiftableObject *)((char *)this - 36));
}


// ===== 3eec20 LiftableObject::~LiftableObject() =====
void __fastcall LiftableObject::~LiftableObject(std::priv::_String_base<char,std::allocator<char> > *this)
{
  LiftableObject::~LiftableObject(this);
  CustomFree(this);
}


// ===== 3eec3c LiftableObject::~LiftableObject() =====
void __fastcall LiftableObject::~LiftableObject(std::priv::_String_base<char,std::allocator<char> > *this)
{
  this->_M_buffers._M_end_of_storage = (char *)off_967548;
  *(_DWORD *)&this->_M_buffers._M_static_buf[4] = &off_96761C;
  *((_DWORD *)this + 9) = off_967628;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this + 37);
  GameObject::~GameObject((GameObject *)this);
}


// ===== 3eec88 LiftableObject::LiftableObject(ObjectBase::GO_IDS) =====
int __fastcall LiftableObject::LiftableObject(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)(a1 + 4) = &off_96761C;
  *(_DWORD *)(a1 + 36) = off_967628;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_DWORD *)a1 = off_967548;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(a1 + 888, 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 928) = 0;
  *(_BYTE *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 912) = 0;
  *(_BYTE *)(a1 + 916) = 0;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 924) = 0;
  *(_BYTE *)(a1 + 932) = 0;
  return a1;
}


// ===== 3eed10 LiftableObject::LiftableObject(ObjectBase::GO_IDS) =====
int __fastcall LiftableObject::LiftableObject(int a1)
{
  GameObject::GameObject(a1);
  *(_DWORD *)(a1 + 904) = a1 + 888;
  *(_DWORD *)(a1 + 4) = &off_96761C;
  *(_DWORD *)(a1 + 36) = off_967628;
  *(_DWORD *)(a1 + 908) = a1 + 888;
  *(_DWORD *)a1 = off_967548;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 888), 0x10u);
  **(_BYTE **)(a1 + 904) = 0;
  *(_DWORD *)(a1 + 928) = 0;
  *(_BYTE *)(a1 + 132) = 0;
  *(_DWORD *)(a1 + 912) = 0;
  *(_BYTE *)(a1 + 916) = 0;
  *(_DWORD *)(a1 + 920) = 0;
  *(_DWORD *)(a1 + 924) = 0;
  *(_BYTE *)(a1 + 932) = 0;
  return a1;
}


// ===== 3eed98 `global constructor keyed to'.._.._sources_Game_Objects_Complex_LiftableObject.cpp =====
int `global constructor keyed to'.._.._sources_Game_Objects_Complex_LiftableObject.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A30E4 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A30E0 = 1056964608;
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
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    return _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
  }
  return result;
}


// ===== 3eeec8 LiftableObject::InitFinal(void) =====
int __fastcall LiftableObject::InitFinal(LiftableObject *this)
{
  int result; // r0
  Character *character_660; // r3
  PhysicalWorld *v4; // r8
  PhysicalObject *v5; // r7

  result = GameObject::CheckSpawnProbability(this);
  if ( result < *((_DWORD *)this + 157) )
  {
    GameObject::InitFinal(this);
    result = GameObject::MeetCondition(this);
    if ( result )
    {
      character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
      *((_DWORD *)this + 230) = *((_DWORD *)character_660 + 72);
      *((_DWORD *)this + 231) = *((_DWORD *)character_660 + 73);
      *((_DWORD *)this + 232) = *((_DWORD *)character_660 + 74);
      GameObject::SetScale(this, (_DWORD *)this + 230);
      v4 = (PhysicalWorld *)dword_99F770;
      v5 = (PhysicalObject *)operator new(0x28u, 0);
      PhysicalObject::PhysicalObject(v5, v4, this, 0, 0, 0, 0, 0, 2u, 0xFFFFu, 1);
      *(_DWORD *)v5 = off_968F88;
      PhysicalObject::pin((int)v5);
      GameObject::SetPhysicalObject(this, v5, 0);
      return (*(int (__fastcall **)(LiftableObject *))(*(_DWORD *)this + 44))(this);
    }
  }
  return result;
}


// ===== 3eefe4 `non-virtual thunk to'LiftableObject::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'LiftableObject::DeclareProperties(LiftableObject *this)
{
  return LiftableObject::DeclareProperties((LiftableObject *)((char *)this - 4));
}


// ===== 3eefec LiftableObject::DeclareProperties(void) =====
void __fastcall LiftableObject::DeclareProperties(LiftableObject *this)
{
  PropertyMap *v1; // r10
  char *v3; // r8
  int v4; // r5
  int v5; // r5
  std::string v6; // [sp+14h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+2Ch] [bp-20h] BYREF

  v1 = (LiftableObject *)((char *)this + 4);
  v3 = (char *)this + 884;
  GameObject::DeclareProperties(this);
  v4 = operator new(0x24u, 0);
  *(_DWORD *)v4 = &off_95C5E8;
  std::string::string((std::string *)(v4 + 8), "data");
  *(_DWORD *)(v4 + 4) = v3 - (char *)v1;
  *(_DWORD *)(v4 + 32) = -1;
  *(_DWORD *)v4 = &off_964708;
  PropertyMap::AddProperty(v1, "data", (Property *)v4);
  v7._M_finish = (char *)&v7;
  v7._M_start_of_storage._M_data = (char *)&v7;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v7, 0x10u);
  *v7._M_finish = 0;
  v6._M_finish = (char *)&v6;
  v6._M_start_of_storage._M_data = (char *)&v6;
  std::string::_M_range_initialize(&v6, v7._M_start_of_storage._M_data, v7._M_finish);
  v5 = operator new(0x38u, 0);
  *(_DWORD *)v5 = &off_95C5E8;
  std::string::string((std::string *)(v5 + 8), "data_desc");
  *(_DWORD *)(v5 + 4) = (LiftableObject *)((char *)this + 888) - v1;
  *(_DWORD *)v5 = &off_95C5C8;
  *(_DWORD *)(v5 + 48) = v5 + 32;
  *(_DWORD *)(v5 + 52) = v5 + 32;
  std::string::_M_range_initialize((std::string *)(v5 + 32), v6._M_start_of_storage._M_data, v6._M_finish);
  PropertyMap::AddProperty(v1, "data_desc", (Property *)v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
}


// ===== 3ef17c glitch::scene::ISegmentCompileCallback::~ISegmentCompileCallback() =====
void __fastcall glitch::scene::ISegmentCompileCallback::~ISegmentCompileCallback(
        glitch::scene::ISegmentCompileCallback *this)
{
  ;
}


// ===== 3ef180 batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback() =====
void __fastcall batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback(
        batch::BatchNodeCompiler::SGameObjectLinkedCallback *this)
{
  ;
}


// ===== 3ef184 LevelConfig::Update(void) =====
void __fastcall LevelConfig::Update(LevelConfig *this)
{
  ;
}


// ===== 3ef188 LevelConfig::Draw(void) =====
void __fastcall LevelConfig::Draw(LevelConfig *this)
{
  ;
}


// ===== 3ef18c DBG_GetLoadingStepName(int) =====
const char *__fastcall DBG_GetLoadingStepName(int a1)
{
  if ( a1 < 0 )
    return "unknown";
  else
    return s_LoadingStepsNames[a1];
}


// ===== 3ef1b8 Color255To01(Point3D<float> &) =====
float __fastcall Color255To01(float *a1)
{
  float result; // r0

  *a1 = *a1 / 255.0;
  a1[1] = a1[1] / 255.0;
  result = a1[2] / 255.0;
  a1[2] = result;
  return result;
}


// ===== 3ef200 Level::_SpawnLoadingThread(void) =====
void __fastcall Level::_SpawnLoadingThread(Level *this)
{
  ;
}


// ===== 3ef204 Level::_CheckLoadProcess(void) =====
void __fastcall Level::_CheckLoadProcess(Level *this)
{
  ;
}


// ===== 3ef208 Level::_ThreadLoadingProcess(void) =====
void __fastcall Level::_ThreadLoadingProcess(Level *this)
{
  ;
}


// ===== 3ef20c Level::LoadScriptFile(void) =====
int __fastcall Level::LoadScriptFile(Level *this)
{
  return 1;
}


// ===== 3ef214 Level::_LoadResumeBatching(void) =====
void __fastcall Level::_LoadResumeBatching(Level *this)
{
  ;
}


// ===== 3ef218 Level::Load(void) =====
int __fastcall Level::Load(int this)
{
  *(_DWORD *)(this + 304) = 0;
  return this;
}


// ===== 3ef224 Level::ResetIsLoaded(void) =====
int __fastcall Level::ResetIsLoaded(int this)
{
  *(_BYTE *)(this + 324) = 0;
  *(_DWORD *)(this + 304) = 0;
  return this;
}


// ===== 3ef234 Level::UpdateMaterial(bool,bool) =====
void __fastcall Level::UpdateMaterial(Level *this, bool a2, bool a3)
{
  ;
}


// ===== 3ef238 Level::SG_BlockLevel(bool) =====
int __fastcall Level::SG_BlockLevel(int this, bool a2)
{
  int v2; // r3

  v2 = *(_DWORD *)(this + 236);
  if ( v2 )
    *(_BYTE *)(v2 + 57) = a2;
  return this;
}


// ===== 3ef248 Level::Draw2D(void) =====
void __fastcall Level::Draw2D(Level *this)
{
  ;
}


// ===== 3ef24c Level::hasActiveDialog(void) =====
bool __fastcall Level::hasActiveDialog(Level *this)
{
  return dword_99FB9C != dword_99FB8C;
}


// ===== 3ef278 Level::SetObjectModuleId(int) =====
int __fastcall Level::SetObjectModuleId(int this, int a2)
{
  *(_DWORD *)(this + 396) = a2;
  return this;
}


// ===== 3ef280 Level::UpdateLightSet(bool,int) =====
void __fastcall Level::UpdateLightSet(Level *this, bool a2, int a3)
{
  ;
}


// ===== 3ef284 std::search<std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::priv::_Eq_traits<std::char_traits<char>>>(std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::priv::_Eq_traits<std::char_traits<char>>) =====
_DWORD *__fastcall std::search<std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::priv::_Eq_traits<std::char_traits<char>>>(
        _DWORD *result,
        int *a2,
        int *a3,
        char **a4,
        char **a5)
{
  int v5; // r12
  int v6; // r4
  char *v7; // r5
  char *v8; // r6
  char *v9; // r11
  int v10; // r9
  int v11; // r6
  char *v12; // r6
  int v13; // r5
  int v14; // r8

  v5 = *a2;
  v6 = *a3;
  if ( *a2 == *a3 || (v7 = *a4, v8 = *a5, *a4 == *a5) )
  {
LABEL_18:
    *result = v5;
    return result;
  }
  if ( v8 == v7 - 1 )
  {
    if ( *(char *)(v5 - 1) != *v8 )
    {
      do
        *a2 = --v5;
      while ( v5 != *a3 && *(char *)(v5 - 1) != *(*a4 - 1) );
    }
    goto LABEL_18;
  }
  v9 = v7 - 2;
  v10 = v5 - 1;
  if ( *(char *)(v5 - 1) == *(v7 - 1) )
    goto LABEL_9;
  while ( 1 )
  {
    do
    {
      *a2 = v10;
      v6 = *a3;
      if ( *a3 == v10 )
      {
        *result = v10;
        return result;
      }
      v5 = v10;
      v11 = *(char *)--v10;
    }
    while ( v11 != *(*a4 - 1) );
LABEL_9:
    if ( v10 == v6 )
      break;
    v12 = v9;
    v13 = v10;
    while ( 1 )
    {
      v14 = *(char *)--v13;
      if ( v14 != *v12 )
        break;
      if ( *a5 == v12 )
        goto LABEL_18;
      --v12;
      if ( v13 == v6 )
      {
        *result = v13;
        return result;
      }
    }
  }
  *result = v6;
  return result;
}


// ===== 3ef394 batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback() =====
void __fastcall batch::BatchNodeCompiler::SGameObjectLinkedCallback::~SGameObjectLinkedCallback(
        batch::BatchNodeCompiler::SGameObjectLinkedCallback *this)
{
  *(_DWORD *)this = off_967658;
  CustomFree(this);
}


// ===== 3ef3c8 glitch::scene::ISegmentCompileCallback::~ISegmentCompileCallback() =====
void __fastcall glitch::scene::ISegmentCompileCallback::~ISegmentCompileCallback(
        glitch::scene::ISegmentCompileCallback *this)
{
  *(_DWORD *)this = off_967658;
  CustomFree(this);
}


// ===== 3ef3fc Level::CleanUpAllSkills(void) =====
int __fastcall Level::CleanUpAllSkills(Level *this)
{
  _DWORD *i; // r4
  int v2; // r6
  int v3; // r0
  int result; // r0
  char *v5; // [sp+4h] [bp+0h] BYREF

  v2 = dword_99F764 + 96;
  for ( i = *(_DWORD **)(dword_99F764 + 96); (_DWORD *)v2 != i; i = (_DWORD *)*i )
  {
    v3 = i[2];
    v5 = &Character::s_concurrentAI;
    result = Character::UnLoadScriptProcess(v3, &v5, 1);
  }
  return result;
}


// ===== 3ef460 Level::UnlockAllObjects(void) =====
int __fastcall Level::UnlockAllObjects(Level *this)
{
  int result; // r0
  _DWORD *i; // r3
  int v3; // r2

  result = dword_99F764 + 96;
  for ( i = *(_DWORD **)(dword_99F764 + 96); (_DWORD *)result != i; i = (_DWORD *)*i )
  {
    v3 = i[2];
    if ( *(_BYTE *)(v3 + 41) )
      *(_BYTE *)(v3 + 41) = 0;
  }
  return result;
}


// ===== 3ef4a8 Level::GetLevelConfig(void) =====
int __fastcall Level::GetLevelConfig(Level *this)
{
  int result; // r0

  result = *((_DWORD *)this + 14);
  if ( !result )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      return *((_DWORD *)this + 14);
    }
  }
  return result;
}


// ===== 3ef540 Level::GetMPReferee(void) =====
int __fastcall Level::GetMPReferee(Level *this)
{
  int v1; // r8
  _DWORD *i; // r5
  int v5; // r6
  int v6; // r4

  v1 = *((_DWORD *)this + 85);
  if ( !v1 )
  {
    v5 = dword_99F764 + 96;
    for ( i = *(_DWORD **)(dword_99F764 + 96); (_DWORD *)v5 != i; i = (_DWORD *)*i )
    {
      v6 = i[2];
      if ( v6 && !LC_API_STRNCMP_0(*(const char **)(v6 + 68), "referee", 7u) )
      {
        *((_DWORD *)this + 85) = v6;
        return v6;
      }
    }
  }
  return v1;
}


// ===== 3ef5cc Level::DisableFog(glitch::scene::ISceneNode *) =====
int __fastcall Level::DisableFog(Level *this, glitch::scene::ISceneNode *a2)
{
  return SceneManager::DisableFog(*(SceneManager **)(dword_99F73C + 28), a2);
}


// ===== 3ef5f0 Level::UpdateLightSet(int,std::vector<bool,std::allocator<bool>> &,glitch::scene::ISceneNode *) =====
int Level::UpdateLightSet()
{
  return SceneManager::UpdateLightSet(*(_DWORD *)(dword_99F73C + 28));
}


// ===== 3ef614 Level::GetSpawnPoint(void) =====
int __fastcall Level::GetSpawnPoint(Level *this)
{
  int result; // r0
  _DWORD *i; // r4
  int v4; // r6
  _DWORD *v5; // r2
  int v6; // r1
  int v7; // r3
  _BYTE v8[16]; // [sp+4h] [bp-10h] BYREF

  result = 0;
  i = *(_DWORD **)(dword_99F764 + 20);
  v4 = dword_99F764 + 12;
  while ( (_DWORD *)v4 != i )
  {
    if ( !i[11] )
      goto LABEL_7;
    ObjectBase::GetHandle((ObjectBase *)v8);
    result = ObjectHandle::GetObject((ObjectHandle *)v8, 0);
    if ( !result || *(_DWORD *)(result + 244) != 13 )
    {
      result = 0;
LABEL_7:
      v5 = (_DWORD *)i[3];
      v6 = 0;
      if ( !v5 )
        goto LABEL_18;
      goto LABEL_8;
    }
    if ( !*(_BYTE *)(result + 138) || *((_DWORD *)this + 68) != *(_DWORD *)(result + 884) )
      goto LABEL_7;
    v6 = 1;
    v5 = (_DWORD *)i[3];
    if ( !v5 )
    {
LABEL_18:
      v7 = i[1];
      if ( *(_DWORD **)(v7 + 12) == i )
      {
        do
        {
          i = (_DWORD *)v7;
          v7 = *(_DWORD *)(v7 + 4);
        }
        while ( *(_DWORD **)(v7 + 12) == i );
        v5 = (_DWORD *)i[3];
      }
      if ( v5 != (_DWORD *)v7 )
        i = (_DWORD *)v7;
      goto LABEL_11;
    }
LABEL_8:
    for ( i = v5; i[2]; i = (_DWORD *)i[2] )
      ;
LABEL_11:
    if ( v6 )
      return result;
  }
  return result;
}


// ===== 3ef728 Level::SG_DBG_TraceDetailedQuestInformation(int) =====
PlayerManager *__fastcall Level::SG_DBG_TraceDetailedQuestInformation(Level *this, int a2)
{
  PlayerManager *result; // r0
  unsigned int v4; // r4
  Character *v5; // r0

  result = (PlayerManager *)dword_99F76C;
  if ( *(_DWORD *)(dword_99F76C + 1732) )
  {
    v4 = 0;
    do
    {
      v5 = *(Character **)(PlayerManager::GetPlayer(result, v4++, 1) + 1632);
      if ( v5 )
        Character::SG_DBG_TraceDetailedQuestInformation(v5, (__sFILE *)&_sF + 1, a2, -1);
      result = (PlayerManager *)dword_99F76C;
    }
    while ( *(_DWORD *)(dword_99F76C + 1732) > v4 );
  }
  return result;
}


// ===== 3ef7ac Level::SG_IsMapLocSeen(int) =====
int __fastcall Level::SG_IsMapLocSeen(Level *this, int a2)
{
  PlayerManager *v3; // r0
  int v4; // r5
  unsigned int v5; // r4
  Character *v6; // r0

  v3 = (PlayerManager *)dword_99F76C;
  v4 = *(_DWORD *)(dword_99F76C + 1732);
  if ( v4 )
  {
    v5 = 0;
    v4 = 0;
    do
    {
      while ( 1 )
      {
        v6 = *(Character **)(PlayerManager::GetPlayer(v3, v5++, 1) + 1632);
        if ( v6 )
        {
          if ( !v4 )
            break;
        }
        v3 = (PlayerManager *)dword_99F76C;
        if ( *(_DWORD *)(dword_99F76C + 1732) <= v5 )
          return v4;
      }
      v4 = Character::SG_IsMapLocSeen(v6, a2, -1) != nullptr;
      v3 = (PlayerManager *)dword_99F76C;
    }
    while ( *(_DWORD *)(dword_99F76C + 1732) > v5 );
  }
  return v4;
}


// ===== 3ef850 Level::SG_IsMapLocLocked(int) =====
int __fastcall Level::SG_IsMapLocLocked(Level *this, int a2)
{
  PlayerManager *v3; // r0
  int v4; // r5
  unsigned int v5; // r4
  Character *v6; // r0

  v3 = (PlayerManager *)dword_99F76C;
  if ( !*(_DWORD *)(dword_99F76C + 1732) )
    return 1;
  v5 = 0;
  v4 = 1;
  do
  {
    while ( 1 )
    {
      v6 = *(Character **)(PlayerManager::GetPlayer(v3, v5++, 1) + 1632);
      if ( v6 )
      {
        if ( v4 )
          break;
      }
      v3 = (PlayerManager *)dword_99F76C;
      if ( *(_DWORD *)(dword_99F76C + 1732) <= v5 )
        return v4;
    }
    if ( !Character::SG_IsMapLocLocked(v6, a2, -1) )
      v4 = 0;
    v3 = (PlayerManager *)dword_99F76C;
  }
  while ( *(_DWORD *)(dword_99F76C + 1732) > v5 );
  return v4;
}


// ===== 3ef8f8 Level::SG_IsLevelLocked(int) =====
int __fastcall Level::SG_IsLevelLocked(Level *this, int a2)
{
  PlayerManager *v3; // r0
  int v4; // r5
  unsigned int v5; // r4
  Character *v6; // r0

  v3 = (PlayerManager *)dword_99F76C;
  if ( !*(_DWORD *)(dword_99F76C + 1732) )
    return 1;
  v5 = 0;
  v4 = 1;
  do
  {
    while ( 1 )
    {
      v6 = *(Character **)(PlayerManager::GetPlayer(v3, v5++, 1) + 1632);
      if ( v6 )
      {
        if ( v4 )
          break;
      }
      v3 = (PlayerManager *)dword_99F76C;
      if ( *(_DWORD *)(dword_99F76C + 1732) <= v5 )
        return v4;
    }
    if ( !Character::SG_IsLevelLocked(v6, a2, -1) )
      v4 = 0;
    v3 = (PlayerManager *)dword_99F76C;
  }
  while ( *(_DWORD *)(dword_99F76C + 1732) > v5 );
  return v4;
}


// ===== 3ef9a0 Level::Restart(void) =====
int __fastcall Level::Restart(Level *this)
{
  return Application::LoadLevel(
           (Application *)&Singleton<Application>::s_inst,
           *((char **)this + 67),
           *((const char **)this + 68),
           *((_DWORD *)this + 69),
           0,
           1,
           0,
           0,
           0,
           0);
}


// ===== 3ef9fc DBG_DisplayLoadLevelStats(char const*) =====
int __fastcall DBG_DisplayLoadLevelStats(const char *a1)
{
  puts("*******************************************************************");
  printf("Loaded a level for the %d time\n", s_dbgLevelLoadCount);
  printf("Next level to be loaded is : %s \n", a1);
  return puts("*******************************************************************");
}


// ===== 3efa54 Level::SG_SavePlayer(Character *,bool) =====
int __fastcall Level::SG_SavePlayer(int this, Character *a2, int a3)
{
  int v4; // r5
  char IsBlocked; // r6
  int Level; // r0

  v4 = this;
  if ( a2 )
  {
    this = (*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 40))(a2);
    if ( this )
    {
      IsBlocked = Character::SG_IsBlocked(a2);
      if ( a3 )
        Character::SG_Block(a2, 0);
      Level = Character::GetLevel(a2);
      Character::SG_SetPlayerLevel(a2, Level);
      Character::SG_SetSaveDate(a2);
      Character::SG_SetLevelEntryPoint(a2, *(_DWORD *)(v4 + 272), -1);
      Character::SG_Save(a2);
      return Character::SG_Block(a2, IsBlocked);
    }
  }
  return this;
}


// ===== 3efaec Level::SG_SavePlayer(int,bool) =====
int __fastcall Level::SG_SavePlayer(int this, int a2, bool a3)
{
  Level *v4; // r8
  PlayerManager *v6; // r6
  Character *v7; // r1

  v4 = (Level *)this;
  v6 = (PlayerManager *)dword_99F76C;
  if ( a2 < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "playerID >= 0",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp",
               2865);
    }
  }
  if ( a2 >= *((_DWORD *)v6 + 433) )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "playerID < pMgr->GetNumPlayerCharacters()",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp",
               2866);
    }
  }
  if ( a2 >= 0 && a2 < *((_DWORD *)v6 + 433) )
  {
    v7 = *(Character **)(PlayerManager::GetPlayer(v6, a2, 1) + 1632);
    return Level::SG_SavePlayer(v4, v7, a3);
  }
  return this;
}


// ===== 3efc40 Level::SG_SaveAllPlayer(bool) =====
Level *__fastcall Level::SG_SaveAllPlayer(Level *this, bool a2)
{
  Level *v2; // r7
  unsigned int v4; // r4

  v2 = this;
  if ( *(_DWORD *)(dword_99F76C + 1732) )
  {
    v4 = 0;
    do
      this = (Level *)Level::SG_SavePlayer(v2, v4++, a2);
    while ( *(_DWORD *)(dword_99F76C + 1732) > v4 );
  }
  return this;
}


// ===== 3efca4 Level::_LoadFinalInit(void) =====
void __fastcall Level::_LoadFinalInit(Level *this)
{
  _DWORD *v1; // r4
  int v2; // r6
  int v3; // r0
  _DWORD *v4; // r2
  int v5; // r3
  _BYTE v6[12]; // [sp+4h] [bp-Ch] BYREF

  v1 = *(_DWORD **)(dword_99F764 + 20);
  v2 = dword_99F764 + 12;
  while ( (_DWORD *)v2 != v1 )
  {
    if ( v1[11] )
    {
      ObjectBase::GetHandle((ObjectBase *)v6);
      v3 = ObjectHandle::operator GameObject *(v6);
      if ( v3 )
        (*(void (__fastcall **)(int))(*(_DWORD *)v3 + 88))(v3);
    }
    v4 = (_DWORD *)v1[3];
    if ( v4 )
    {
      while ( v4[2] )
        v4 = (_DWORD *)v4[2];
      v1 = v4;
    }
    else
    {
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
  }
}


// ===== 3efd74 Level::ResetSkinning(void) =====
void __fastcall Level::ResetSkinning(Level *this)
{
  _DWORD *v1; // r4
  int v2; // r6
  int v3; // r0
  int v4; // r7
  VisualObject *v5; // r0
  _DWORD *v6; // r2
  int v7; // r3
  _BYTE v8[16]; // [sp+4h] [bp-10h] BYREF

  v1 = *(_DWORD **)(dword_99F764 + 20);
  v2 = dword_99F764 + 12;
  while ( (_DWORD *)v2 != v1 )
  {
    if ( v1[11] )
    {
      ObjectBase::GetHandle((ObjectBase *)v8);
      v3 = ObjectHandle::operator GameObject *(v8);
      v4 = v3;
      if ( v3 )
      {
        v5 = *(VisualObject **)(v3 + 728);
        if ( v5 )
        {
          VisualObject::ResetSkinning(v5);
          VisualObject::ApplyShadowMaterial(*(VisualObject **)(v4 + 728));
          VisualObject::ApplyXrayMaterial(*(VisualObject **)(v4 + 728));
        }
      }
    }
    v6 = (_DWORD *)v1[3];
    if ( v6 )
    {
      while ( v6[2] )
        v6 = (_DWORD *)v6[2];
      v1 = v6;
    }
    else
    {
      v7 = v1[1];
      if ( v1 == *(_DWORD **)(v7 + 12) )
      {
        do
        {
          v1 = (_DWORD *)v7;
          v7 = *(_DWORD *)(v7 + 4);
        }
        while ( *(_DWORD **)(v7 + 12) == v1 );
        v6 = (_DWORD *)v1[3];
      }
      if ( v6 != (_DWORD *)v7 )
        v1 = (_DWORD *)v7;
    }
  }
}


// ===== 3efe58 batch::BatchNodeCompiler::SGameObjectLinkedCallback::operator()(glitch::scene::CBatchMesh *,void *,glitch::scene::SCompileInfo const&) =====
unsigned int __fastcall batch::BatchNodeCompiler::SGameObjectLinkedCallback::operator()(int a1, int a2, int a3)
{
  unsigned int result; // r0
  int v7; // r2
  _DWORD *v8; // r3
  int v9; // r5
  int v10; // r6
  _DWORD *v11; // r4
  _DWORD *v12; // r1
  unsigned int v13; // r2
  bool v14; // cc
  _DWORD *v15; // r2
  int v16; // r3

  result = glitch::scene::CSceneManager::getCurrentRenderedNode(
             *(glitch::scene::CSceneManager **)(a1 + 4),
             nullptr,
             nullptr);
  v7 = *(_DWORD *)(a1 + 8);
  v8 = *(_DWORD **)(v7 + 32);
  v9 = *(_DWORD *)(a2 + 8);
  v10 = *(_DWORD *)(a2 + 112) * a3 + 44;
  v11 = (_DWORD *)(v7 + 28);
  if ( !v8 )
    goto LABEL_15;
  v12 = (_DWORD *)(v7 + 28);
  while ( 1 )
  {
    v13 = v8[4];
    v14 = result > v13;
    if ( result <= v13 )
      v15 = (_DWORD *)v8[2];
    else
      v15 = (_DWORD *)v8[3];
    if ( v14 )
      v8 = v12;
    v12 = v8;
    if ( !v15 )
      break;
    v8 = v15;
  }
  if ( v11 == v8 )
    goto LABEL_16;
  if ( result < v8[4] )
LABEL_15:
    v8 = v11;
  if ( v11 != v8 )
  {
    v16 = v8[5];
    *(_DWORD *)(v9 + v10) = v16;
    if ( v16 )
      goto LABEL_14;
    goto LABEL_17;
  }
LABEL_16:
  *(_DWORD *)(v9 + v10) = 0;
LABEL_17:
  if ( gAssertLevel == 2 )
  {
    v16 = 0;
    dword_0 = 0;
  }
  else
  {
    if ( gAssertLevel == 1 )
      result = fprintf(
                 (FILE *)&_sF + 2,
                 "ASSERT(%s) FAILED: %s:%d\n",
                 "go != 0",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources/Data/Collada/BatchNodeCompiler.h",
                 72);
    v16 = 0;
  }
LABEL_14:
  *(_BYTE *)(v16 + 764) = 1;
  return result;
}


// ===== 3eff98 Level::_LoadCharStates(void) =====
void __fastcall Level::_LoadCharStates(Level *this)
{
  int *v1; // r4
  int v2; // r6
  int v3; // r5
  int PreSetAIState; // r3

  v2 = dword_99F764 + 96;
  v1 = *(int **)(dword_99F764 + 96);
  if ( (int *)(dword_99F764 + 96) != v1 )
  {
    do
    {
      v3 = v1[2];
      if ( v3 )
      {
        PreSetAIState = Character::GetPreSetAIState((Character *)v1[2]);
        if ( !PreSetAIState || PreSetAIState == 17 )
        {
          CharStateMachine::SM_SetPreSpawnState((CharStateMachine *)(v3 + 1276));
          v1 = (int *)*v1;
          continue;
        }
        CharStateMachine::SM_SetIdleState((CharStateMachine *)(v3 + 1276), 0);
      }
      v1 = (int *)*v1;
    }
    while ( (int *)v2 != v1 );
  }
}


// ===== 3f0018 Level::_LoadPlayer(void) =====
PlayerManager *__fastcall Level::_LoadPlayer(Level *this)
{
  SpawnPoint *v1; // r5
  PlayerManager *result; // r0
  int v4; // r6
  GameObject *v5; // r11
  _DWORD *i; // r10
  int v7; // r9
  int Object; // r0
  _DWORD *v9; // r2
  int v10; // r1
  int v11; // r3
  _BYTE v12[16]; // [sp+Ch] [bp-10h] BYREF

  result = (PlayerManager *)dword_99F76C;
  if ( *(int *)(dword_99F76C + 1732) > 0 )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = *(GameObject **)(PlayerManager::GetLocalPlayer(result, v4, 1) + 1632);
      if ( v5 )
        break;
LABEL_30:
      result = (PlayerManager *)dword_99F76C;
LABEL_17:
      if ( ++v4 >= *((_DWORD *)result + 433) )
        return result;
    }
    i = *(_DWORD **)(dword_99F764 + 20);
    v7 = dword_99F764 + 12;
    while ( 1 )
    {
      if ( i == (_DWORD *)v7 )
        goto LABEL_30;
      if ( !i[11] )
        goto LABEL_10;
      ObjectBase::GetHandle((ObjectBase *)v12);
      Object = ObjectHandle::GetObject((ObjectHandle *)v12, 0);
      if ( !Object || *(_DWORD *)(Object + 244) != 13 )
        break;
      v1 = (SpawnPoint *)Object;
      if ( !*(_BYTE *)(Object + 138) || *((_DWORD *)this + 68) != *(_DWORD *)(Object + 884) )
        goto LABEL_10;
      v10 = 1;
      v9 = (_DWORD *)i[3];
      if ( !v9 )
      {
LABEL_24:
        v11 = i[1];
        if ( *(_DWORD **)(v11 + 12) == i )
        {
          do
          {
            i = (_DWORD *)v11;
            v11 = *(_DWORD *)(v11 + 4);
          }
          while ( i == *(_DWORD **)(v11 + 12) );
          v9 = (_DWORD *)i[3];
        }
        if ( (_DWORD *)v11 != v9 )
          i = (_DWORD *)v11;
        goto LABEL_14;
      }
LABEL_11:
      for ( i = v9; i[2]; i = (_DWORD *)i[2] )
        ;
LABEL_14:
      if ( v10 )
      {
        result = (PlayerManager *)dword_99F76C;
        if ( !*(_BYTE *)(dword_99F76C + 1744) )
        {
          SpawnPoint::PlaceObject(v1, v5);
          Character::SetInitialPosition(v5, (char *)v5 + 352);
          Character::SG_SetLevelEntryPoint(v5, *((_DWORD *)this + 68), -1);
          result = (PlayerManager *)dword_99F76C;
        }
        goto LABEL_17;
      }
    }
    v1 = nullptr;
LABEL_10:
    v9 = (_DWORD *)i[3];
    v10 = 0;
    if ( !v9 )
      goto LABEL_24;
    goto LABEL_11;
  }
  return result;
}


// ===== 3f01c8 Level::_LoadFromXML(TiXmlElement *) =====
int __fastcall Level::_LoadFromXML(Level *this, TiXmlElement *a2)
{
  const char *v4; // r0
  int result; // r0

  if ( !a2 )
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
        "element",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp",
        2270);
    }
  }
  v4 = (const char *)TiXmlElement::Attribute(a2, "gametype");
  result = LC_API_STRCMP_0(v4, "Player");
  if ( result )
    return ObjectManager::LoadFromXML(dword_99F764, a2, nullptr, (float *)this + 88, *((_DWORD *)this + 99));
  return result;
}


// ===== 3f02ac Level::AssignSteamToLoadDataFile(StreamBuffer &) =====
StreamBuffer *__fastcall Level::AssignSteamToLoadDataFile(Level *this, StreamBuffer *a2)
{
  int v4; // r4
  StreamBuffer *result; // r0

  v4 = operator new(80, 0);
  *(_DWORD *)v4 = off_967670;
  result = StreamBuffer::StreamBuffer((StreamBuffer *)(v4 + 8), a2);
  *(_BYTE *)(v4 + 72) = 0;
  *(_DWORD *)(v4 + 56) = 0;
  *(_DWORD *)(v4 + 60) = 0;
  *(_DWORD *)(v4 + 64) = 0;
  *(_DWORD *)(v4 + 68) = 0;
  *((_DWORD *)this + 80) = v4;
  return result;
}


// ===== 3f0310 Level::LoadFileData::~LoadFileData() =====
void __fastcall Level::LoadFileData::~LoadFileData(Level::LoadFileData *this)
{
  *(_DWORD *)this = off_967670;
  StreamBuffer::~StreamBuffer((Level::LoadFileData *)((char *)this + 8));
}


// ===== 3f0344 std::operator==<Point3D<float>,std::allocator<Point3D<float>>>(std::vector<Point3D<float>,std::allocator<Point3D<float>>> const&,std::vector<Point3D<float>,std::allocator<Point3D<float>>> const&) =====
int __fastcall std::operator==<Point3D<float>,std::allocator<Point3D<float>>>(float **a1, int a2)
{
  float *v2; // r4
  float *v3; // r6
  float *v4; // r5
  _BOOL4 v6; // r0

  v2 = *a1;
  v3 = a1[1];
  v4 = *(float **)a2;
  if ( -1431655765 * (v3 - *a1) != -1431655765 * ((*(_DWORD *)(a2 + 4) - *(_DWORD *)a2) >> 2) )
    return 0;
  if ( v3 != v2 )
  {
    while ( 1 )
    {
      v6 = Point3D<float>::operator==(v2, v4);
      v2 += 3;
      if ( !v6 )
        break;
      if ( v3 == v2 )
        return 1;
      v4 += 3;
    }
    return 0;
  }
  return 1;
}


// ===== 3f03d8 SimpleTypeProperty<std::vector<Point3D<float>,std::allocator<Point3D<float>>>>::IsDefaultValue(void *) =====
int __fastcall SimpleTypeProperty<std::vector<Point3D<float>>>::IsDefaultValue(int a1, int a2)
{
  return std::operator==<Point3D<float>,std::allocator<Point3D<float>>>(a2 + *(_DWORD *)(a1 + 4), a1 + 32);
}


// ===== 3f03ec Level::LoadFileData::~LoadFileData() =====
void __fastcall Level::LoadFileData::~LoadFileData(Level::LoadFileData *this)
{
  *(_DWORD *)this = off_967670;
  StreamBuffer::~StreamBuffer((Level::LoadFileData *)((char *)this + 8));
  CustomFree(this);
}


// ===== 3f0428 Level::LoadCheckpoint(void) =====
int __fastcall Level::LoadCheckpoint(Level *this)
{
  LevelSavegame *v2; // r0
  int result; // r0
  Character *v4; // r5

  v2 = *((LevelSavegame **)this + 59);
  *((_BYTE *)this + 244) = 1;
  if ( v2 )
  {
    LevelSavegame::LoadCheckPoint(v2, *((_DWORD *)this + 69), *((_DWORD *)this + 16), *((_DWORD *)this + 15));
    GameEventManager::ReInit(*((GameEventManager **)this + 101));
  }
  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  v4 = *(Character **)(result + 1632);
  if ( v4 )
  {
    Character::SG_LoadCheckpoint(*(Character **)(result + 1632), 16);
    result = Character::SG_Update(v4, 1);
  }
  *((_BYTE *)this + 244) = 0;
  return result;
}


// ===== 3f04b4 Level::CheckpointSave(Point3D<float> const&,bool) =====
int __fastcall Level::CheckpointSave(int a1, _DWORD *a2, int a3)
{
  int result; // r0
  Character *v7; // r7
  int v8; // r2

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  v7 = *(Character **)(result + 1632);
  if ( *(_DWORD *)(a1 + 236) )
  {
    if ( *(int *)(a1 + 304) > 33 )
    {
      if ( v7 )
      {
        result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 52))(*(_DWORD *)(result + 1632));
        if ( !result )
        {
          *((_DWORD *)v7 + 1306) = *a2;
          *((_DWORD *)v7 + 1307) = a2[1];
          v8 = a2[2];
          if ( !a3 )
            a2 = (_DWORD *)((char *)v7 + 352);
          *((_DWORD *)v7 + 1308) = v8;
          *((_DWORD *)v7 + 1309) = *a2;
          *((_DWORD *)v7 + 1310) = a2[1];
          *((_DWORD *)v7 + 1311) = a2[2];
          Character::SG_SaveCheckpoint(v7);
          return LevelSavegame::SaveCheckPoint(
                   *(LevelSavegame **)(a1 + 236),
                   *(_DWORD *)(a1 + 276),
                   *(_DWORD *)(a1 + 64),
                   *(_DWORD *)(a1 + 60));
        }
      }
    }
  }
  return result;
}


// ===== 3f059c Level::QuickSave(bool) =====
int __fastcall Level::QuickSave(Level *this, int a2)
{
  int result; // r0
  _DWORD *v5; // r7
  int v6; // r1
  int v7; // r2
  char v8; // r3
  LevelSavegame *v9; // r0
  char v10; // r5

  result = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  v5 = *(_DWORD **)(result + 1632);
  if ( *((_DWORD *)this + 59) )
  {
    if ( *((_DWORD *)this + 76) == 38 )
    {
      if ( v5 )
      {
        result = (*(int (__fastcall **)(_DWORD))(*v5 + 52))(*(_DWORD *)(result + 1632));
        if ( !result
          && (!*(_BYTE *)(GetOnline() + 5)
           || (result = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)) != 0
           && !*(_BYTE *)(dword_99F76C + 1817)) )
        {
          v6 = v5[88];
          v7 = v5[89];
          v5[1308] = v5[90];
          v5[1306] = v6;
          v8 = 108;
          v5[1307] = v7;
          v9 = *((LevelSavegame **)this + 59);
          if ( a2 )
            v8 = 0;
          v10 = *((_BYTE *)v9 + 57);
          if ( a2 )
          {
            *((_BYTE *)v9 + 57) = v8;
            v9 = *((LevelSavegame **)this + 59);
          }
          result = LevelSavegame::Save(v9);
          *(_BYTE *)(*((_DWORD *)this + 59) + 57) = v10;
        }
      }
    }
  }
  return result;
}


// ===== 3f0690 Level::Unload(void) =====
int __fastcall Level::Unload(Level *this)
{
  MenuManager *v2; // r0
  MenuManager *Instance; // r7
  MenuBase *MenuByName; // r6
  int v5; // r3
  int v6; // r3
  PlayerManager *v7; // r0
  glitch::os::Timer *v8; // r0
  int result; // r0

  v2 = (MenuManager *)Level::QuickSave(this, *((unsigned __int8 *)this + 240));
  Instance = (MenuManager *)MenuManager::GetInstance(v2);
  MenuByName = (MenuBase *)MenuManager::GetMenuByName(Instance, "menu_Loading");
  MenuManager::PushMenu(Instance, MenuByName);
  v5 = *((_DWORD *)this + 74);
  if ( v5 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v5 + 4))(*((_DWORD *)this + 74));
    *((_DWORD *)this + 74) = 0;
  }
  v6 = *((_DWORD *)this + 75);
  if ( v6 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v6 + 4))(*((_DWORD *)this + 75));
    *((_DWORD *)this + 75) = 0;
  }
  Level::SG_SaveAllPlayer(this, *((_BYTE *)this + 240));
  VoxSoundManager::StopAllSounds((VoxSoundManager *)VoxSoundManager::s_instance, 500);
  if ( MenuBase::IsVisible(MenuByName) )
    MenuManager::PopMenu(Instance, MenuByName);
  *((_DWORD *)this + 76) = 0;
  ObjectManager::NetworkUnInitLevel((ObjectManager *)dword_99F764);
  v7 = (PlayerManager *)dword_99F76C;
  *(_BYTE *)(dword_99F76C + 1737) = 0;
  v8 = (glitch::os::Timer *)PlayerManager::Update(v7);
  result = glitch::os::Timer::getRealTime(v8);
  Random::s_seed = result;
  Random::s_syncedSeed = 0;
  return result;
}


// ===== 3f07b0 Level::SG_SaveLocalPlayer(bool) =====
int __fastcall Level::SG_SaveLocalPlayer(Level *this, int a2)
{
  Character *v4; // r1

  v4 = *(Character **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
  return Level::SG_SavePlayer((int)this, v4, a2);
}


// ===== 3f07f8 Level::GenerateRandomLevel(StreamBuffer &,uint) =====
int __fastcall Level::GenerateRandomLevel(Level *this, StreamBuffer *a2, int a3)
{
  void *v3; // r5
  rnd::RandomGenerator *v7; // r5
  int v8; // r5
  void *v9; // r6

  v3 = *((void **)this + 83);
  if ( v3 )
  {
    rnd::RandomGenerator::~RandomGenerator(*((rnd::RandomGenerator **)this + 83));
    CustomFree(v3);
    *((_DWORD *)this + 83) = 0;
  }
  v7 = (rnd::RandomGenerator *)operator new(400, 0);
  rnd::RandomGenerator::RandomGenerator(v7);
  *((_DWORD *)this + 83) = v7;
  rnd::RandomGenerator::LoadRuleFile(v7, *((const char **)this + 67));
  v8 = rnd::RandomGenerator::Generate(*((rnd::RandomGenerator **)this + 83), a3);
  rnd::RandomGenerator::SaveModularLevelToStream(*((rnd::RandomGenerator **)this + 83), a2);
  v9 = *((void **)this + 83);
  if ( v9 )
  {
    rnd::RandomGenerator::~RandomGenerator(*((rnd::RandomGenerator **)this + 83));
    CustomFree(v9);
    *((_DWORD *)this + 83) = 0;
  }
  return v8;
}


// ===== 3f0898 Level::PlaceFaeryAndFollowers(Character *) =====
void __fastcall Level::PlaceFaeryAndFollowers(Level *this, Character *a2)
{
  int *v2; // r6
  int v3; // r9
  _DWORD *v4; // r5
  GameObject *v5; // r10
  float *TargetPosition; // r0
  PlayerManager *v7; // r0
  int v8; // r4
  int v9; // r3
  Character *v10; // r4
  CharAI *v11; // r5
  Character *v12; // r0
  unsigned int CurrentFaerieId; // r0
  int v14; // r3
  Character *v16; // [sp+4h] [bp-8h]
  float v17; // [sp+Ch] [bp+0h] BYREF
  float v18; // [sp+10h] [bp+4h]
  float v19; // [sp+14h] [bp+8h]

  v3 = dword_99F764 + 96;
  v2 = *(int **)(dword_99F764 + 96);
  if ( (int *)(dword_99F764 + 96) != v2 )
  {
    do
    {
      v4 = (_DWORD *)v2[2];
      if ( v4 )
      {
        if ( !Character::IsFaerie((Character *)v2[2]) && !Character::IsFollower((Character *)v4) )
        {
          v2 = (int *)*v2;
          continue;
        }
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
        if ( a2 )
        {
          v5 = a2;
        }
        else
        {
          if ( *(_BYTE *)(GetOnline() + 5) )
          {
            v5 = *(GameObject **)(PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 1632);
            if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
            {
              v14 = *(_DWORD *)(PlayerManager::GetHostingPlayer((PlayerManager *)dword_99F76C) + 1648);
              v4[69] = 0;
              v4[68] = v14;
            }
          }
          else
          {
            v5 = *(GameObject **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
          }
          if ( !v5 )
          {
            v2 = (int *)*v2;
            continue;
          }
        }
        GameObject::GetLookAtVec(v5, &v17);
        TargetPosition = (float *)GameObject::GetTargetPosition(v5);
        v17 = v17 + *TargetPosition;
        v18 = v18 + TargetPosition[1];
        v19 = v19 + TargetPosition[2];
        GameObject::SetPosition((GameObject *)v4);
        GameObject::ForceUpdatePosition((GameObject *)v4);
        if ( !Character::IsFaerie((Character *)v4) )
        {
          GameObject::DisableZoning((GameObject *)v4);
          v2 = (int *)*v2;
          continue;
        }
        v7 = (PlayerManager *)dword_99F76C;
        if ( *(int *)(dword_99F76C + 1732) > 0 )
        {
          v8 = 0;
          do
          {
            v9 = *(_DWORD *)(PlayerManager::GetPlayer(v7, v8++, 0) + 1632);
            if ( v9 )
              *(_DWORD *)(v9 + 1056) = v4;
            v7 = (PlayerManager *)dword_99F76C;
          }
          while ( v8 < *(_DWORD *)(dword_99F76C + 1732) );
        }
        v16 = (Character *)v4[262];
        v10 = *(Character **)(PlayerManager::GetLocalPlayer(v7, 0, 1) + 1632);
        v11 = (CharAI *)(v4 + 242);
        if ( v10 )
        {
          CharAI::AI_SetMaster(v11, v10);
          v12 = v10;
        }
        else
        {
          CharAI::AI_SetMaster(v11, v5);
          v12 = v5;
        }
        CurrentFaerieId = Character::SG_GetCurrentFaerieId(v12, -1);
        Character::ChangeFaery(v5, CurrentFaerieId);
        CharAI::AI_SetMaster(v11, v16);
      }
      v2 = (int *)*v2;
    }
    while ( (int *)v3 != v2 );
  }
}


// ===== 3f0ae0 Level::UpdateListener(void) =====
void __fastcall Level::UpdateListener(Level *this)
{
  int v2; // r2
  int LocalPlayer; // r0
  char *TargetPosition; // r0
  int v5; // r1
  int v6; // r2
  int v7; // r5
  int v8; // r3
  int v9; // r5
  int v10; // r5
  int v11; // r0
  _DWORD *v12; // r0
  int v13; // r1
  int v14; // r3
  _DWORD *v15; // r1
  int v16; // r0
  int v17; // r0
  char *v18; // r0
  int v19; // r12
  int v20; // r1
  _DWORD v21[3]; // [sp+10h] [bp-7Ch] BYREF
  _DWORD v22[3]; // [sp+1Ch] [bp-70h] BYREF
  _DWORD v23[3]; // [sp+28h] [bp-64h] BYREF
  _DWORD v24[3]; // [sp+34h] [bp-58h] BYREF
  int v25; // [sp+40h] [bp-4Ch] BYREF
  int v26; // [sp+44h] [bp-48h]
  int v27; // [sp+48h] [bp-44h]
  int v28; // [sp+4Ch] [bp-40h] BYREF
  int v29; // [sp+50h] [bp-3Ch]
  int v30; // [sp+54h] [bp-38h]
  int v31; // [sp+58h] [bp-34h] BYREF
  int v32; // [sp+5Ch] [bp-30h]
  int v33; // [sp+60h] [bp-2Ch]
  int v34; // [sp+64h] [bp-28h] BYREF
  int v35; // [sp+68h] [bp-24h]
  int v36; // [sp+6Ch] [bp-20h]
  float v37[2]; // [sp+70h] [bp-1Ch] BYREF
  float v38[2]; // [sp+78h] [bp-14h] BYREF
  _DWORD v39[3]; // [sp+80h] [bp-Ch] BYREF

  if ( (`guard variable for'Level::UpdateListener(void)::curListener & 1) == 0
    && _cxa_guard_acquire(&`guard variable for'Level::UpdateListener(void)::curListener) )
  {
    Level::UpdateListener(void)::curListener = Arrays::Listeners::members + 28 * *((_DWORD *)this + 57);
    _cxa_guard_release(&`guard variable for'Level::UpdateListener(void)::curListener);
  }
  v27 = 0;
  v2 = Level::UpdateListener(void)::curListener;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  switch ( *(_DWORD *)(Level::UpdateListener(void)::curListener + 4) )
  {
    case 0:
      v15 = *(_DWORD **)(*((_DWORD *)this + 74) + 8);
      if ( !v15 )
        break;
      glitch::scene::ISceneNode::getAbsolutePosition(v24, v15);
      v34 = v24[0];
      v35 = v24[1];
      v36 = v24[2];
      v2 = Level::UpdateListener(void)::curListener;
      v9 = *(_DWORD *)(Level::UpdateListener(void)::curListener + 12);
      if ( v9 != 1 )
        goto LABEL_7;
      goto LABEL_22;
    case 1:
      if ( *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632) )
      {
        LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
        TargetPosition = GameObject::GetTargetPosition(*(GameObject **)(LocalPlayer + 1632));
        v5 = *((_DWORD *)TargetPosition + 1);
        v6 = *((_DWORD *)TargetPosition + 2);
        v34 = *(_DWORD *)TargetPosition;
        v35 = v5;
        v36 = v6;
        v7 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(dword_99F73C + 16) + 204) - 4) + 32);
        v39[1] = 0;
        v39[0] = 0;
        GetScreenPosFromWorldPos(&v34, v39);
        v38[0] = (float)v39[0];
        v38[1] = (float)v7;
        GetWorldPosFromScreenPos(v38, &v25, 0, v8);
        v35 = v26;
        v34 = v25;
        v36 = v27;
      }
      v2 = Level::UpdateListener(void)::curListener;
      break;
    case 2:
      if ( *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632) )
      {
        v17 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
        v18 = GameObject::GetTargetPosition(*(GameObject **)(v17 + 1632));
        v19 = *(_DWORD *)v18;
        v20 = *((_DWORD *)v18 + 1);
        v36 = *((_DWORD *)v18 + 2);
        v34 = v19;
        v35 = v20;
      }
      v2 = Level::UpdateListener(void)::curListener;
      break;
    case 3:
      v37[0] = (float)(Width_Screen / 2);
      v37[1] = (float)(Height_Screen / 2);
      GetWorldPosFromScreenPos(v37, &v25, 0, &Width_Screen);
      v2 = Level::UpdateListener(void)::curListener;
      v35 = v26;
      v34 = v25;
      v36 = v27;
      break;
    default:
      break;
  }
  v9 = *(_DWORD *)(v2 + 12);
  if ( v9 == 1 )
  {
LABEL_22:
    if ( *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, v9) + 1632) )
    {
      v16 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, v9);
      GameObject::GetLookAtVec(*(_DWORD *)(v16 + 1632), (float *)&v25);
    }
    v32 = v26;
    v31 = v25;
    v33 = v27;
    v2 = Level::UpdateListener(void)::curListener;
  }
  else
  {
LABEL_7:
    if ( v9 == 2 )
    {
      if ( *(_DWORD *)(*((_DWORD *)this + 74) + 8) )
      {
        CameraBase::GetCameraLookAtVec((CameraBase *)v22);
        v2 = Level::UpdateListener(void)::curListener;
        v31 = v22[0];
        v32 = v22[1];
        v33 = 0;
      }
    }
    else if ( !v9 && *(_DWORD *)(*((_DWORD *)this + 74) + 8) )
    {
      CameraBase::GetCameraLookAtVec((CameraBase *)v23);
      v32 = v23[1];
      v31 = v23[0];
      v33 = v23[2];
      v2 = Level::UpdateListener(void)::curListener;
    }
  }
  v10 = *(_DWORD *)(v2 + 24);
  if ( v10 )
  {
    if ( v10 == 1 && *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632) )
    {
      v11 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632)
                                  + 728)
                      + 8);
      v12 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)v11 + 56))(v11);
      v13 = v12[8];
      v14 = v12[9];
      v33 = v12[10];
      v31 = v13;
      v32 = v14;
    }
  }
  else
  {
    if ( !*(_DWORD *)(*((_DWORD *)this + 74) + 8) )
      return;
    CameraBase::GetCameraUpVec((CameraBase *)v21);
    v29 = v21[1];
    v30 = v21[2];
    v28 = v21[0];
  }
  if ( *(_DWORD *)(*((_DWORD *)this + 74) + 8) )
    VoxSoundManager::SetListenerPos(
      VoxSoundManager::s_instance,
      &v34,
      &v31,
      &v28,
      *(_DWORD *)(Level::UpdateListener(void)::curListener + 16),
      *(_DWORD *)(Level::UpdateListener(void)::curListener + 8),
      *(_DWORD *)(Level::UpdateListener(void)::curListener + 20));
}


// ===== 3f1008 Level::_LoadCamera(void) =====
int __fastcall Level::_LoadCamera(Level *this)
{
  CameraOverview *v2; // r6
  CameraLevel *v3; // r6
  int v4; // r7
  const char *v5; // r9
  int v6; // r10
  int v7; // r8
  int v8; // r11
  _DWORD *v9; // r7
  CameraBase *v10; // r6
  CameraTarget *v11; // r8
  int LocalPlayer; // r0
  int v13; // r3
  SceneManager *v14; // r6
  char *v16; // [sp+Ch] [bp-8h]

  v2 = (CameraOverview *)operator new(40, 0);
  CameraOverview::CameraOverview(v2);
  *((_DWORD *)this + 75) = v2;
  v3 = (CameraLevel *)operator new(168, 0);
  CameraLevel::CameraLevel(v3);
  *((_DWORD *)this + 74) = v3;
  if ( !v3 )
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
        "m_camera",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp",
        2480);
      v3 = *((CameraLevel **)this + 74);
    }
  }
  v4 = *((_DWORD *)this + 14);
  if ( !v4 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v4 = *((_DWORD *)this + 14);
    }
  }
  v16 = *(char **)(v4 + 608);
  v5 = *(const char **)(v4 + 632);
  v6 = Arrays::CamAnimSetTable::size;
  if ( !Arrays::CamAnimSetTable::size )
  {
LABEL_12:
    CameraLevel::Load(v3, v16, -1, *(const char **)(v4 + 656));
    v9 = *((_DWORD **)this + 14);
    v10 = *((CameraBase **)this + 74);
    if ( v9 )
      goto LABEL_13;
    goto LABEL_8;
  }
  v7 = 0;
  v8 = Arrays::CamAnimSetTable::m_memberNames;
  while ( LC_API_STRCMP_0(v5, *(const char **)(v8 + 4 * v7)) )
  {
    if ( ++v7 == v6 )
      goto LABEL_12;
  }
  CameraLevel::Load(v3, v16, v7, *(const char **)(v4 + 656));
  v9 = *((_DWORD **)this + 14);
  v10 = *((CameraBase **)this + 74);
  if ( !v9 )
  {
LABEL_8:
    if ( gAssertLevel == 2 )
    {
      *v9 = v9;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v9 = *((_DWORD **)this + 14);
    }
  }
LABEL_13:
  CameraBase::SetData(v10, 0.42963, 1.6678, (float)(int)v9[165], (float)(int)v9[166], 0);
  CameraBase::SetActive(*((CameraBase **)this + 74));
  CameraLevel::PlayAnim(
    *((CameraLevel **)this + 74),
    *(_DWORD *)(Arrays::CamAnimSetTable::members + 28 * *(_DWORD *)(*((_DWORD *)this + 74) + 128) + 16),
    0,
    0);
  v11 = *((CameraTarget **)this + 74);
  LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
  CameraTarget::SetTarget(v11, *(GameObject **)(LocalPlayer + 1632), 0);
  ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, *((CameraLevel **)this + 74));
  *(_DWORD *)(*((_DWORD *)this + 74) + 140) = 1065353216;
  *(_DWORD *)(*((_DWORD *)this + 74) + 136) = 0;
  v13 = *((_DWORD *)this + 14);
  v14 = *(SceneManager **)(dword_99F73C + 28);
  if ( !v13 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v13 = *((_DWORD *)this + 14);
    }
  }
  return SceneManager::AddSkyBoxSceneNode(v14, *(const char **)(v13 + 584), nullptr);
}


// ===== 3f1394 Level::GetMPGameScript(void) =====
int __fastcall Level::GetMPGameScript(Level *this)
{
  int v1; // r2

  v1 = *((_DWORD *)this + 14);
  if ( !v1 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v1 = *((_DWORD *)this + 14);
    }
  }
  return *(_DWORD *)(v1 + 788);
}


// ===== 3f1430 Level::EnableFog(glitch::scene::ISceneNode *) =====
int __fastcall Level::EnableFog(Level *this, glitch::scene::ISceneNode *a2)
{
  int v2; // r7
  int v5; // r6

  v2 = *((_DWORD *)this + 14);
  v5 = *(_DWORD *)(dword_99F73C + 28);
  if ( !v2 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v2 = *((_DWORD *)this + 14);
    }
  }
  return ((int (__fastcall *)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD))SceneManager::EnableFog)(
           v5,
           (float)*(int *)(v2 + 472),
           (float)*(int *)(v2 + 476),
           v2 + 480,
           a2);
}


// ===== 3f150c Level::SetLevelConfig(LevelConfig *) =====
char *__fastcall Level::SetLevelConfig(Level *this, char **a2)
{
  int v3; // r0
  _DWORD *v4; // r3
  char *v5; // r0
  int v6; // r0
  char *result; // r0

  *((_DWORD *)this + 14) = a2;
  if ( !a2 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      a2 = *((char ***)this + 14);
    }
  }
  v3 = Arrays::GetMemberIDByString<Arrays::Sounds>(a2[95]);
  v4 = *((_DWORD **)this + 14);
  *((_DWORD *)this + 71) = v3;
  if ( !v4 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v4 = *((_DWORD **)this + 14);
    }
  }
  v5 = (char *)v4[113];
  if ( v5 != (char *)v4[112] )
  {
    v6 = Arrays::GetMemberIDByString<Arrays::Sounds>(v5);
    v4 = *((_DWORD **)this + 14);
    *((_DWORD *)this + 73) = v6;
  }
  if ( !v4 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v4 = *((_DWORD **)this + 14);
    }
  }
  result = (char *)v4[101];
  if ( result != (char *)v4[100] )
  {
    result = (char *)Arrays::GetMemberIDByString<Arrays::Sounds>(result);
    *((_DWORD *)this + 72) = result;
  }
  return result;
}


// ===== 3f16c0 Level::UpdateDynamicFog(void) =====
int __fastcall Level::UpdateDynamicFog(int this)
{
  int v1; // r3
  int v2; // r5
  int CurrentLevel; // r0
  int v4; // r3
  int v5; // r6
  float *v6; // r3
  float v7; // [sp+8h] [bp-28h] BYREF
  float v8; // [sp+Ch] [bp-24h]
  float v9; // [sp+10h] [bp-20h]
  _DWORD v10[3]; // [sp+14h] [bp-1Ch] BYREF
  _DWORD v11[3]; // [sp+20h] [bp-10h] BYREF
  _BYTE v12[4]; // [sp+2Ch] [bp-4h] BYREF

  v1 = *(_DWORD *)(this + 56);
  v2 = this;
  if ( v1 && *(_DWORD *)(v1 + 516) != *(_DWORD *)(v1 + 520) )
  {
    CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    glitch::scene::ISceneNode::getAbsolutePosition(v10, *(_DWORD **)(*(_DWORD *)(CurrentLevel + 296) + 8));
    v4 = *(_DWORD *)(v2 + 56);
    v11[0] = v10[0];
    v11[1] = v10[1];
    v11[2] = v10[2];
    ObjectManager::GetDynamicFogColorAtPos(&v7, dword_99F764, v11, *(_DWORD *)(v4 + 532));
    v5 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 20);
    v12[0] = (unsigned int)v7;
    v12[1] = (unsigned int)v8;
    v12[2] = (unsigned int)v9;
    v12[3] = 0;
    this = glitch::video::detail::IMaterialParameters<glitch::video::CGlobalMaterialParameterManager,glitch::video::detail::globalmaterialparametermanager::SEmptyBase>::setParameter<glitch::video::SColor>(
             *(_DWORD *)(v5 + 228),
             *(unsigned __int16 *)(v5 + 250),
             0,
             v12);
    v6 = *(float **)(v2 + 56);
    if ( !v6 )
    {
      if ( gAssertLevel == 2 )
      {
        dword_0 = 0;
      }
      else if ( gAssertLevel == 1 )
      {
        this = fprintf(
                 (FILE *)&_sF + 2,
                 "ASSERT(%s) FAILED: %s:%d\n",
                 "m_levelConfig != 0",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
                 476);
        v6 = *(float **)(v2 + 56);
      }
    }
    v6[123] = v7;
    v6[124] = v8;
    v6[125] = v9;
  }
  return this;
}


// ===== 3f1830 std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x18u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3f1868 batch::BatchNodeCompiler::Free(void) =====
void __fastcall batch::BatchNodeCompiler::Free(batch::BatchNodeCompiler *this)
{
  _DWORD *v1; // r3
  int v3; // r3
  int v4; // r2

  v1 = *((_DWORD **)this + 13);
  if ( v1 )
    glitch::IReferenceCounted::drop((glitch::IReferenceCounted *)((char *)v1 + *(_DWORD *)(*v1 - 12)));
  v3 = *((_DWORD *)this + 4);
  v4 = *((_DWORD *)this + 5);
  *((_DWORD *)this + 13) = 0;
  if ( v3 != v4 )
    *((_DWORD *)this + 5) = v3;
  if ( *((_DWORD *)this + 11) )
  {
    std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_erase(
      (int)this + 28,
      *((_DWORD **)this + 8));
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 10) = (char *)this + 28;
    *((_DWORD *)this + 9) = (char *)this + 28;
    *((_DWORD *)this + 8) = 0;
  }
}


// ===== 3f18d8 std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,uint>,std::priv::_Select1st<std::pair<int const,uint>>,std::priv::_MapTraitsT<std::pair<int const,uint>>,std::allocator<std::pair<int const,uint>>>::_M_erase(std::priv::_Rb_tree_node_base *) [clone] =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(
        _DWORD *a1)
{
  _DWORD *v1; // r5
  _DWORD *v2; // r4

  v1 = a1;
  if ( a1 )
  {
    while ( 1 )
    {
      std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(v1[3]);
      v2 = (_DWORD *)v1[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v1, 0x18u);
      if ( !v2 )
        break;
      v1 = v2;
    }
  }
}


// ===== 3f1910 std::vector<Point3D<float>,std::allocator<Point3D<float>>>::_M_allocate_and_copy<Point3D<float> const*>(uint &,Point3D<float> const*,Point3D<float> const*) =====
_DWORD *__fastcall std::vector<Point3D<float>>::_M_allocate_and_copy<Point3D<float> const*>(
        int a1,
        unsigned int *a2,
        _DWORD *a3,
        int a4)
{
  _DWORD *v4; // r4
  int v5; // r5
  _DWORD *result; // r0
  int v7; // r5
  _DWORD *v8; // r3
  int v9; // r2

  v4 = a3;
  v5 = a4 - (_DWORD)a3;
  result = std::allocator<Point3D<float>>::_M_allocate(a1 + 8, *a2, a2);
  v7 = -1431655765 * (v5 >> 2);
  if ( v7 > 0 )
  {
    v8 = result;
    do
    {
      --v7;
      *v8 = *v4;
      v8[1] = v4[1];
      v9 = v4[2];
      v4 += 3;
      v8[2] = v9;
      v8 += 3;
    }
    while ( v7 );
  }
  return result;
}


// ===== 3f1980 std::vector<GameObject *,std::allocator<GameObject *>>::_M_insert_overflow(GameObject **,GameObject * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<GameObject *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<GameObject *>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 3f1a48 batch::BatchNodeCompiler::~BatchNodeCompiler() =====
void __fastcall batch::BatchNodeCompiler::~BatchNodeCompiler(batch::BatchNodeCompiler *this)
{
  void *v2; // r0
  size_t v3; // r1

  batch::BatchNodeCompiler::Free(this);
  if ( *((_DWORD *)this + 11) )
  {
    std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_erase(
      (int)this + 28,
      *((_DWORD **)this + 8));
    *((_DWORD *)this + 10) = (char *)this + 28;
    *((_DWORD *)this + 11) = 0;
    *((_DWORD *)this + 9) = (char *)this + 28;
    *((_DWORD *)this + 8) = 0;
  }
  v2 = *((void **)this + 4);
  if ( !v2 )
    goto LABEL_6;
  v3 = (*((_DWORD *)this + 6) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
LABEL_6:
    *((_DWORD *)this + 1) = off_967658;
    return;
  }
  CustomFree(v2);
  *((_DWORD *)this + 1) = off_967658;
}


// ===== 3f1af4 MenuMessageManager<OnlineStatusMsg,1>::FlushEnqueuedMessages(int) [clone] =====
void MenuMessageManager<OnlineStatusMsg,1>::FlushEnqueuedMessages()
{
  while ( dword_99FB44 != dword_99FB34 )
    std::deque<OnlineStatusMsg>::pop_front(&dword_99FB34);
}


// ===== 3f1b40 std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
        int a1,
        int a2)
{
  int v2; // r4
  int v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
        a1,
        *(_DWORD *)(v2 + 12));
      v4 = *(_DWORD *)(v2 + 8);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v2 + 16));
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v2, 0x2Cu);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 3f1b80 std::string::append(char const*) =====
std::string *__fastcall std::string::append(std::string *this, char *a2)
{
  size_t v4; // r0

  v4 = LC_API_STRLEN_0(a2);
  return std::string::_M_append(this, a2, &a2[v4]);
}


// ===== 3f1ba8 std::string::_M_insert(char *,char const*,char const*,bool) =====
void __fastcall std::string::_M_insert(std::string *this, char *a2, char *a3, char *a4, bool a5)
{
  std::string *M_data; // r2
  signed int v9; // r6
  bool v10; // zf
  char *M_finish; // r0
  int v12; // r2
  bool v13; // cc
  char *v14; // r1
  char *v15; // r9
  int n; // r1
  char v17; // r12
  size_t v18; // r2
  char *v19; // r12
  const char *v20; // r3
  char *v21; // r10
  const char *k; // r1
  char v23; // r9
  int v24; // r10
  char *v25; // r1
  int m; // r3
  size_t v27; // r2
  unsigned int size; // r0
  unsigned int *v29; // r1
  char *v30; // r9
  char *v31; // r10
  char *v32; // r1
  char *v33; // r7
  char *v34; // r7
  int i; // r3
  int v36; // r1
  int j; // r3
  size_t v38; // r2
  const char *v39; // [sp+4h] [bp-10h]
  unsigned int v40; // [sp+Ch] [bp-8h] BYREF

  if ( a3 != a4 )
  {
    M_data = (std::string *)this->_M_start_of_storage._M_data;
    v9 = a4 - a3;
    v10 = M_data == this;
    if ( M_data != this )
      M_data = (std::string *)this->_M_buffers._M_end_of_storage;
    M_finish = this->_M_finish;
    if ( v10 )
      M_data = (std::string *)&this->_M_finish;
    if ( v9 >= (unsigned int)((char *)M_data - M_finish) )
    {
      size = std::string::_M_compute_next_size(this, a4 - a3);
      v30 = (char *)size;
      if ( size )
      {
        v40 = size;
        v31 = (char *)std::__node_alloc::allocate((std::__node_alloc *)&v40, v29);
        v30 = &v31[v40];
      }
      else
      {
        v31 = nullptr;
      }
      v32 = this->_M_start_of_storage._M_data;
      if ( a2 - v32 > 0 )
      {
        v34 = nullptr;
        do
        {
          v34[(_DWORD)v31] = v34[(_DWORD)v32];
          ++v34;
        }
        while ( v34 != (char *)(a2 - v32) );
        v33 = &v34[(_DWORD)v31];
      }
      else
      {
        v33 = v31;
      }
      if ( v9 > 0 )
      {
        for ( i = 0; i != v9; ++i )
          v33[i] = a3[i];
        v33 += v9;
      }
      v36 = this->_M_finish - a2;
      if ( v36 > 0 )
      {
        for ( j = 0; j != v36; ++j )
          v33[j] = a2[j];
        v33 += j;
      }
      *v33 = 0;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this);
      this->_M_start_of_storage._M_data = v31;
      this->_M_buffers._M_end_of_storage = v30;
      this->_M_finish = v33;
    }
    else
    {
      v12 = M_finish - a2;
      v13 = v9 > (unsigned int)(M_finish - a2);
      v14 = M_finish;
      if ( v13 )
      {
        v19 = &a3[v12 + 1];
        v20 = (const char *)(a4 - v19);
        v21 = M_finish + 1;
        if ( (int)v20 > 0 )
        {
          for ( k = nullptr; k != v20; ++k )
          {
            v23 = k[(_DWORD)v19];
            *++M_finish = v23;
          }
          v14 = this->_M_finish;
        }
        v24 = v21 - a2;
        v25 = &v14[v9 - v12];
        this->_M_finish = v25;
        if ( v24 > 0 )
        {
          for ( m = 0; m != v24; ++m )
            v25[m] = a2[m];
          v25 = this->_M_finish;
        }
        this->_M_finish = &v25[v12];
        if ( a5 )
        {
          v38 = v12 + 1;
          if ( v19 != a3 )
            memmove(a2, a3, v38);
        }
        else
        {
          v27 = v12 + 1;
          if ( v19 != a3 )
            memcpy(a2, a3, v27);
        }
      }
      else
      {
        v15 = &M_finish[1 - v9];
        if ( v9 > 0 )
        {
          for ( n = 0; n != v9; ++n )
          {
            v17 = v15[n];
            *++M_finish = v17;
          }
          v14 = this->_M_finish;
        }
        v18 = 1 - v9 + v12;
        this->_M_finish = &v14[v9];
        if ( v18 )
        {
          v39 = a4;
          memmove(&a2[v9], a2, v18);
          a4 = (char *)v39;
        }
        if ( a5 && a4 >= a2 )
        {
          if ( a3 < a2 )
          {
            if ( v9 )
              memmove(a2, a3, v9);
          }
          else if ( a4 != a3 )
          {
            memcpy(a2, &a3[v9], a4 - a3);
          }
        }
        else if ( v9 )
        {
          memcpy(a2, a3, v9);
        }
      }
    }
  }
}


// ===== 3f1e40 std::string::_M_replace(char *,char *,char const*,char const*,bool) =====
std::string *__fastcall std::string::_M_replace(std::string *this, char *a2, char *a3, char *a4, char *a5, bool a6)
{
  size_t v6; // r8
  size_t v8; // r10
  char *v12; // r7
  char *M_finish; // r3
  char *v14; // r8
  _BOOL4 v16; // r3
  int v17; // r11
  int v18; // r3
  char *M_data; // r4

  v6 = a3 - a2;
  v8 = a5 - a4;
  if ( a5 - a4 > a3 - a2 )
  {
    if ( !a6 )
      goto LABEL_10;
    v18 = a4 >= a3;
    if ( a5 <= a2 )
      v18 |= 1u;
    if ( v18 )
    {
LABEL_10:
      v14 = &a4[v6];
      if ( v14 != a4 )
        memcpy(a2, a4, v14 - a4);
      std::string::_M_insert(this, a3, v14, a5, a6);
    }
    else if ( a4 < a2 )
    {
      M_data = this->_M_start_of_storage._M_data;
      std::string::_M_insert(this, a3, &a4[v6], a5, 1);
      if ( v6 )
        memmove(&this->_M_start_of_storage._M_data[a2 - M_data], &this->_M_start_of_storage._M_data[a4 - M_data], v6);
    }
    else
    {
      if ( v6 )
        memmove(a2, a4, a3 - a2);
      std::string::_M_insert(this, a3, &a4[v6], a5, 1);
    }
  }
  else
  {
    if ( !a6 || ((v16 = a4 >= a3, a5 < a2) ? (v17 = v16 | 1) : (v17 = v16), v17) )
    {
      if ( v8 )
        memcpy(a2, a4, v8);
    }
    else if ( v8 )
    {
      memmove(a2, a4, v8);
    }
    v12 = &a2[v8];
    if ( a3 != v12 )
    {
      M_finish = this->_M_finish;
      if ( M_finish + 1 != a3 )
      {
        memmove(v12, a3, M_finish + 1 - a3);
        M_finish = this->_M_finish;
      }
      this->_M_finish = &M_finish[v12 - a3];
    }
  }
  return this;
}


// ===== 3f1ff8 std::string::replace(uint,uint,char const*,uint) =====
std::string *__fastcall std::string::replace(
        std::string *this,
        unsigned int a2,
        unsigned int a3,
        char *a4,
        unsigned int a5)
{
  bool v5; // r12
  unsigned int v8; // r7
  char *M_data; // r1
  bool v12; // cf
  char *v13; // r2
  char *v14; // r1

  v8 = this->_M_finish - this->_M_start_of_storage._M_data;
  if ( a2 > v8 )
    __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
  if ( a3 >= v8 - a2 )
    a3 = v8 - a2;
  if ( -2 - v8 + a3 < a5 )
    __ZSt24__stl_throw_length_errorPKc_veneer("basic_string");
  M_data = this->_M_start_of_storage._M_data;
  v12 = a4 >= M_data;
  v13 = &M_data[a3 + a2];
  if ( a4 < M_data )
    v5 = 0;
  v14 = &M_data[a2];
  if ( v12 )
    v5 = a4 < this->_M_finish;
  return std::string::_M_replace(this, v14, v13, a4, &a4[a5], v5);
}


// ===== 3f20c0 `non-virtual thunk to'LevelConfig::~LevelConfig() =====
void __fastcall `non-virtual thunk to'LevelConfig::~LevelConfig(LevelConfig *this)
{
  LevelConfig::~LevelConfig((LevelConfig *)((char *)this - 36));
}


// ===== 3f20c8 LevelConfig::~LevelConfig() =====
void __fastcall LevelConfig::~LevelConfig(LevelConfig *this)
{
  *(_DWORD *)this = off_9676B0;
  *((_DWORD *)this + 1) = &off_967710;
  *((_DWORD *)this + 9) = off_96771C;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 32);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 31);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 30);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 29);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 636));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 612));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 588));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 564));
  std::vector<Point3D<float>>::~vector((int)this + 516);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 18);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 15);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 14);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 12);
  ObjectBase::~ObjectBase(this);
}


// ===== 3f218c `non-virtual thunk to'LevelConfig::~LevelConfig() =====
void __fastcall `non-virtual thunk to'LevelConfig::~LevelConfig(LevelConfig *this)
{
  LevelConfig::~LevelConfig((LevelConfig *)((char *)this - 36));
}


// ===== 3f2194 LevelConfig::~LevelConfig() =====
void __fastcall LevelConfig::~LevelConfig(LevelConfig *this)
{
  LevelConfig::~LevelConfig(this);
  CustomFree(this);
}


// ===== 3f21b0 LevelConfig::~LevelConfig() =====
void __fastcall LevelConfig::~LevelConfig(LevelConfig *this)
{
  *(_DWORD *)this = off_9676B0;
  *((_DWORD *)this + 1) = &off_967710;
  *((_DWORD *)this + 9) = off_96771C;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 32);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 31);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 30);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 29);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 636));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 612));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 588));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 564));
  std::vector<Point3D<float>>::~vector((int)this + 516);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 18);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 15);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 14);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)this + 12);
  ObjectBase::~ObjectBase(this);
}


// ===== 3f2274 MenuMessageManager<TutorialMsg,1>::FlushEnqueuedMessages(int) [clone] =====
void MenuMessageManager<TutorialMsg,1>::FlushEnqueuedMessages()
{
  int i; // r3

  for ( i = dword_99FB60; i != dword_99FB70; dword_99FB60 = i )
  {
    while ( i == dword_99FB68 - 8 )
    {
      if ( dword_99FB64 )
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)dword_99FB64, 0x80u);
      dword_99FB6C += 4;
      i = *(_DWORD *)dword_99FB6C;
      dword_99FB68 = *(_DWORD *)dword_99FB6C + 128;
      dword_99FB60 = i;
      dword_99FB64 = i;
      if ( i == dword_99FB70 )
        return;
    }
    i += 8;
  }
}


// ===== 3f2304 Level::UpdateFog(glitch::scene::ISceneNode *) =====
int __fastcall Level::UpdateFog(int this, glitch::scene::ISceneNode *a2)
{
  int v2; // r3
  Level *v3; // r6
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+24h] [bp-20h] BYREF

  v2 = *(_DWORD *)(this + 56);
  v3 = (Level *)this;
  if ( v2 )
  {
    if ( *(_DWORD *)(v2 + 476) )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v5, "isTracingLevel");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
      return Level::EnableFog(v3, a2);
    }
    else
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v6, "isTracingLevel");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
      return Level::DisableFog(v3, a2);
    }
  }
  return this;
}


// ===== 3f240c Level::_LoadBatchInit(void) =====
void __fastcall Level::_LoadBatchInit(Level *this)
{
  int Switch; // r7
  void *v3; // r5
  int v4; // r0
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+4h] [bp-1Ch] BYREF

  (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 96))(
    *(_DWORD *)(dword_99F73C + 28),
    0,
    0);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v5, "IsDisablingCompiledBatching");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
  if ( !Switch )
  {
    v3 = *((void **)this + 86);
    if ( v3 )
    {
      batch::BatchNodeCompiler::~BatchNodeCompiler(*((batch::BatchNodeCompiler **)this + 86));
      CustomFree(v3);
      *((_DWORD *)this + 86) = 0;
    }
    v4 = operator new(56, 0);
    *(_BYTE *)v4 = 0;
    *(_DWORD *)(v4 + 16) = 0;
    *(_DWORD *)(v4 + 4) = off_967640;
    *(_DWORD *)(v4 + 20) = 0;
    *(_DWORD *)(v4 + 24) = 0;
    *(_DWORD *)(v4 + 32) = 0;
    *(_BYTE *)(v4 + 28) = 0;
    *(_DWORD *)(v4 + 40) = v4 + 28;
    *(_DWORD *)(v4 + 52) = 0;
    *(_DWORD *)(v4 + 36) = v4 + 28;
    *(_DWORD *)(v4 + 44) = 0;
    *((_DWORD *)this + 86) = v4;
  }
}


// ===== 3f254c Level::Draw(void) =====
void __fastcall Level::Draw(Level *this)
{
  int Switch; // r6
  Character *character_660; // r6
  int v3; // r7
  float *v4; // r0
  int v5; // r3
  int v6; // r1
  void (__fastcall *v7)(int, _DWORD *, _DWORD *, int); // r11
  float v8; // r9
  float v9; // r10
  float v10; // r0
  float v11; // r10
  float v12; // r0
  float v13; // r11
  float v14; // r9
  float v15; // r0
  float v16; // [sp+8h] [bp-94h]
  float v17; // [sp+8h] [bp-94h]
  void (__fastcall *v18)(int, _DWORD *, _DWORD *, int); // [sp+10h] [bp-8Ch]
  _DWORD v19[3]; // [sp+18h] [bp-84h] BYREF
  _DWORD v20[3]; // [sp+24h] [bp-78h] BYREF
  _DWORD v21[3]; // [sp+30h] [bp-6Ch] BYREF
  _DWORD v22[3]; // [sp+3Ch] [bp-60h] BYREF
  float v23; // [sp+48h] [bp-54h] BYREF
  float v24; // [sp+4Ch] [bp-50h]
  float v25; // [sp+50h] [bp-4Ch]
  int v26; // [sp+54h] [bp-48h]
  int v27; // [sp+58h] [bp-44h]
  std::priv::_String_base<char,std::allocator<char> > v28; // [sp+64h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v29; // [sp+7Ch] [bp-20h] BYREF

  if ( *((_DWORD *)this + 76) == 38 )
  {
    ObjectManager::Draw3D((ObjectManager *)dword_99F764);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v29, "isDisplayingFloorBoxes");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v29);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v29);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v28, "isDisplayingPathNodes");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v28);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v28);
    if ( Switch )
    {
      character_660 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1)->character_660;
      if ( character_660 )
      {
        PFWorld::DBG_Draw(&Singleton<PFWorld>::s_inst, (char *)character_660 + 352);
        v3 = *(_DWORD *)(dword_99F73C + 16);
        v25 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
        GameObject::GetLookAtVec((int)character_660, &v23);
        v4 = (float *)Point3D<float>::normalize(&v23);
        *v4 = *v4 * 100.0;
        v4[1] = v4[1] * 100.0;
        v4[2] = v4[2] * 100.0;
        v5 = *((_DWORD *)character_660 + 90);
        v6 = *((_DWORD *)character_660 + 89);
        v7 = *(void (__fastcall **)(int, _DWORD *, _DWORD *, int))(*(_DWORD *)v3 + 28);
        v22[0] = *((_DWORD *)character_660 + 88);
        v22[2] = v5;
        v22[1] = v6;
        v8 = *((float *)character_660 + 89) + v24;
        v9 = *((float *)character_660 + 90) + v25;
        v10 = *((float *)character_660 + 88) + v23;
        v27 = -16776961;
        *(float *)v21 = v10;
        *(float *)&v21[1] = v8;
        *(float *)&v21[2] = v9;
        v7(v3, v22, v21, -16776961);
        v16 = v24;
        v11 = (float)(v24 * *(float *)&dword_99F880) - (float)(v25 * *(float *)&dword_99F87C);
        v24 = (float)(v25 * *(float *)&Vec3f_K) - (float)(*(float *)&dword_99F880 * v23);
        v25 = (float)(*(float *)&dword_99F87C * v23) - (float)(v16 * *(float *)&Vec3f_K);
        v23 = v11;
        v18 = *(void (__fastcall **)(int, _DWORD *, _DWORD *, int))(*(_DWORD *)v3 + 28);
        v17 = v25 + *((float *)character_660 + 90);
        v12 = v11 + *((float *)character_660 + 88);
        *(float *)&v20[1] = v24 + *((float *)character_660 + 89);
        *(float *)v20 = v12;
        *(float *)&v20[2] = v17;
        v13 = *((float *)character_660 + 89) - v24;
        v14 = *((float *)character_660 + 90) - v25;
        v15 = *((float *)character_660 + 88) - v11;
        v26 = -16744193;
        *(float *)v19 = v15;
        *(float *)&v19[1] = v13;
        *(float *)&v19[2] = v14;
        v18(v3, v20, v19, -16744193);
      }
    }
  }
}


// ===== 3f28ec LevelConfig::InitPost(void) =====
char *__fastcall LevelConfig::InitPost(char *this)
{
  char *v1; // r4
  int v2; // r2
  int v3; // r3
  Level *CurrentLevel; // r0
  std::priv::_String_base<char,std::allocator<char> > v5; // [sp+14h] [bp-64h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+2Ch] [bp-4Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+44h] [bp-34h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+5Ch] [bp-1Ch] BYREF

  v1 = this;
  if ( !*(this + 668) )
  {
    v2 = *((_DWORD *)this + 151);
    v3 = *((_DWORD *)this + 152);
    *(this + 668) = 1;
    if ( v2 == v3 )
      std::string::operator=((std::string *)(this + 588), "data/3D/camera/CameraTests.bdae");
    if ( *((_DWORD *)v1 + 163) == *((_DWORD *)v1 + 164) )
      std::string::operator=((std::string *)(v1 + 636), "PlayerCamera_Default");
    if ( *((_DWORD *)v1 + 178) == *((_DWORD *)v1 + 179) )
      std::string::operator=((std::string *)v1 + 29, "data/3D/Light/default.lightset_xml");
    if ( *((_DWORD *)v1 + 184) == *((_DWORD *)v1 + 185) )
      std::string::operator=((std::string *)v1 + 30, "data/3D/Light/default.lightset_xml");
    Color255To01((float *)v1 + 115);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v8, "isTracingLevel");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v8);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v7, "isTracingLevel");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v7);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v6, "isTracingLevel");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v6);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((std::string *)&v5, "isTracingLevel");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v5);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v5);
    CurrentLevel = (Level *)Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
    return Level::SetLevelConfig(CurrentLevel, (char **)v1);
  }
  return this;
}


// ===== 3f2ae4 Level::_LoadBatching(void) =====
void __fastcall Level::_LoadBatching(Level *this)
{
  int Switch; // r8
  Device *v3; // r0
  int v4; // r10
  int v5; // r7
  unsigned int v6; // r0
  int v7; // r2
  int v8; // r10
  int v9; // r7
  unsigned int v10; // r0
  std::priv::_String_base<char,std::allocator<char> > v11; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v11, "IsDisablingCompiledBatching");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v11);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v11);
  if ( !Switch )
  {
    v3 = (Device *)SceneManager::clearRenderLists(*(SceneManager **)(dword_99F73C + 28));
    *(_BYTE *)(*(_DWORD *)(dword_99F73C + 28) + 1084) = 1;
    if ( Device::IsHighPerformance(v3) )
    {
      printf(
        "*** BUFFER SIZE: %d %d %d\n",
        *(_DWORD *)(*((_DWORD *)this + 14) + 672),
        *(_DWORD *)(*((_DWORD *)this + 14) + 676),
        *(unsigned __int8 *)(*((_DWORD *)this + 14) + 680));
      v8 = *((_DWORD *)this + 14);
      v9 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 28);
      v10 = (unsigned int)((double)*(int *)(v8 + 672) * 1.02);
      *(_DWORD *)(v9 + 560) = (unsigned int)((double)*(int *)(v8 + 676) * 1.02);
      *(_DWORD *)(v9 + 556) = v10;
      batch::BatchNodeCompiler::Compile(
        *((batch::BatchNodeCompiler **)this + 86),
        *(_BYTE *)(*((_DWORD *)this + 14) + 680));
    }
    else
    {
      printf(
        "*** BUFFER SIZE: %d %d %d\n",
        *(_DWORD *)(*((_DWORD *)this + 14) + 684),
        *(_DWORD *)(*((_DWORD *)this + 14) + 688),
        *(unsigned __int8 *)(*((_DWORD *)this + 14) + 692));
      v4 = *((_DWORD *)this + 14);
      v5 = *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 28);
      v6 = (unsigned int)((double)*(int *)(v4 + 684) * 1.02);
      *(_DWORD *)(v5 + 560) = (unsigned int)((double)*(int *)(v4 + 688) * 1.02);
      *(_DWORD *)(v5 + 556) = v6;
      batch::BatchNodeCompiler::Compile(
        *((batch::BatchNodeCompiler **)this + 86),
        *(_BYTE *)(*((_DWORD *)this + 14) + 692));
    }
    *(_BYTE *)(*(_DWORD *)(dword_99F73C + 28) + 1084) = 0;
    v7 = *((_DWORD *)this + 86);
    if ( *(_BYTE *)v7 )
    {
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*(_DWORD *)(dword_99F73C + 28) + 4) + 92))(
        *(_DWORD *)(*(_DWORD *)(dword_99F73C + 28) + 4),
        *(_DWORD *)(v7 + 52));
      v7 = *((_DWORD *)this + 86);
    }
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v7 + 52) + 72))(*(_DWORD *)(v7 + 52), 1);
  }
}


// ===== 3f2d38 Level::_LoadBatchList(void) =====
void __fastcall Level::_LoadBatchList(Level *this)
{
  int Switch; // r5
  int v2; // r4
  int v3; // r7
  int v4; // r0
  const char **v5; // r5
  const char *v6; // r8
  std::string *v7; // r8
  _BYTE *v8; // r0
  int v9; // r0
  const char ***v10; // r1
  int v11; // r3
  std::string *v12; // r5
  _BYTE *v13; // r0
  int v14; // r2
  Character *v15; // r8
  _BYTE v17[12]; // [sp+18h] [bp-A4h] BYREF
  const char **v18; // [sp+24h] [bp-98h]
  _BYTE v19[24]; // [sp+3Ch] [bp-80h] BYREF
  _BYTE v20[24]; // [sp+54h] [bp-68h] BYREF
  _BYTE v21[24]; // [sp+6Ch] [bp-50h] BYREF
  _BYTE v22[24]; // [sp+84h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+9Ch] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v23, "IsDisablingCompiledBatching");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v23);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
  if ( !Switch )
  {
    v2 = *(_DWORD *)(dword_99F764 + 20);
    v3 = dword_99F764 + 12;
LABEL_3:
    if ( v3 == v2 )
      return;
    while ( 1 )
    {
      ObjectHandle::ObjectHandle((ObjectHandle *)v17, *(ObjectBase **)(v2 + 44));
      v4 = ObjectHandle::operator GameObject *(v17);
      v5 = (const char **)v4;
      if ( !v4 || *(_BYTE *)(v4 + 131) )
        goto LABEL_10;
      v6 = *(const char **)(v4 + 92);
      if ( !LC_API_STRCMP_0(v6, "Module") || !LC_API_STRCMP_0(v6, "Decor") )
      {
        v7 = (std::string *)v20;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        v8 = v20;
        goto LABEL_8;
      }
      if ( !LC_API_STRCMP_0(v6, "Player") || LC_API_STRSTR_0(v5[17], "Player") )
      {
        v12 = (std::string *)v19;
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        v13 = v19;
        goto LABEL_19;
      }
      if ( !LC_API_STRCMP_0(v6, "Character") )
        break;
      if ( !LC_API_STRCMP_0(v6, "DestructibleContainer")
        || !LC_API_STRCMP_0(v6, "OpenableContainer")
        || !LC_API_STRCMP_0(v6, "Door")
        || !LC_API_STRCMP_0(v6, "TimerTrap")
        || !LC_API_STRCMP_0(v6, "TriggerTrap")
        || !LC_API_STRCMP_0(v6, "AnimatedDecor") )
      {
        v15 = nullptr;
        goto LABEL_30;
      }
LABEL_41:
      v12 = (std::string *)v21;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      v13 = v21;
LABEL_19:
      std::string::string((int)v13, "isTracingBatchingCompiler");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v12);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v12);
      v11 = *(_DWORD *)(v2 + 12);
      if ( !v11 )
      {
LABEL_20:
        v14 = *(_DWORD *)(v2 + 4);
        if ( *(_DWORD *)(v14 + 12) == v2 )
        {
          do
          {
            v2 = v14;
            v14 = *(_DWORD *)(v14 + 4);
          }
          while ( v2 == *(_DWORD *)(v14 + 12) );
          v11 = *(_DWORD *)(v2 + 12);
        }
        if ( v14 != v11 )
          v2 = v14;
        goto LABEL_3;
      }
LABEL_13:
      while ( *(_DWORD *)(v11 + 8) )
        v11 = *(_DWORD *)(v11 + 8);
      v2 = v11;
      if ( v3 == v11 )
        return;
    }
    v15 = (Character *)v5;
LABEL_30:
    if ( GameObject::MeetCondition((GameObject *)v5) && (!v15 || !Character::IsFaerie(v15)) )
    {
      v7 = (std::string *)v22;
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      v8 = v22;
LABEL_8:
      std::string::string((int)v8, "isTracingBatchingCompiler");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, v7);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v7);
      v9 = *((_DWORD *)this + 86);
      v18 = v5;
      v10 = *(const char ****)(v9 + 20);
      if ( v10 == *(const char ****)(v9 + 24) )
      {
        std::vector<GameObject *>::_M_insert_overflow(v9 + 16);
      }
      else
      {
        *v10 = v5;
        *(_DWORD *)(v9 + 20) += 4;
      }
LABEL_10:
      v11 = *(_DWORD *)(v2 + 12);
      if ( !v11 )
        goto LABEL_20;
      goto LABEL_13;
    }
    goto LABEL_41;
  }
}


// ===== 3f3128 Level::Level(char const*,int,uint,uint,uint,bool,bool,int,int) =====
void __fastcall Level::Level(
        Level *this,
        char *a2,
        int a3,
        unsigned int a4,
        unsigned int a5,
        unsigned int a6,
        bool a7,
        bool a8,
        int a9,
        int a10)
{
  int v12; // r6
  unsigned int v13; // r7
  int v14; // r8
  char v15; // r3
  int v16; // r3
  LevelSavegame *v17; // r5
  CMatching *Instance; // r0
  CMatchingGLLive *v19; // r0
  char v22[4]; // [sp+24h] [bp-408h] BYREF

  EventManager::EventManager(this);
  v12 = 0;
  *(_DWORD *)this = off_9676A0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = -1;
  *((_DWORD *)this + 16) = -1;
  LuaScript::LuaScript((Level *)((char *)this + 68), 0);
  *((_DWORD *)this + 55) = a5;
  *((_BYTE *)this + 241) = a7;
  *((_BYTE *)this + 242) = a8;
  *((_DWORD *)this + 56) = a6;
  *((_DWORD *)this + 57) = 1;
  *((_DWORD *)this + 59) = 0;
  *((_BYTE *)this + 240) = 0;
  *((_BYTE *)this + 243) = 0;
  *((_BYTE *)this + 244) = 0;
  *((_BYTE *)this + 245) = 0;
  std::string::string((int)this + 248, a2);
  *((_DWORD *)this + 68) = a3;
  *((_DWORD *)this + 69) = a4;
  *((_DWORD *)this + 76) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 77) = 0;
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 89) = 0;
  *((_DWORD *)this + 90) = 0;
  *((_DWORD *)this + 103) = 0;
  *((_DWORD *)this + 104) = 0;
  *((_DWORD *)this + 70) = a10;
  *((_DWORD *)this + 71) = -1;
  *((_DWORD *)this + 72) = -1;
  *((_DWORD *)this + 73) = -1;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 80) = 0;
  *((_BYTE *)this + 324) = 0;
  *((_BYTE *)this + 325) = 0;
  *((_DWORD *)this + 82) = -1;
  *((_DWORD *)this + 83) = 0;
  *((_DWORD *)this + 84) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_DWORD *)this + 101) = 0;
  *((_BYTE *)this + 408) = 0;
  *((_BYTE *)this + 424) = 0;
  ++s_dbgLevelLoadCount;
  std::string::_M_assign((std::string *const)((char *)this + 172), "data/scripts/", "");
  LuaScript::Load((Level *)((char *)this + 68), "level/combat_formulas");
  LuaScript::Load((Level *)((char *)this + 68), "level/death_scripts");
  *((_DWORD *)this + 99) = -1;
  *((_BYTE *)this + 364) = 0;
  Module::s_moduleId = 0;
  *((_BYTE *)this + 232) = 0;
  if ( Arrays::LevelList::size )
  {
    v13 = 0;
    while ( 1 )
    {
      v14 = Arrays::LevelList::members + v12;
      LC_API_STRCPY_0(v22, *(const char **)(Arrays::LevelList::members + v12 + 32));
      ToLowerCase(v22, 0, -1);
      if ( LC_API_STRSTR_0(*((const char **)this + 67), v22) )
        break;
      ++v13;
      v12 += 72;
      if ( Arrays::LevelList::size <= v13 )
        goto LABEL_6;
    }
    v15 = *(_BYTE *)(v14 + 20);
    *((_DWORD *)this + 15) = v13;
    *((_BYTE *)this + 232) = v15;
    *((_DWORD *)this + 16) = *(_DWORD *)(v14 + 16);
  }
LABEL_6:
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)
      && ((Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(0),
           (unsigned int)(*((_DWORD *)Instance + 13) - 3) > 1)
       || (v19 = (CMatchingGLLive *)CMatching::Get(Instance), !CMatchingGLLive::IsHost(v19)))
      || *(_BYTE *)(dword_99F76C + 1817) )
    {
      *((_BYTE *)this + 241) = 0;
    }
  }
  if ( *((_DWORD *)this + 15) != -1 )
  {
    if ( a9 != -1 )
    {
      v16 = *((_DWORD *)this + 16);
      *((_BYTE *)this + 245) = 1;
      if ( !(a9 | v16) || a9 != v16 && v16 )
        *((_BYTE *)this + 243) = 1;
    }
    v17 = (LevelSavegame *)operator new(60, 0);
    LevelSavegame::LevelSavegame(
      v17,
      this,
      *((_DWORD *)this + 69),
      *((_DWORD *)this + 16),
      *((_DWORD *)this + 15),
      *((_DWORD *)this + 70),
      0);
    *((_DWORD *)this + 59) = v17;
  }
}


// ===== 3f34c0 Level::Level(char const*,int,uint,uint,uint,bool,bool,int,int) =====
void __fastcall Level::Level(
        Level *this,
        char *a2,
        int a3,
        unsigned int a4,
        unsigned int a5,
        unsigned int a6,
        bool a7,
        bool a8,
        int a9,
        int a10)
{
  int v12; // r6
  unsigned int v13; // r7
  int v14; // r8
  char v15; // r3
  int v16; // r3
  LevelSavegame *v17; // r5
  CMatching *Instance; // r0
  CMatchingGLLive *v19; // r0
  char v22[4]; // [sp+24h] [bp-408h] BYREF

  EventManager::EventManager(this);
  v12 = 0;
  *(_DWORD *)this = off_9676A0;
  *((_DWORD *)this + 12) = 0;
  *((_DWORD *)this + 14) = 0;
  *((_DWORD *)this + 15) = -1;
  *((_DWORD *)this + 16) = -1;
  LuaScript::LuaScript((Level *)((char *)this + 68), 0);
  *((_DWORD *)this + 55) = a5;
  *((_BYTE *)this + 241) = a7;
  *((_BYTE *)this + 242) = a8;
  *((_DWORD *)this + 56) = a6;
  *((_DWORD *)this + 57) = 1;
  *((_DWORD *)this + 59) = 0;
  *((_BYTE *)this + 240) = 0;
  *((_BYTE *)this + 243) = 0;
  *((_BYTE *)this + 244) = 0;
  *((_BYTE *)this + 245) = 0;
  std::string::string((int)this + 248, a2);
  *((_DWORD *)this + 68) = a3;
  *((_DWORD *)this + 69) = a4;
  *((_DWORD *)this + 76) = 0;
  *((_DWORD *)this + 105) = 0;
  *((_DWORD *)this + 77) = 0;
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 78) = 0;
  *((_DWORD *)this + 89) = 0;
  *((_DWORD *)this + 90) = 0;
  *((_DWORD *)this + 103) = 0;
  *((_DWORD *)this + 104) = 0;
  *((_DWORD *)this + 70) = a10;
  *((_DWORD *)this + 71) = -1;
  *((_DWORD *)this + 72) = -1;
  *((_DWORD *)this + 73) = -1;
  *((_DWORD *)this + 74) = 0;
  *((_DWORD *)this + 75) = 0;
  *((_DWORD *)this + 79) = 0;
  *((_DWORD *)this + 80) = 0;
  *((_BYTE *)this + 324) = 0;
  *((_BYTE *)this + 325) = 0;
  *((_DWORD *)this + 82) = -1;
  *((_DWORD *)this + 83) = 0;
  *((_DWORD *)this + 84) = 0;
  *((_DWORD *)this + 85) = 0;
  *((_DWORD *)this + 86) = 0;
  *((_DWORD *)this + 87) = 0;
  *((_DWORD *)this + 101) = 0;
  *((_BYTE *)this + 408) = 0;
  *((_BYTE *)this + 424) = 0;
  ++s_dbgLevelLoadCount;
  std::string::_M_assign((std::string *const)((char *)this + 172), "data/scripts/", "");
  LuaScript::Load((Level *)((char *)this + 68), "level/combat_formulas");
  LuaScript::Load((Level *)((char *)this + 68), "level/death_scripts");
  *((_DWORD *)this + 99) = -1;
  *((_BYTE *)this + 364) = 0;
  Module::s_moduleId = 0;
  *((_BYTE *)this + 232) = 0;
  if ( Arrays::LevelList::size )
  {
    v13 = 0;
    while ( 1 )
    {
      v14 = Arrays::LevelList::members + v12;
      LC_API_STRCPY_0(v22, *(const char **)(Arrays::LevelList::members + v12 + 32));
      ToLowerCase(v22, 0, -1);
      if ( LC_API_STRSTR_0(*((const char **)this + 67), v22) )
        break;
      ++v13;
      v12 += 72;
      if ( Arrays::LevelList::size <= v13 )
        goto LABEL_6;
    }
    v15 = *(_BYTE *)(v14 + 20);
    *((_DWORD *)this + 15) = v13;
    *((_BYTE *)this + 232) = v15;
    *((_DWORD *)this + 16) = *(_DWORD *)(v14 + 16);
  }
LABEL_6:
  if ( *(_BYTE *)(GetOnline() + 5) )
  {
    if ( !PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)
      && ((Instance = (CMatching *)OnlineSingleton<OnlineGameState>::GetInstance(0),
           (unsigned int)(*((_DWORD *)Instance + 13) - 3) > 1)
       || (v19 = (CMatchingGLLive *)CMatching::Get(Instance), !CMatchingGLLive::IsHost(v19)))
      || *(_BYTE *)(dword_99F76C + 1817) )
    {
      *((_BYTE *)this + 241) = 0;
    }
  }
  if ( *((_DWORD *)this + 15) != -1 )
  {
    if ( a9 != -1 )
    {
      v16 = *((_DWORD *)this + 16);
      *((_BYTE *)this + 245) = 1;
      if ( !(a9 | v16) || a9 != v16 && v16 )
        *((_BYTE *)this + 243) = 1;
    }
    v17 = (LevelSavegame *)operator new(60, 0);
    LevelSavegame::LevelSavegame(
      v17,
      this,
      *((LevelSavegame **)this + 69),
      *((_DWORD *)this + 16),
      *((_DWORD *)this + 15),
      *((_DWORD *)this + 70),
      0);
    *((_DWORD *)this + 59) = v17;
  }
}


// ===== 3f3858 SimpleTypeProperty<std::vector<Point3D<float>,std::allocator<Point3D<float>>>>::ToString(void *) =====
std::string *__fastcall SimpleTypeProperty<std::vector<Point3D<float>>>::ToString(std::string *a1)
{
  char *v2; // r5

  v2 = (char *)CustomAlloc(0x100u);
  ObjToStr();
  std::string::string(a1, v2);
  return a1;
}


// ===== 3f38a0 Level::_LoadScriptFile(std::string &) =====
void __fastcall Level::_LoadScriptFile(Level *this, std::string *a2)
{
  char *M_finish; // r8
  char *M_data; // r7
  unsigned int v5; // r8
  char *v6; // r8
  char *v7; // r10
  char *v8; // r3
  signed int v9; // r10
  char *i; // r1
  const char *v11; // [sp+Ch] [bp-50h] BYREF
  char *v12; // [sp+10h] [bp-4Ch] BYREF
  char *v13; // [sp+14h] [bp-48h] BYREF
  char *v14; // [sp+18h] [bp-44h] BYREF
  char *v15; // [sp+1Ch] [bp-40h] BYREF
  char v16[4]; // [sp+20h] [bp-3Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+24h] [bp-38h] BYREF
  std::string v18; // [sp+3Ch] [bp-20h] BYREF

  M_finish = a2->_M_finish;
  M_data = a2->_M_start_of_storage._M_data;
  if ( M_finish != M_data )
  {
    v5 = M_finish - M_data;
    if ( v5 > 8 )
    {
      v6 = &M_data[v5];
      v11 = ".pyscript";
      v12 = "";
      v14 = v6;
      v13 = M_data;
      std::search<std::reverse_iterator<char const*>,std::reverse_iterator<char const*>,std::priv::_Eq_traits<std::char_traits<char>>>(
        &v15,
        &v14,
        &v13,
        &v12,
        &v11,
        v16);
      v7 = M_data == v15 ? v6 : v15 - 9;
      if ( v6 != v7 )
      {
        v8 = a2->_M_start_of_storage._M_data;
        v9 = v7 - v8;
        if ( v9 >= 0 )
        {
          for ( i = a2->_M_finish; v8 != i; ++v8 )
          {
            if ( *v8 == 92 )
              *v8 = 47;
          }
          std::string::string(&v18, a2);
          std::string::replace(&v18, v9, v18._M_finish - v18._M_start_of_storage._M_data - v9, "_pyscripts.bin", 0xEu);
          std::string::string((std::string *)&v17, a2);
          std::string::replace(
            (std::string *)&v17,
            v9,
            v18._M_finish - v18._M_start_of_storage._M_data - v9,
            "_pyscriptnames.bin",
            0x12u);
          ScriptManager::LoadScriptFile((ScriptManager *)&ScriptManager::s_inst, v18._M_start_of_storage._M_data, 0);
          ScriptManager::LoadScriptFileNames(
            (ScriptManager *)&ScriptManager::s_inst,
            v17._M_start_of_storage._M_data,
            0);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
        }
      }
    }
  }
}


// ===== 3f3a58 Level::_LoadScripts(void) =====
void __fastcall Level::_LoadScripts(Level *this)
{
  std::string *v2; // r1

  ScriptManager::UnLoadAllScripts((ScriptManager *)&ScriptManager::s_inst);
  ScriptManager::LoadScriptFile((ScriptManager *)&ScriptManager::s_inst, "data/pydata/scripts_pyscripts.bin", 1);
  ScriptManager::LoadScriptFileNames(
    (ScriptManager *)&ScriptManager::s_inst,
    "data/pydata/scripts_pyscriptnames.bin",
    1);
  v2 = *((std::string **)this + 14);
  if ( !v2 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v2 = *((std::string **)this + 14);
    }
  }
  Level::_LoadScriptFile(this, v2 + 14);
}


// ===== 3f3b40 Level::LoadFile(std::string const&,std::string const&) =====
int __fastcall Level::LoadFile(Level *this, const std::string *a2, const std::string *a3)
{
  int v6; // r6
  int v7; // r3
  TiXmlElement *v8; // r1
  int v9; // r4
  int v10; // r9
  const TiXmlNode *v12; // r1
  int v13; // r7
  _DWORD *v14; // r6
  const void *v15; // r0
  char *M_data; // r1
  char *v17; // r2
  int v18; // r3
  const char *v19; // r4
  size_t v20; // r0
  int v21; // r4
  const char *v22; // r5
  size_t v23; // r2
  unsigned int v24; // r1
  char *v25; // r0
  int v26; // r0
  IStreamBase *v27; // r1
  int *v28; // r11
  int v29; // r6
  TiXmlDocument *v30; // r6
  int v31; // r6
  int v32; // r9
  int v33; // r2
  TiXmlNode *v34; // r0
  size_t v35; // r0
  unsigned int v36; // [sp+Ch] [bp-98h]
  char *M_finish; // [sp+10h] [bp-94h]
  int v38; // [sp+40h] [bp-64h] BYREF
  int v39; // [sp+44h] [bp-60h] BYREF
  _BYTE v40[4]; // [sp+48h] [bp-5Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v41; // [sp+54h] [bp-50h] BYREF
  std::string v42; // [sp+6Ch] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v43; // [sp+84h] [bp-20h] BYREF

  std::string::string((int)&v43, "Level");
  v6 = *((_DWORD *)this + 80);
  if ( v6 )
  {
    v7 = *(_DWORD *)(v6 + 56);
    if ( v7 )
    {
      v8 = *(TiXmlElement **)(v6 + 68);
      if ( v8 )
      {
        Level::_LoadFromXML(this, v8);
        v9 = *((_DWORD *)this + 80);
        v10 = 0;
        *(_DWORD *)(v9 + 68) = TiXmlNode::NextSiblingElement(*(TiXmlNode **)(v9 + 68));
        goto LABEL_5;
      }
      v12 = *(const TiXmlNode **)(v6 + 64);
      if ( v12 )
        goto LABEL_7;
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v7 + 4))(*(_DWORD *)(v6 + 56));
      v18 = *((_DWORD *)this + 80);
      if ( v18 )
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v18 + 4))(*((_DWORD *)this + 80));
      *((_DWORD *)this + 80) = 0;
      goto LABEL_13;
    }
    v30 = (TiXmlDocument *)operator new(112, 0);
    TiXmlDocument::TiXmlDocument(v30);
    *(_DWORD *)(*((_DWORD *)this + 80) + 56) = v30;
    v31 = *((_DWORD *)this + 80);
    v32 = *(_DWORD *)(v31 + 56);
    if ( !*(_BYTE *)(v31 + 52) )
    {
      if ( gAssertLevel == 2 )
      {
        *(_DWORD *)*(unsigned __int8 *)(v31 + 52) = *(unsigned __int8 *)(v31 + 52);
        v33 = v31;
LABEL_39:
        if ( TiXmlDocument::LoadFromBuffer(v32, **(_DWORD **)(v31 + 36), *(_DWORD *)(v33 + 48), 0) )
        {
          v12 = nullptr;
          *(_DWORD *)(*((_DWORD *)this + 80) + 60) = *(_DWORD *)(*((_DWORD *)this + 80) + 56);
          v6 = *((_DWORD *)this + 80);
LABEL_7:
          *(_DWORD *)(v6 + 64) = TiXmlNode::IterateChildren(*(TiXmlNode **)(v6 + 60), v12);
          v13 = *((_DWORD *)this + 80);
          v14 = *(_DWORD **)(v13 + 64);
          if ( v14
            && (v15 = (const void *)v14[13],
                M_data = a3->_M_start_of_storage._M_data,
                v17 = (char *)(v14[12] - (_DWORD)v15),
                v17 == (char *)(a3->_M_finish - M_data))
            && (v10 = memcmp(v15, M_data, (size_t)v17)) == 0 )
          {
            v34 = (TiXmlNode *)(*(int (__fastcall **)(_DWORD *))(*v14 + 44))(v14);
            *(_DWORD *)(v13 + 68) = TiXmlNode::FirstChildElement(v34);
          }
          else
          {
            v10 = 0;
          }
          goto LABEL_5;
        }
        if ( gAssertLevel == 2 )
        {
          dword_0 = 0;
          v10 = 1;
          goto LABEL_5;
        }
        if ( gAssertLevel == 1 )
        {
          v10 = 1;
          fprintf(
            (FILE *)&_sF + 2,
            "ASSERT(%s) FAILED: %s:%d\n",
            "!\"Can't parse the level file\"",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp",
            2224);
          goto LABEL_5;
        }
LABEL_13:
        v10 = 1;
        goto LABEL_5;
      }
      if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "static_",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamBuffer.h",
          130);
        v33 = *((_DWORD *)this + 80);
        goto LABEL_39;
      }
    }
    v33 = *((_DWORD *)this + 80);
    goto LABEL_39;
  }
  v42._M_finish = (char *)&v42;
  v42._M_start_of_storage._M_data = (char *)&v42;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v42, 0x10u);
  *v42._M_finish = 0;
  std::string::string((int)&v41, "");
  while ( 2 )
  {
    std::string::_M_assign(&v42, "", "");
    v19 = *(const char **)((char *)&Level::LoadFile(std::string const&,std::string const&)::potentialFolders + v6);
    v20 = LC_API_STRLEN_0(v19);
    std::string::_M_append(&v42, v19, &v19[v20]);
    std::string::_M_append(&v42, a2->_M_start_of_storage._M_data, a2->_M_finish);
    if ( Application::IsUsingUncompiledData(
           (Application *)&Singleton<Application>::s_inst,
           v42._M_start_of_storage._M_data) )
    {
      std::string::append((std::string *)&v41, "\n\t");
      std::string::_M_append((std::string *)&v41, v42._M_start_of_storage._M_data, v42._M_finish);
      v39 = (*(int (__fastcall **)(_DWORD, char *, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 136))(
              *(_DWORD *)(dword_99F73C + 52),
              v42._M_start_of_storage._M_data,
              0,
              0);
      if ( v39 )
      {
        v26 = operator new(80, 0);
        v28 = &v39;
        v27 = (IStreamBase *)v39;
        v29 = v26;
        goto LABEL_32;
      }
    }
    v21 = 0;
    M_finish = v42._M_finish;
    while ( 1 )
    {
      v22 = Level::LoadFile(std::string const&,std::string const&)::hackToRemove[v21];
      v23 = LC_API_STRLEN_0(v22);
      if ( M_finish != v42._M_start_of_storage._M_data )
        break;
      if ( !v23 )
      {
        v24 = 0;
        goto LABEL_20;
      }
LABEL_28:
      if ( ++v21 == 4 )
        goto LABEL_21;
    }
    if ( v23 > M_finish - v42._M_start_of_storage._M_data )
      goto LABEL_28;
    v25 = (char *)std::search<char const*,char const*,std::priv::_Eq_traits<std::char_traits<char>>>(
                    v42._M_start_of_storage._M_data,
                    M_finish,
                    v22,
                    &v22[v23],
                    v40);
    M_finish = v42._M_finish;
    if ( v25 == v42._M_finish || v25 - v42._M_start_of_storage._M_data == -1 )
      goto LABEL_28;
    v36 = v25 - v42._M_start_of_storage._M_data;
    v35 = LC_API_STRLEN_0(v22);
    v24 = v36;
    v23 = v35;
LABEL_20:
    std::string::replace(&v42, v24, v23, "", 0);
LABEL_21:
    std::string::_M_append((std::string *)&v41, "\n\t", "");
    std::string::_M_append((std::string *)&v41, v42._M_start_of_storage._M_data, v42._M_finish);
    v38 = (*(int (__fastcall **)(_DWORD, char *, _DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 52) + 136))(
            *(_DWORD *)(dword_99F73C + 52),
            v42._M_start_of_storage._M_data,
            0,
            0);
    if ( !v38 )
    {
      v6 += 4;
      if ( v6 == 16 )
      {
        v10 = 1;
        goto LABEL_24;
      }
      continue;
    }
    break;
  }
  v29 = operator new(80, 0);
  v28 = &v38;
  v27 = (IStreamBase *)v38;
LABEL_32:
  v10 = 0;
  *(_DWORD *)v29 = off_967670;
  StreamBuffer::StreamBuffer((StreamBuffer *)(v29 + 8), v27);
  *(_DWORD *)(v29 + 56) = 0;
  *(_DWORD *)(v29 + 60) = 0;
  *(_DWORD *)(v29 + 64) = 0;
  *(_DWORD *)(v29 + 68) = 0;
  *(_BYTE *)(v29 + 72) = 0;
  *((_DWORD *)this + 80) = v29;
  (*(void (__fastcall **)(_DWORD, int *))(**(_DWORD **)(dword_99F73C + 52) + 120))(*(_DWORD *)(dword_99F73C + 52), v28);
LABEL_24:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v41);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v42);
LABEL_5:
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v43);
  return v10;
}


// ===== 3f4154 Level::LoadTile(rnd::Tile *,int) =====
int __fastcall Level::LoadTile(Level *this, rnd::Tile *a2, int a3)
{
  int v6; // r8
  rnd::Tile *v7; // r7
  int Tile; // r0
  int File; // [sp+Ch] [bp-120h]
  int v11; // [sp+Ch] [bp-120h]
  int v12; // [sp+Ch] [bp-120h]
  int v13; // [sp+Ch] [bp-120h]
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+34h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+4Ch] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+64h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+7Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+94h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+ACh] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v20; // [sp+C4h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v21; // [sp+DCh] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v22; // [sp+F4h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v23; // [sp+10Ch] [bp-20h] BYREF

  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
  }
  else if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "false",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp",
      3269);
  }
  *((float *)this + 88) = (float)((float)*((int *)a2 + 33)
                                + (float)((float)(*(_DWORD *)(*((_DWORD *)a2 + 12) + 84) - 1) * 0.5))
                        * *(float *)(*((_DWORD *)a2 + 12) + 76);
  *((float *)this + 89) = (float)((float)*((int *)a2 + 34)
                                + (float)((float)(*(_DWORD *)(*((_DWORD *)a2 + 12) + 88) - 1) * 0.5))
                        * COERCE_FLOAT(*(_DWORD *)(*((_DWORD *)a2 + 12) + 80) + 0x80000000);
  *((_DWORD *)this + 90) = *((_DWORD *)a2 + 35);
  Level::SetObjectModuleId((int)this, a3);
  std::operator+<char>((int)&v23, *((_DWORD *)a2 + 12) + 28, "/mgx/");
  std::operator+<char>((int)&v22, *((_DWORD *)a2 + 12) + 4, ".mgx");
  std::string::_M_append((std::string *)&v23, v22._M_start_of_storage._M_data, v22._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v22);
  std::operator+<char>((int)&v21, *((_DWORD *)a2 + 12) + 28, "/mvx/");
  std::operator+<char>((int)&v20, *((_DWORD *)a2 + 12) + 4, ".mvx");
  std::string::_M_append((std::string *)&v21, v20._M_start_of_storage._M_data, v20._M_finish);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v20);
  std::operator+<char>((int)&v19, *((_DWORD *)a2 + 12) + 28, "/mgp/");
  std::string::_M_append((std::string *)&v19, *((const char **)a2 + 25), *((const char **)a2 + 24));
  std::operator+<char>((int)&v18, *((_DWORD *)a2 + 12) + 28, "/mvp/");
  std::string::_M_append((std::string *)&v18, *((const char **)a2 + 31), *((const char **)a2 + 30));
  do
  {
    std::string::string((int)&v17, "Module");
    File = Level::LoadFile(this, (const std::string *)&v21, (const std::string *)&v17);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  }
  while ( !File );
  do
  {
    std::string::string((int)&v16, "Module");
    v11 = Level::LoadFile(this, (const std::string *)&v23, (const std::string *)&v16);
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  }
  while ( !v11 );
  if ( *((_DWORD *)a2 + 25) != *((_DWORD *)a2 + 24) )
  {
    do
    {
      std::string::string((int)&v15, "Module");
      v12 = Level::LoadFile(this, (const std::string *)&v19, (const std::string *)&v15);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
    }
    while ( !v12 );
  }
  if ( *((_DWORD *)a2 + 31) != *((_DWORD *)a2 + 30) )
  {
    do
    {
      std::string::string((int)&v14, "Module");
      v13 = Level::LoadFile(this, (const std::string *)&v18, (const std::string *)&v14);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
    }
    while ( !v13 );
  }
  v6 = 0;
  *((_BYTE *)this + 364) = 0;
  *((_DWORD *)this + 90) = 0;
  *((_DWORD *)this + 88) = 0;
  *((_DWORD *)this + 89) = 0;
  if ( *((int *)a2 + 3) > 0 )
  {
    v7 = a2;
    Tile = a3;
    do
    {
      Tile = Level::LoadTile(this, *((rnd::Tile **)v7 + 4), Tile + 1);
      ++v6;
      v7 = (rnd::Tile *)((char *)v7 + 4);
    }
    while ( *((_DWORD *)a2 + 3) > v6 );
    a3 = Tile;
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v21);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v23);
  return a3;
}


// ===== 3f459c Level::_LoadLightSet(void) =====
void __fastcall Level::_LoadLightSet(Level *this)
{
  int v2; // r3
  int v3; // r3
  int File; // [sp+8h] [bp-94h]
  int v5; // [sp+8h] [bp-94h]
  std::priv::_String_base<char,std::allocator<char> > v6; // [sp+34h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v7; // [sp+4Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+64h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v9; // [sp+7Ch] [bp-20h] BYREF

  if ( Device::IsFixedPipeline(this) )
  {
    v2 = *((_DWORD *)this + 14);
    if ( !v2 )
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
          "m_levelConfig != 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
          476);
        v2 = *((_DWORD *)this + 14);
      }
    }
    if ( *(_DWORD *)(v2 + 740) != *(_DWORD *)(v2 + 736) )
    {
      while ( 1 )
      {
        if ( !v2 )
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
              "m_levelConfig != 0",
              "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
              476);
            v2 = *((_DWORD *)this + 14);
          }
        }
        std::string::string((int)&v9, *(char **)(v2 + 740));
        std::string::string((int)&v8, "Module");
        File = Level::LoadFile(this, (const std::string *)&v9, (const std::string *)&v8);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v9);
        if ( File )
          break;
        v2 = *((_DWORD *)this + 14);
      }
    }
  }
  else
  {
    v3 = *((_DWORD *)this + 14);
    if ( !v3 )
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
          "m_levelConfig != 0",
          "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
          476);
        v3 = *((_DWORD *)this + 14);
      }
    }
    if ( *(_DWORD *)(v3 + 716) != *(_DWORD *)(v3 + 712) )
    {
      while ( 1 )
      {
        if ( !v3 )
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
              "m_levelConfig != 0",
              "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
              476);
            v3 = *((_DWORD *)this + 14);
          }
        }
        std::string::string((int)&v7, *(char **)(v3 + 716));
        std::string::string((int)&v6, "Module");
        v5 = Level::LoadFile(this, (const std::string *)&v7, (const std::string *)&v6);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v6);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v7);
        if ( v5 )
          break;
        v3 = *((_DWORD *)this + 14);
      }
    }
  }
}


// ===== 3f4910 LevelConfig::LevelConfig(ObjectBase::GO_IDS) =====
int __fastcall LevelConfig::LevelConfig(int a1, int a2)
{
  ObjectBase::ObjectBase(a1, a2);
  *(_DWORD *)(a1 + 304) = a1 + 288;
  *(_DWORD *)a1 = off_9676B0;
  *(_DWORD *)(a1 + 4) = &off_967710;
  *(_DWORD *)(a1 + 36) = off_96771C;
  *(_DWORD *)(a1 + 308) = a1 + 288;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 288), 0x10u);
  **(_BYTE **)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 328) = a1 + 312;
  *(_DWORD *)(a1 + 332) = a1 + 312;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 312), 0x10u);
  **(_BYTE **)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 352) = a1 + 336;
  *(_DWORD *)(a1 + 356) = a1 + 336;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 336), 0x10u);
  **(_BYTE **)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 376) = a1 + 360;
  *(_DWORD *)(a1 + 380) = a1 + 360;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 360), 0x10u);
  **(_BYTE **)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 400) = a1 + 384;
  *(_DWORD *)(a1 + 404) = a1 + 384;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 384), 0x10u);
  **(_BYTE **)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 424) = a1 + 408;
  *(_DWORD *)(a1 + 428) = a1 + 408;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 408), 0x10u);
  **(_BYTE **)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 448) = a1 + 432;
  *(_DWORD *)(a1 + 452) = a1 + 432;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 432), 0x10u);
  **(_BYTE **)(a1 + 448) = 0;
  *(_DWORD *)(a1 + 556) = 0;
  *(_DWORD *)(a1 + 460) = 0;
  *(_DWORD *)(a1 + 464) = 0;
  *(_DWORD *)(a1 + 468) = 0;
  *(_DWORD *)(a1 + 480) = 0;
  *(_DWORD *)(a1 + 484) = 0;
  *(_DWORD *)(a1 + 488) = 0;
  *(_DWORD *)(a1 + 492) = 0;
  *(_DWORD *)(a1 + 496) = 0;
  *(_DWORD *)(a1 + 500) = 0;
  *(_DWORD *)(a1 + 504) = 0;
  *(_DWORD *)(a1 + 508) = 0;
  *(_DWORD *)(a1 + 512) = 0;
  *(_DWORD *)(a1 + 536) = 0;
  *(_DWORD *)(a1 + 540) = 0;
  *(_DWORD *)(a1 + 544) = 0;
  *(_DWORD *)(a1 + 548) = 0;
  *(_DWORD *)(a1 + 552) = 0;
  *(_DWORD *)(a1 + 580) = a1 + 564;
  *(_DWORD *)(a1 + 584) = a1 + 564;
  *(_DWORD *)(a1 + 516) = 0;
  *(_DWORD *)(a1 + 520) = 0;
  *(_DWORD *)(a1 + 524) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 564), 0x10u);
  **(_BYTE **)(a1 + 580) = 0;
  *(_DWORD *)(a1 + 604) = a1 + 588;
  *(_DWORD *)(a1 + 608) = a1 + 588;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 588), 0x10u);
  **(_BYTE **)(a1 + 604) = 0;
  *(_DWORD *)(a1 + 628) = a1 + 612;
  *(_DWORD *)(a1 + 632) = a1 + 612;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 612), 0x10u);
  **(_BYTE **)(a1 + 628) = 0;
  *(_DWORD *)(a1 + 652) = a1 + 636;
  *(_DWORD *)(a1 + 656) = a1 + 636;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 636), 0x10u);
  **(_BYTE **)(a1 + 652) = 0;
  *(_DWORD *)(a1 + 712) = a1 + 696;
  *(_DWORD *)(a1 + 716) = a1 + 696;
  *(_BYTE *)(a1 + 668) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 696), 0x10u);
  **(_BYTE **)(a1 + 712) = 0;
  *(_DWORD *)(a1 + 736) = a1 + 720;
  *(_DWORD *)(a1 + 740) = a1 + 720;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 720), 0x10u);
  **(_BYTE **)(a1 + 736) = 0;
  *(_DWORD *)(a1 + 760) = a1 + 744;
  *(_DWORD *)(a1 + 764) = a1 + 744;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 744), 0x10u);
  **(_BYTE **)(a1 + 760) = 0;
  *(_DWORD *)(a1 + 784) = a1 + 768;
  *(_DWORD *)(a1 + 788) = a1 + 768;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 768), 0x10u);
  **(_BYTE **)(a1 + 784) = 0;
  return a1;
}


// ===== 3f4b94 `non-virtual thunk to'LevelConfig::DeclareProperties(void) =====
int __fastcall `non-virtual thunk to'LevelConfig::DeclareProperties(LevelConfig *this)
{
  return LevelConfig::DeclareProperties((LevelConfig *)((char *)this - 4));
}


// ===== 3f4b9c LevelConfig::DeclareProperties(void) =====
int __fastcall LevelConfig::DeclareProperties(LevelConfig *this)
{
  PropertyMap *v2; // r5
  Property *v3; // r7
  _BYTE v5[12]; // [sp+Ch] [bp-130h] BYREF
  _DWORD v6[3]; // [sp+18h] [bp-124h] BYREF
  int v7[3]; // [sp+24h] [bp-118h] BYREF
  int v8[3]; // [sp+30h] [bp-10Ch] BYREF
  int v9[3]; // [sp+3Ch] [bp-100h] BYREF
  int v10[3]; // [sp+48h] [bp-F4h] BYREF
  int v11[3]; // [sp+54h] [bp-E8h] BYREF
  int v12[3]; // [sp+60h] [bp-DCh] BYREF
  std::priv::_String_base<char,std::allocator<char> > v13; // [sp+8Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v14; // [sp+A4h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v15; // [sp+BCh] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v16; // [sp+D4h] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+ECh] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v18; // [sp+104h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v19; // [sp+11Ch] [bp-20h] BYREF

  v2 = (LevelConfig *)((char *)this + 4);
  PropertyMap::AddProperty<std::string>((int)this + 4, (int)"scriptFile", (int)this + 336);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"camera_file", (int)this + 588);
  std::string::string((int)&v19, "Default");
  PropertyMap::AddProperty<std::string>(v2, "camera_animset", (char *)this + 612, &v19);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v19);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"camera_name", (int)this + 636);
  PropertyMap::AddProperty<int>(v2, "camera_znear", (char *)this + 660, 600);
  PropertyMap::AddProperty<int>(v2, "camera_zfar", (char *)this + 664, 10000);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"skybox", (int)this + 564);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"music", (int)this + 360);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"combat_music", (int)this + 408);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"ambiant_music", (int)this + 432);
  PropertyMap::AddProperty<std::string>((int)v2, (int)"safezone_music", (int)this + 384);
  PropertyMap::AddProperty<bool>(v2, "combat_music_enabled", (char *)this + 456, 1);
  v12[0] = 1132396544;
  v12[1] = 1132396544;
  v12[2] = 1132396544;
  PropertyMap::AddProperty<Point3D<float>>(v2, "ambientColor", (int)this + 460, v12);
  PropertyMap::AddProperty<int>(v2, "fog_start", (char *)this + 472, 1);
  PropertyMap::AddProperty<int>(v2, "fog_end", (char *)this + 476, 0);
  v11[2] = 1132396544;
  v11[0] = 1132396544;
  v11[1] = 1132396544;
  PropertyMap::AddProperty<Point3D<float>>(v2, "fog_color", (int)this + 480, v11);
  v10[2] = 1065353216;
  v10[0] = 0;
  v10[1] = 0;
  PropertyMap::AddProperty<Point3D<float>>(v2, "fog_direction_mask", (int)this + 504, v10);
  memset(v9, 0, sizeof(v9));
  PropertyMap::AddProperty<Point3D<float>>(v2, "clear_color", (int)this + 492, v9);
  v8[2] = -915135488;
  v8[0] = -915135488;
  v8[1] = -915135488;
  PropertyMap::AddProperty<Point3D<float>>(v2, "sun_position", (int)this + 536, v8);
  memset(v7, 0, sizeof(v7));
  PropertyMap::AddProperty<Point3D<float>>(v2, "shadow_color", (int)this + 548, v7);
  PropertyMap::AddProperty<float>(v2, "shadow_opacity", (char *)this + 560, 0);
  std::string::string((int)&v18, "LevelConfig");
  PropertyMap::AddProperty<std::string>(v2, "gametype", (char *)this + 288, &v18);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v18);
  std::string::string((int)&v17, "level_config");
  PropertyMap::AddProperty<std::string>(v2, "name", (char *)this + 312, &v17);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
  std::string::string((int)&v16, "");
  PropertyMap::AddProperty<std::string>(v2, "light_set", (char *)this + 696, &v16);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v16);
  std::string::string((int)&v15, "");
  PropertyMap::AddProperty<std::string>(v2, "fixed_light_set", (char *)this + 720, &v15);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v15);
  std::string::string((int)&v14, "");
  PropertyMap::AddProperty<std::string>(v2, "mp_script", (char *)this + 768, &v14);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v14);
  std::string::string((int)&v13, "char_rim_light.tga");
  PropertyMap::AddProperty<std::string>(v2, "rim_light_file", (char *)this + 744, &v13);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v13);
  memset(v6, 0, sizeof(v6));
  std::vector<Point3D<float>>::vector(v5, v6);
  v3 = (Property *)operator new(44, 0);
  *(_DWORD *)v3 = &off_95C5E8;
  std::string::string((int)v3 + 8, "dfog_colors");
  *((_DWORD *)v3 + 1) = (LevelConfig *)((char *)this + 516) - v2;
  *(_DWORD *)v3 = off_967680;
  std::vector<Point3D<float>>::vector((char *)v3 + 32, v5);
  PropertyMap::AddProperty(v2, "dfog_colors", v3);
  std::vector<Point3D<float>>::~vector(v5);
  std::vector<Point3D<float>>::~vector(v6);
  PropertyMap::AddProperty<float>(v2, "dfog_change_min_dist", (char *)this + 528, 1128792064);
  PropertyMap::AddProperty<float>(v2, "dfog_blend_dist", (char *)this + 532, 1120403456);
  PropertyMap::AddProperty<int>(v2, "prog_vertex_buffer_size", (char *)this + 672, 5242880);
  PropertyMap::AddProperty<int>(v2, "prog_index_buffer_size", (char *)this + 676, 655360);
  PropertyMap::AddProperty<bool>(v2, "prog_quantize", (char *)this + 680, 0);
  PropertyMap::AddProperty<int>(v2, "fix_vertex_buffer_size", (char *)this + 684, 5242880);
  PropertyMap::AddProperty<int>(v2, "fix_index_buffer_size", (char *)this + 688, 655360);
  return PropertyMap::AddProperty<bool>(v2, "fix_quantize", (char *)this + 692, 0);
}


// ===== 3f51a8 LevelConfig::LevelConfig(ObjectBase::GO_IDS) =====
int __fastcall LevelConfig::LevelConfig(int a1, int a2)
{
  ObjectBase::ObjectBase(a1, a2);
  *(_DWORD *)(a1 + 304) = a1 + 288;
  *(_DWORD *)a1 = off_9676B0;
  *(_DWORD *)(a1 + 4) = &off_967710;
  *(_DWORD *)(a1 + 36) = off_96771C;
  *(_DWORD *)(a1 + 308) = a1 + 288;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 288), 0x10u);
  **(_BYTE **)(a1 + 304) = 0;
  *(_DWORD *)(a1 + 328) = a1 + 312;
  *(_DWORD *)(a1 + 332) = a1 + 312;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 312), 0x10u);
  **(_BYTE **)(a1 + 328) = 0;
  *(_DWORD *)(a1 + 352) = a1 + 336;
  *(_DWORD *)(a1 + 356) = a1 + 336;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 336), 0x10u);
  **(_BYTE **)(a1 + 352) = 0;
  *(_DWORD *)(a1 + 376) = a1 + 360;
  *(_DWORD *)(a1 + 380) = a1 + 360;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 360), 0x10u);
  **(_BYTE **)(a1 + 376) = 0;
  *(_DWORD *)(a1 + 400) = a1 + 384;
  *(_DWORD *)(a1 + 404) = a1 + 384;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 384), 0x10u);
  **(_BYTE **)(a1 + 400) = 0;
  *(_DWORD *)(a1 + 424) = a1 + 408;
  *(_DWORD *)(a1 + 428) = a1 + 408;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 408), 0x10u);
  **(_BYTE **)(a1 + 424) = 0;
  *(_DWORD *)(a1 + 448) = a1 + 432;
  *(_DWORD *)(a1 + 452) = a1 + 432;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 432), 0x10u);
  **(_BYTE **)(a1 + 448) = 0;
  *(_DWORD *)(a1 + 556) = 0;
  *(_DWORD *)(a1 + 460) = 0;
  *(_DWORD *)(a1 + 464) = 0;
  *(_DWORD *)(a1 + 468) = 0;
  *(_DWORD *)(a1 + 480) = 0;
  *(_DWORD *)(a1 + 484) = 0;
  *(_DWORD *)(a1 + 488) = 0;
  *(_DWORD *)(a1 + 492) = 0;
  *(_DWORD *)(a1 + 496) = 0;
  *(_DWORD *)(a1 + 500) = 0;
  *(_DWORD *)(a1 + 504) = 0;
  *(_DWORD *)(a1 + 508) = 0;
  *(_DWORD *)(a1 + 512) = 0;
  *(_DWORD *)(a1 + 536) = 0;
  *(_DWORD *)(a1 + 540) = 0;
  *(_DWORD *)(a1 + 544) = 0;
  *(_DWORD *)(a1 + 548) = 0;
  *(_DWORD *)(a1 + 552) = 0;
  *(_DWORD *)(a1 + 580) = a1 + 564;
  *(_DWORD *)(a1 + 584) = a1 + 564;
  *(_DWORD *)(a1 + 516) = 0;
  *(_DWORD *)(a1 + 520) = 0;
  *(_DWORD *)(a1 + 524) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 564), 0x10u);
  **(_BYTE **)(a1 + 580) = 0;
  *(_DWORD *)(a1 + 604) = a1 + 588;
  *(_DWORD *)(a1 + 608) = a1 + 588;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 588), 0x10u);
  **(_BYTE **)(a1 + 604) = 0;
  *(_DWORD *)(a1 + 628) = a1 + 612;
  *(_DWORD *)(a1 + 632) = a1 + 612;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 612), 0x10u);
  **(_BYTE **)(a1 + 628) = 0;
  *(_DWORD *)(a1 + 652) = a1 + 636;
  *(_DWORD *)(a1 + 656) = a1 + 636;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 636), 0x10u);
  **(_BYTE **)(a1 + 652) = 0;
  *(_DWORD *)(a1 + 712) = a1 + 696;
  *(_DWORD *)(a1 + 716) = a1 + 696;
  *(_BYTE *)(a1 + 668) = 0;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 696), 0x10u);
  **(_BYTE **)(a1 + 712) = 0;
  *(_DWORD *)(a1 + 736) = a1 + 720;
  *(_DWORD *)(a1 + 740) = a1 + 720;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 720), 0x10u);
  **(_BYTE **)(a1 + 736) = 0;
  *(_DWORD *)(a1 + 760) = a1 + 744;
  *(_DWORD *)(a1 + 764) = a1 + 744;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 744), 0x10u);
  **(_BYTE **)(a1 + 760) = 0;
  *(_DWORD *)(a1 + 784) = a1 + 768;
  *(_DWORD *)(a1 + 788) = a1 + 768;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(a1 + 768), 0x10u);
  **(_BYTE **)(a1 + 784) = 0;
  return a1;
}


// ===== 3f542c std::allocator<std::priv::_Rb_tree_node<std::string>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::string>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 40;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3f544c std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_insert(std::priv::_Rb_tree_node_base *,std::string const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        std::string *a4,
        int a5)
{
  char *v8; // r7
  const void *v10; // r1
  int v11; // r8
  int v12; // r7
  size_t v13; // r2
  int v14; // r0
  std::string *v15; // [sp+4h] [bp-4h]
  std::string *v16; // [sp+4h] [bp-4h]
  std::string *v17; // [sp+4h] [bp-4h]

  if ( a2 == a3 )
  {
    v16 = a4;
    v8 = (char *)std::allocator<std::priv::_Rb_tree_node<std::string>>::allocate();
    std::string::string((std::string *)(v8 + 16), v16);
    *((_DWORD *)v8 + 3) = 0;
    *((_DWORD *)v8 + 2) = 0;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    goto LABEL_7;
  }
  if ( a5 )
    goto LABEL_3;
  v10 = (const void *)a3[9];
  v11 = a4->_M_finish - a4->_M_start_of_storage._M_data;
  v12 = a3[8] - (_DWORD)v10;
  if ( v12 >= v11 )
    v13 = a4->_M_finish - a4->_M_start_of_storage._M_data;
  else
    v13 = a3[8] - (_DWORD)v10;
  v17 = a4;
  v14 = memcmp(a4->_M_start_of_storage._M_data, v10, v13);
  a4 = v17;
  if ( !v14 )
  {
    if ( v11 >= v12 )
      goto LABEL_13;
LABEL_3:
    v15 = a4;
    v8 = (char *)std::allocator<std::priv::_Rb_tree_node<std::string>>::allocate();
    std::string::string((std::string *)(v8 + 16), v15);
    *((_DWORD *)v8 + 3) = 0;
    *((_DWORD *)v8 + 2) = 0;
    a3[2] = v8;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v8;
    goto LABEL_7;
  }
  if ( v14 < 0 )
    goto LABEL_3;
LABEL_13:
  v8 = (char *)std::allocator<std::priv::_Rb_tree_node<std::string>>::allocate();
  std::string::string((std::string *)(v8 + 16), v17);
  *((_DWORD *)v8 + 3) = 0;
  *((_DWORD *)v8 + 2) = 0;
  a3[3] = v8;
  if ( a3 == (_DWORD *)a2[3] )
    a2[3] = v8;
LABEL_7:
  *((_DWORD *)v8 + 1) = a3;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 3f55a4 Level::_FlushMeshes(void) =====
void __fastcall Level::_FlushMeshes(Level *this)
{
  _DWORD *v1; // r4
  int v2; // r10
  int v3; // r0
  _DWORD *v4; // r2
  const char **i; // r4
  glitch::collada::CResFile *v6; // r0
  const char *v7; // r2
  int v8; // r3
  char *v9; // r3
  char v10[4]; // [sp+0h] [bp-18h] BYREF
  int v11; // [sp+4h] [bp-14h]
  const char **v12; // [sp+8h] [bp-10h]
  char *v13; // [sp+Ch] [bp-Ch]
  int v14; // [sp+10h] [bp-8h]
  _BYTE v15[12]; // [sp+18h] [bp+0h] BYREF
  char v16[8]; // [sp+24h] [bp+Ch] BYREF
  std::priv::_String_base<char,std::allocator<char> > v17; // [sp+2Ch] [bp+14h] BYREF

  v1 = *(_DWORD **)(dword_99F764 + 20);
  v10[0] = 0;
  v14 = 0;
  v2 = dword_99F764 + 12;
  v11 = 0;
  v12 = (const char **)v10;
  v13 = v10;
  while ( (_DWORD *)v2 != v1 )
  {
    while ( 1 )
    {
      if ( v1[11] )
      {
        ObjectBase::GetHandle((ObjectBase *)v15);
        v3 = ObjectHandle::operator GameObject *(v15);
        if ( v3 )
        {
          if ( *(_DWORD *)(v3 + 728) )
          {
            VisualObject::FlushMeshes((VisualObject *)&v17);
            std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::insert_unique(
              v16,
              v10,
              &v17);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v17);
          }
        }
      }
      v4 = (_DWORD *)v1[3];
      if ( !v4 )
        break;
      while ( v4[2] )
        v4 = (_DWORD *)v4[2];
      v1 = v4;
      if ( (_DWORD *)v2 == v4 )
        goto LABEL_12;
    }
    v8 = v1[1];
    if ( v1 == *(_DWORD **)(v8 + 12) )
    {
      do
      {
        v1 = (_DWORD *)v8;
        v8 = *(_DWORD *)(v8 + 4);
      }
      while ( *(_DWORD **)(v8 + 12) == v1 );
      v4 = (_DWORD *)v1[3];
    }
    if ( v4 != (_DWORD *)v8 )
      v1 = (_DWORD *)v8;
  }
LABEL_12:
  i = v12;
  while ( i != (const char **)v10 )
  {
    while ( 1 )
    {
      v6 = (glitch::collada::CResFile *)glitch::collada::CResFileManager::get(
                                          (glitch::collada::CResFileManager *)glitch::collada::CResFileManager::Inst,
                                          i[9],
                                          0);
      if ( v6 )
        glitch::collada::CResFile::releaseRemovableBuffer(v6, 1u);
      v7 = i[3];
      if ( v7 )
        break;
      v9 = (char *)i[1];
      if ( i == *((const char ***)v9 + 3) )
      {
        do
        {
          i = (const char **)v9;
          v9 = *((char **)v9 + 1);
        }
        while ( *((const char ***)v9 + 3) == i );
        v7 = i[3];
      }
      if ( v7 != v9 )
        i = (const char **)v9;
      if ( i == (const char **)v10 )
        goto LABEL_32;
    }
    for ( i = (const char **)i[3]; i[2]; i = (const char **)i[2] )
      ;
  }
LABEL_32:
  if ( v14 )
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::string,std::priv::_Identity<std::string>,std::priv::_SetTraitsT<std::string>,std::allocator<std::string>>::_M_erase(
      v10,
      v11);
}


// ===== 3f578c std::allocator<std::priv::_Rb_tree_node<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 24;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 3f57ac std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(std::priv::_Rb_tree_node_base *,std::pair<glitch::scene::ISceneNode const* const,GameObject *> const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) =====
_DWORD *__fastcall std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        _DWORD *a4,
        int a5,
        int a6)
{
  _DWORD *v10; // r0
  _DWORD *v11; // r6
  int v12; // r2
  _DWORD *v14; // r0
  int v15; // r2
  int v16; // r2

  if ( a2 == a3 )
  {
    v11 = std::allocator<std::priv::_Rb_tree_node<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::allocate();
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
    v10 = std::allocator<std::priv::_Rb_tree_node<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::allocate();
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
    v14 = std::allocator<std::priv::_Rb_tree_node<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::allocate();
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


// ===== 3f58d0 std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(std::pair<glitch::scene::ISceneNode const* const,GameObject *> const&) =====
int __fastcall std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(
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
    std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
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
      std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
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


// ===== 3f5a58 std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(std::priv::_Rb_tree_iterator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>,std::pair<glitch::scene::ISceneNode const* const,GameObject *> const&) =====
_DWORD *__fastcall std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(
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
      std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(
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
      std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
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
        std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(
          (int)&v21,
          a2,
          a4);
        *a1 = v21;
        return a1;
      }
      if ( !v15 )
      {
LABEL_63:
        std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
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
            std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
              a1,
              a2,
              v4,
              a4,
              (int)v4,
              0);
          else
            std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
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
              std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
                a1,
                a2,
                v4,
                a4,
                0,
                (int)v4);
              return a1;
            }
LABEL_42:
            std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
              a1,
              a2,
              i,
              a4,
              (int)i,
              0);
            return a1;
          }
LABEL_31:
          std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(
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
    std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(
      (int)&v20,
      a2,
      a4);
    *a1 = v20;
  }
  else
  {
    std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::_M_insert(
      a1,
      a2,
      v16,
      a4,
      0,
      (int)v4);
  }
  return a1;
}


// ===== 3f5dcc batch::BatchNodeCompiler::_MapMeshNode(GameObject *,glitch::scene::ISceneNode *) =====
_DWORD *__fastcall batch::BatchNodeCompiler::_MapMeshNode(_DWORD *this, GameObject *a2, glitch::scene::ISceneNode *a3)
{
  batch::BatchNodeCompiler *v4; // r5
  _DWORD *v6; // r12
  _DWORD *v7; // r1
  _DWORD *v8; // r2
  unsigned int v9; // r3
  bool v10; // cf
  _DWORD *v11; // r3
  _DWORD *v12; // r3
  char *v13; // r4
  char *i; // r7
  char *v15; // t1
  glitch::scene::ISceneNode *v16; // r2
  unsigned int v17[2]; // [sp+0h] [bp-14h] BYREF
  _DWORD *v18; // [sp+8h] [bp-Ch] BYREF
  _DWORD *v19; // [sp+Ch] [bp-8h] BYREF

  v4 = (batch::BatchNodeCompiler *)this;
  if ( a3 )
  {
    v6 = (_DWORD *)*(this + 8);
    v7 = this + 7;
    if ( v6 )
    {
      v8 = this + 7;
      while ( 1 )
      {
        v9 = v6[4];
        v10 = v9 >= (unsigned int)a3;
        if ( v9 >= (unsigned int)a3 )
          v11 = (_DWORD *)v6[2];
        else
          v11 = (_DWORD *)v6[3];
        if ( !v10 )
          v6 = v8;
        v8 = v6;
        if ( !v11 )
          break;
        v6 = v11;
      }
    }
    else
    {
      v6 = this + 7;
    }
    if ( v7 == v6 || (v12 = v6, v6[4] > (unsigned int)a3) )
    {
      v17[1] = 0;
      v19 = v6;
      v17[0] = (unsigned int)a3;
      this = std::priv::_Rb_tree<glitch::scene::ISceneNode const*,std::less<glitch::scene::ISceneNode const*>,std::pair<glitch::scene::ISceneNode const* const,GameObject *>,std::priv::_Select1st<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::priv::_MapTraitsT<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>,std::allocator<std::pair<glitch::scene::ISceneNode const* const,GameObject *>>>::insert_unique(
               &v18,
               v7,
               &v19,
               v17);
      v12 = v18;
    }
    v12[5] = a2;
    v15 = *((char **)a3 + 61);
    v13 = (char *)a3 + 244;
    for ( i = v15; v13 != i; i = *(char **)i )
    {
      if ( i )
        v16 = (glitch::scene::ISceneNode *)(i - 4);
      else
        v16 = nullptr;
      this = (_DWORD *)batch::BatchNodeCompiler::_MapMeshNode(v4, a2, v16);
    }
  }
  return this;
}


// ===== 3f5ea0 Level::_LoadBatchMap(void) =====
void __fastcall Level::_LoadBatchMap(Level *this)
{
  int Switch; // r6
  batch::BatchNodeCompiler *v3; // r7
  GameObject **v4; // r4
  GameObject **i; // r6
  int v6; // r3
  glitch::scene::ISceneNode *v7; // r2
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v8, "IsDisablingCompiledBatching");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v8);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
  if ( !Switch )
  {
    v3 = *((batch::BatchNodeCompiler **)this + 86);
    if ( v3 )
    {
      v4 = *((GameObject ***)v3 + 4);
      for ( i = *((GameObject ***)v3 + 5); i != v4; ++v4 )
      {
        v6 = *((_DWORD *)*v4 + 182);
        if ( v6 )
        {
          v7 = *(glitch::scene::ISceneNode **)(v6 + 8);
          if ( v7 )
            batch::BatchNodeCompiler::_MapMeshNode(v3, *v4, v7);
        }
      }
    }
  }
}


// ===== 3f5f88 `global constructor keyed to'.._.._sources_Game_Level_Level.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Level_Level.cpp(CMessage *a1)
{
  CMessage *(*v1)(bool); // r2
  CMessage *(*v2)(bool); // r2
  CMessage *(*v3)(bool); // r2
  CMessage *(*v4)(bool); // r2
  CMessage *(*v5)(bool); // r2
  CMessage *(*v6)(bool); // r2
  CMessage *(*v7)(bool); // r2
  CMessage *(*v8)(bool); // r2
  CMessage *(*v9)(bool); // r2
  CMessage *(*v10)(bool); // r2
  CMessage *(*v11)(bool); // r2
  CMessage *(*v12)(bool); // r2
  CMessage *(*v13)(bool); // r2
  CMessage *v14; // r0
  int result; // r0
  int *v16; // r4
  char *v17; // r0
  int v18; // r2
  void *v19; // r0
  int *v20; // r1
  int v21; // r0
  int v22; // r3
  _DWORD *v23; // r6
  unsigned int v24; // r7
  int v25; // r12
  int v26; // r3
  _DWORD *v27; // r6
  unsigned int v28; // r7
  int v29; // r12
  int v30; // r3
  _DWORD *v31; // r6
  unsigned int v32; // r7
  int v33; // r12
  int v34; // r3
  _DWORD *v35; // r6
  unsigned int v36; // r7
  int v37; // r12
  int v38; // r3
  _DWORD *v39; // r6
  unsigned int v40; // r7
  int v41; // r12
  int v42; // r3
  unsigned int v43; // [sp+0h] [bp-14h]
  char *v44; // [sp+4h] [bp-10h]
  size_t v45; // [sp+Ch] [bp-8h] BYREF

  dword_9A30FC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A30F8 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A3101 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A3102 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A3103 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A3104 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A3105 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A3106 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A3107 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A3108 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A3109 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A310A = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A310B = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A310C = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A310D = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A310E = result;
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
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = 1;
    Singleton<MenuMessageManager<StatusMsg,4>>::s_inst = (int)off_95B150;
    v16 = &dword_99FA90;
    do
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = 0;
      v16[5] = 0;
      v16[6] = 0;
      v16[7] = 0;
      v16[8] = 0;
      v16[9] = 8;
      v17 = (char *)std::allocator<StatusMsg *>::allocate((int)(v16 + 8), 8u);
      v18 = v16[9];
      v16[8] = (int)v17;
      v43 = (unsigned int)(v18 - 1) >> 1;
      v44 = v17;
      v45 = 112;
      v19 = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
      v20 = (int *)&v44[4 * v43];
      *v20 = (int)v19;
      v16[3] = (int)v20;
      v21 = *v20;
      v16[7] = (int)v20;
      v16[1] = v21;
      v16[2] = v21 + 112;
      v22 = *v20;
      *v16 = v21;
      v16[6] = v22 + 112;
      v16[4] = v22;
      v16[5] = v22;
      v16 += 10;
    }
    while ( v16 != &Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst );
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<StatusMsg,4>>::s_inst,
               (int)MenuMessageManager<StatusMsg,4>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = 1;
    dword_99FB58 = (int)byte_8;
    Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst = (int)off_95B160;
    dword_99FB34 = 0;
    dword_99FB38 = 0;
    dword_99FB3C = 0;
    dword_99FB40 = 0;
    dword_99FB44 = 0;
    dword_99FB48 = 0;
    dword_99FB4C = 0;
    dword_99FB50 = 0;
    dword_99FB54 = 0;
    v23 = std::allocator<OnlineStatusMsg *>::allocate((int)&dword_99FB54, (unsigned int)byte_8);
    v45 = 112;
    dword_99FB54 = (int)v23;
    v24 = (unsigned int)(dword_99FB58 - 1) >> 1;
    v23[v24] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB40 = (int)&v23[v24];
    v25 = v23[v24];
    dword_99FB50 = (int)&v23[v24];
    dword_99FB3C = v25 + 112;
    dword_99FB38 = v25;
    v26 = v23[v24];
    dword_99FB4C = v26 + 112;
    dword_99FB34 = v25;
    dword_99FB44 = v26;
    dword_99FB48 = v26;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<OnlineStatusMsg,1>>::s_inst,
               (int)MenuMessageManager<OnlineStatusMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = 1;
    dword_99FB84 = (int)byte_8;
    Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst = (int)off_95B170;
    dword_99FB60 = 0;
    dword_99FB64 = 0;
    dword_99FB68 = 0;
    dword_99FB6C = 0;
    dword_99FB70 = 0;
    dword_99FB74 = 0;
    dword_99FB78 = 0;
    dword_99FB7C = 0;
    dword_99FB80 = 0;
    v27 = std::allocator<TutorialMsg *>::allocate((int)&dword_99FB80, (unsigned int)byte_8);
    v45 = 128;
    dword_99FB80 = (int)v27;
    v28 = (unsigned int)(dword_99FB84 - 1) >> 1;
    v27[v28] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB6C = (int)&v27[v28];
    v29 = v27[v28];
    dword_99FB7C = (int)&v27[v28];
    dword_99FB68 = v29 + 128;
    dword_99FB64 = v29;
    v30 = v27[v28];
    dword_99FB78 = v30 + 128;
    dword_99FB60 = v29;
    dword_99FB70 = v30;
    dword_99FB74 = v30;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<TutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<TutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = 1;
    dword_99FBB0 = (int)byte_8;
    Singleton<MenuMessageManager<DialogMsg,1>>::s_inst = (int)off_95B180;
    dword_99FB8C = 0;
    dword_99FB90 = 0;
    dword_99FB94 = 0;
    dword_99FB98 = 0;
    dword_99FB9C = 0;
    dword_99FBA0 = 0;
    dword_99FBA4 = 0;
    dword_99FBA8 = 0;
    dword_99FBAC = 0;
    v31 = std::allocator<DialogMsg *>::allocate((int)&dword_99FBAC, (unsigned int)byte_8);
    v45 = 76;
    dword_99FBAC = (int)v31;
    v32 = (unsigned int)(dword_99FBB0 - 1) >> 1;
    v31[v32] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FB98 = (int)&v31[v32];
    v33 = v31[v32];
    dword_99FBA8 = (int)&v31[v32];
    dword_99FB94 = v33 + 76;
    dword_99FB90 = v33;
    v34 = v31[v32];
    dword_99FBA4 = v34 + 76;
    dword_99FB8C = v33;
    dword_99FB9C = v34;
    dword_99FBA0 = v34;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<DialogMsg,1>>::s_inst,
               (int)MenuMessageManager<DialogMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = 1;
    dword_99FBDC = (int)byte_8;
    Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst = (int)off_95B190;
    dword_99FBB8 = 0;
    dword_99FBBC = 0;
    dword_99FBC0 = 0;
    dword_99FBC4 = 0;
    dword_99FBC8 = 0;
    dword_99FBCC = 0;
    dword_99FBD0 = 0;
    dword_99FBD4 = 0;
    dword_99FBD8 = 0;
    v35 = std::allocator<CharMenuTutorialMsg *>::allocate((int)&dword_99FBD8, (unsigned int)byte_8);
    v45 = 104;
    dword_99FBD8 = (int)v35;
    v36 = (unsigned int)(dword_99FBDC - 1) >> 1;
    v35[v36] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBC4 = (int)&v35[v36];
    v37 = v35[v36];
    dword_99FBD4 = (int)&v35[v36];
    dword_99FBC0 = v37 + 104;
    dword_99FBBC = v37;
    v38 = v35[v36];
    dword_99FBD0 = v38 + 104;
    dword_99FBB8 = v37;
    dword_99FBC8 = v38;
    dword_99FBCC = v38;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst,
               (int)MenuMessageManager<CharMenuTutorialMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = 1;
    dword_99FC08 = (int)byte_8;
    Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst = (int)off_95B1A0;
    dword_99FBE4 = 0;
    dword_99FBE8 = 0;
    dword_99FBEC = 0;
    dword_99FBF0 = 0;
    dword_99FBF4 = 0;
    dword_99FBF8 = 0;
    dword_99FBFC = 0;
    dword_99FC00 = 0;
    dword_99FC04 = 0;
    v39 = std::allocator<AchievementMsg *>::allocate((int)&dword_99FC04, (unsigned int)byte_8);
    v45 = 120;
    dword_99FC04 = (int)v39;
    v40 = (unsigned int)(dword_99FC08 - 1) >> 1;
    v39[v40] = __ZNSt12__node_alloc11_M_allocateERj_veneer(&v45);
    dword_99FBF0 = (int)&v39[v40];
    v41 = v39[v40];
    dword_99FC00 = (int)&v39[v40];
    dword_99FBEC = v41 + 120;
    dword_99FBE8 = v41;
    v42 = v39[v40];
    dword_99FBFC = v42 + 120;
    dword_99FBE4 = v41;
    dword_99FBF4 = v42;
    dword_99FBF8 = v42;
    result = _aeabi_atexit(
               (int)&Singleton<MenuMessageManager<AchievementMsg,1>>::s_inst,
               (int)MenuMessageManager<AchievementMsg,1>::~MenuMessageManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<ItemManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<ItemManager>::s_inst = 1;
    ItemManager::ItemManager((ItemManager *)&Singleton<ItemManager>::s_inst);
    result = _aeabi_atexit((int)&Singleton<ItemManager>::s_inst, (int)ItemManager::~ItemManager, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<ProjectileManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<ProjectileManager>::s_inst = 1;
    ProjectileManager::ProjectileManager((ProjectileManager *)&Singleton<ProjectileManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<ProjectileManager>::s_inst,
               (int)ProjectileManager::~ProjectileManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<VisualFXManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<VisualFXManager>::s_inst = 1;
    VisualFXManager::VisualFXManager((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
    result = _aeabi_atexit(
               (int)&Singleton<VisualFXManager>::s_inst,
               (int)VisualFXManager::~VisualFXManager,
               (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    result = _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<AnimSetManager>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<AnimSetManager>::s_inst = 1;
    AnimSetManager::AnimSetManager((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
    return _aeabi_atexit(
             (int)&Singleton<AnimSetManager>::s_inst,
             (int)AnimSetManager::~AnimSetManager,
             (int)&_dso_handle);
  }
  return result;
}


// ===== 3f6990 Level::_LoadProcess(void) =====
int __fastcall Level::_LoadProcess(Level *this)
{
  int Switch; // r8
  int Scripts; // r0
  MenuDebug *LoadingStepName; // r7
  MenuDebug *Instance; // r0
  Character *v6; // r0
  MenuWorldMap *v7; // r0
  DebugSwitches *v8; // r10
  int *v9; // r11
  int v10; // r0
  GameObject *v11; // r8
  CMatching *Online; // r0
  int v13; // r8
  int v14; // r3
  float v15; // r9
  float v16; // r0
  int v17; // r9
  float *LevelConfig; // r0
  char v19; // r11
  unsigned int v20; // r0
  float v21; // r11
  float v22; // r0
  _DWORD *v23; // r0
  int v24; // r2
  int v25; // r3
  _DWORD *v26; // r9
  DebugSwitches *v27; // r0
  int v28; // r2
  int v29; // r3
  int v30; // r11
  DebugSwitches *v31; // r9
  int SpawnPoint; // r8
  int v33; // r3
  int *v34; // r8
  int v35; // r2
  int v36; // r3
  int v37; // r3
  MenuManager *v38; // r0
  int result; // r0
  int v40; // r4
  RenderFX *v41; // r7
  MenuManager *v42; // r4
  MenuBase *v43; // r0
  MenuManager *v44; // r0
  MenuManager *inited; // r0
  MenuManager *v46; // r0
  RenderFX *HUDRoot; // r0
  DebugSwitches *v48; // r8
  DebugSwitches *v49; // r10
  DebugSwitches *v50; // r8
  DebugSwitches *v51; // r8
  int v52; // r3
  const std::string *v53; // r8
  DebugSwitches *v54; // r10
  int File; // r11
  DebugSwitches *v56; // r8
  PlayerManager *v57; // r0
  GameEventManager *v58; // r7
  DebugSwitches *v59; // r8
  DebugSwitches *v60; // r8
  DebugSwitches *v61; // r8
  std::string *v62; // r7
  DebugSwitches *v63; // r8
  MenuManager *v64; // r0
  MenuManager *v65; // r0
  MenuManager *v66; // r0
  MenuManager *v67; // r0
  MenuManager *v68; // r0
  MenuManager *v69; // r0
  int v70; // r3
  int v71; // r3
  bool v72; // cc
  int v73; // r3
  DebugSwitches *v74; // r8
  CNetPlayerInfo *v75; // r7
  int v76; // r3
  DebugSwitches *v77; // r8
  int v78; // r0
  int v79; // r3
  DebugSwitches *v80; // r8
  int v81; // r11
  int v82; // r9
  int v83; // r10
  CharAI *v84; // r0
  DebugSwitches *v85; // r8
  DebugSwitches *v86; // r8
  DebugSwitches *v87; // r8
  int LocalPlayer; // r0
  int v89; // r0
  CConnectionManager *ConnectionMgr; // r0
  DebugSwitches *v91; // r8
  MenuManager *v92; // r0
  DebugSwitches *v93; // r8
  DebugSwitches *v94; // r8
  DebugSwitches *v95; // r8
  DebugSwitches *v96; // r8
  DebugSwitches *v97; // r8
  DebugSwitches *v98; // r8
  DebugSwitches *v99; // r10
  MenuManager *v100; // r0
  MenuManager *v101; // r7
  MenuBase *MenuByName; // r10
  DebugSwitches *v103; // r0
  DebugSwitches *v104; // r10
  int v105; // r8
  MenuDebug *v106; // r0
  int k; // r8
  int v108; // r3
  int v109; // r3
  DebugSwitches *v110; // r8
  DebugSwitches *v111; // r8
  int j; // r8
  int v113; // r0
  MenuDebug *v114; // r0
  int v115; // r0
  int v116; // r0
  unsigned int v117; // r8
  int v118; // r0
  int v119; // r2
  const char *v120; // r1
  unsigned int v121; // r2
  const char *v122; // r2
  LevelConfig *Object; // r0
  LevelConfig *v124; // r1
  GameObject *v125; // r8
  int i; // r8
  int v127; // r0
  char v128; // [sp+10h] [bp-4ACh]
  int v129; // [sp+10h] [bp-4ACh]
  _BYTE v130[8]; // [sp+20h] [bp-49Ch] BYREF
  _DWORD v131[4]; // [sp+54h] [bp-468h] BYREF
  _DWORD v132[3]; // [sp+64h] [bp-458h] BYREF
  float v133[3]; // [sp+70h] [bp-44Ch] BYREF
  float v134[3]; // [sp+7Ch] [bp-440h] BYREF
  _DWORD v135[2]; // [sp+88h] [bp-434h] BYREF
  int v136; // [sp+90h] [bp-42Ch]
  int v137; // [sp+94h] [bp-428h] BYREF
  int v138; // [sp+A0h] [bp-41Ch] BYREF
  char v139; // [sp+A4h] [bp-418h]
  std::priv::_String_base<char,std::allocator<char> > v140; // [sp+13Ch] [bp-380h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v141; // [sp+154h] [bp-368h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v142; // [sp+16Ch] [bp-350h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v143; // [sp+184h] [bp-338h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v144; // [sp+19Ch] [bp-320h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v145; // [sp+1B4h] [bp-308h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v146; // [sp+1CCh] [bp-2F0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v147; // [sp+1E4h] [bp-2D8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v148; // [sp+1FCh] [bp-2C0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v149; // [sp+214h] [bp-2A8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v150; // [sp+22Ch] [bp-290h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v151; // [sp+244h] [bp-278h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v152; // [sp+25Ch] [bp-260h] BYREF
  char v153; // [sp+274h] [bp-248h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v154; // [sp+28Ch] [bp-230h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v155; // [sp+2A4h] [bp-218h] BYREF
  char v156; // [sp+2BCh] [bp-200h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v157; // [sp+2D4h] [bp-1E8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v158; // [sp+2ECh] [bp-1D0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v159; // [sp+304h] [bp-1B8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v160; // [sp+31Ch] [bp-1A0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v161; // [sp+334h] [bp-188h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v162; // [sp+34Ch] [bp-170h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v163; // [sp+364h] [bp-158h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v164; // [sp+37Ch] [bp-140h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v165; // [sp+394h] [bp-128h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v166; // [sp+3ACh] [bp-110h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v167; // [sp+3C4h] [bp-F8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v168; // [sp+3DCh] [bp-E0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v169; // [sp+3F4h] [bp-C8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v170; // [sp+40Ch] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v171; // [sp+424h] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v172; // [sp+43Ch] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v173; // [sp+454h] [bp-68h] BYREF
  int v174; // [sp+46Ch] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v175; // [sp+484h] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v176; // [sp+49Ch] [bp-20h] BYREF

  if ( handle_cheats_inGame )
  {
    if ( Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst) )
    {
      v6 = *(Character **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
      if ( v6 )
      {
        v7 = (MenuWorldMap *)Character::SG_UnlockAllFastTravels(v6);
        *(_BYTE *)(MenuWorldMap::GetInstance(v7) + 300) = 1;
      }
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v176, "IsDisplayLoadingStepName");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v176);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v176);
  if ( Switch )
  {
    LoadingStepName = (MenuDebug *)DBG_GetLoadingStepName(*((_DWORD *)this + 76));
    Instance = (MenuDebug *)MenuDebug::GetInstance(LoadingStepName);
    MenuDebug::SetText(Instance, (const char *)LoadingStepName);
  }
  Scripts = _DEBUG_OUT("**************************************m_loadStep %d", *((_DWORD *)this + 76));
  switch ( *((_DWORD *)this + 76) )
  {
    case 0:
      g_bigI = 0;
      g_bigV = 0;
      Application::CleanGlitch((Application *)&Singleton<Application>::s_inst);
      ShowMemoryStats("Before Level Loading");
      Scripts = VoxSoundManager::StopAllSounds((VoxSoundManager *)VoxSoundManager::s_instance, 500);
      byte_99F7E0 = 1;
      *((_DWORD *)this + 77) = 0;
      *((_DWORD *)this + 78) = 0;
      *((_DWORD *)this + 79) = 0;
      v70 = *((_DWORD *)this + 76);
      *((_BYTE *)this + 324) = 0;
      *((_DWORD *)this + 76) = v70 + 1;
      break;
    case 2:
      v63 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v175, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v63, (const std::string *)&v175);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v175);
      v65 = (MenuManager *)MenuManager::GetInstance(v64);
      v66 = (MenuManager *)MenuManager::UnloadMenu(v65, 2);
      v67 = (MenuManager *)MenuManager::GetInstance(v66);
      v68 = (MenuManager *)MenuManager::UnloadMenu(v67, 1);
      v69 = (MenuManager *)MenuManager::GetInstance(v68);
      Scripts = MenuManager::UnloadMenu(v69, 3);
      ++*((_DWORD *)this + 76);
      break;
    case 3:
      v61 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      v62 = (std::string *)&v174;
      goto LABEL_58;
    case 4:
      v60 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v172, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v60, (const std::string *)&v172);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v172);
      Scripts = VisualFXManager::BuildLibraries((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
      ++*((_DWORD *)this + 76);
      break;
    case 5:
      v59 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v171, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v59, (const std::string *)&v171);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v171);
      Scripts = PhysicalWorld::load((PhysicalWorld *)dword_99F770, -2000.0, -2000.0, 2000.0, 2000.0);
      ++*((_DWORD *)this + 76);
      break;
    case 6:
      v56 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v163, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v56, (const std::string *)&v163);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v163);
      v57 = (PlayerManager *)dword_99F76C;
      *(_BYTE *)(dword_99F76C + 1737) = 1;
      PlayerManager::Update(v57);
      v58 = (GameEventManager *)operator new(12, 0);
      GameEventManager::GameEventManager(v58);
      *((_DWORD *)this + 101) = v58;
      Scripts = GameEventManager::Load(v58);
      ++*((_DWORD *)this + 76);
      break;
    case 7:
      Random::s_seed = *((_DWORD *)this + 55);
      Random::s_syncedSeed = *((_DWORD *)this + 56);
      if ( *((_BYTE *)this + 232) )
      {
        if ( *(_BYTE *)(GetOnline() + 5) )
          v117 = Random::s_syncedSeed;
        else
          v117 = Random::s_seed;
        StreamBuffer::StreamBuffer((StreamBuffer *)v130);
        if ( Level::GenerateRandomLevel(this, (StreamBuffer *)v130, v117) )
        {
          Level::AssignSteamToLoadDataFile(this, (StreamBuffer *)v130);
          v53 = (const std::string *)((char *)this + 248);
        }
        else
        {
          **((_BYTE **)this + 67) = 120;
          if ( *((_DWORD *)this + 66) == *((_DWORD *)this + 67)
            || (v139 = 46,
                v118 = std::priv::__find_if<char const*,std::priv::_Eq_char_bound<std::char_traits<char>>>(),
                v119 = *((_DWORD *)this + 66),
                v118 == v119)
            || (v120 = *((const char **)this + 67), v118 - (_DWORD)v120 == -1) )
          {
            v53 = (const std::string *)((char *)this + 248);
          }
          else
          {
            v121 = v119 - (_DWORD)v120;
            if ( v118 - (int)v120 > v121 )
              v122 = &v120[v121];
            else
              v122 = (const char *)v118;
            v53 = (const std::string *)((char *)this + 248);
            v170._M_finish = (char *)&v170;
            v170._M_start_of_storage._M_data = (char *)&v170;
            std::string::_M_range_initialize((std::string *)&v170, v120, v122);
            if ( (std::priv::_String_base<char,std::allocator<char> > *)((char *)this + 248) != &v170 )
              std::string::_M_assign(
                (std::string *const)((char *)this + 248),
                v170._M_start_of_storage._M_data,
                v170._M_finish);
            std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v170);
            std::string::append((std::string *)((char *)this + 248), "_BACKUP.mlx");
          }
        }
        StreamBuffer::~StreamBuffer((StreamBuffer *)v130);
      }
      else
      {
        v53 = (const std::string *)((char *)this + 248);
      }
      v54 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v169, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v54, (const std::string *)&v169);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v169);
      *((_DWORD *)this + 78) = 500;
      do
      {
        std::string::string((int)&v168, "Level");
        File = Level::LoadFile(this, v53, (const std::string *)&v168);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v168);
      }
      while ( !File );
      ++*((_DWORD *)this + 76);
      ++*((_DWORD *)this + 79);
      break;
    case 8:
      v51 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v167, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v51, (const std::string *)&v167);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v167);
      v52 = *((_DWORD *)this + 14);
      if ( !v52 )
      {
        if ( dword_99F7F8 == dword_99F7FC )
          goto LABEL_142;
        std::string::string((int)&v166, (char *)dword_99F814);
        std::string::append((std::string *)&v166, "LevelConfig.xml");
        do
        {
          std::string::string((int)&v165, v166._M_start_of_storage._M_data);
          std::string::string((int)&v164, "Level");
          v129 = Level::LoadFile(this, (const std::string *)&v165, (const std::string *)&v164);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v164);
          std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v165);
        }
        while ( !v129 );
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v166);
        v52 = *((_DWORD *)this + 14);
        if ( !v52 )
        {
LABEL_142:
          ObjectManager::Spawn(
            (ObjectManager *)&v137,
            (const char *)dword_99F764,
            "LevelConfig",
            (bool)"RuntimeDefaultLevelConfig",
            0);
          Object = (LevelConfig *)ObjectHandle::GetObject((ObjectHandle *)&v137, 0);
          v124 = Object;
          if ( !Object || *((_DWORD *)Object + 61) != 4 )
            v124 = nullptr;
          Level::SetLevelConfig(this, v124);
          v52 = *((_DWORD *)this + 14);
        }
      }
      if ( *(_DWORD *)(v52 + 516) != *(_DWORD *)(v52 + 520) )
        ObjectManager::InitModulesFogColor(
          dword_99F764,
          v52 + 516,
          (int)*(float *)(v52 + 528),
          &Singleton<Application>::s_inst);
      Scripts = Level::_LoadScripts(this);
      ++*((_DWORD *)this + 76);
      break;
    case 9:
      v50 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v162, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v50, (const std::string *)&v162);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v162);
      Scripts = Level::_LoadLightSet(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0xA:
      v49 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v161, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v49, (const std::string *)&v161);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v161);
      *((_DWORD *)this + 78) = *(_DWORD *)(dword_99F764 + 28);
      do
        Scripts = ObjectManager::InitPost((ObjectManager *)dword_99F764);
      while ( !Scripts );
      goto LABEL_23;
    case 0xB:
      v48 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v160, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v48, (const std::string *)&v160);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v160);
      Scripts = PFWorld::PostLoad((PFWorld *)&Singleton<PFWorld>::s_inst);
      ++*((_DWORD *)this + 76);
      break;
    case 0xC:
      v92 = (MenuManager *)MenuManager::GetInstance((MenuManager *)Scripts);
      Scripts = MenuManager::LoadMenu(v92, 1);
      ++*((_DWORD *)this + 76);
      break;
    case 0xD:
      v91 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v159, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v91, (const std::string *)&v159);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v159);
      Scripts = ScriptManager::InitCommands((ScriptManager *)&ScriptManager::s_inst);
      ++*((_DWORD *)this + 76);
      break;
    case 0xE:
      v87 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v158, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v87, (const std::string *)&v158);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v158);
      Level::_LoadPlayer(this);
      Scripts = GetOnline();
      if ( *(_BYTE *)(Scripts + 5) )
      {
        LocalPlayer = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
        Scripts = (*(int (__fastcall **)(int))(*(_DWORD *)LocalPlayer + 92))(LocalPlayer);
        if ( !Scripts )
        {
          v89 = CMatching::Get(nullptr);
          (*(void (__fastcall **)(int))(*(_DWORD *)v89 + 60))(v89);
          ConnectionMgr = (CConnectionManager *)GetConnectionMgr();
          CConnectionManager::DisconnectAll(ConnectionMgr);
          Scripts = Application::GoToMainMenu((int)&Singleton<Application>::s_inst, 3);
        }
      }
      goto LABEL_23;
    case 0xF:
      v86 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v157, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v86, (const std::string *)&v157);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v157);
      Scripts = VoxSoundManager::SetLevelRouting((vox::VoxEngine **)VoxSoundManager::s_instance, *((_DWORD *)this + 15));
      ++*((_DWORD *)this + 76);
      break;
    case 0x10:
      v61 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      v62 = (std::string *)&v156;
      goto LABEL_58;
    case 0x11:
      v85 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v155, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v85, (const std::string *)&v155);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v155);
      Scripts = Level::_LoadFinalInit(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0x12:
      v80 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v154, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v80, (const std::string *)&v154);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v154);
      Scripts = Level::_LoadCharStates(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0x13:
      v61 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      v62 = (std::string *)&v153;
LABEL_58:
      std::string::string((int)v62, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v61, v62);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v62);
      ++*((_DWORD *)this + 76);
      break;
    case 0x14:
      v96 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v152, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v96, (const std::string *)&v152);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v152);
      Scripts = Level::_LoadCamera(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0x15:
      v95 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v151, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v95, (const std::string *)&v151);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v151);
      Scripts = Level::_LoadBatchInit(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0x16:
      v94 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v150, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v94, (const std::string *)&v150);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v150);
      Scripts = Level::_LoadBatchList(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0x17:
      v93 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v149, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v93, (const std::string *)&v149);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v149);
      Scripts = Level::_LoadBatchMap(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0x18:
      v111 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v148, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v111, (const std::string *)&v148);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v148);
      Scripts = Level::_LoadBatching(this);
      ++*((_DWORD *)this + 76);
      break;
    case 0x19:
      v110 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v147, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v110, (const std::string *)&v147);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v147);
      Scripts = Application::CleanGlitch((Application *)&Singleton<Application>::s_inst);
      ++*((_DWORD *)this + 76);
      break;
    case 0x1A:
      v44 = (MenuManager *)MenuManager::GetInstance((MenuManager *)Scripts);
      MenuManager::LoadMenu(v44, 3);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar,
        nullptr,
        nullptr,
        nullptr);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&AchievementMsg::s_NodeCachedChar,
        nullptr,
        nullptr,
        nullptr);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&DialogMsg::s_NodeCachedChar,
        nullptr,
        nullptr,
        nullptr);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&StatusMsg::s_NodeCachedChar,
        nullptr,
        nullptr,
        nullptr);
      DebugCachedCharacter::RefreshCache(
        (DebugCachedCharacter *)&OnlineStatusMsg::s_NodeCachedChar,
        nullptr,
        nullptr,
        nullptr);
      inited = (MenuManager *)PlayerManager::PostInitCharacters((PlayerManager *)dword_99F76C);
      v46 = (MenuManager *)MenuManager::GetInstance(inited);
      HUDRoot = (RenderFX *)MenuManager::GetHUDRoot(v46);
      Scripts = RenderFX::InvokeASCallback(HUDRoot, "menu_HUD_0", "completeRefresh", nullptr, 0);
      ++*((_DWORD *)this + 76);
      break;
    case 0x1B:
    case 0x1C:
      goto LABEL_23;
    case 0x1D:
      v98 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v146, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v98, (const std::string *)&v146);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v146);
      ItemManager::PreCache((ItemManager *)&Singleton<ItemManager>::s_inst);
      Scripts = ProjectileManager::PreCache((ProjectileManager *)&Singleton<ProjectileManager>::s_inst);
      ++*((_DWORD *)this + 76);
      break;
    case 0x1E:
      v97 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v173, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v97, (const std::string *)&v173);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v173);
      Scripts = VisualFXManager::PreCacheLibraries((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
      ++*((_DWORD *)this + 76);
      break;
    case 0x1F:
      Scripts = GameEventManager::Compile(*((GameEventManager **)this + 101));
      ++*((_DWORD *)this + 76);
      break;
    case 0x20:
      v81 = *(_DWORD *)(dword_99F73C + 28);
      v82 = *(_DWORD *)(Level::GetLevelConfig(this) + 460);
      v83 = *(_DWORD *)(Level::GetLevelConfig(this) + 464);
      v131[2] = *(_DWORD *)(Level::GetLevelConfig(this) + 468);
      v131[3] = 1065353216;
      v131[0] = v82;
      v131[1] = v83;
      glitch::scene::CSceneManager::setAmbientLight(v81, v131);
      byte_9A276C = 1;
      v84 = (CharAI *)ObjectManager::Update((ObjectManager *)dword_99F764, 1.0);
      CharAI::IncUpdateQueue(v84);
      PhysicalWorld::update((PhysicalWorld *)dword_99F770);
      byte_9A276C = 0;
      Scripts = (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 74) + 16))(*((_DWORD *)this + 74));
      ++*((_DWORD *)this + 76);
      break;
    case 0x21:
      v77 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v145, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v77, (const std::string *)&v145);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v145);
      if ( *((_BYTE *)this + 241) )
      {
        LevelSavegame::Load(*((LevelSavegame **)this + 59));
        if ( *(_BYTE *)(GetOnline() + 5) )
        {
          if ( PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) )
          {
            v125 = *(GameObject **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
            if ( v125 )
            {
              v135[0] = *((_DWORD *)v125 + 88);
              v135[1] = *((_DWORD *)v125 + 89);
              v136 = *((_DWORD *)v125 + 90);
              v138 = 0;
              if ( PFWorld::GetFloorHeightAt(&Singleton<PFWorld>::s_inst, v135, &v138, 0, 0, 0, 0) )
              {
                v136 = v138;
                GameObject::SetPosition(v125);
              }
              for ( i = 0; i < PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 1); ++i )
              {
                v127 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, i, 1);
                GameObject::SetPosition(*(GameObject **)(v127 + 1632));
              }
            }
          }
          else if ( *(_BYTE *)(dword_99F76C + 1744) )
          {
            for ( j = 0; j < PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 1); ++j )
            {
              v113 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, j, 1);
              GameObject::SetPosition(*(GameObject **)(v113 + 1632));
            }
          }
        }
      }
      v78 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      Scripts = Character::SG_SetUseSpawnPoint(*(Character **)(v78 + 1632), 0);
      v79 = *((_DWORD *)this + 76);
      *((_BYTE *)this + 243) = 0;
      *((_DWORD *)this + 76) = v79 + 1;
      break;
    case 0x22:
      v8 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v144, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v8, (const std::string *)&v144);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v144);
      v9 = *((int **)this + 74);
      v10 = PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1);
      v11 = *(GameObject **)(v10 + 1632);
      if ( v11 )
      {
        Character::SG_SetLevelId(*(Character **)(v10 + 1632), *((_DWORD *)this + 15), -1);
        CameraTarget::SetTarget(v9, v11, 0);
      }
      Online = (CMatching *)GetOnline();
      if ( *((_BYTE *)Online + 5) )
      {
        v115 = CMatching::Get(Online);
        v116 = (*(int (__fastcall **)(int))(*(_DWORD *)v115 + 164))(v115);
        (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v116 + 8))(v116, 3, *((_DWORD *)this + 15));
      }
      CameraBase::SetActive((CameraBase *)v9);
      v13 = 0;
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(dword_99F73C + 28) + 96))(
        *(_DWORD *)(dword_99F73C + 28),
        0);
      (*(void (__fastcall **)(int *))(*v9 + 16))(v9);
      while ( v13 < PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 1) )
      {
        v14 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, v13++, 1) + 1632);
        if ( v14 )
          *(_BYTE *)(*(_DWORD *)(v14 + 888) + 8) = 1;
      }
      glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v134);
      glitch::scene::ISceneNode::getParent(*(glitch::scene::ISceneNode **)(*((_DWORD *)this + 74) + 8));
      glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v133);
      v15 = v134[2] - v133[2];
      v16 = v134[0] - v133[0];
      *((float *)this + 104) = v134[1] - v133[1];
      *((float *)this + 103) = v16;
      *((float *)this + 105) = v15;
      v17 = dword_99F784;
      LevelConfig = (float *)Level::GetLevelConfig(this);
      v19 = (unsigned int)LevelConfig[120];
      v128 = (unsigned int)LevelConfig[121];
      v20 = (unsigned int)LevelConfig[122];
      *(_BYTE *)(v17 + 247) = -1;
      *(_BYTE *)(v17 + 246) = v20;
      *(_BYTE *)(v17 + 244) = v19;
      *(_BYTE *)(v17 + 245) = v128;
      v21 = (float)*(int *)(Level::GetLevelConfig(this) + 472);
      v22 = (float)*(int *)(Level::GetLevelConfig(this) + 476);
      *(float *)(v17 + 272) = v21;
      *(float *)(v17 + 276) = v22;
      v23 = (_DWORD *)Level::GetLevelConfig(this);
      v24 = v23[127];
      v25 = v23[128];
      *(_DWORD *)(v17 + 284) = v23[126];
      *(_DWORD *)(v17 + 288) = v24;
      *(_DWORD *)(v17 + 292) = v25;
      v26 = *(_DWORD **)(dword_99F73C + 28);
      v27 = (DebugSwitches *)Level::GetLevelConfig(this);
      v28 = *((_DWORD *)v27 + 127);
      v29 = *((_DWORD *)v27 + 128);
      v26[278] = *((_DWORD *)v27 + 126);
      v26[279] = v28;
      v26[280] = v29;
      v30 = *(_DWORD *)(dword_99F73C + 28);
      v31 = (DebugSwitches *)DebugSwitches::GetInstance(v27);
      std::string::string((int)&v143, "RENDERING_DisableAllLighting");
      *(_BYTE *)(v30 + 1072) = DebugSwitches::GetSwitch(v31, (const std::string *)&v143) ^ 1;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v143);
      ObjectManager::HandleNoRoomObjects((ObjectManager *)dword_99F764);
      Level::UpdateFog(this, nullptr);
      Level::UpdateLightSet(this, 1, 4);
      Level::UpdateMaterial(this, 0, 1);
      if ( *(_BYTE *)(GetOnline() + 5)
        && (!PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C) || *(_BYTE *)(dword_99F76C + 1817))
        || (Scripts = *((_DWORD *)this + 59)) != 0
        && (Scripts = LevelSavegame::ValidateCheckpoint(
                        (LevelSavegame *)Scripts,
                        *((_DWORD *)this + 69),
                        *((_DWORD *)this + 16),
                        *((_DWORD *)this + 15))) == 0
        || *((_BYTE *)this + 245) )
      {
        SpawnPoint = Level::GetSpawnPoint(this);
        v33 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
        if ( SpawnPoint )
        {
          v34 = (int *)(SpawnPoint + 352);
        }
        else if ( v33 )
        {
          v34 = (int *)(v33 + 352);
        }
        else
        {
          v34 = &Vec3f_Origin;
        }
        v132[0] = *v34;
        v35 = *((unsigned __int8 *)this + 245);
        v132[1] = v34[1];
        v132[2] = v34[2];
        Scripts = Level::CheckpointSave(this, v132, v35);
        *((_BYTE *)this + 245) = 0;
      }
      goto LABEL_23;
    case 0x24:
      v74 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v142, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v74, (const std::string *)&v142);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v142);
      Scripts = GetOnline();
      if ( *(_BYTE *)(Scripts + 5) )
      {
        if ( !*(_BYTE *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0) + 1349)
          || (Scripts = PlayerManager::IsLocalPlayerHosting((PlayerManager *)dword_99F76C)) != 0
          && (Scripts = PlayerManager::AllLoadingDone((PlayerManager *)dword_99F76C)) != 0
          && (Scripts = PlayerManager::AllClientsReadyToRoll((PlayerManager *)dword_99F76C)) == 0 )
        {
          if ( !*(_BYTE *)(dword_99F764 + 428) )
            ObjectManager::NetworkInitLevel((ObjectManager *)dword_99F764);
          ObjectManager::Update((ObjectManager *)dword_99F764, 1.0);
          v75 = (CNetPlayerInfo *)PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 0);
          Scripts = CNetPlayerInfo::IsHost(v75);
          if ( Scripts )
          {
            v76 = *((_DWORD *)v75 + 408);
            if ( v76 )
            {
              Scripts = *(_DWORD *)(v76 + 5352);
              if ( Scripts )
                Scripts = PlayerSavegame::SG_TryQuestSync((PlayerSavegame *)Scripts);
            }
          }
        }
      }
      break;
    case 0x25:
      v99 = (DebugSwitches *)DebugSwitches::GetInstance((DebugSwitches *)Scripts);
      std::string::string((int)&v141, "isTracingLevel_Loading");
      DebugSwitches::GetSwitch(v99, (const std::string *)&v141);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v141);
      v101 = (MenuManager *)MenuManager::GetInstance(v100);
      MenuByName = (MenuBase *)MenuManager::GetMenuByName(v101, "menu_Loading");
      if ( MenuBase::IsVisible(MenuByName) )
        MenuManager::PopMenu(v101, MenuByName);
      MenuManager::GetMenuByName(v101, "menu_HUD_0");
      v103 = (DebugSwitches *)ShowMemoryStats("After Level Loading");
      v104 = (DebugSwitches *)DebugSwitches::GetInstance(v103);
      std::string::string((int)&v140, "IsDisplayLoadingStepName");
      v105 = DebugSwitches::GetSwitch(v104, (const std::string *)&v140);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v140);
      if ( v105 )
      {
        v114 = (MenuDebug *)MenuDebug::GetInstance(v106);
        MenuDebug::SetText(v114, nullptr);
      }
      for ( k = 0; k < PlayerManager::GetNumLocalPlayers((PlayerManager *)dword_99F76C, 0); ++k )
      {
        v108 = *(_DWORD *)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, k, 0) + 1632);
        if ( v108 )
        {
          v109 = *(_DWORD *)(v108 + 888);
          if ( v109 )
            *(_BYTE *)(v109 + 8) = 0;
        }
      }
      if ( *(_BYTE *)(GetOnline() + 5) && !*(_BYTE *)(dword_99F764 + 428) )
        ObjectManager::NetworkInitLevel((ObjectManager *)dword_99F764);
      Scripts = Level::PlaceFaeryAndFollowers(this, nullptr);
LABEL_23:
      ++*((_DWORD *)this + 76);
      break;
    default:
      v71 = *((_DWORD *)this + 76);
      v72 = v71 <= 37;
      if ( v71 > 37 )
        v73 = 38;
      else
        v73 = *((_DWORD *)this + 76);
      if ( v72 )
        ++v73;
      *((_DWORD *)this + 76) = v73;
      break;
  }
  if ( *((_DWORD *)this + 76) == 38 )
  {
    *((_DWORD *)this + 12) = 100;
    if ( USE_NATIVE_DRM_GAME )
      ALicenseCheck_ValidateLicense(1);
    v42 = (MenuManager *)MenuManager::GetInstance((MenuManager *)Scripts);
    v43 = (MenuBase *)MenuManager::GetMenuByName(v42, "menu_FadeFromBlackScreen");
    Scripts = MenuManager::PushMenu(v42, v43);
  }
  else
  {
    if ( *((_DWORD *)this + 78) >= *((_DWORD *)this + 77) )
      v36 = *((_DWORD *)this + 77);
    else
      v36 = *((_DWORD *)this + 78);
    *((_DWORD *)this + 77) = v36;
    if ( *((_DWORD *)this + 76) == 36
      || (Scripts = 452101868 * *((_DWORD *)this + 76), v37 = 100 * *((_DWORD *)this + 76) / 38, v37 > 99) )
    {
      v37 = 100;
    }
    *((_DWORD *)this + 12) = v37;
  }
  v38 = (MenuManager *)MenuManager::GetInstance((MenuManager *)Scripts);
  result = MenuManager::GetMenuByName(v38, "menu_Loading");
  v40 = result;
  if ( result )
  {
    v41 = *(RenderFX **)(result + 4);
    gameswf::weak_ptr<gameswf::character>::check_proxy(result + 72);
    return RenderFX::InvokeASCallback(v41, *(gameswf::character **)(v40 + 76), "onProgress", nullptr, 0);
  }
  return result;
}


// ===== 3f82d8 Level::Update(bool) =====
int __fastcall Level::Update(Level *this, int a2)
{
  MenuDebugHUD *v4; // r0
  _DWORD *Instance; // r0
  _DWORD *v7; // r7
  _DWORD *v8; // r8
  int Switch; // r11
  Character *v10; // r0
  _DWORD *v11; // r3
  int v12; // r7
  int v13; // r12
  int v14; // r2
  int v15; // r3
  SpawnGroupManager *v16; // r0
  SpawnGroupManager *v17; // r0
  CharAI *v18; // r0
  CharAI *v19; // r0
  int v20; // r3
  float v21; // r11
  float *v22; // r7
  float v23; // r9
  float v24; // r0
  float v25; // r9
  int v26; // r7
  int v27; // r0
  int v28; // r9
  DebugSwitches *v29; // r0
  int v30; // r0
  int v31; // r9
  DebugSwitches *v32; // r0
  VoxSoundManager *v33; // r7
  MenuDebugHUD *updated; // r0
  int v35; // r10
  int v36; // r10
  const char *v37; // r7
  unsigned int v38; // r10
  int Player; // r0
  int v40; // r1
  int *v41; // r2
  unsigned int v42; // r3
  int v43; // r1
  bool v44; // nf
  DebugSwitches *v45; // r11
  DebugSwitches *v46; // r11
  float v47; // [sp+1Ch] [bp-108h]
  int v48; // [sp+1Ch] [bp-108h]
  int v49; // [sp+1Ch] [bp-108h]
  int v50; // [sp+1Ch] [bp-108h]
  int v51; // [sp+1Ch] [bp-108h]
  MenuDebugHUD *v52; // [sp+20h] [bp-104h]
  MenuDebugHUD *v53; // [sp+20h] [bp-104h]
  _DWORD v54[4]; // [sp+30h] [bp-F4h] BYREF
  float v55[3]; // [sp+40h] [bp-E4h] BYREF
  float v56[3]; // [sp+4Ch] [bp-D8h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v57; // [sp+74h] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v58; // [sp+8Ch] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v59; // [sp+A4h] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v60; // [sp+BCh] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v61; // [sp+D4h] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v62; // [sp+ECh] [bp-38h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v63; // [sp+104h] [bp-20h] BYREF

  v4 = (MenuDebugHUD *)PushProfilingContext("Level::Update");
  if ( *((_DWORD *)this + 76) != 38 && !a2 )
  {
    Level::_LoadProcess(this);
    return PopProfilingContext("Level::Update");
  }
  Instance = (_DWORD *)MenuDebugHUD::GetInstance(v4);
  v7 = Instance;
  if ( Instance[54] )
  {
    v8 = Instance + 50;
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,int>,std::priv::_Select1st<std::pair<std::string const,int>>,std::priv::_MapTraitsT<std::pair<std::string const,int>>,std::allocator<std::pair<std::string const,int>>>::_M_erase(
      Instance + 50,
      Instance[51]);
    v7[54] = 0;
    v7[53] = v8;
    v7[52] = v8;
    v7[51] = 0;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v63, "IsUsingToggleDisplayMode");
  if ( DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v63) )
  {
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v63);
    return PopProfilingContext("Level::Update");
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v62, "IsLevelUpdatePaused");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v62);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v62);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v63);
  if ( Switch )
    return PopProfilingContext("Level::Update");
  if ( *((_DWORD *)this + 82) != -1
    && Application::IsCurrentlyInGameView((Application *)&Singleton<Application>::s_inst) )
  {
    ScriptManager::StartScript((ScriptManager *)&ScriptManager::s_inst, *((_DWORD *)this + 82), -1, 0);
  }
  v10 = *(Character **)(PlayerManager::GetLocalPlayer((PlayerManager *)dword_99F76C, 0, 1) + 1632);
  if ( v10 )
    Character::SG_Update(v10, 0);
  if ( !*((_BYTE *)this + 324) )
    PlayerManager::Update((PlayerManager *)dword_99F76C);
  if ( !*(_DWORD *)(dword_99F76C + 1812) )
    ScriptManager::ExecuteAllScripts((ScriptManager *)&ScriptManager::s_inst);
  GameEventManager::Update(*((GameEventManager **)this + 101));
  v11 = *((_DWORD **)this + 14);
  v12 = *(_DWORD *)(dword_99F73C + 28);
  if ( !v11 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v11 = *((_DWORD **)this + 14);
    }
  }
  v13 = v11[115];
  v14 = v11[116];
  v15 = v11[117];
  v54[0] = v13;
  v54[1] = v14;
  v54[2] = v15;
  v54[3] = 1065353216;
  glitch::scene::CSceneManager::setAmbientLight(v12, v54);
  v16 = (SpawnGroupManager *)PhysicalWorld::update((PhysicalWorld *)dword_99F770);
  v17 = (SpawnGroupManager *)SpawnGroupManager::GetInstance(v16);
  v18 = (CharAI *)SpawnGroupManager::update(v17, 0.0);
  CharAI::HandleGroups(v18);
  v19 = (CharAI *)ObjectManager::Update((ObjectManager *)dword_99F764, 1.0);
  CharAI::IncUpdateQueue(v19);
  Level::UpdateCameraZoom(this);
  VisualFXManager::Update((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
  v20 = *((_DWORD *)this + 75);
  if ( v20 && v20 == CameraBase::s_activeCamera )
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v20 + 16))(*((_DWORD *)this + 75));
  (*(void (__fastcall **)(_DWORD))(**((_DWORD **)this + 74) + 16))(*((_DWORD *)this + 74));
  (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(*((_DWORD *)this + 74) + 8) + 184))(
    *(_DWORD *)(*((_DWORD *)this + 74) + 8),
    0);
  glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v56);
  glitch::scene::ISceneNode::getParent(*(glitch::scene::ISceneNode **)(*((_DWORD *)this + 74) + 8));
  glitch::scene::ISceneNode::getAbsolutePosition((glitch::scene::ISceneNode *)v55);
  v21 = (float)(v56[2] - v55[2]) - *((float *)this + 105);
  v22 = *(float **)(dword_99F73C + 28);
  v23 = (float)((float)(v56[0] - v55[0]) - *((float *)this + 103)) * v22[278];
  v47 = (float)((float)(v56[1] - v55[1]) - *((float *)this + 104)) * v22[279];
  v24 = sqrt((float)((float)((float)(v23 * v23) + (float)(v47 * v47))
                   + (float)((float)(v21 * v22[280]) * (float)(v21 * v22[280]))));
  v25 = v24;
  v26 = *((_DWORD *)this + 14);
  if ( v21 < 0.0 )
    LODWORD(v25) = LODWORD(v24) + 0x80000000;
  v52 = *(MenuDebugHUD **)(dword_99F73C + 28);
  if ( !v26 )
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
        "m_levelConfig != 0",
        "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h",
        476);
      v26 = *((_DWORD *)this + 14);
    }
  }
  SceneManager::UpdateFog(v52, (float)*(int *)(v26 + 472) + v25, (float)*(int *)(v26 + 476) + v25, v26 + 480);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v61, "RENDERING_DisableAllLighting");
  v27 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v61);
  v28 = *(unsigned __int8 *)(*(_DWORD *)(dword_99F73C + 28) + 1072);
  v48 = v27;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v61);
  if ( v48 == v28 )
  {
    v51 = *(_DWORD *)(dword_99F73C + 28);
    v46 = (DebugSwitches *)DebugSwitches::GetInstance(v29);
    std::string::string((int)&v60, "RENDERING_DisableAllLighting");
    *(_BYTE *)(v51 + 1072) = DebugSwitches::GetSwitch(v46, (const std::string *)&v60) ^ 1;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v60);
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v59, "RENDERING_DisableAllSpecular");
  v30 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v59);
  v31 = *(unsigned __int8 *)(*(_DWORD *)(dword_99F73C + 28) + 1073);
  v49 = v30;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v59);
  if ( v49 == v31 )
  {
    v50 = *(_DWORD *)(dword_99F73C + 28);
    v45 = (DebugSwitches *)DebugSwitches::GetInstance(v32);
    std::string::string((int)&v58, "RENDERING_DisableAllSpecular");
    *(_BYTE *)(v50 + 1073) = DebugSwitches::GetSwitch(v45, (const std::string *)&v58) ^ 1;
    std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v58);
  }
  if ( !*((_BYTE *)this + 324) )
  {
    v33 = (VoxSoundManager *)VoxSoundManager::s_instance;
    if ( *(_BYTE *)(VoxSoundManager::s_instance + 50) )
      VoxSoundManager::SetInSafeZoneMusic(
        (VoxSoundManager *)VoxSoundManager::s_instance,
        *((unsigned __int8 *)this + 324));
    else
      VoxSoundManager::PlayMusic(
        (VoxSoundManager *)VoxSoundManager::s_instance,
        *((_DWORD *)this + 71),
        1,
        *(unsigned __int8 *)(VoxSoundManager::s_instance + 50),
        2000);
    VoxSoundManager::Play(v33, *((_DWORD *)this + 73), 0, 0, 0, 0);
    *((_BYTE *)v33 + 49) = 1;
  }
  *((_BYTE *)this + 324) = 1;
  Level::UpdateListener(this);
  updated = (MenuDebugHUD *)Level::UpdateDynamicFog(this);
  v53 = (MenuDebugHUD *)MenuDebugHUD::GetInstance(updated);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v57, "IsAutoLoadingLevels");
  v35 = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v57);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v57);
  if ( v35 )
  {
    MenuDebugHUD::DisplayHugeNumber(v53, s_dbgLevelLoadCount);
    MenuDebugHUD::SetDisplaySealOfFreshness(v53, s_dbgLevelLoadCount > 15);
    v36 = Level::Update(bool)::s_autoLevelLoadWaitTime;
    Level::Update(bool)::s_autoLevelLoadWaitTime = v36
                                                 - Application::GetDt((Application *)&Singleton<Application>::s_inst);
    if ( Level::Update(bool)::s_autoLevelLoadWaitTime <= 0 )
    {
      v37 = nullptr;
      v38 = Arrays::LevelList::size - 1;
      while ( !v37 || !LC_API_STRCMP_0(v37, *((const char **)this + 67)) )
      {
        if ( v38 )
        {
          v41 = &Random::s_seed;
          v42 = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
          Random::s_seed = v42;
          v43 = v42 % v38;
          v44 = ((v42 % v38) & 0x80000000) != 0;
          if ( ((v42 % v38) & 0x80000000) != 0 )
          {
            v43 = -v43;
            v42 = 72;
          }
          else
          {
            v41 = &dword_48;
          }
          if ( v44 )
            v40 = v42 * v43;
          else
            v40 = (_DWORD)v41 * v43;
        }
        else
        {
          v40 = 0;
        }
        ++Random::s_debugRandomCounters;
        if ( *(_BYTE *)(Arrays::LevelList::members + v40 + 4) )
          v37 = *(const char **)(Arrays::LevelList::members + v40 + 32);
      }
      DBG_DisplayLoadLevelStats(v37);
      MenuDebugHUD::HideHugeNumber(v53);
      MenuDebugHUD::SetDisplaySealOfFreshness(v53, 0);
      Level::Update(bool)::s_autoLevelLoadWaitTime = 5000;
      Player = PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, 0, 0);
      Application::LoadLevel(
        (Application *)&Singleton<Application>::s_inst,
        v37,
        0,
        *(_DWORD *)(Player + 1636) & ~(*(int *)(Player + 1636) >> 31),
        0,
        1,
        0,
        0,
        0,
        0);
    }
  }
  return PopProfilingContext("Level::Update");
}


// ===== 3f8c40 std::vector<Point3D<float>,std::allocator<Point3D<float>>>::operator=(std::vector<Point3D<float>,std::allocator<Point3D<float>>> const&) =====
_DWORD *__fastcall std::vector<Point3D<float>>::operator=(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v3; // r12
  _DWORD *v4; // r2
  int v5; // r3
  _DWORD *v6; // r6
  int v7; // r5
  int v8; // r7
  _DWORD *v9; // r10
  int v10; // r3
  _DWORD *v12; // r0
  int v13; // r6
  _DWORD *v14; // r2
  int v15; // r3
  int v16; // r3
  int v17; // r1
  _DWORD *v18; // r0
  int v19; // r3
  _DWORD *v20; // r0
  size_t v21; // r1
  unsigned int v22; // r3
  int v23; // [sp+4h] [bp-8h] BYREF

  if ( a2 != a1 )
  {
    v3 = (_DWORD *)*a1;
    v4 = (_DWORD *)*a2;
    v5 = a2[1];
    v6 = (_DWORD *)*a1;
    v7 = -1431655765 * ((v5 - *a2) >> 2);
    v8 = v7;
    if ( v7 > (unsigned int)(-1431655765 * ((a1[2] - *a1) >> 2)) )
    {
      v23 = -1431655765 * ((v5 - *a2) >> 2);
      v18 = std::vector<Point3D<float>>::_M_allocate_and_copy<Point3D<float> const*>(
              (int)a1,
              (unsigned int *)&v23,
              v4,
              v5);
      v19 = a1[1];
      v6 = v18;
      v20 = (_DWORD *)*a1;
      if ( v19 != *a1 )
        v19 += -12 * ((715827883 * ((unsigned int)(v19 - 12 - (_DWORD)v20) >> 2)) & 0x3FFFFFFF) - 12;
      if ( v19 )
      {
        v21 = 4 * ((a1[2] - v19) >> 2);
        if ( v21 > 0x80 )
          CustomFree(v20);
        else
          __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v20, v21);
      }
      v22 = v23;
      *a1 = v6;
      a1[2] = &v6[3 * v22];
      goto LABEL_7;
    }
    v9 = (_DWORD *)a1[1];
    if ( v7 > (unsigned int)(-1431655765 * (v9 - v3)) )
    {
      v12 = &v4[v9 - v3];
      v13 = -1431655765 * ((4 * (v9 - v3)) >> 2);
      if ( v13 > 0 )
      {
        do
        {
          --v13;
          *v3 = *v4;
          v3[1] = v4[1];
          v15 = v4[2];
          v4 += 3;
          v3[2] = v15;
          v3 += 3;
        }
        while ( v13 );
        v14 = (_DWORD *)a1[1];
        v3 = (_DWORD *)*a1;
        v5 = a2[1];
        v12 = (_DWORD *)(*a2 + 4 * (((int)v14 - *a1) >> 2));
      }
      else
      {
        v14 = v9;
      }
      v16 = -1431655765 * ((v5 - (int)v12) >> 2);
      if ( v16 <= 0 )
      {
        v6 = v3;
        goto LABEL_7;
      }
      do
      {
        --v16;
        *v14 = *v12;
        v14[1] = v12[1];
        v17 = v12[2];
        v12 += 3;
        v14[2] = v17;
        v14 += 3;
      }
      while ( v16 );
    }
    else
    {
      if ( v7 <= 0 )
      {
LABEL_7:
        a1[1] = &v6[3 * v7];
        return a1;
      }
      do
      {
        --v8;
        *v3 = *v4;
        v3[1] = v4[1];
        v10 = v4[2];
        v4 += 3;
        v3[2] = v10;
        v3 += 3;
      }
      while ( v8 );
    }
    v6 = (_DWORD *)*a1;
    goto LABEL_7;
  }
  return a1;
}


// ===== 3f8eb4 SimpleTypeProperty<std::vector<Point3D<float>,std::allocator<Point3D<float>>>>::SetToDefaultValue(void *) =====
_DWORD *__fastcall SimpleTypeProperty<std::vector<Point3D<float>>>::SetToDefaultValue(int a1, int a2)
{
  return std::vector<Point3D<float>>::operator=((_DWORD *)(a2 + *(_DWORD *)(a1 + 4)), (_DWORD *)(a1 + 32));
}


// ===== 3f8ec8 SimpleTypeProperty<std::vector<Point3D<float>,std::allocator<Point3D<float>>>>::Clone(void) =====
int __fastcall SimpleTypeProperty<std::vector<Point3D<float>>>::Clone(int a1)
{
  int v2; // r4

  v2 = operator new(0x2Cu, 0);
  *(_DWORD *)v2 = &off_95C5E8;
  *(_DWORD *)(v2 + 24) = v2 + 8;
  *(_DWORD *)(v2 + 28) = v2 + 8;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)(v2 + 8), 0x10u);
  **(_BYTE **)(v2 + 24) = 0;
  *(_DWORD *)(v2 + 40) = 0;
  *(_DWORD *)v2 = off_967680;
  *(_DWORD *)(v2 + 32) = 0;
  *(_DWORD *)(v2 + 36) = 0;
  *(_DWORD *)(v2 + 4) = *(_DWORD *)(a1 + 4);
  if ( v2 + 8 != a1 + 8 )
    std::string::_M_assign((std::string *const)(v2 + 8), *(const char **)(a1 + 28), *(const char **)(a1 + 24));
  std::vector<Point3D<float>>::operator=((_DWORD *)(v2 + 32), (_DWORD *)(a1 + 32));
  return v2;
}


// ===== 3f8f7c SimpleTypeProperty<std::vector<Point3D<float>,std::allocator<Point3D<float>>>>::SetDefaultValueFromString(char const*) =====
int __fastcall SimpleTypeProperty<std::vector<Point3D<float>>>::SetDefaultValueFromString(int a1)
{
  _DWORD v2[3]; // [sp+4h] [bp-Ch] BYREF

  memset(v2, 0, sizeof(v2));
  std::vector<Point3D<float>>::operator=((_DWORD *)(a1 + 32), v2);
  std::vector<Point3D<float>>::~vector((int)v2);
  return StrToObj();
}


// ===== 3f8fc8 SimpleTypeProperty<std::vector<Point3D<float>,std::allocator<Point3D<float>>>>::FromString(void *,char const*) =====
int __fastcall SimpleTypeProperty<std::vector<Point3D<float>>>::FromString(int a1, int a2)
{
  _DWORD *v2; // r4
  _DWORD v4[3]; // [sp+4h] [bp-Ch] BYREF

  v2 = (_DWORD *)(a2 + *(_DWORD *)(a1 + 4));
  memset(v4, 0, sizeof(v4));
  std::vector<Point3D<float>>::operator=(v2, v4);
  std::vector<Point3D<float>>::~vector((int)v4);
  return StrToObj();
}


// ===== 3f9018 MenuMessageManager<StatusMsg,4>::FlushEnqueuedMessages(int) [clone] =====
int MenuMessageManager<StatusMsg,4>::FlushEnqueuedMessages()
{
  int result; // r0

  for ( ; dword_99FAA0 != dword_99FA90; result = std::deque<StatusMsg>::pop_front(&dword_99FA90) )
    ;
  return result;
}


// ===== 3f9064 MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages(int) [clone] =====
void MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages()
{
  while ( dword_99FB9C != dword_99FB8C )
    std::deque<DialogMsg>::pop_front((int)&dword_99FB8C);
}


// ===== 3f90b0 Level::~Level() =====
void __fastcall Level::~Level(Level *this)
{
  CharAI *v2; // r0
  CharAI *v3; // r0
  Character *v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  InfoHUDManager *v10; // r0
  InfoHUDManager *Instance; // r0
  HUDControls *v12; // r0
  HUDControls *v13; // r0
  void *v14; // r6
  void *v15; // r6
  void *v16; // r6
  int v17; // r3

  *(_DWORD *)this = off_9676A0;
  Level::CleanUpAllSkills(this);
  v2 = (CharAI *)Level::UnlockAllObjects(this);
  v3 = (CharAI *)CharAI::ClearAllAggro(v2);
  v4 = (Character *)CharAI::ClearGroupInfo(v3);
  if ( dword_9A293C )
  {
    v4 = (Character *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(dword_9A2930);
    dword_9A293C = 0;
    dword_9A2930 = 0;
    dword_9A2934 = (int)&Character::s_cachedCharOIDs;
    dword_9A2938 = (int)&Character::s_cachedCharOIDs;
  }
  v5 = Character::ClearConcurrentAI(v4);
  v6 = MenuMessageManager<StatusMsg,4>::FlushEnqueuedMessages(v5);
  v7 = MenuMessageManager<TutorialMsg,1>::FlushEnqueuedMessages(v6);
  v8 = MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages(v7);
  v9 = MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages(v8);
  MenuMessageManager<OnlineStatusMsg,1>::FlushEnqueuedMessages(v9);
  v10 = (InfoHUDManager *)ScriptManager::Flush((ScriptManager *)&ScriptManager::s_inst);
  Instance = (InfoHUDManager *)InfoHUDManager::GetInstance(v10);
  v12 = (HUDControls *)InfoHUDManager::Flush(Instance);
  v13 = (HUDControls *)HUDControls::GetInstance(v12);
  HUDControls::Flush(v13);
  ItemManager::Flush((ItemManager *)&Singleton<ItemManager>::s_inst);
  ProjectileManager::Flush((ProjectileManager *)&Singleton<ProjectileManager>::s_inst);
  VisualFXManager::FlushLibraries((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
  v14 = *((void **)this + 101);
  if ( v14 )
  {
    GameEventManager::~GameEventManager(*((GameEventManager **)this + 101));
    CustomFree(v14);
    *((_DWORD *)this + 101) = 0;
  }
  v15 = *((void **)this + 86);
  if ( v15 )
  {
    batch::BatchNodeCompiler::~BatchNodeCompiler(*((batch::BatchNodeCompiler **)this + 86));
    CustomFree(v15);
    *((_DWORD *)this + 86) = 0;
  }
  v16 = *((void **)this + 87);
  if ( v16 )
  {
    batch::BatchNodeCompiler::~BatchNodeCompiler(*((batch::BatchNodeCompiler **)this + 87));
    CustomFree(v16);
    *((_DWORD *)this + 87) = 0;
  }
  ObjectManager::Flush((ObjectManager *)dword_99F764);
  ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, nullptr);
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 28) + 104))(*(_DWORD *)(dword_99F73C + 28));
  glitch::scene::CSceneManager::setActiveCamera(*(glitch::scene::CSceneManager **)(dword_99F73C + 28), nullptr);
  PhysicalWorld::clear((PhysicalWorld *)dword_99F770);
  PFWorld::Flush((PFWorld *)&Singleton<PFWorld>::s_inst);
  AnimSetManager::Flush((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
  EventManager::Flush(this);
  v17 = *((_DWORD *)this + 59);
  if ( v17 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 4))(*((_DWORD *)this + 59));
    *((_DWORD *)this + 59) = 0;
  }
  Application::CleanGlitch((Application *)&Singleton<Application>::s_inst);
  LuaManager::FlushBufferedFiles((LuaManager *)dword_99F768);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 248));
  LuaScript::~LuaScript((Level *)((char *)this + 68));
  EventManager::~EventManager(this);
}


// ===== 3f92c4 Level::~Level() =====
void __fastcall Level::~Level(Level *this)
{
  CharAI *v2; // r0
  CharAI *v3; // r0
  Character *v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  InfoHUDManager *v10; // r0
  InfoHUDManager *Instance; // r0
  HUDControls *v12; // r0
  HUDControls *v13; // r0
  void *v14; // r6
  void *v15; // r6
  void *v16; // r6
  int v17; // r3

  *(_DWORD *)this = off_9676A0;
  Level::CleanUpAllSkills(this);
  v2 = (CharAI *)Level::UnlockAllObjects(this);
  v3 = (CharAI *)CharAI::ClearAllAggro(v2);
  v4 = (Character *)CharAI::ClearGroupInfo(v3);
  if ( dword_9A293C )
  {
    v4 = (Character *)std::priv::_Rb_tree<int,std::less<int>,std::pair<int const,unsigned int>,std::priv::_Select1st<std::pair<int const,unsigned int>>,std::priv::_MapTraitsT<std::pair<int const,unsigned int>>,std::allocator<std::pair<int const,unsigned int>>>::_M_erase(dword_9A2930);
    dword_9A293C = 0;
    dword_9A2930 = 0;
    dword_9A2934 = (int)&Character::s_cachedCharOIDs;
    dword_9A2938 = (int)&Character::s_cachedCharOIDs;
  }
  v5 = Character::ClearConcurrentAI(v4);
  v6 = MenuMessageManager<StatusMsg,4>::FlushEnqueuedMessages(v5);
  v7 = MenuMessageManager<TutorialMsg,1>::FlushEnqueuedMessages(v6);
  v8 = MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages(v7);
  v9 = MenuMessageManager<DialogMsg,1>::FlushEnqueuedMessages(v8);
  MenuMessageManager<OnlineStatusMsg,1>::FlushEnqueuedMessages(v9);
  v10 = (InfoHUDManager *)ScriptManager::Flush((ScriptManager *)&ScriptManager::s_inst);
  Instance = (InfoHUDManager *)InfoHUDManager::GetInstance(v10);
  v12 = (HUDControls *)InfoHUDManager::Flush(Instance);
  v13 = (HUDControls *)HUDControls::GetInstance(v12);
  HUDControls::Flush(v13);
  ItemManager::Flush((ItemManager *)&Singleton<ItemManager>::s_inst);
  ProjectileManager::Flush((ProjectileManager *)&Singleton<ProjectileManager>::s_inst);
  VisualFXManager::FlushLibraries((VisualFXManager *)&Singleton<VisualFXManager>::s_inst);
  v14 = *((void **)this + 101);
  if ( v14 )
  {
    GameEventManager::~GameEventManager(*((GameEventManager **)this + 101));
    CustomFree(v14);
    *((_DWORD *)this + 101) = 0;
  }
  v15 = *((void **)this + 86);
  if ( v15 )
  {
    batch::BatchNodeCompiler::~BatchNodeCompiler(*((batch::BatchNodeCompiler **)this + 86));
    CustomFree(v15);
    *((_DWORD *)this + 86) = 0;
  }
  v16 = *((void **)this + 87);
  if ( v16 )
  {
    batch::BatchNodeCompiler::~BatchNodeCompiler(*((batch::BatchNodeCompiler **)this + 87));
    CustomFree(v16);
    *((_DWORD *)this + 87) = 0;
  }
  ObjectManager::Flush((ObjectManager *)dword_99F764);
  ZoomHandler::setCamera((ZoomHandler *)dword_99F77C, nullptr);
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(dword_99F73C + 28) + 104))(*(_DWORD *)(dword_99F73C + 28));
  glitch::scene::CSceneManager::setActiveCamera(*(glitch::scene::CSceneManager **)(dword_99F73C + 28), nullptr);
  PhysicalWorld::clear((PhysicalWorld *)dword_99F770);
  PFWorld::Flush((PFWorld *)&Singleton<PFWorld>::s_inst);
  AnimSetManager::Flush((AnimSetManager *)&Singleton<AnimSetManager>::s_inst);
  EventManager::Flush(this);
  v17 = *((_DWORD *)this + 59);
  if ( v17 )
  {
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)v17 + 4))(*((_DWORD *)this + 59));
    *((_DWORD *)this + 59) = 0;
  }
  Application::CleanGlitch((Application *)&Singleton<Application>::s_inst);
  LuaManager::FlushBufferedFiles((LuaManager *)dword_99F768);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 248));
  LuaScript::~LuaScript((Level *)((char *)this + 68));
  EventManager::~EventManager(this);
}


// ===== 3f94d8 Level::~Level() =====
void __fastcall Level::~Level(Level *this)
{
  Level::~Level(this);
  CustomFree(this);
}


// ===== 3f94f4 Level::CanMoveTowards(Point3D<float> const&,Point3D<float> const&) =====
int __fastcall Level::CanMoveTowards(int a1, float *a2, float *a3)
{
  int Online; // r0
  _DWORD *v7; // r10
  int v9; // r3
  float *v10; // r0
  float v11; // r11
  float v12; // r9
  float *v13; // r6
  int v14; // r4
  int v15; // r8
  float v16; // r8
  float v17[3]; // [sp+Ch] [bp-18h] BYREF
  float v18; // [sp+18h] [bp-Ch] BYREF
  float v19; // [sp+1Ch] [bp-8h]

  if ( *(_DWORD *)(dword_99F76C + 1732) == 1 )
    return 1;
  Online = GetOnline();
  v7 = (_DWORD *)*(unsigned __int8 *)(Online + 5);
  if ( *(_BYTE *)(Online + 5) )
    return 1;
  if ( fabs((float)((float)(*a3 * *a3) + (float)(a3[1] * a3[1])) + (float)(a3[2] * a3[2])) < 0.0001 )
    return 1;
  v9 = *(_DWORD *)(*(_DWORD *)(a1 + 296) + 4);
  if ( !v9 )
    return 1;
  v10 = (float *)(*(int (__fastcall **)(_DWORD))(*(_DWORD *)v9 + 160))(*(_DWORD *)(*(_DWORD *)(a1 + 296) + 4));
  v11 = v10[1] - a2[1];
  v12 = v10[2] - a2[2];
  v17[0] = *v10 - *a2;
  v17[1] = v11;
  v17[2] = v12;
  if ( COERCE_FLOAT(COERCE_UNSIGNED_INT(Point3D<float>::angle(a3, v17)) & 0x7FFFFFFF) < 1.5708 )
    return 1;
  v18 = 0.0;
  v19 = 0.0;
  v13 = (float *)Arrays::DesignSettingsTable::members;
  if ( *(float *)(Arrays::DesignSettingsTable::members + 28) < 0.0 )
  {
    if ( gAssertLevel == 2 )
    {
      *v7 = v7;
    }
    else if ( gAssertLevel == 1 )
    {
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "settings.CoopCamLimits_Sides >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp",
        96);
    }
  }
  if ( v13[8] < 0.0 )
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
        "settings.CoopCamLimits_Top >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp",
        97);
    }
  }
  if ( v13[6] < 0.0 )
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
        "settings.CoopCamLimits_Bottom >= 0.0f",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp",
        98);
    }
  }
  v14 = 0;
  while ( 1 )
  {
    v15 = *(_DWORD *)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, v14++, 0) + 1632);
    if ( v15 )
    {
      if ( !(*(int (__fastcall **)(int))(*(_DWORD *)v15 + 52))(v15) )
      {
        CameraBase::GetScreenCoord(v15 + 352, &v18);
        v16 = v13[7];
        if ( COERCE_FLOAT(LODWORD(v16) + 0x80000000) >= v18
          || v16 <= v18
          || COERCE_FLOAT(*((_DWORD *)v13 + 6) + 0x80000000) >= v19
          || v19 >= v13[8] )
        {
          break;
        }
      }
    }
    if ( v14 == 4 )
      return 1;
  }
  return 0;
}


// ===== 3f9870 Level::UpdateCameraZoom(void) =====
float __fastcall Level::UpdateCameraZoom(float this)
{
  float v1; // r7
  _DWORD *v2; // r8
  float *v3; // r4
  float v4; // r6
  int i; // r5
  int v6; // r9
  float v7; // r5
  float v8; // r8
  int v9; // r5
  int v10; // r5
  int v11; // [sp+8h] [bp-Ch] BYREF
  float v12; // [sp+Ch] [bp-8h]

  v1 = this;
  if ( *(_DWORD *)(dword_99F76C + 1732) != 1 )
  {
    this = COERCE_FLOAT(GetOnline());
    v2 = (_DWORD *)*(unsigned __int8 *)(LODWORD(this) + 5);
    if ( !*(_BYTE *)(LODWORD(this) + 5) )
    {
      v11 = 0;
      v12 = 0.0;
      v3 = (float *)Arrays::DesignSettingsTable::members;
      if ( *(float *)(Arrays::DesignSettingsTable::members + 28) < 0.0 )
      {
        if ( gAssertLevel == 2 )
        {
          *v2 = v2;
        }
        else if ( gAssertLevel == 1 )
        {
          fprintf(
            (FILE *)&_sF + 2,
            "ASSERT(%s) FAILED: %s:%d\n",
            "settings.CoopCamLimits_Sides >= 0.0f",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp",
            36);
        }
      }
      if ( v3[8] < 0.0 )
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
            "settings.CoopCamLimits_Top >= 0.0f",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp",
            37);
        }
      }
      if ( v3[6] < 0.0 )
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
            "settings.CoopCamLimits_Bottom >= 0.0f",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp",
            38);
        }
      }
      v4 = 3.4028e38;
      for ( i = 0; i != 4; ++i )
      {
        v6 = *(_DWORD *)(PlayerManager::GetPlayer((PlayerManager *)dword_99F76C, i, 0) + 1632);
        if ( v6 && !(*(int (__fastcall **)(int))(*(_DWORD *)v6 + 52))(v6) )
        {
          CameraBase::GetScreenCoord(v6 + 352, &v11);
          if ( (float)(v3[7] - COERCE_FLOAT(v11 & 0x7FFFFFFF)) < v4 )
            v4 = v3[7] - COERCE_FLOAT(v11 & 0x7FFFFFFF);
          if ( v4 > (float)(v3[8] - v12) )
            v4 = v3[8] - v12;
          if ( v4 > (float)(v12 + v3[6]) )
            v4 = v12 + v3[6];
        }
      }
      v7 = v3[3];
      v8 = fabs(v7 - v4);
      if ( v7 > v4 )
      {
        v10 = *(_DWORD *)(LODWORD(v1) + 296);
        this = *(float *)(v10 + 140) - (float)(v8 * v3[4]);
        *(float *)(v10 + 140) = this;
      }
      else
      {
        LODWORD(this) = v7 < v4;
        if ( v7 < v4 )
        {
          v9 = *(_DWORD *)(LODWORD(v1) + 296);
          this = *(float *)(v9 + 140) + (float)(v8 * v3[4]);
          *(float *)(v9 + 140) = this;
        }
      }
    }
  }
  return this;
}


// ===== 3f9b90 `global constructor keyed to'.._.._sources_Game_Level_Level_Players.cpp =====
int `global constructor keyed to'.._.._sources_Game_Level_Level_Players.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3118 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3114 = 1056964608;
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


// ===== 3f9c6c LevelMap::LevelMap(int) =====
void __fastcall LevelMap::LevelMap(LevelMap *this, int a2)
{
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_967738;
}


// ===== 3f9c94 LevelMap::LevelMap(int) =====
void __fastcall LevelMap::LevelMap(LevelMap *this, int a2)
{
  *((_DWORD *)this + 1) = a2;
  *(_DWORD *)this = off_967738;
}


// ===== 3f9cbc LevelMap::~LevelMap() =====
void __fastcall LevelMap::~LevelMap(LevelMap *this)
{
  ;
}


// ===== 3f9cc0 LevelMap::~LevelMap() =====
void __fastcall LevelMap::~LevelMap(LevelMap *this)
{
  ;
}


// ===== 3f9cc4 `global constructor keyed to'.._.._sources_Game_Level_LevelMap.cpp =====
void `global constructor keyed to'.._.._sources_Game_Level_LevelMap.cpp()
{
  dword_9A3124 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3120 = 1056964608;
}


// ===== 3f9ce4 LevelMap::Draw(void) =====
void __fastcall LevelMap::Draw(LevelMap *this)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  MenuManager::Draw(Instance, 0);
}


// ===== 3f9cf8 LevelMap::Update(void) =====
int __fastcall LevelMap::Update(LevelMap *this)
{
  MenuManager *Instance; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  return MenuManager::Update(Instance, 0);
}


// ===== 3f9d0c LevelMap::Unload(void) =====
MenuManager *__fastcall LevelMap::Unload(LevelMap *this)
{
  MenuManager *result; // r0
  MenuBase *v2; // r4
  MenuManager *Instance; // r0

  result = (MenuManager *)MenuWorldMap::GetInstance(this);
  v2 = result;
  if ( result )
  {
    Instance = (MenuManager *)MenuManager::GetInstance(result);
    return (MenuManager *)MenuManager::PopMenu(Instance, v2);
  }
  return result;
}


// ===== 3f9d30 LevelMap::Load(void) =====
MenuManager *__fastcall LevelMap::Load(LevelMap *this)
{
  MenuManager *Instance; // r0
  MenuWorldMap *v2; // r0
  MenuManager *result; // r0
  MenuBase *v4; // r4
  MenuManager *v5; // r0

  Instance = (MenuManager *)MenuManager::GetInstance(this);
  v2 = (MenuWorldMap *)MenuManager::HideAll(Instance);
  result = (MenuManager *)MenuWorldMap::GetInstance(v2);
  v4 = result;
  if ( result )
  {
    v5 = (MenuManager *)MenuManager::GetInstance(result);
    return MenuManager::PushMenu(v5, v4);
  }
  return result;
}


// ===== 3f9d5c LevelMap::~LevelMap() =====
void __fastcall LevelMap::~LevelMap(LevelMap *this)
{
  LevelMap::~LevelMap(this);
  CustomFree(this);
}


// ===== 3f9d78 ItemInstance::operator==(ItemInstance const&) =====
int __fastcall ItemInstance::operator==(_DWORD *a1, _DWORD *a2)
{
  _DWORD *v3; // r4
  _DWORD *v4; // r12
  int v5; // r0
  int v6; // r3

  if ( a1[1] != a2[1] )
    return 0;
  v3 = (_DWORD *)a1[23];
  v4 = (_DWORD *)a2[23];
  v5 = (a1[24] - (int)v3) >> 5;
  if ( v5 != (a2[24] - (int)v4) >> 5 )
    return 0;
  if ( v5 )
  {
    if ( *v3 == *v4 )
    {
      v6 = 0;
      while ( ++v6 != v5 )
      {
        if ( v3[8 * v6] != v4[8 * v6] )
          return 0;
      }
      return 1;
    }
    return 0;
  }
  return 1;
}


// ===== 3f9e00 ItemInstance::GetItemId(void) =====
int __fastcall ItemInstance::GetItemId(ItemInstance *this)
{
  return *((_DWORD *)this + 1);
}


// ===== 3f9e08 ItemInstance::GetItem(void) =====
int __fastcall ItemInstance::GetItem(ItemInstance *this)
{
  return Arrays::ItemTable::members + 164 * *((_DWORD *)this + 1);
}


// ===== 3f9e34 ItemInstance::GetPickUpType(void) =====
int __fastcall ItemInstance::GetPickUpType(ItemInstance *this)
{
  if ( *((__int16 *)this + 44) == -1 )
    return *(_DWORD *)(ItemInstance::GetItem(this) + 12);
  else
    return *((__int16 *)this + 44);
}


// ===== 3f9e58 ItemInstance::IsStackable(void) =====
int __fastcall ItemInstance::IsStackable(ItemInstance *this)
{
  return *(unsigned __int8 *)(ItemInstance::GetItem(this) + 28);
}


// ===== 3f9e68 ItemInstance::IsEquippable(void) =====
bool __fastcall ItemInstance::IsEquippable(ItemInstance *this)
{
  return *(_DWORD *)(ItemInstance::GetItem(this) + 104) != -1;
}


// ===== 3f9e80 ItemInstance::GetNumPowers(void) =====
int __fastcall ItemInstance::GetNumPowers(ItemInstance *this)
{
  return (*((_DWORD *)this + 24) - *((_DWORD *)this + 23)) >> 5;
}


// ===== 3f9e94 ItemInstance::GetIconName(void) =====
int __fastcall ItemInstance::GetIconName(ItemInstance *this)
{
  return *(_DWORD *)(Arrays::ItemTable::members + 164 * *((_DWORD *)this + 1) + 8);
}


// ===== 3f9ec4 ItemInstance::GetPower(uint) =====
int __fastcall ItemInstance::GetPower(ItemInstance *this, unsigned int a2)
{
  int v2; // r3

  v2 = *((_DWORD *)this + 23);
  if ( a2 >= (*((_DWORD *)this + 24) - v2) >> 5 )
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
        "powerIdx < m_powers.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
        709);
      v2 = *((_DWORD *)this + 23);
    }
  }
  return Arrays::ItemPowerTable::members + 40 * *(_DWORD *)(v2 + 32 * a2);
}


// ===== 3f9f88 ItemInstance::GetPowerDesc(uint) =====
int __fastcall ItemInstance::GetPowerDesc(ItemInstance *this, unsigned int a2)
{
  int v3; // r2

  v3 = *((_DWORD *)this + 23);
  if ( a2 >= (*((_DWORD *)this + 24) - v3) >> 5 )
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
        "powerIdx < m_powers.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
        698);
      v3 = *((_DWORD *)this + 23);
    }
  }
  return *(_DWORD *)(v3 + 32 * a2 + 28);
}


// ===== 3fa038 ItemInstance::GetPowerId(uint) =====
int __fastcall ItemInstance::GetPowerId(ItemInstance *this, unsigned int a2)
{
  int v3; // r2

  v3 = *((_DWORD *)this + 23);
  if ( a2 >= (*((_DWORD *)this + 24) - v3) >> 5 )
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
        "powerIdx < m_powers.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
        687);
      v3 = *((_DWORD *)this + 23);
    }
  }
  return *(_DWORD *)(v3 + 32 * a2);
}


// ===== 3fa0e4 ItemInstance::SetQty(int) =====
int __fastcall ItemInstance::SetQty(int this, int a2)
{
  __int16 v2; // r5
  int v3; // r4

  v2 = a2;
  v3 = this;
  if ( a2 < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "qty >= 0",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
               547);
    }
  }
  *(_WORD *)(v3 + 80) = v2;
  return this;
}


// ===== 3fa17c ItemInstance::AddQty(int) =====
int __fastcall ItemInstance::AddQty(ItemInstance *this, int a2)
{
  return ItemInstance::SetQty((int)this, a2 + *((__int16 *)this + 40));
}


// ===== 3fa188 Arrays::GetMemberIDByString<Arrays::CharacterTable>(char const*) =====
int __fastcall Arrays::GetMemberIDByString<Arrays::CharacterTable>(char *a1)
{
  int v2; // r5
  int v3; // r4
  int v4; // r7

  v2 = Arrays::CharacterTable::size;
  if ( !Arrays::CharacterTable::size )
    return -1;
  v3 = 0;
  v4 = Arrays::CharacterTable::m_memberNames;
  while ( LC_API_STRCMP_0(a1, *(const char **)(v4 + 4 * v3)) )
  {
    if ( ++v3 == v2 )
      return -1;
  }
  return v3;
}


// ===== 3fa1fc ItemInstance::operator<(ItemInstance const&) =====
unsigned int __fastcall ItemInstance::operator<(const char **a1, const char **a2)
{
  int NumPowers; // r5
  unsigned int v5; // r5

  NumPowers = ItemInstance::GetNumPowers((ItemInstance *)a1);
  if ( NumPowers == ItemInstance::GetNumPowers((ItemInstance *)a2) )
    return (unsigned int)LC_API_STRCMP_0(a1[7], a2[7]) >> 31;
  v5 = ItemInstance::GetNumPowers((ItemInstance *)a1);
  return v5 > ItemInstance::GetNumPowers((ItemInstance *)a2);
}


// ===== 3fa258 std::priv::__copy<ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,int>(ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__copy<ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,int>(int a1, int a2, int a3)
{
  int v3; // r1
  int v4; // r8
  int v5; // r4
  int v6; // r7
  int v7; // r5
  int v8; // r6

  v3 = a2 - a1;
  v4 = v3 >> 5;
  v5 = a1;
  v6 = a3;
  if ( v3 >> 5 > 0 )
  {
    v7 = a3;
    v8 = v3 >> 5;
    while ( 1 )
    {
      *(_DWORD *)v7 = *(_DWORD *)v5;
      *(_DWORD *)(v7 + 4) = *(_DWORD *)(v5 + 4);
      if ( v7 + 8 != v5 + 8 )
        std::string::_M_assign((std::string *const)(v7 + 8), *(const char **)(v5 + 28), *(const char **)(v5 + 24));
      --v8;
      v7 += 32;
      if ( !v8 )
        break;
      v5 += 32;
    }
    v6 += 32 * v4;
  }
  return v6;
}


// ===== 3fa2c8 std::vector<ItemInstance::PowerInfo,std::allocator<ItemInstance::PowerInfo>>::_M_erase(ItemInstance::PowerInfo*,ItemInstance::PowerInfo*,std::__false_type const&) =====
int __fastcall std::vector<ItemInstance::PowerInfo>::_M_erase(int a1, int a2, int a3)
{
  int v5; // r0
  int v6; // r7
  int v7; // r8
  int v8; // r6
  std::priv::_String_base<char,std::allocator<char> > *v9; // r0

  v5 = std::priv::__copy<ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,int>(a3, *(_DWORD *)(a1 + 4), a2);
  v6 = *(_DWORD *)(a1 + 4);
  v7 = v5;
  if ( v6 != v5 )
  {
    v8 = v5;
    do
    {
      v9 = (std::priv::_String_base<char,std::allocator<char> > *)(v8 + 8);
      v8 += 32;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(v9);
    }
    while ( v6 != v8 );
  }
  *(_DWORD *)(a1 + 4) = v7;
  return a2;
}


// ===== 3fa330 ItemInstance::IsEquippableBy(Character *) =====
bool __fastcall ItemInstance::IsEquippableBy(ItemInstance *this, Character *a2)
{
  _DWORD *Item; // r5
  int PlayerClass; // r6

  if ( a2 )
  {
    if ( *(_BYTE *)(GetOnline() + 5) && (*(int (__fastcall **)(Character *))(*(_DWORD *)a2 + 84))(a2) )
      return 1;
    Item = (_DWORD *)ItemInstance::GetItem(this);
    PlayerClass = Character::SG_GetPlayerClass(a2);
    switch ( Item[34] )
    {
      case 1:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase");
        break;
      case 2:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase_Berserker");
        break;
      case 3:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase_Paladin");
        break;
      case 4:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase");
        break;
      case 5:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase_Assassin");
        break;
      case 6:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase_Archer");
        break;
      case 7:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase");
        break;
      case 8:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase_Necromancer");
        break;
      case 9:
        PlayerClass = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase_Illusionist");
        break;
      default:
        break;
    }
    if ( *((_DWORD *)a2 + 1041) >= Item[29] << 8
      && *((_DWORD *)a2 + 1175) + *((_DWORD *)a2 + 1171) >= Item[30] << 8
      && *((_DWORD *)a2 + 1176) + *((_DWORD *)a2 + 1172) >= Item[31] << 8
      && *((_DWORD *)a2 + 1177) + *((_DWORD *)a2 + 1173) >= Item[32] << 8
      && *((_DWORD *)a2 + 1178) + *((_DWORD *)a2 + 1174) >= Item[33] << 8 )
    {
      return PlayerClass == Character::SG_GetPlayerClass(a2);
    }
    return 0;
  }
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return 0;
  }
  if ( gAssertLevel != 1 )
    return 0;
  fprintf(
    (FILE *)&_sF + 2,
    "ASSERT(%s) FAILED: %s:%d\n",
    "c",
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
    495);
  return 0;
}


// ===== 3fa5cc ItemInstance::GetFontDef(int) =====
int __fastcall ItemInstance::GetFontDef(ItemInstance *this, int a2)
{
  int result; // r0

  switch ( (unsigned int)this )
  {
    case 0u:
      result = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ItemPowerColor", "zero");
      break;
    case 1u:
      result = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ItemPowerColor", "one");
      break;
    case 2u:
      result = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ItemPowerColor", "two");
      break;
    case 3u:
      result = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ItemPowerColor", "three");
      break;
    case 4u:
      result = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "ItemPowerColor", "four");
      break;
    default:
      result = 2;
      break;
  }
  return result;
}


// ===== 3fa6cc ItemInstance::GetFontDef(void) =====
int __fastcall ItemInstance::GetFontDef(ItemInstance *this)
{
  ItemInstance *NumPowers; // r0
  int v2; // r1

  NumPowers = (ItemInstance *)ItemInstance::GetNumPowers(this);
  return ItemInstance::GetFontDef(NumPowers, v2);
}


// ===== 3fa6dc ItemInstance::GetColor(int) =====
int __fastcall ItemInstance::GetColor(ItemInstance *this, int a2)
{
  int v2; // r4

  v2 = Arrays::FontPalette::members;
  return *(_DWORD *)(v2 + 12 * ItemInstance::GetFontDef(this, a2) + 8);
}


// ===== 3fa710 ItemInstance::GetColor(void) =====
int __fastcall ItemInstance::GetColor(ItemInstance *this)
{
  ItemInstance *NumPowers; // r0
  int v2; // r1

  NumPowers = (ItemInstance *)ItemInstance::GetNumPowers(this);
  return ItemInstance::GetColor(NumPowers, v2);
}


// ===== 3fa720 std::string::append(std::string const&,uint,uint) =====
std::string *__fastcall std::string::append(std::string *this, const std::string *a2, unsigned int a3, unsigned int a4)
{
  char *M_data; // r12
  char *v8; // r1
  unsigned int v10; // r1
  int v11; // r7

  M_data = a2->_M_start_of_storage._M_data;
  v8 = (char *)(a2->_M_finish - M_data);
  if ( a3 > (unsigned int)v8 )
  {
    __ZSt24__stl_throw_out_of_rangePKc_veneer("basic_string");
    M_data = a2->_M_start_of_storage._M_data;
    v8 = (char *)(a2->_M_finish - M_data);
  }
  v10 = (unsigned int)&v8[-a3];
  if ( v10 > a4 )
    v11 = a3 + a4;
  else
    v11 = a3 + v10;
  return std::string::_M_append(this, &M_data[a3], &M_data[v11]);
}


// ===== 3fa78c `global constructor keyed to'.._.._sources_Game_Items_ItemInstance.cpp =====
int `global constructor keyed to'.._.._sources_Game_Items_ItemInstance.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3130 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A312C = 1056964608;
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


// ===== 3fa868 std::string::_M_appendT<char const*>(char const*,char const*,std::forward_iterator_tag const&) [clone] =====
std::string *__fastcall std::string::_M_appendT<char const*>(std::string *this, char *M_end_of_storage)
{
  char *v2; // r2
  std::string *M_data; // r3
  unsigned int v5; // r5
  bool v6; // zf
  char *M_finish; // r3
  char *v8; // r0
  unsigned int size; // r0
  unsigned int *v11; // r1
  char *v12; // r7
  char *v13; // r6
  char *v14; // r1
  char *v15; // r8
  char *v16; // r0
  _BYTE *v17; // r0
  char *v18; // r5
  unsigned int v19; // [sp+4h] [bp-4h] BYREF

  v2 = M_end_of_storage;
  if ( M_end_of_storage != " " )
  {
    M_data = (std::string *)this->_M_start_of_storage._M_data;
    v5 = M_end_of_storage - " ";
    v6 = M_data == this;
    if ( M_data != this )
      M_end_of_storage = this->_M_buffers._M_end_of_storage;
    M_finish = this->_M_finish;
    if ( v6 )
      M_end_of_storage = (char *)&this->_M_finish;
    if ( v5 >= M_end_of_storage - M_finish )
    {
      size = std::string::_M_compute_next_size(this, v5);
      v12 = (char *)size;
      if ( size )
      {
        v19 = size;
        v13 = (char *)std::__node_alloc::allocate((std::__node_alloc *)&v19, v11);
        v12 = &v13[v19];
      }
      else
      {
        v13 = nullptr;
      }
      v14 = this->_M_start_of_storage._M_data;
      v15 = this->_M_finish;
      if ( v14 == v15 )
        v16 = v13;
      else
        v16 = (char *)memcpy(v13, v14, v15 - v14) + v15 - v14;
      v17 = memcpy(v16, " ", v5);
      v17[v5] = 0;
      v18 = &v17[v5];
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(this);
      this->_M_buffers._M_end_of_storage = v12;
      this->_M_finish = v18;
      this->_M_start_of_storage._M_data = v13;
    }
    else
    {
      *M_finish = 32;
      v8 = this->_M_finish;
      if ( v2 != "" )
      {
        memcpy(v8 + 1, "", v2 - "");
        v8 = this->_M_finish;
      }
      v8[v5] = 0;
      this->_M_finish += v5;
    }
  }
  return this;
}


// ===== 3fa998 std::vector<ItemInstance::PowerInfo,std::allocator<ItemInstance::PowerInfo>>::_M_clear_after_move(void) =====
void __fastcall std::vector<ItemInstance::PowerInfo>::_M_clear_after_move(int *a1)
{
  int v1; // r4
  int v2; // r5
  size_t v4; // r1

  v1 = a1[1];
  v2 = *a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 32;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v1 + 8));
    }
    while ( v2 != v1 );
    v1 = *a1;
  }
  if ( v1 )
  {
    v4 = (a1[2] - v1) & 0xFFFFFFE0;
    if ( v4 > 0x80 )
      CustomFree((void *)v1);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer((void *)v1, v4);
  }
}


// ===== 3faa00 std::vector<ItemInstance::PowerInfo,std::allocator<ItemInstance::PowerInfo>>::~vector() =====
void **__fastcall std::vector<ItemInstance::PowerInfo>::~vector(void **a1)
{
  char *v1; // r5
  char *v2; // r6
  _BYTE *v4; // r0
  size_t v5; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    do
    {
      v1 -= 32;
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(v1 + 8));
    }
    while ( v2 != v1 );
  }
  v4 = *a1;
  if ( !*a1 )
    return a1;
  v5 = ((_BYTE *)a1[2] - v4) & 0xFFFFFFE0;
  if ( v5 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
    return a1;
  }
  CustomFree(v4);
  return a1;
}


// ===== 3faa64 ItemInstance::~ItemInstance() =====
void __fastcall ItemInstance::~ItemInstance(ItemInstance *this)
{
  *(_DWORD *)this = off_967758;
  std::vector<ItemInstance::PowerInfo>::~vector((void **)this + 23);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 56));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 32));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 3faab0 ItemInstance::~ItemInstance() =====
void __fastcall ItemInstance::~ItemInstance(ItemInstance *this)
{
  ItemInstance::~ItemInstance(this);
  CustomFree(this);
}


// ===== 3faacc ItemInstance::~ItemInstance() =====
void __fastcall ItemInstance::~ItemInstance(ItemInstance *this)
{
  *(_DWORD *)this = off_967758;
  std::vector<ItemInstance::PowerInfo>::~vector((void **)this + 23);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 56));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 32));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 8));
}


// ===== 3fab18 std::vector<VarArgs::Variant,std::allocator<VarArgs::Variant>>::~vector() =====
int __fastcall std::vector<VarArgs::Variant>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = 4 * ((*(_DWORD *)(a1 + 8) - (int)v2) >> 2);
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3fab74 VarArgs::~VarArgs() =====
void __fastcall VarArgs::~VarArgs(VarArgs *this)
{
  *(_DWORD *)this = off_967748;
  std::vector<VarArgs::Variant>::~vector((int)this + 4);
}


// ===== 3faba8 VarArgs::~VarArgs() =====
void __fastcall VarArgs::~VarArgs(VarArgs *this)
{
  *(_DWORD *)this = off_967748;
  std::vector<VarArgs::Variant>::~vector((int)this + 4);
  CustomFree(this);
}


// ===== 3fabe4 std::allocator<ItemInstance::PowerInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ItemInstance::PowerInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x7FFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 32 * a2;
  if ( 32 * a2 > 0x80 )
    result = CustomAlloc(32 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 5;
  return result;
}


// ===== 3fac54 std::allocator<VarArgs::Variant>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<VarArgs::Variant>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x15555555 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 12 * a2;
  if ( 12 * a2 > 0x80 )
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 3facdc ItemInstance::_UpdateReqs(void) =====
int __fastcall ItemInstance::_UpdateReqs(ItemInstance *this)
{
  int v1; // r11
  std::string *v2; // r6
  int result; // r0
  StringManager *v5; // r9
  int Constant; // r0
  const char *String; // r9
  size_t v8; // r0
  StringManager *v9; // r9
  int v10; // r0
  char *v11; // r9
  int v12; // r8
  StringManager *v13; // r10
  int v14; // r0
  const char *v15; // r10
  StringManager *v16; // r8
  int v17; // r0
  StringManager *v18; // r10
  int v19; // r0
  const char *v20; // r10
  StringManager *v21; // r8
  int v22; // r0
  StringManager *v23; // r10
  int v24; // r0
  const char *v25; // r10
  StringManager *v26; // r8
  int v27; // r0
  StringManager *v28; // r10
  int v29; // r0
  const char *v30; // r10
  StringManager *v31; // r8
  int v32; // r0
  StringManager *v33; // r8
  int v34; // r0
  const char *v35; // r8
  StringManager *v36; // r4
  int v37; // r0
  StringManager *v38; // r10
  int v39; // r0
  const char *v40; // r10
  StringManager *v41; // r8
  int Item; // r0

  v2 = (std::string *)((char *)this + 56);
  std::string::_M_assign((std::string *const)((char *)this + 56), "", "");
  if ( *(_DWORD *)(ItemInstance::GetItem(this) + 116)
    || *(_DWORD *)(ItemInstance::GetItem(this) + 120)
    || *(_DWORD *)(ItemInstance::GetItem(this) + 124)
    || *(_DWORD *)(ItemInstance::GetItem(this) + 128)
    || *(_DWORD *)(ItemInstance::GetItem(this) + 132)
    || (result = ItemInstance::GetItem(this), *(_DWORD *)(result + 136)) )
  {
    result = ItemInstance::GetItem(this);
    if ( *(_DWORD *)(result + 88) != 14 )
    {
      v5 = (StringManager *)dword_99F760;
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_REQUIREMENTS");
      String = (const char *)StringManager::getString(v5, Constant);
      v8 = LC_API_STRLEN_0(String);
      std::string::_M_assign(v2, String, &String[v8]);
      v9 = (StringManager *)dword_99F760;
      v10 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GLOBAL_LIST_SEPERATOR");
      v11 = (char *)StringManager::getString(v9, v10);
      if ( *(_DWORD *)(ItemInstance::GetItem(this) + 116) )
      {
        v38 = (StringManager *)dword_99F760;
        v39 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_REQUIRES_LEVEL");
        v40 = (const char *)StringManager::getString(v38, v39);
        v41 = (StringManager *)dword_99F760;
        Item = ItemInstance::GetItem(this);
        StringManager::parse(v41, v2, v40, *(_DWORD *)(Item + 116));
        v12 = 1;
      }
      else
      {
        v12 = 0;
      }
      if ( *(_DWORD *)(ItemInstance::GetItem(this) + 120) )
      {
        if ( v12 )
          std::string::operator+=(v2, v11);
        v13 = (StringManager *)dword_99F760;
        v14 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_REQUIRES_STRENGTH");
        v15 = (const char *)StringManager::getString(v13, v14);
        v16 = (StringManager *)dword_99F760;
        v17 = ItemInstance::GetItem(this);
        StringManager::parse(v16, v2, v15, *(_DWORD *)(v17 + 120));
        v12 = 1;
      }
      if ( *(_DWORD *)(ItemInstance::GetItem(this) + 124) )
      {
        if ( v12 )
          std::string::operator+=(v2, v11);
        v18 = (StringManager *)dword_99F760;
        v19 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_REQUIRES_DEXTERITY");
        v20 = (const char *)StringManager::getString(v18, v19);
        v21 = (StringManager *)dword_99F760;
        v22 = ItemInstance::GetItem(this);
        StringManager::parse(v21, v2, v20, *(_DWORD *)(v22 + 124));
        v12 = 1;
      }
      if ( *(_DWORD *)(ItemInstance::GetItem(this) + 128) )
      {
        if ( v12 )
          std::string::operator+=(v2, v11);
        v23 = (StringManager *)dword_99F760;
        v24 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_REQUIRES_ENDURANCE");
        v25 = (const char *)StringManager::getString(v23, v24);
        v26 = (StringManager *)dword_99F760;
        v27 = ItemInstance::GetItem(this);
        StringManager::parse(v26, v2, v25, *(_DWORD *)(v27 + 128));
        v12 = 1;
      }
      if ( *(_DWORD *)(ItemInstance::GetItem(this) + 132) )
      {
        if ( v12 )
          std::string::operator+=(v2, v11);
        v28 = (StringManager *)dword_99F760;
        v29 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_REQUIRES_ENERGY");
        v30 = (const char *)StringManager::getString(v28, v29);
        v31 = (StringManager *)dword_99F760;
        v32 = ItemInstance::GetItem(this);
        StringManager::parse(v31, v2, v30, *(_DWORD *)(v32 + 132));
        v12 = 1;
      }
      result = ItemInstance::GetItem(this);
      if ( *(_DWORD *)(result + 136) )
      {
        if ( v12 )
          std::string::operator+=(v2, v11);
        v33 = (StringManager *)dword_99F760;
        v34 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "INGAME_REQUIRES_CLASS");
        v35 = (const char *)StringManager::getString(v33, v34);
        switch ( *(_DWORD *)(ItemInstance::GetItem(this) + 136) )
        {
          case 1:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 236724);
            break;
          case 2:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 237624);
            break;
          case 3:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 238524);
            break;
          case 4:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 292524);
            break;
          case 5:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 294324);
            break;
          case 6:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 293424);
            break;
          case 7:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 261024);
            break;
          case 8:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 262824);
            break;
          case 9:
            v1 = *(_DWORD *)(Arrays::CharacterTable::members + 261924);
            break;
          default:
            break;
        }
        v36 = (StringManager *)dword_99F760;
        v37 = StringManager::getString((StringManager *)dword_99F760, v1);
        return StringManager::parse(v36, v2, v35, v37);
      }
    }
  }
  return result;
}


// ===== 3fb290 ItemInstance::_UpdateStats(void) =====
int __fastcall ItemInstance::_UpdateStats(ItemInstance *this)
{
  std::string *v1; // r5
  int result; // r0
  unsigned int v4; // r2
  int v5; // r2
  StringManager *v6; // r7
  int Constant; // r0
  const char *String; // r7
  ItemInstance *v9; // r0
  StringManager *v10; // r4
  int v11; // r3
  StringManager *v12; // r7
  int v13; // r0
  const char *v14; // r7
  StringManager *v15; // r6
  int v16; // r3
  ItemInstance *v17; // r0
  int v18; // r4
  int v19; // r0
  StringManager *v20; // r8
  int v21; // r0
  const char *v22; // r10
  StringManager *v23; // r8
  int Item; // r0
  StringManager *v25; // r7
  int v26; // r0
  ItemInstance *v27; // r0

  v1 = (std::string *)((char *)this + 32);
  std::string::_M_assign((std::string *const)((char *)this + 32), "", "");
  result = ItemInstance::GetItem(this);
  v4 = *(_DWORD *)(result + 88);
  if ( v4 <= 0xC )
  {
    v5 = 1 << v4;
    if ( (v5 & 0x1780) != 0 )
    {
      v6 = (StringManager *)dword_99F760;
      Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_ARMOR_RATING");
      String = (const char *)StringManager::getString(v6, Constant);
      v9 = this;
      v10 = (StringManager *)dword_99F760;
      v11 = *(_DWORD *)(ItemInstance::GetItem(v9) + 140);
      return StringManager::parse(v10, v1, String, v11 >> 8);
    }
    if ( (v5 & 0x40) != 0 )
    {
      v20 = (StringManager *)dword_99F760;
      v21 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_ARMOR_RATING");
      v22 = (const char *)StringManager::getString(v20, v21);
      v23 = (StringManager *)dword_99F760;
      Item = ItemInstance::GetItem(this);
      StringManager::parse(v23, v1, v22, *(int *)(Item + 140) >> 8);
      std::string::_M_append(v1, " ", "");
      v25 = (StringManager *)dword_99F760;
      v26 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_BLOCK_RATING");
      String = (const char *)StringManager::getString(v25, v26);
      v27 = this;
      v10 = (StringManager *)dword_99F760;
      v11 = *(_DWORD *)(ItemInstance::GetItem(v27) + 144);
      return StringManager::parse(v10, v1, String, v11 >> 8);
    }
    if ( (v5 & 0x3F) != 0 )
    {
      v12 = (StringManager *)dword_99F760;
      v13 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "StrID", "GAMEPLAYMENUS_DAMAGE_DESC");
      v14 = (const char *)StringManager::getString(v12, v13);
      v15 = (StringManager *)dword_99F760;
      v16 = *(_DWORD *)(ItemInstance::GetItem(this) + 140);
      v17 = this;
      v18 = v16 >> 8;
      v19 = ItemInstance::GetItem(v17);
      return StringManager::parse(v15, v1, v14, v18, *(int *)(v19 + 144) >> 8);
    }
  }
  return result;
}


// ===== 3fb4a0 std::priv::__ufill<ItemInstance::PowerInfo *,ItemInstance::PowerInfo,int>(ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,ItemInstance::PowerInfo const&,std::random_access_iterator_tag const&,int *) =====
char *__fastcall std::priv::__ufill<ItemInstance::PowerInfo *,ItemInstance::PowerInfo,int>(
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


// ===== 3fb4fc std::priv::__ucopy<ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,int>(ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,std::random_access_iterator_tag const&,int *) =====
int __fastcall std::priv::__ucopy<ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,int>(int a1, int a2, int a3)
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


// ===== 3fb570 ItemInstance::PowerInfo::swap(ItemInstance::PowerInfo&) =====
void __fastcall ItemInstance::PowerInfo::swap(int a1, int a2)
{
  const char *v3; // r2
  const char *v5; // r1
  int v6; // r3
  int v7; // r3
  std::priv::_String_base<char,std::allocator<char> > v8; // [sp+4h] [bp+0h] BYREF

  v3 = *(const char **)(a1 + 24);
  v5 = *(const char **)(a1 + 28);
  v8._M_finish = (char *)&v8;
  v8._M_start_of_storage._M_data = (char *)&v8;
  std::string::_M_range_initialize((std::string *)&v8, v5, v3);
  if ( a1 + 8 != a2 + 8 )
    std::string::_M_assign((std::string *const)(a1 + 8), *(const char **)(a2 + 28), *(const char **)(a2 + 24));
  if ( (std::priv::_String_base<char,std::allocator<char> > *)(a2 + 8) != &v8 )
    std::string::_M_assign((std::string *const)(a2 + 8), v8._M_start_of_storage._M_data, v8._M_finish);
  v6 = *(_DWORD *)a2 ^ *(_DWORD *)a1;
  *(_DWORD *)a1 = v6;
  v7 = v6 ^ *(_DWORD *)a2;
  *(_DWORD *)a2 = v7;
  *(_DWORD *)a1 ^= v7;
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v8);
}


// ===== 3fb640 std::vector<ItemInstance::PowerInfo,std::allocator<ItemInstance::PowerInfo>>::push_back(ItemInstance::PowerInfo const&) =====
int __fastcall std::vector<ItemInstance::PowerInfo>::push_back(int *a1, int a2)
{
  int v2; // r7
  int v5; // r2
  int result; // r0
  unsigned int v7; // r3
  unsigned int v8; // r1
  int v9; // r6
  int v10; // r7
  int v11; // r2
  unsigned int v12; // r3
  unsigned int v13; // [sp+8h] [bp-Ch] BYREF
  char v14[4]; // [sp+Ch] [bp-8h] BYREF

  v2 = a1[1];
  if ( v2 == a1[2] )
  {
    v7 = (v2 - *a1) >> 5;
    if ( v7 )
      v8 = 2 * v7;
    else
      v8 = 1;
    if ( v8 > 0x7FFFFFF || v7 > v8 )
      v8 = 0x7FFFFFF;
    v13 = v8;
    v9 = std::allocator<ItemInstance::PowerInfo>::_M_allocate(a1 + 2, v8, &v13);
    v10 = std::priv::__ucopy<ItemInstance::PowerInfo *,ItemInstance::PowerInfo *,int>(*a1, v2, v9, v14, 0);
    *(_DWORD *)v10 = *(_DWORD *)a2;
    v11 = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(v10 + 24) = v10 + 8;
    *(_DWORD *)(v10 + 28) = v10 + 8;
    *(_DWORD *)(v10 + 4) = v11;
    std::string::_M_range_initialize((std::string *)(v10 + 8), *(const char **)(a2 + 28), *(const char **)(a2 + 24));
    result = std::vector<ItemInstance::PowerInfo>::_M_clear_after_move(a1);
    v12 = v13;
    *a1 = v9;
    a1[2] = v9 + 32 * v12;
    a1[1] = v10 + 32;
  }
  else
  {
    *(_DWORD *)v2 = *(_DWORD *)a2;
    v5 = *(_DWORD *)(a2 + 4);
    *(_DWORD *)(v2 + 28) = v2 + 8;
    *(_DWORD *)(v2 + 24) = v2 + 8;
    *(_DWORD *)(v2 + 4) = v5;
    result = std::string::_M_range_initialize(
               (std::string *)(v2 + 8),
               *(const char **)(a2 + 28),
               *(const char **)(a2 + 24));
    a1[1] += 32;
  }
  return result;
}


// ===== 3fb754 ItemInstance::_UpdateName(void) =====
void __fastcall ItemInstance::_UpdateName(ItemInstance *this)
{
  int v1; // r9
  int v3; // r5
  std::string *v4; // r10
  int v5; // r1
  int v6; // r11
  int v7; // r1
  int v8; // r5
  char *v9; // r0
  int v10; // r2
  unsigned int v11; // r8
  signed int v12; // r11
  signed int v13; // r0
  _DWORD *v14; // r9
  char *v15; // r0
  int v16; // t1
  bool v17; // cc
  _BYTE *v18; // r3
  int v19; // r11
  int v20; // r9
  char *v21; // r1
  char *M_finish; // r2
  char *M_data; // r3
  char *v24; // r0
  char *v25; // [sp+8h] [bp-ECh]
  _BOOL4 v26; // [sp+Ch] [bp-E8h]
  int v27; // [sp+10h] [bp-E4h]
  char *String; // [sp+14h] [bp-E0h]
  _DWORD v29[2]; // [sp+20h] [bp-D4h] BYREF
  _DWORD v30[3]; // [sp+28h] [bp-CCh] BYREF
  std::priv::_String_base<char,std::allocator<char> > v31; // [sp+44h] [bp-B0h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v32; // [sp+5Ch] [bp-98h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v33; // [sp+74h] [bp-80h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v34; // [sp+8Ch] [bp-68h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v35; // [sp+A4h] [bp-50h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v36; // [sp+BCh] [bp-38h] BYREF
  _BYTE v37[32]; // [sp+D4h] [bp-20h] BYREF

  v3 = Arrays::ItemTable::members + 164 * *((_DWORD *)this + 1);
  v4 = (std::string *)((char *)this + 8);
  std::string::_M_assign((std::string *const)((char *)this + 8), "", "");
  v5 = *(_DWORD *)(v3 + 68);
  if ( v5 != -1 )
  {
    String = (char *)StringManager::getString((StringManager *)dword_99F760, v5);
    v25 = LC_API_STRSTR_0(String, femaleTag[0]);
    if ( v25 )
    {
      v1 = 0;
      v6 = 1;
    }
    else
    {
      v24 = LC_API_STRSTR_0(String, femalePluralTag[0]);
      if ( v24 )
        v1 = 1;
      v6 = (int)v24;
      v25 = v24;
      if ( v24 )
      {
        v6 = v1;
      }
      else
      {
        v25 = LC_API_STRSTR_0(String, malePluralTag[0]);
        v1 = v25 != nullptr;
        if ( !v25 )
          v6 = 0;
      }
    }
    v7 = *(_DWORD *)(v3 + 72);
    if ( v7 == -1 )
      v8 = 0;
    else
      v8 = StringManager::getString((StringManager *)dword_99F760, v7);
    std::string::string((std::string *)v37, "");
    if ( v8 )
    {
      v9 = LC_API_STRSTR_0((const char *)v8, isAfterTag[0]);
      if ( v9 )
      {
        v26 = v8 != (_DWORD)v9;
        v11 = (unsigned int)&v9[-v8];
      }
      else
      {
        v26 = 0;
        v11 = 0;
      }
      if ( v1 )
        v1 = 2;
      if ( v6 )
        v10 = v1 + 1;
      v27 = v1;
      if ( v6 )
        v27 = v10;
      v12 = LC_API_STRLEN_0((const char *)v8);
      v13 = 0;
      v29[0] = -1;
      v14 = v29;
      if ( v12 > 0 )
        goto LABEL_21;
      v29[1] = 0;
      while ( v14 != v30 )
      {
        while ( 1 )
        {
          v16 = v14[1];
          ++v14;
          v13 = v16 + 1;
          v17 = v16 < 0;
          if ( v16 )
            v17 = v13 < v12;
          if ( v17 )
            break;
          v14[1] = 0;
          if ( v14 == v30 )
            goto LABEL_31;
        }
LABEL_21:
        v15 = LC_API_STRSTR_0((const char *)(v8 + v13), maleFemaleDelimiter[0]);
        if ( v15 )
          v15 -= v8;
        v14[1] = v15;
      }
LABEL_31:
      if ( !v26 )
        v11 = v12;
      v30[2] = v11;
      v18 = &v37[4 * v27 + 28];
      v19 = *((_DWORD *)v18 - 52);
      if ( v19 && (v20 = *((_DWORD *)v18 - 51)) != 0 )
      {
        std::string::string((std::string *)&v35, (char *)v8);
        std::string::append((std::string *)v37, (const std::string *)&v35, v19 + 1, v20 - v19 - 1);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v35);
      }
      else
      {
        std::string::string((std::string *)&v36, (char *)v8);
        std::string::append((std::string *)v37, (const std::string *)&v36, v29[0] + 1, v11);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v36);
      }
    }
    else
    {
      v26 = 0;
    }
    v34._M_finish = (char *)&v34;
    v34._M_start_of_storage._M_data = (char *)&v34;
    std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v34, 0x10u);
    *v34._M_finish = 0;
    std::string::string((std::string *)&v33, "");
    StringManager::parse((StringManager *)dword_99F760, (std::string *)&v33, String, *((_DWORD *)this + 21));
    v21 = v25;
    if ( v25 )
    {
      M_finish = v25;
      v21 = String;
    }
    else
    {
      M_finish = v33._M_finish;
    }
    if ( v25 )
      M_data = (char *)(M_finish - v21);
    else
      M_data = v33._M_start_of_storage._M_data;
    if ( !v25 )
      M_data = (char *)(M_finish - M_data);
    std::string::append((std::string *)&v34, (const std::string *)&v33, 0, (unsigned int)M_data);
    std::string::_M_assign(v4, "", "");
    if ( v26 )
    {
      std::string::_M_append(v4, v34._M_start_of_storage._M_data, v34._M_finish);
      if ( v8 )
      {
        v31._M_finish = (char *)&v31;
        v31._M_start_of_storage._M_data = (char *)&v31;
        std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
          &v31,
          *(_DWORD *)&v37[16] - *(_DWORD *)&v37[20] + 2);
        *v31._M_finish = 0;
        std::string::_M_appendT<char const*>((std::string *)&v31, "");
        std::string::_M_append((std::string *)&v31, *(char **)&v37[20], *(char **)&v37[16]);
        std::string::_M_append(v4, v31._M_start_of_storage._M_data, v31._M_finish);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v31);
      }
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)v37);
    }
    else
    {
      if ( v8 )
      {
        v32._M_finish = (char *)&v32;
        v32._M_start_of_storage._M_data = (char *)&v32;
        std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(
          &v32,
          *(_DWORD *)&v37[16] - *(_DWORD *)&v37[20] + 2);
        *v32._M_finish = 0;
        std::string::_M_append((std::string *)&v32, *(char **)&v37[20], *(char **)&v37[16]);
        std::string::_M_appendT<char const*>((std::string *)&v32, "");
        std::string::_M_append(v4, v32._M_start_of_storage._M_data, v32._M_finish);
        std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v32);
      }
      std::string::_M_append(v4, v34._M_start_of_storage._M_data, v34._M_finish);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v33);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v34);
      std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)v37);
    }
  }
}


// ===== 3fbc58 ItemInstance::SetValue(int) =====
void __fastcall ItemInstance::SetValue(ItemInstance *this, int a2)
{
  *((_DWORD *)this + 21) = a2;
  ItemInstance::_UpdateName(this);
}


// ===== 3fbc60 ItemInstance::AddPower(int,int) =====
void __fastcall ItemInstance::AddPower(ItemInstance *this, int a2, int a3)
{
  int v3; // r7
  int v6; // r6
  _DWORD *v7; // r8
  char *v8; // r6
  int v9; // r3
  char *v10; // r3
  unsigned int v11; // r7
  _DWORD *v12; // r6
  int v13; // r11
  int v14; // r3
  std::string *v15; // r7
  StringManager *v16; // r6
  const char *String; // r0
  int v18; // r3
  int v19; // r6
  int v20; // r1
  int v21; // r0
  int v22; // r8
  int v23; // r7
  int v24; // r6
  int v25; // r1
  unsigned int v26; // r2
  unsigned int v27; // r3
  char *v28; // r0
  char *v29; // r12
  char *v30; // r9
  int v31; // r6
  char *v32; // r3
  int v33; // r0
  int v34; // r3
  char *v35; // r2
  int v36; // r1
  size_t v37; // r1
  std::string *v38; // r6
  const char *v39; // r7
  size_t v40; // r0
  int v41; // r9
  char *v42; // r0
  size_t v43; // r2
  const char *v44; // r1
  void (**v45)(VarArgs *__hidden); // [sp+20h] [bp-7Ch] BYREF
  void *__p; // [sp+24h] [bp-78h] BYREF
  _DWORD *v47; // [sp+28h] [bp-74h]
  char *v48; // [sp+2Ch] [bp-70h] BYREF
  size_t v49; // [sp+30h] [bp-6Ch] BYREF
  char v50[64]; // [sp+34h] [bp-68h] BYREF
  _DWORD v51[2]; // [sp+74h] [bp-28h] BYREF
  std::priv::_String_base<char,std::allocator<char> > v52; // [sp+7Ch] [bp-20h] BYREF

  v3 = a2;
  if ( a2 < 0 || a2 >= Arrays::ItemPowerTable::size )
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
        "powerId >= 0 && powerId < (int)Arrays::ItemPowerTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
        606);
    }
  }
  if ( a3 == 1 )
  {
    v6 = v3;
    v41 = v3 + 1;
    LC_API_STRCPY_0(v50, *(const char **)(Arrays::ItemPowerTable::m_memberNames + 4 * v3));
    v42 = &v50[LC_API_STRLEN_0(v50)];
    v43 = 6;
    v44 = "_Hard";
  }
  else
  {
    if ( a3 != 2 )
    {
      v6 = v3;
      goto LABEL_7;
    }
    v6 = v3;
    v41 = v3 + 2;
    LC_API_STRCPY_0(v50, *(const char **)(Arrays::ItemPowerTable::m_memberNames + 4 * v3));
    v42 = &v50[LC_API_STRLEN_0(v50)];
    v43 = 10;
    v44 = "_VeryHard";
  }
  memcpy(v42, v44, v43);
  if ( !LC_API_STRCMP_0(v50, *(const char **)(Arrays::ItemPowerTable::m_memberNames + 4 * v41)) )
  {
    v3 = v41;
    v6 = v41;
  }
LABEL_7:
  v7 = (_DWORD *)(Arrays::ItemPowerTable::members + 40 * v6);
  v8 = nullptr;
  v9 = v7[7];
  v51[0] = v3;
  v52._M_finish = (char *)&v52;
  v51[1] = v9;
  v52._M_start_of_storage._M_data = (char *)&v52;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v52, 0x10u);
  *v52._M_finish = 0;
  std::vector<ItemInstance::PowerInfo>::push_back((int *)this + 23, (int)v51);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v52);
  if ( v7[3] )
  {
    __p = nullptr;
    v47 = nullptr;
    v48 = nullptr;
    v45 = off_967748;
    if ( v7[3] )
    {
      v10 = nullptr;
      v11 = 0;
      while ( 1 )
      {
        if ( v8 == v10 )
        {
          v26 = -1431655765 * ((v8 - (_BYTE *)__p) >> 2);
          if ( v26 )
            v27 = 1431655766 * ((v8 - (_BYTE *)__p) >> 2);
          else
            v27 = 1;
          if ( v27 > 0x15555555 || v26 > v27 )
            v27 = 357913941;
          v49 = v27;
          v28 = (char *)std::allocator<VarArgs::Variant>::_M_allocate((int)&v48, v27, &v49);
          v29 = (char *)__p;
          v30 = v28;
          v31 = -1431655765 * ((v8 - (_BYTE *)__p) >> 2);
          if ( v31 > 0 )
          {
            v33 = v31;
            v34 = 0;
            do
            {
              *(_DWORD *)&v30[v34] = *(_DWORD *)&v29[v34];
              *(_DWORD *)&v30[v34 + 4] = *(_DWORD *)&v29[v34 + 4];
              v35 = &v30[v34 + 8];
              v36 = *(_DWORD *)&v29[v34 + 8];
              --v33;
              v34 += 12;
              *(_DWORD *)v35 = v36;
            }
            while ( v33 );
            v32 = &v30[12 * v31];
          }
          else
          {
            v32 = v28;
          }
          *((_DWORD *)v32 + 2) = 0;
          *((_DWORD *)v32 + 1) = 0;
          *(_DWORD *)v32 = 0;
          v12 = v32 + 12;
          if ( __p )
          {
            v37 = 4 * ((v48 - (_BYTE *)__p) >> 2);
            if ( v37 > 0x80 )
              CustomFree(__p);
            else
              __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p, v37);
          }
          __p = v30;
          v47 = v12;
          v48 = &v30[12 * v49];
        }
        else
        {
          *(_DWORD *)v8 = 0;
          *((_DWORD *)v8 + 2) = 0;
          *((_DWORD *)v8 + 1) = 0;
          v12 = v47 + 3;
          v47 += 3;
        }
        v13 = 16 * v11;
        *((float *)v12 - 3) = (float)*(int *)(v7[4] + 16 * v11++ + 8) * 0.0039062;
        v14 = *(_DWORD *)(v7[4] + v13 + 8);
        *(v12 - 1) = 0;
        *(v12 - 2) = v14 >> 8;
        if ( v7[3] <= v11 )
          break;
        v8 = (char *)v47;
        v10 = v48;
      }
    }
    v15 = (std::string *)(*((_DWORD *)this + 24) - 24);
    v16 = (StringManager *)dword_99F760;
    String = (const char *)StringManager::getString((StringManager *)dword_99F760, v7[5]);
    StringManager::parseEx(v16, v15, String, (const VarArgs *)&v45);
    v45 = off_967748;
    std::vector<VarArgs::Variant>::~vector((int)&__p);
  }
  else
  {
    v38 = (std::string *)(*((_DWORD *)this + 24) - 24);
    v39 = (const char *)StringManager::getString((StringManager *)dword_99F760, v7[5]);
    v40 = LC_API_STRLEN_0(v39);
    std::string::_M_assign(v38, v39, &v39[v40]);
  }
  v18 = *((_DWORD *)this + 23);
  v19 = (*((_DWORD *)this + 24) - v18) >> 5;
  if ( v19 != 1 )
  {
    v20 = v18 + 32 * (v19 - 2);
    v21 = v18 + 32 * (v19 - 1);
    if ( *(_DWORD *)(v20 + 4) > *(_DWORD *)(v21 + 4) )
    {
      v22 = 32 * (v19 + 134217725);
      v23 = 32 * (v19 + 134217726);
      v24 = v19 - 2;
      do
      {
        ItemInstance::PowerInfo::swap(v21, v20);
        if ( !v24 )
          break;
        v25 = *((_DWORD *)this + 23);
        --v24;
        v21 = v25 + v23;
        v20 = v25 + v22;
        v22 -= 32;
        v23 -= 32;
      }
      while ( *(_DWORD *)(v20 + 4) > *(_DWORD *)(v21 + 4) );
    }
  }
}


// ===== 3fc1b4 ItemInstance::UpdateLocalization(void) =====
void __fastcall ItemInstance::UpdateLocalization(ItemInstance *this)
{
  int NumPowers; // r5
  _DWORD *v3; // r6
  unsigned int i; // r7
  int v5; // r1
  int v6; // r2
  int j; // r7
  int v8; // r1

  ItemInstance::_UpdateName(this);
  ItemInstance::_UpdateStats(this);
  ItemInstance::_UpdateReqs(this);
  NumPowers = ItemInstance::GetNumPowers(this);
  v3 = operator new[](4 * NumPowers, 0);
  if ( NumPowers )
  {
    for ( i = 0; i != NumPowers; ++i )
      v3[i] = ItemInstance::GetPowerId(this, i);
  }
  v5 = *((_DWORD *)this + 23);
  v6 = *((_DWORD *)this + 24);
  if ( v5 != v6 )
    std::vector<ItemInstance::PowerInfo>::_M_erase((int)this + 92, v5, v6);
  if ( NumPowers )
  {
    for ( j = 0; j != NumPowers; ++j )
    {
      v8 = v3[j];
      ItemInstance::AddPower(this, v8, -1);
    }
  }
  CustomFree(v3);
}


// ===== 3fc26c ItemInstance::ItemInstance(int,uint) =====
void __fastcall ItemInstance::ItemInstance(ItemInstance *this, int a2, __int16 a3)
{
  _DWORD *v5; // r0

  *(_DWORD *)this = off_967758;
  v5 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = v5;
  *((_DWORD *)this + 7) = v5;
  *((_DWORD *)this + 1) = a2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v5, 0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 12) = (char *)this + 32;
  *((_DWORD *)this + 13) = (char *)this + 32;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 8, 0x10u);
  **((_BYTE **)this + 12) = 0;
  *((_DWORD *)this + 18) = (char *)this + 56;
  *((_DWORD *)this + 19) = (char *)this + 56;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 14, 0x10u);
  **((_BYTE **)this + 18) = 0;
  *((_BYTE *)this + 104) = 1;
  *((_WORD *)this + 40) = a3;
  *((_BYTE *)this + 105) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_WORD *)this + 44) = -1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  if ( a2 < 0 || !Arrays::ItemTable::size )
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
        "itemId >= 0 && Arrays::ItemTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
        84);
    }
  }
  ItemInstance::_UpdateName(this);
  ItemInstance::_UpdateStats(this);
  ItemInstance::_UpdateReqs(this);
}


// ===== 3fc3e0 ItemInstance::Split(int) =====
ItemInstance *__fastcall ItemInstance::Split(ItemInstance *this, int a2)
{
  ItemInstance *v4; // r4
  unsigned int v6; // r6
  int PowerId; // r0

  if ( !ItemInstance::IsStackable(this) || a2 <= 0 || a2 >= *((__int16 *)this + 40) )
    return nullptr;
  ItemInstance::AddQty(this, -a2);
  v4 = (ItemInstance *)operator new(108, 0);
  ItemInstance::ItemInstance(v4, *((_DWORD *)this + 1), a2);
  v6 = 0;
  ItemInstance::SetValue(v4, *((_DWORD *)this + 21));
  *((_BYTE *)v4 + 104) = 0;
  while ( v6 < ItemInstance::GetNumPowers(this) )
  {
    PowerId = ItemInstance::GetPowerId(this, v6);
    ItemInstance::AddPower(v4, PowerId, -1);
    ++v6;
  }
  *((_BYTE *)v4 + 104) = *((_BYTE *)this + 104);
  return v4;
}


// ===== 3fc494 ItemInstance::ItemInstance(int,uint) =====
void __fastcall ItemInstance::ItemInstance(ItemInstance *this, int a2, __int16 a3)
{
  _DWORD *v5; // r0

  *(_DWORD *)this = off_967758;
  v5 = (_DWORD *)((char *)this + 8);
  *((_DWORD *)this + 6) = v5;
  *((_DWORD *)this + 7) = v5;
  *((_DWORD *)this + 1) = a2;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(v5, 0x10u);
  **((_BYTE **)this + 6) = 0;
  *((_DWORD *)this + 12) = (char *)this + 32;
  *((_DWORD *)this + 13) = (char *)this + 32;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 8, 0x10u);
  **((_BYTE **)this + 12) = 0;
  *((_DWORD *)this + 18) = (char *)this + 56;
  *((_DWORD *)this + 19) = (char *)this + 56;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((_DWORD *)this + 14, 0x10u);
  **((_BYTE **)this + 18) = 0;
  *((_BYTE *)this + 104) = 1;
  *((_WORD *)this + 40) = a3;
  *((_BYTE *)this + 105) = 0;
  *((_DWORD *)this + 21) = 0;
  *((_WORD *)this + 44) = -1;
  *((_DWORD *)this + 23) = 0;
  *((_DWORD *)this + 24) = 0;
  *((_DWORD *)this + 25) = 0;
  if ( a2 < 0 || !Arrays::ItemTable::size )
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
        "itemId >= 0 && Arrays::ItemTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInstance.cpp",
        84);
    }
  }
  ItemInstance::_UpdateName(this);
  ItemInstance::_UpdateStats(this);
  ItemInstance::_UpdateReqs(this);
}


// ===== 3fc608 ItemInventory::GetNumItems(void) =====
int __fastcall ItemInventory::GetNumItems(ItemInventory *this)
{
  return (*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2;
}


// ===== 3fc61c ItemInventory::GetItem(uint) =====
int __fastcall ItemInventory::GetItem(int this, unsigned int a2)
{
  int v2; // r3
  int v3; // r2

  v2 = *(_DWORD *)(this + 8);
  v3 = *(_DWORD *)(this + 12) - v2;
  if ( a2 >= v3 >> 2 )
    this = 0;
  else
    v2 = *(_DWORD *)(v2 + 4 * a2);
  if ( a2 < v3 >> 2 )
    return *(_DWORD *)v2;
  return this;
}


// ===== 3fc63c ItemInventory::GetItemIndex(ItemInstance const*) =====
int __fastcall ItemInventory::GetItemIndex(ItemInventory *this, const ItemInstance *a2)
{
  const ItemInstance ***v2; // r3
  int v3; // r2
  int result; // r0

  v2 = *((const ItemInstance ****)this + 2);
  v3 = (*((_DWORD *)this + 3) - (int)v2) >> 2;
  if ( v3 )
  {
    if ( **v2 == a2 )
      return 0;
    result = 0;
    while ( ++result != v3 )
    {
      if ( *v2[result] == a2 )
        return result;
    }
  }
  return -1;
}


// ===== 3fc690 ItemInventory::GetNumPotions(void) =====
int __fastcall ItemInventory::GetNumPotions(ItemInventory *this)
{
  int result; // r0

  result = *((_DWORD *)this + 9);
  if ( result )
    return *(__int16 *)(result + 80);
  return result;
}


// ===== 3fc6a0 ItemInventory::GetCurrentSkillSet(int) =====
int __fastcall ItemInventory::GetCurrentSkillSet(ItemInventory *this, int a2)
{
  return 0;
}


// ===== 3fc6a8 ItemInventory::GetCurrentEquipSet(int) =====
int __fastcall ItemInventory::GetCurrentEquipSet(ItemInventory *this, int a2)
{
  if ( a2 < 0 || (unsigned int)(a2 - 1) <= 1 )
    return *((char *)this + 46);
  else
    return 0;
}


// ===== 3fc6c8 ItemInventory::SwapEquipmentSet(void) =====
int __fastcall ItemInventory::SwapEquipmentSet(int this)
{
  *(_BYTE *)(this + 46) = (*(char *)(this + 46) + 1) % 2;
  return this;
}


// ===== 3fc6e8 TrophyCheckArmorSetDecay(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetDecay(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v4; // r0
  ItemInstance *v5; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 136) == 8
    && (v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u), *(_DWORD *)(ItemInstance::GetItem(v4) + 136) == 8)
    && (v5 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u), *(_DWORD *)(ItemInstance::GetItem(v5) + 136) == 8)
    && (v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), *(_DWORD *)(ItemInstance::GetItem(v6) + 136) == 8)
    && (v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), *(_DWORD *)(ItemInstance::GetItem(v7) + 136) == 8) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_necromancer");
  }
  else
  {
    return -1;
  }
}


// ===== 3fc790 TrophyCheckArmorSetPhantasm(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetPhantasm(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v4; // r0
  ItemInstance *v5; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 136) == 9
    && (v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u), *(_DWORD *)(ItemInstance::GetItem(v4) + 136) == 9)
    && (v5 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u), *(_DWORD *)(ItemInstance::GetItem(v5) + 136) == 9)
    && (v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), *(_DWORD *)(ItemInstance::GetItem(v6) + 136) == 9)
    && (v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), *(_DWORD *)(ItemInstance::GetItem(v7) + 136) == 9) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_illusionist");
  }
  else
  {
    return -1;
  }
}


// ===== 3fc83c TrophyCheckArmorSetShadow(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetShadow(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v4; // r0
  ItemInstance *v5; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 136) == 5
    && (v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u), *(_DWORD *)(ItemInstance::GetItem(v4) + 136) == 5)
    && (v5 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u), *(_DWORD *)(ItemInstance::GetItem(v5) + 136) == 5)
    && (v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), *(_DWORD *)(ItemInstance::GetItem(v6) + 136) == 5)
    && (v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), *(_DWORD *)(ItemInstance::GetItem(v7) + 136) == 5) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_assassin");
  }
  else
  {
    return -1;
  }
}


// ===== 3fc8e8 TrophyCheckArmorSetMarksman(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetMarksman(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v4; // r0
  ItemInstance *v5; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 136) == 6
    && (v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u), *(_DWORD *)(ItemInstance::GetItem(v4) + 136) == 6)
    && (v5 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u), *(_DWORD *)(ItemInstance::GetItem(v5) + 136) == 6)
    && (v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), *(_DWORD *)(ItemInstance::GetItem(v6) + 136) == 6)
    && (v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), *(_DWORD *)(ItemInstance::GetItem(v7) + 136) == 6) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_archer");
  }
  else
  {
    return -1;
  }
}


// ===== 3fc994 TrophyCheckArmorSetAngelic(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetAngelic(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v4; // r0
  ItemInstance *v5; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 136) == 3
    && (v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u), *(_DWORD *)(ItemInstance::GetItem(v4) + 136) == 3)
    && (v5 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u), *(_DWORD *)(ItemInstance::GetItem(v5) + 136) == 3)
    && (v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), *(_DWORD *)(ItemInstance::GetItem(v6) + 136) == 3)
    && (v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), *(_DWORD *)(ItemInstance::GetItem(v7) + 136) == 3) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_paladin");
  }
  else
  {
    return -1;
  }
}


// ===== 3fca40 TrophyCheckArmorSetRage(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetRage(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v4; // r0
  ItemInstance *v5; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( *(_DWORD *)(ItemInstance::GetItem(EquippedItem) + 136) == 2
    && (v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u), *(_DWORD *)(ItemInstance::GetItem(v4) + 136) == 2)
    && (v5 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u), *(_DWORD *)(ItemInstance::GetItem(v5) + 136) == 2)
    && (v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), *(_DWORD *)(ItemInstance::GetItem(v6) + 136) == 2)
    && (v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), *(_DWORD *)(ItemInstance::GetItem(v7) + 136) == 2) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_berserker");
  }
  else
  {
    return -1;
  }
}


// ===== 3fcaec TrophyCheckArmorSetArchmage(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetArchmage(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v3; // r0
  ItemInstance *v4; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0
  ItemInstance *v8; // r0
  ItemInstance *v9; // r0
  ItemInstance *v10; // r0
  ItemInstance *v11; // r0
  ItemInstance *v12; // r0
  ItemInstance *v13; // r0
  ItemInstance *v14; // r0
  ItemInstance *v15; // r0
  ItemInstance *v16; // r0
  ItemInstance *v17; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( ItemInstance::GetItemId(EquippedItem) != 289 )
  {
    v3 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
    if ( ItemInstance::GetItemId(v3) != 290 )
    {
      v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
      if ( ItemInstance::GetItemId(v4) != 291 )
        return -1;
    }
  }
  v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
  if ( ItemInstance::GetItemId(v6) != 325 )
  {
    v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
    if ( ItemInstance::GetItemId(v7) != 326 )
    {
      v8 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
      if ( ItemInstance::GetItemId(v8) != 327 )
        return -1;
    }
  }
  v9 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
  if ( ItemInstance::GetItemId(v9) != 361 )
  {
    v10 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
    if ( ItemInstance::GetItemId(v10) != 362 )
    {
      v11 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
      if ( ItemInstance::GetItemId(v11) != 363 )
        return -1;
    }
  }
  if ( ((v12 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v12) == 217)
     || (v13 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v13) == 218)
     || (v14 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v14) == 219))
    && ((v15 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v15) == 253)
     || (v16 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v16) == 254)
     || (v17 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v17) == 255)) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_mage");
  }
  else
  {
    return -1;
  }
}


// ===== 3fcc98 TrophyCheckArmorSetJester(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetJester(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v3; // r0
  ItemInstance *v4; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0
  ItemInstance *v8; // r0
  ItemInstance *v9; // r0
  ItemInstance *v10; // r0
  ItemInstance *v11; // r0
  ItemInstance *v12; // r0
  ItemInstance *v13; // r0
  ItemInstance *v14; // r0
  ItemInstance *v15; // r0
  ItemInstance *v16; // r0
  ItemInstance *v17; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( ItemInstance::GetItemId(EquippedItem) != 583 )
  {
    v3 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
    if ( ItemInstance::GetItemId(v3) != 584 )
    {
      v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
      if ( ItemInstance::GetItemId(v4) != 585 )
        return -1;
    }
  }
  v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
  if ( ItemInstance::GetItemId(v6) != 619 )
  {
    v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
    if ( ItemInstance::GetItemId(v7) != 620 )
    {
      v8 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
      if ( ItemInstance::GetItemId(v8) != 621 )
        return -1;
    }
  }
  v9 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
  if ( ItemInstance::GetItemId(v9) != 655 )
  {
    v10 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
    if ( ItemInstance::GetItemId(v10) != 656 )
    {
      v11 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
      if ( ItemInstance::GetItemId(v11) != 657 )
        return -1;
    }
  }
  if ( ((v12 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v12) == 511)
     || (v13 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v13) == 512)
     || (v14 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v14) == 513))
    && ((v15 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v15) == 547)
     || (v16 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v16) == 548)
     || (v17 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v17) == 549)) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_rogue");
  }
  else
  {
    return -1;
  }
}


// ===== 3fce48 TrophyCheckArmorSetLordly(ItemInventory *) =====
int __fastcall TrophyCheckArmorSetLordly(ItemInventory *a1)
{
  ItemInstance *EquippedItem; // r0
  ItemInstance *v3; // r0
  ItemInstance *v4; // r0
  ItemInstance *v6; // r0
  ItemInstance *v7; // r0
  ItemInstance *v8; // r0
  ItemInstance *v9; // r0
  ItemInstance *v10; // r0
  ItemInstance *v11; // r0
  ItemInstance *v12; // r0
  ItemInstance *v13; // r0
  ItemInstance *v14; // r0
  ItemInstance *v15; // r0
  ItemInstance *v16; // r0
  ItemInstance *v17; // r0

  EquippedItem = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
  if ( ItemInstance::GetItemId(EquippedItem) != 844 )
  {
    v3 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
    if ( ItemInstance::GetItemId(v3) != 845 )
    {
      v4 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 3u);
      if ( ItemInstance::GetItemId(v4) != 846 )
        return -1;
    }
  }
  v6 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
  if ( ItemInstance::GetItemId(v6) != 880 )
  {
    v7 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
    if ( ItemInstance::GetItemId(v7) != 881 )
    {
      v8 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 4u);
      if ( ItemInstance::GetItemId(v8) != 882 )
        return -1;
    }
  }
  v9 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
  if ( ItemInstance::GetItemId(v9) != 916 )
  {
    v10 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
    if ( ItemInstance::GetItemId(v10) != 917 )
    {
      v11 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 8u);
      if ( ItemInstance::GetItemId(v11) != 918 )
        return -1;
    }
  }
  if ( ((v12 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v12) == 772)
     || (v13 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v13) == 773)
     || (v14 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 0), ItemInstance::GetItemId(v14) == 774))
    && ((v15 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v15) == 808)
     || (v16 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v16) == 809)
     || (v17 = (ItemInstance *)ItemInventory::GetEquippedItem(a1, 7u), ItemInstance::GetItemId(v17) == 810)) )
  {
    return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_warrior");
  }
  else
  {
    return -1;
  }
}


// ===== 3fcff8 ItemInventory::TrophyCheckArmorSet(void) =====
void __fastcall ItemInventory::TrophyCheckArmorSet(ItemInventory *this)
{
  int v2; // r3
  TrophyManager *v3; // r0

  if ( !ItemInventory::IsEquipmentSlotTaken(this, 3u)
    || !ItemInventory::IsEquipmentSlotTaken(this, 4u)
    || !ItemInventory::IsEquipmentSlotTaken(this, 8u)
    || !ItemInventory::IsEquipmentSlotTaken(this, 0)
    || !ItemInventory::IsEquipmentSlotTaken(this, 7u) )
  {
    return;
  }
  v2 = *(__int16 *)(*((_DWORD *)this + 1) + 5064);
  if ( v2 == 291 )
  {
    v3 = (TrophyManager *)TrophyCheckArmorSetPhantasm(this);
    goto LABEL_16;
  }
  if ( v2 > 291 )
  {
    switch ( v2 )
    {
      case 326:
        v3 = (TrophyManager *)TrophyCheckArmorSetMarksman(this);
        break;
      case 327:
        v3 = (TrophyManager *)TrophyCheckArmorSetShadow(this);
        break;
      case 292:
        v3 = (TrophyManager *)TrophyCheckArmorSetDecay(this);
        break;
      default:
        goto LABEL_11;
    }
LABEL_16:
    if ( v3 != (TrophyManager *)-1 )
    {
LABEL_14:
      TrophyManager::UnlockTrophy((TrophyManager *)TrophyManager::s_instance, v3);
      return;
    }
    goto LABEL_11;
  }
  if ( v2 == 264 )
  {
    v3 = (TrophyManager *)TrophyCheckArmorSetRage(this);
    goto LABEL_16;
  }
  if ( v2 == 265 )
  {
    v3 = (TrophyManager *)TrophyCheckArmorSetAngelic(this);
    goto LABEL_16;
  }
LABEL_11:
  v3 = (TrophyManager *)TrophyCheckArmorSetLordly(this);
  if ( v3 != (TrophyManager *)-1 )
    goto LABEL_14;
  v3 = (TrophyManager *)TrophyCheckArmorSetJester(this);
  if ( v3 != (TrophyManager *)-1 )
    goto LABEL_14;
  v3 = (TrophyManager *)TrophyCheckArmorSetArchmage(this);
  if ( v3 != (TrophyManager *)-1 )
    goto LABEL_14;
}


// ===== 3fd15c ItemInventory::FindItem(int) =====
ItemInstance *__fastcall ItemInventory::FindItem(ItemInventory *this, int a2)
{
  ItemInstance *v3; // r0
  ItemInstance ***v5; // r5
  ItemInstance ***v6; // r3
  ItemInstance **v7; // r6

  v3 = *((ItemInstance **)this + 9);
  if ( !v3 || ItemInstance::GetItemId(v3) != a2 )
  {
    v5 = *((ItemInstance ****)this + 2);
    v6 = *((ItemInstance ****)this + 3);
    if ( v5 == v6 )
      return nullptr;
    while ( 1 )
    {
      v7 = *v5;
      if ( *v5 && *v7 )
      {
        if ( ItemInstance::GetItemId(*v7) == a2 )
          return *v7;
        v6 = *((ItemInstance ****)this + 3);
      }
      if ( ++v5 == v6 )
        return nullptr;
    }
  }
  return *((ItemInstance **)this + 9);
}


// ===== 3fd1dc II_Item_sortbyname(ItemInventory::Item const&,ItemInventory::Item const&) =====
unsigned int __fastcall II_Item_sortbyname(const char ***a1, const char ***a2)
{
  return ItemInstance::operator<(*a1, *a2);
}


// ===== 3fd1e8 SortByValueAndClass::operator()(ItemInventory::Item const&,ItemInventory::Item const&) =====
unsigned int __fastcall SortByValueAndClass::operator()(int a1, const char ***a2, ItemInstance **a3)
{
  int v4; // r3
  ItemInstance *v6; // r0
  int v7; // r5
  int v8; // r6

  v4 = *(__int16 *)(*(_DWORD *)a1 + 5064);
  v6 = (ItemInstance *)*a2;
  v7 = *((_DWORD *)*a3 + 21);
  v8 = (int)(*a2)[21];
  switch ( v4 )
  {
    case 263:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 32));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 32));
      break;
    case 264:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 48));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 48));
      break;
    case 265:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 44));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 44));
      break;
    case 290:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 36));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 36));
      break;
    case 291:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 64));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 64));
      break;
    case 292:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 60));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 60));
      break;
    case 325:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 40));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 40));
      break;
    case 326:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 56));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 56));
      break;
    case 327:
      v8 = (int)(float)((float)v8 * *(float *)(ItemInstance::GetItem(v6) + 52));
      v7 = (int)(float)((float)v7 * *(float *)(ItemInstance::GetItem(*a3) + 52));
      break;
    default:
      break;
  }
  if ( v8 == v7 )
    return II_Item_sortbyname(a2, (const char ***)a3);
  else
    return v8 > v7;
}


// ===== 3fd5d0 SortByEquipability::operator()(ItemInventory::Item const&,ItemInventory::Item const&) =====
unsigned int __fastcall SortByEquipability::operator()(int a1, ItemInstance **a2, ItemInstance **a3)
{
  int v6; // r10
  int v7; // r6
  int v8; // r10
  int v9; // r6
  int v10; // r3
  Character *v11; // r11
  unsigned int v12; // r0
  ItemInventory *v13; // r10
  unsigned int v14; // r0
  _BOOL4 v15; // r6
  Character *v16; // r9
  unsigned int v17; // r0
  PyDataConstants *v18; // r0
  ItemInventory *v19; // r5
  const char *v20; // r2
  unsigned int v21; // r0
  _BOOL4 v22; // r3
  Character *v23; // r11
  unsigned int Constant; // r0
  ItemInventory *v25; // r10
  unsigned int v26; // r0
  Character *v27; // r9
  unsigned int v28; // r0
  int IsEquippableBy; // [sp+4h] [bp-18h]
  _BOOL4 v31; // [sp+8h] [bp-14h]
  int v32; // [sp+Ch] [bp-10h]
  Character *v33; // [sp+14h] [bp-8h] BYREF

  IsEquippableBy = ItemInstance::IsEquippableBy(*a2, *(Character **)a1);
  v32 = ItemInstance::IsEquippableBy(*a3, *(Character **)a1);
  v6 = *(_DWORD *)(a1 + 4);
  v31 = true;
  if ( v6 != PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "LeftHand") )
  {
    v7 = *(_DWORD *)(a1 + 4);
    if ( v7 != PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "RightHand") )
      v31 = false;
  }
  v8 = *(_DWORD *)(a1 + 4);
  if ( v8 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "LeftHandRingFinger")
    || (v9 = *(_DWORD *)(a1 + 4),
        v9 == PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "RightHandRingFinger")) )
  {
    v10 = 1;
    if ( !v31 )
      goto LABEL_10;
LABEL_25:
    v23 = *(Character **)a1;
    Constant = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "LeftHand");
    v15 = true;
    if ( *a2 != (ItemInstance *)ItemInventory::GetEquippedItem((Character *)((char *)v23 + 892), Constant) )
    {
      v25 = (ItemInventory *)(*(_DWORD *)a1 + 892);
      v26 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "RightHand");
      if ( *a2 != (ItemInstance *)ItemInventory::GetEquippedItem(v25, v26) )
        v15 = false;
    }
    v27 = *(Character **)a1;
    v28 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "LeftHand");
    if ( *a3 == (ItemInstance *)ItemInventory::GetEquippedItem((Character *)((char *)v27 + 892), v28) )
      goto LABEL_19;
    v18 = (PyDataConstants *)dword_99F758;
    v19 = (ItemInventory *)(*(_DWORD *)a1 + 892);
    v20 = "RightHand";
LABEL_17:
    v21 = PyDataConstants::getConstant(v18, "EquipmentSlots", v20);
    if ( *a3 != (ItemInstance *)ItemInventory::GetEquippedItem(v19, v21) )
    {
      v22 = 0;
      goto LABEL_33;
    }
LABEL_19:
    v22 = 1;
    if ( v15 )
      return !v22
          || *a2 == (ItemInstance *)ItemInventory::GetEquippedItem(
                                      (ItemInventory *)(*(_DWORD *)a1 + 892),
                                      *(_DWORD *)(a1 + 4));
    goto LABEL_20;
  }
  v10 = 0;
  if ( v31 )
    goto LABEL_25;
LABEL_10:
  if ( v10 )
  {
    v11 = *(Character **)a1;
    v12 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "LeftHandRingFinger");
    v15 = *a2 == (ItemInstance *)ItemInventory::GetEquippedItem((Character *)((char *)v11 + 892), v12)
       || (v13 = (ItemInventory *)(*(_DWORD *)a1 + 892),
           v14 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "RightHandRingFinger"),
           *a2 == (ItemInstance *)ItemInventory::GetEquippedItem(v13, v14))
       || v31;
    v16 = *(Character **)a1;
    v17 = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "EquipmentSlots", "LeftHandRingFinger");
    if ( *a3 == (ItemInstance *)ItemInventory::GetEquippedItem((Character *)((char *)v16 + 892), v17) )
      goto LABEL_19;
    v18 = (PyDataConstants *)dword_99F758;
    v19 = (ItemInventory *)(*(_DWORD *)a1 + 892);
    v20 = "RightHandRingFinger";
    goto LABEL_17;
  }
  v15 = *a2 == (ItemInstance *)ItemInventory::GetEquippedItem(
                                 (ItemInventory *)(*(_DWORD *)a1 + 892),
                                 *(_DWORD *)(a1 + 4));
  v22 = *a3 == (ItemInstance *)ItemInventory::GetEquippedItem(
                                 (ItemInventory *)(*(_DWORD *)a1 + 892),
                                 *(_DWORD *)(a1 + 4));
LABEL_33:
  if ( v15 )
    return !v22
        || *a2 == (ItemInstance *)ItemInventory::GetEquippedItem(
                                    (ItemInventory *)(*(_DWORD *)a1 + 892),
                                    *(_DWORD *)(a1 + 4));
LABEL_20:
  if ( v22 )
    return v15;
  if ( IsEquippableBy == v32 )
  {
    v33 = *(Character **)a1;
    return SortByValueAndClass::operator()((int)&v33, (const char ***)a2, a3);
  }
  return IsEquippableBy;
}


// ===== 3fd9d0 II_Item_sortbyvalue(ItemInventory::Item const&,ItemInventory::Item const&) =====
unsigned int __fastcall II_Item_sortbyvalue(const char ***a1, const char ***a2)
{
  const char *v2; // r2
  const char *v3; // r3

  v2 = (*a1)[21];
  v3 = (*a2)[21];
  if ( v2 == v3 )
    return II_Item_sortbyname(a1, a2);
  else
    return (int)v2 > (int)v3;
}


// ===== 3fd9f8 II_Item_sortbybuyback(ItemInventory::Item const&,ItemInventory::Item const&) =====
unsigned int __fastcall II_Item_sortbybuyback(const char ***a1, const char ***a2)
{
  if ( *((unsigned __int8 *)*a1 + 105) == *((unsigned __int8 *)*a2 + 105) )
    return II_Item_sortbyvalue(a1, a2);
  else
    return *((unsigned __int8 *)*a2 + 105);
}


// ===== 3fda1c operator<(ItemInventory::Item const&,ItemInventory::Item const&) =====
// attributes: thunk
unsigned int __fastcall operator<(const char ***a1, const char ***a2)
{
  return II_Item_sortbyvalue(a1, a2);
}


// ===== 3fda20 ItemInventory::IsItemEquippedInSlot(uint,uint) =====
bool __fastcall ItemInventory::IsItemEquippedInSlot(ItemInventory *this, unsigned int a2, int a3)
{
  if ( a2 >= (*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
        616);
    }
  }
  return *(char *)(*(_DWORD *)(*((_DWORD *)this + 2) + 4 * a2) + ItemInventory::GetCurrentEquipSet(this, a3) + 4) == a3;
}


// ===== 3fdaf0 ItemInventory::IsItemEquipped(uint) =====
ItemInstance *__fastcall ItemInventory::IsItemEquipped(ItemInventory *this, unsigned int a2)
{
  int v3; // r2
  ItemInstance *result; // r0
  int v6; // r1

  v3 = *((_DWORD *)this + 2);
  if ( a2 >= (*((_DWORD *)this + 3) - v3) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
        588);
      v3 = *((_DWORD *)this + 2);
    }
  }
  result = **(ItemInstance ***)(v3 + 4 * a2);
  if ( result )
  {
    v6 = *(_DWORD *)(ItemInstance::GetItem(result) + 104);
    if ( (unsigned int)v6 >= 0xFFFFFFFC )
    {
      if ( v6 > -3 )
      {
        if ( v6 == -2 )
          v6 = 5;
      }
      else
      {
        v6 = 1;
      }
    }
    return (ItemInstance *)(*(char *)(*(_DWORD *)(*((_DWORD *)this + 2) + 4 * a2)
                                    + ItemInventory::GetCurrentEquipSet(this, v6)
                                    + 4) != -1);
  }
  return result;
}


// ===== 3fdbf8 ItemInventory::GetItem(uint) =====
int __fastcall ItemInventory::GetItem(ItemInventory *this, unsigned int a2)
{
  int v3; // r2

  v3 = *((_DWORD *)this + 2);
  if ( a2 < (*((_DWORD *)this + 3) - v3) >> 2 )
    return **(_DWORD **)(v3 + 4 * a2);
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return 0;
  }
  if ( gAssertLevel == 1
    && (fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "itemIdx < m_items.size()",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
          555),
        v3 = *((_DWORD *)this + 2),
        a2 < (*((_DWORD *)this + 3) - v3) >> 2) )
  {
    return **(_DWORD **)(v3 + 4 * a2);
  }
  else
  {
    return 0;
  }
}


// ===== 3fdcbc ItemInventory::IsItemEquippable(uint,uint) =====
bool __fastcall ItemInventory::IsItemEquippable(ItemInventory *this, unsigned int a2, unsigned int a3)
{
  ItemInstance **v6; // r5
  int v8; // r6
  int v9; // r8

  if ( a2 >= (*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
        634);
    }
  }
  if ( a3 >= (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2 )
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
        "slotIdx < m_equipmentSlots[0].size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
        635);
    }
  }
  v6 = *(ItemInstance ***)(*((_DWORD *)this + 2) + 4 * a2);
  if ( !*v6 || !ItemInstance::IsEquippable(*v6) )
    return 0;
  v8 = *(_DWORD *)(ItemInstance::GetItem(*v6) + 104);
  v9 = *((_DWORD *)this + 1);
  if ( *(_DWORD *)(ItemInstance::GetItem(*v6) + 88) == 5 || *(_DWORD *)(ItemInstance::GetItem(*v6) + 88) == 4 )
  {
LABEL_18:
    if ( v8 < 0 )
      goto LABEL_21;
    goto LABEL_19;
  }
  if ( v8 == 1 )
  {
    if ( *(_DWORD *)(v9 + 4896) )
      return a3 - 1 <= 1;
  }
  else
  {
    if ( v8 != -4 )
      goto LABEL_18;
    if ( !*(_DWORD *)(v9 + 4900) )
      return a3 == 1;
    v8 = 1;
  }
LABEL_19:
  if ( v8 < (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2 )
    return v8 == a3;
LABEL_21:
  if ( v8 == -3 )
    return a3 - 1 <= 1;
  if ( v8 != -2 )
  {
    if ( v8 != -4 )
      return 0;
    return a3 == 1;
  }
  return a3 - 5 <= 1;
}


// ===== 3fdeec ItemInventory::IsItemEquippable(uint) =====
bool __fastcall ItemInventory::IsItemEquippable(ItemInventory *this, unsigned int a2)
{
  int v3; // r2

  v3 = *((_DWORD *)this + 2);
  if ( a2 >= (*((_DWORD *)this + 3) - v3) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
        625);
      v3 = *((_DWORD *)this + 2);
    }
  }
  return ItemInstance::IsEquippable(**(ItemInstance ***)(v3 + 4 * a2));
}


// ===== 3fdfa0 ItemInventory::UpdateLocalizationForItems(void) =====
void __fastcall ItemInventory::UpdateLocalizationForItems(ItemInventory *this)
{
  int NumItems; // r5
  unsigned int v3; // r4
  ItemInstance *Item; // r0

  NumItems = ItemInventory::GetNumItems(this);
  if ( NumItems > 0 )
  {
    v3 = 0;
    do
    {
      Item = (ItemInstance *)ItemInventory::GetItem((int)this, v3++);
      ItemInstance::UpdateLocalization(Item);
    }
    while ( NumItems != v3 );
  }
}


// ===== 3fdfd8 ItemInventory::SetGold(int) =====
int __fastcall ItemInventory::SetGold(int this, int a2)
{
  int v3; // r5
  int v4; // r1
  int v5; // r3
  TrophyManager *v6; // r6
  int v7; // r0
  int v8; // r0
  int v9; // r1

  v3 = this;
  if ( a2 < 0 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      this = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "amount >= 0",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
               322);
    }
  }
  v4 = *(_DWORD *)(v3 + 40);
  v5 = *(_DWORD *)(v3 + 4);
  if ( a2 > v4 )
    *(_DWORD *)(v3 + 32) = v4;
  else
    *(_DWORD *)(v3 + 32) = a2;
  v6 = (TrophyManager *)TrophyManager::s_instance;
  if ( v5 )
  {
    this = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 40))(v5);
    if ( this )
    {
      this = PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, *(const Character **)(v3 + 4));
      if ( this )
      {
        if ( *(int *)(v3 + 32) > 9999 )
        {
          v7 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_10kgold");
          this = TrophyManager::UnlockTrophy(v6, v7);
          if ( *(int *)(v3 + 32) > 99999 )
          {
            v8 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_100kgold");
            this = TrophyManager::UnlockTrophy(v6, v8);
            if ( *(int *)(v3 + 32) > 999999 )
            {
              v9 = Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_1mgold");
              return TrophyManager::UnlockTrophy(v6, v9);
            }
          }
        }
      }
    }
  }
  return this;
}


// ===== 3fe164 ItemInventory::AddGold(int) =====
int __fastcall ItemInventory::AddGold(ItemInventory *this, int a2)
{
  int v2; // r3
  int v3; // r2

  if ( a2 < 0 )
  {
    v2 = *((_DWORD *)this + 8);
    if ( v2 >= -a2 )
      return ItemInventory::SetGold((int)this, v2 + a2);
    a2 = -v2;
  }
  else
  {
    v2 = *((_DWORD *)this + 8);
  }
  if ( a2 > 0 )
  {
    v3 = *((_DWORD *)this + 10) - v2;
    if ( a2 > v3 )
      a2 = v3 & ~(v3 >> 31);
  }
  return ItemInventory::SetGold((int)this, v2 + a2);
}


// ===== 3fe1a8 ItemInventory::TransferGoldTo(int,ItemInventory&) =====
int __fastcall ItemInventory::TransferGoldTo(ItemInventory *this, int a2, ItemInventory *a3)
{
  ItemInventory::AddGold(a3, a2);
  return ItemInventory::AddGold(this, -a2);
}


// ===== 3fe1cc ItemInventory::_HasItemInstanceLike(ItemInstance const*,uint &) =====
int __fastcall ItemInventory::_HasItemInstanceLike(ItemInventory *this, const ItemInstance *a2, unsigned int *a3)
{
  _DWORD ***v3; // r4
  _DWORD ***v4; // r3
  unsigned int i; // r7

  v3 = *((_DWORD ****)this + 2);
  v4 = *((_DWORD ****)this + 3);
  if ( v4 != v3 )
  {
    for ( i = 0; ; ++i )
    {
      if ( **v3 != (_DWORD *)a2 )
      {
        if ( ItemInstance::operator==(**v3, a2) && !ItemInventory::IsItemEquipped(this, i) )
        {
          *a3 = i;
          return 1;
        }
        v4 = *((_DWORD ****)this + 3);
      }
      if ( ++v3 == v4 )
        return 0;
    }
  }
  return 0;
}


// ===== 3fe254 `global constructor keyed to'.._.._sources_Game_Items_ItemInventory.cpp =====
int `global constructor keyed to'.._.._sources_Game_Items_ItemInventory.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A313C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3138 = 1056964608;
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


// ===== 3fe330 ItemInventory::IsInventoryFull(void) =====
bool __fastcall ItemInventory::IsInventoryFull(ItemInventory *this)
{
  int Switch; // r7
  std::string v4; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v4._M_finish = (char *)&v4;
  v4._M_start_of_storage._M_data = (char *)&v4;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block((int)&v4, 0x12u);
  v4._M_finish = (char *)memcpy(v4._M_start_of_storage._M_data, "InfiniteInventory", 0x11u) + 17;
  *v4._M_finish = 0;
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v4);
  if ( (std::string *)v4._M_start_of_storage._M_data != &v4 && v4._M_start_of_storage._M_data )
  {
    if ( (unsigned int)(v4._M_buffers._M_end_of_storage - v4._M_start_of_storage._M_data) > 0x80 )
      CustomFree(v4._M_start_of_storage._M_data);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(
        v4._M_start_of_storage._M_data,
        v4._M_buffers._M_end_of_storage - v4._M_start_of_storage._M_data);
  }
  return !Switch
      && !*((_BYTE *)this + 47)
      && (unsigned int)((*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2) > 0x63;
}


// ===== 3fe448 ItemInventory::RemoveItem(uint) =====
void *__fastcall ItemInventory::RemoveItem(ItemInventory *this, unsigned int a2)
{
  ItemInstance ***v2; // r6
  int v5; // r7
  int CurrentEquipSet; // r8
  ItemInstance **v7; // r5
  ItemInstance *v8; // r3
  void *result; // r0
  ItemInstance ***v10; // r3
  char *v11; // r1
  int v12; // r0
  int v13; // r1
  int v14; // r7
  ItemInstance **v15; // r8

  v2 = *((ItemInstance ****)this + 2);
  if ( a2 >= (*((_DWORD *)this + 3) - (int)v2) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
        269);
      v2 = *((ItemInstance ****)this + 2);
    }
  }
  if ( a2 )
    v2 += a2;
  v5 = *(_DWORD *)(ItemInstance::GetItem(**v2) + 104);
  if ( (unsigned int)v5 >= 0xFFFFFFFC )
  {
    if ( v5 > -3 )
    {
      if ( v5 == -2 )
        v5 = 5;
    }
    else
    {
      v5 = 1;
    }
  }
  CurrentEquipSet = ItemInventory::GetCurrentEquipSet(this, v5);
  if ( ItemInventory::IsItemEquipped(this, a2) )
    *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * CurrentEquipSet) + 4 * *((char *)*v2 + CurrentEquipSet + 4)) = 0;
  ItemInventory::SwapEquipmentSet((int)this);
  if ( ItemInventory::IsItemEquipped(this, a2) )
  {
    v12 = ItemInventory::GetCurrentEquipSet(this, v5);
    v13 = v5;
    v14 = *((_DWORD *)this + 5);
    v15 = *v2;
    *(_DWORD *)(*(_DWORD *)(v14 + 12 * v12) + 4 * *((char *)v15 + ItemInventory::GetCurrentEquipSet(this, v13) + 4)) = 0;
  }
  ItemInventory::SwapEquipmentSet((int)this);
  v7 = *v2;
  v8 = **v2;
  if ( v8 == *((ItemInstance **)this + 9) )
  {
    *((_DWORD *)this + 9) = 0;
    v7 = *v2;
    v8 = **v2;
  }
  if ( v8 )
  {
    (*(void (__fastcall **)(ItemInstance *))(*(_DWORD *)v8 + 4))(v8);
    *v7 = nullptr;
    v7 = *v2;
  }
  CustomFree(v7);
  v10 = *((ItemInstance ****)this + 3);
  v11 = (char *)(v2 + 1);
  if ( v2 + 1 != v10 )
  {
    result = memmove(v2, v11, (char *)v10 - v11);
    v11 = *((char **)this + 3);
  }
  *((_DWORD *)this + 3) = v11 - 4;
  return result;
}


// ===== 3fe658 ItemInventory::TryConsuming(int,int) =====
int __fastcall ItemInventory::TryConsuming(ItemInventory *this, int a2, int a3)
{
  ItemInstance *Item; // r0
  __int16 *v6; // r4
  int v7; // r1
  unsigned int ItemIndex; // r0

  Item = ItemInventory::FindItem(this, a2);
  v6 = (__int16 *)Item;
  if ( !Item )
    return 0;
  v7 = *((__int16 *)Item + 40);
  if ( a3 > v7 )
    return 0;
  ItemInstance::SetQty((int)Item, v7 - a3);
  if ( v6[40] <= 0 )
  {
    ItemIndex = ItemInventory::GetItemIndex(this, (const ItemInstance *)v6);
    ItemInventory::RemoveItem(this, ItemIndex);
  }
  return 1;
}


// ===== 3fe6bc ItemInventory::RemoveAllItems(bool) =====
ItemInventory *__fastcall ItemInventory::RemoveAllItems(ItemInventory *this, unsigned int a2)
{
  unsigned int v2; // r5
  int v4; // r2
  int i; // r0
  int v6; // r1
  unsigned int v7; // r3
  int **v8; // r5
  int *v9; // r6
  int v10; // r3
  int **v11; // r3
  ItemInventory *result; // r0

  v2 = a2;
  if ( a2 )
  {
    v4 = *((_DWORD *)this + 5);
    for ( i = 0; i != 24; i += 12 )
    {
      v6 = *(_DWORD *)(v4 + i);
      if ( (unsigned int)(*(_DWORD *)(v4 + i + 4) - v6) >> 2 )
      {
        v7 = 0;
        do
        {
          *(_DWORD *)(v6 + 4 * v7) = 0;
          v4 = *((_DWORD *)this + 5);
          ++v7;
          v6 = *(_DWORD *)(v4 + i);
        }
        while ( v7 < (*(_DWORD *)(v4 + i + 4) - v6) >> 2 );
      }
    }
    v8 = *((int ***)this + 2);
    if ( *((int ***)this + 3) != v8 )
    {
      do
      {
        v9 = *v8;
        v10 = **v8;
        if ( v10 )
        {
          (*(void (__fastcall **)(int))(*(_DWORD *)v10 + 4))(**v8);
          *v9 = 0;
          v9 = *v8;
        }
        CustomFree(v9);
        ++v8;
      }
      while ( v8 != *((int ***)this + 3) );
      v11 = *((int ***)this + 2);
      if ( v8 != v11 )
        *((_DWORD *)this + 3) = v11;
    }
    result = (ItemInventory *)ItemInventory::SetGold((int)this, 0);
  }
  else
  {
    while ( 1 )
    {
      result = this;
      if ( v2 >= (*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2 )
        break;
      if ( ItemInventory::IsItemEquipped(this, v2) )
        ++v2;
      else
        ItemInventory::RemoveItem(this, v2);
    }
  }
  *((_DWORD *)this + 9) = 0;
  return result;
}


// ===== 3fe7d8 ItemInventory::_DelItemInstance(ItemInstance *) =====
void __fastcall ItemInventory::_DelItemInstance(ItemInventory *this, ItemInstance *a2)
{
  ItemInstance ***v2; // r5
  ItemInstance ***v3; // r2
  ItemInstance **v5; // r0
  ItemInstance ***v6; // r3
  char *v7; // r1

  v2 = *((ItemInstance ****)this + 2);
  v3 = *((ItemInstance ****)this + 3);
  if ( *((ItemInstance **)this + 9) == a2 )
    *((_DWORD *)this + 9) = 0;
  if ( v2 != v3 )
  {
    while ( 1 )
    {
      v5 = *v2;
      if ( **v2 == a2 )
        break;
      if ( ++v2 == v3 )
        return;
    }
    if ( a2 )
    {
      (*(void (__fastcall **)(ItemInstance *))(*(_DWORD *)a2 + 4))(a2);
      v5 = *v2;
    }
    CustomFree(v5);
    v6 = *((ItemInstance ****)this + 3);
    v7 = (char *)(v2 + 1);
    if ( v2 + 1 != v6 )
    {
      memmove(v2, v7, (char *)v6 - v7);
      v7 = *((char **)this + 3);
    }
    *((_DWORD *)this + 3) = v7 - 4;
  }
}


// ===== 3fe878 ItemInventory::RemoveOnePotion(void) =====
void __fastcall ItemInventory::RemoveOnePotion(ItemInventory *this)
{
  __int16 *v1; // r1

  v1 = *((__int16 **)this + 9);
  if ( v1 )
  {
    if ( v1[40] <= 1 )
      ItemInventory::_DelItemInstance(this, (ItemInstance *)v1);
    else
      ItemInstance::AddQty(*((ItemInstance **)this + 9), -1);
  }
}


// ===== 3fe8a0 std::allocator<ItemInventory::Item>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ItemInventory::Item>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x15555555 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 12 * a2;
  if ( 12 * a2 > 0x80 )
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 3fe928 std::allocator<ItemInventory::ItemSlot *>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ItemInventory::ItemSlot *>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 3fe998 std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>::vector(std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>> const&) =====
_DWORD *__fastcall std::vector<ItemInventory::ItemSlot *>::vector(_DWORD *a1, int a2)
{
  unsigned int v4; // r1
  char *v5; // r0
  int v6; // r1
  size_t v7; // r2
  int v8; // r2
  char *v9; // r3
  size_t v11; // [sp+4h] [bp-8h] BYREF

  v4 = (*(_DWORD *)(a2 + 4) - *(_DWORD *)a2) >> 2;
  v11 = v4;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = (char *)std::allocator<ItemInventory::ItemSlot *>::_M_allocate((int)(a1 + 2), v4, &v11);
  v7 = v11;
  *a1 = v5;
  a1[1] = v5;
  a1[2] = &v5[4 * v7];
  v8 = *(_DWORD *)(a2 + 4);
  v9 = v5;
  if ( *(_DWORD *)a2 != v8 )
    v9 = (char *)memcpy(v5, *(const void **)a2, v8 - *(_DWORD *)a2) + v8 - v6;
  a1[1] = v9;
  return a1;
}


// ===== 3fea18 std::allocator<std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<std::vector<ItemInventory::ItemSlot *>>::_M_allocate(
        int a1,
        unsigned int a2,
        size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0x15555555 )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 12 * a2;
  if ( 12 * a2 > 0x80 )
    result = CustomAlloc(12 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n / 0xC;
  return result;
}


// ===== 3feaa0 std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>::~vector() =====
int __fastcall std::vector<ItemInventory::ItemSlot *>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 3feae0 std::vector<std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>,std::allocator<std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>>>::~vector() =====
void **__fastcall std::vector<std::vector<ItemInventory::ItemSlot *>>::~vector(void **a1)
{
  char *v1; // r4
  char *v2; // r5
  void *v4; // r3
  size_t v5; // r1
  _BYTE *v6; // r0
  size_t v7; // r1

  v1 = (char *)a1[1];
  v2 = (char *)*a1;
  if ( v1 != *a1 )
  {
    while ( 1 )
    {
      v4 = *((void **)v1 - 3);
      if ( !v4 )
        goto LABEL_4;
      v5 = (*((_DWORD *)v1 - 1) - (_DWORD)v4) & 0xFFFFFFFC;
      if ( v5 <= 0x80 )
      {
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v4, v5);
LABEL_4:
        v1 -= 12;
        if ( v2 == v1 )
          break;
      }
      else
      {
        v1 -= 12;
        CustomFree(v4);
        if ( v2 == v1 )
          break;
      }
    }
  }
  v6 = *a1;
  if ( !*a1 )
    return a1;
  v7 = 4 * (((_BYTE *)a1[2] - v6) >> 2);
  if ( v7 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v6, v7);
    return a1;
  }
  CustomFree(v6);
  return a1;
}


// ===== 3feb94 std::vector<ItemInventory::Item,std::allocator<ItemInventory::Item>>::_M_insert_overflow_aux(ItemInventory::Item*,ItemInventory::Item const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<ItemInventory::Item>::_M_insert_overflow_aux(void **a1, int a2, _DWORD *a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  _DWORD *v8; // r0
  char *v9; // r12
  _DWORD *v10; // r7
  int v11; // r5
  _DWORD *v12; // r3
  int v13; // r0
  int v14; // r3
  _DWORD *v15; // r2
  int v16; // r1
  _DWORD *v17; // r5
  _BYTE *v18; // r0
  _BYTE *v19; // r3
  size_t v20; // r1
  size_t v21; // r3
  size_t v22; // [sp+4h] [bp-4h] BYREF

  v6 = -1431655765 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x15555555 || v6 > v7 )
    v7 = 357913941;
  v22 = v7;
  v8 = std::allocator<ItemInventory::Item>::_M_allocate((int)(a1 + 2), v7, &v22);
  v9 = (char *)*a1;
  v10 = v8;
  v11 = -1431655765 * ((a2 - (int)*a1) >> 2);
  if ( v11 > 0 )
  {
    v13 = v11;
    v14 = 0;
    do
    {
      v10[v14] = *(_DWORD *)&v9[v14 * 4];
      v10[v14 + 1] = *(_DWORD *)&v9[v14 * 4 + 4];
      v15 = &v10[v14 + 2];
      v16 = *(_DWORD *)&v9[v14 * 4 + 8];
      --v13;
      v14 += 3;
      *v15 = v16;
    }
    while ( v13 );
    v12 = &v10[3 * v11];
  }
  else
  {
    v12 = v8;
  }
  v17 = v12 + 3;
  *v12 = *a3;
  v12[1] = a3[1];
  v12[2] = a3[2];
  v18 = *a1;
  v19 = a1[1];
  if ( v19 != *a1 )
    v19 += -12 * ((715827883 * ((unsigned int)(v19 - 12 - v18) >> 2)) & 0x3FFFFFFF) - 12;
  if ( v19 )
  {
    v20 = 4 * (((_BYTE *)a1[2] - v19) >> 2);
    if ( v20 > 0x80 )
      CustomFree(v18);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v18, v20);
  }
  v21 = v22;
  *a1 = v10;
  a1[1] = v17;
  a1[2] = &v10[3 * v21];
}


// ===== 3fed48 ItemInventory::GetItemListForSlot(uint,std::vector<ItemInventory::Item,std::allocator<ItemInventory::Item>> *) =====
int __fastcall ItemInventory::GetItemListForSlot(ItemInventory *this, unsigned int a2, int a3)
{
  int **v6; // r4
  int **v7; // r10
  int v8; // r8
  unsigned int i; // r5
  char v10; // r2
  char v11; // r3
  _DWORD *v12; // r1
  int v14; // [sp+Ch] [bp-10h] BYREF
  int v15; // [sp+10h] [bp-Ch]
  unsigned int v16; // [sp+14h] [bp-8h]

  if ( a3 && *(_DWORD *)a3 != *(_DWORD *)(a3 + 4) )
    *(_DWORD *)(a3 + 4) = *(_DWORD *)a3;
  v6 = *((int ***)this + 2);
  v7 = *((int ***)this + 3);
  if ( v6 == v7 )
    return 0;
  v8 = 0;
  for ( i = 0; ; ++i )
  {
    if ( ItemInventory::IsItemEquippable(this, i, a2) )
    {
      ++v8;
      if ( a3 )
      {
        v10 = *((_BYTE *)*v6 + 4);
        v11 = *((_BYTE *)*v6 + 5);
        v14 = **v6;
        LOBYTE(v15) = v10;
        BYTE1(v15) = v11;
        v16 = i;
        v12 = *(_DWORD **)(a3 + 4);
        if ( v12 == *(_DWORD **)(a3 + 8) )
        {
          std::vector<ItemInventory::Item>::_M_insert_overflow_aux((void **)a3, (int)v12, &v14);
        }
        else
        {
          *v12 = v14;
          v12[1] = v15;
          v12[2] = v16;
          *(_DWORD *)(a3 + 4) += 12;
        }
      }
    }
    if ( ++v6 == v7 )
      break;
  }
  return v8;
}


// ===== 3fee50 ItemInventory::GetValuableItems(std::vector<ItemInventory::Item,std::allocator<ItemInventory::Item>> *) =====
int __fastcall ItemInventory::GetValuableItems(int a1, int a2)
{
  ItemInstance ***v3; // r7
  ItemInstance ***v4; // r4
  int v5; // r8
  ItemInstance *i; // r5
  char v7; // r2
  char v8; // r3
  ItemInstance **v9; // r1
  ItemInstance *v11; // [sp+4h] [bp-10h] BYREF
  ItemInstance *v12; // [sp+8h] [bp-Ch]
  ItemInstance *v13; // [sp+Ch] [bp-8h]

  if ( a2 && *(_DWORD *)a2 != *(_DWORD *)(a2 + 4) )
    *(_DWORD *)(a2 + 4) = *(_DWORD *)a2;
  v3 = *(ItemInstance ****)(a1 + 12);
  v4 = *(ItemInstance ****)(a1 + 8);
  if ( v4 != v3 )
  {
    v5 = 0;
    for ( i = nullptr; ; i = (ItemInstance *)((char *)i + 1) )
    {
      if ( *(_DWORD *)(ItemInstance::GetItem(**v4) + 104) != -1 )
        goto LABEL_7;
      ++v5;
      if ( !a2 )
        goto LABEL_7;
      v7 = *((_BYTE *)*v4 + 4);
      v8 = *((_BYTE *)*v4 + 5);
      v11 = **v4;
      LOBYTE(v12) = v7;
      BYTE1(v12) = v8;
      v13 = i;
      v9 = *(ItemInstance ***)(a2 + 4);
      if ( v9 == *(ItemInstance ***)(a2 + 8) )
        break;
      ++v4;
      *v9 = v11;
      v9[1] = v12;
      v9[2] = v13;
      *(_DWORD *)(a2 + 4) += 12;
      if ( v4 == v3 )
        return v5;
LABEL_8:
      ;
    }
    std::vector<ItemInventory::Item>::_M_insert_overflow_aux((void **)a2, (int)v9, &v11);
LABEL_7:
    if ( ++v4 == v3 )
      return v5;
    goto LABEL_8;
  }
  return 0;
}


// ===== 3fef4c std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>::_M_insert_overflow(ItemInventory::ItemSlot **,ItemInventory::ItemSlot * const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<ItemInventory::ItemSlot *>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<ItemInventory::ItemSlot *>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 3ff014 std::vector<std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>,std::allocator<std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>>>::_M_insert_overflow_aux(std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>*,std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>> const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<std::vector<ItemInventory::ItemSlot *>>::_M_insert_overflow_aux(void **a1, int a2, int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  _DWORD *v8; // r0
  _DWORD *v9; // r7
  int v10; // r5
  _DWORD *v11; // r5
  int v12; // r3
  int v13; // r0
  _DWORD *v14; // r2
  void *v15; // r0
  _DWORD *v16; // r5
  size_t v17; // r3
  size_t v18; // [sp+4h] [bp-8h] BYREF

  v6 = -1431655765 * (((_BYTE *)a1[1] - (_BYTE *)*a1) >> 2);
  if ( v6 )
    v7 = 2 * v6;
  else
    v7 = 1;
  if ( v7 > 0x15555555 || v6 > v7 )
    v7 = 357913941;
  v18 = v7;
  v8 = std::allocator<std::vector<ItemInventory::ItemSlot *>>::_M_allocate((int)(a1 + 2), v7, &v18);
  v9 = v8;
  v10 = -1431655765 * ((a2 - (int)*a1) >> 2);
  if ( v10 > 0 )
  {
    v12 = (int)*a1 + 12;
    v13 = v10;
    v14 = v9;
    do
    {
      --v13;
      *v14 = *(_DWORD *)(v12 - 12);
      v14[1] = *(_DWORD *)(v12 - 8);
      v14[2] = *(_DWORD *)(v12 - 4);
      *(_DWORD *)(v12 - 12) = 0;
      *(_DWORD *)(v12 - 4) = 0;
      *(_DWORD *)(v12 - 8) = 0;
      v14 += 3;
      v12 += 12;
    }
    while ( v13 );
    v11 = &v9[3 * v10];
  }
  else
  {
    v11 = v8;
  }
  std::vector<ItemInventory::ItemSlot *>::vector(v11, a3);
  v15 = *a1;
  v16 = v11 + 3;
  if ( *a1 )
  {
    if ( (unsigned int)(4 * (((_BYTE *)a1[2] - (_BYTE *)v15) >> 2)) > 0x80 )
      CustomFree(v15);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v15, 4 * (((_BYTE *)a1[2] - (_BYTE *)v15) >> 2));
  }
  v17 = v18;
  *a1 = v9;
  a1[1] = v16;
  a1[2] = &v9[3 * v17];
}


// ===== 3ff178 std::vector<std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>,std::allocator<std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>>>>::push_back(std::vector<ItemInventory::ItemSlot *,std::allocator<ItemInventory::ItemSlot *>> const&) =====
void __fastcall std::vector<std::vector<ItemInventory::ItemSlot *>>::push_back(int a1, unsigned int a2)
{
  unsigned int v2; // r6
  _DWORD v4[3]; // [sp+4h] [bp-Ch] BYREF

  v2 = *(_DWORD *)(a1 + 4);
  if ( v2 == *(_DWORD *)(a1 + 8) )
  {
    if ( a2 < *(_DWORD *)a1 || v2 <= a2 )
    {
      std::vector<std::vector<ItemInventory::ItemSlot *>>::_M_insert_overflow_aux((void **)a1, *(_DWORD *)(a1 + 4), a2);
    }
    else
    {
      std::vector<ItemInventory::ItemSlot *>::vector(v4, a2);
      std::vector<std::vector<ItemInventory::ItemSlot *>>::_M_insert_overflow_aux((void **)a1, v2, (int)v4);
      std::vector<ItemInventory::ItemSlot *>::~vector((int)v4);
    }
  }
  else
  {
    std::vector<ItemInventory::ItemSlot *>::vector(*(_DWORD **)(a1 + 4), a2);
    *(_DWORD *)(a1 + 4) += 12;
  }
}


// ===== 3ff200 ItemInventory::ItemInventory(void) =====
void __fastcall ItemInventory::ItemInventory(ItemInventory *this)
{
  char *v2; // r0
  int v3; // r7
  size_t v4; // r1
  int i; // r4
  int v6; // r0
  int v7; // r0
  _DWORD *v8; // r1
  void *__p[2]; // [sp+0h] [bp-10h] BYREF
  int v10; // [sp+8h] [bp-8h]
  int v11; // [sp+Ch] [bp-4h]

  *(_DWORD *)this = off_967768;
  v2 = (char *)this + 48;
  *((_DWORD *)this + 10) = 0x7FFFFFFF;
  v3 = 0;
  *((_BYTE *)this + 44) = -1;
  *((_DWORD *)this + 13) = v2;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 45) = 0;
  *((_BYTE *)this + 46) = 0;
  *((_BYTE *)this + 47) = 0;
  *((_DWORD *)this + 12) = v2;
  do
  {
    __p[0] = nullptr;
    __p[1] = nullptr;
    v10 = 0;
    std::vector<std::vector<ItemInventory::ItemSlot *>>::push_back((char *)this + 20, __p);
    if ( __p[0] )
    {
      v4 = (v10 - (unsigned int)__p[0]) & 0xFFFFFFFC;
      if ( v4 > 0x80 )
        CustomFree(__p[0]);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p[0], v4);
    }
    for ( i = 0; i != 9; ++i )
    {
      v6 = *((_DWORD *)this + 5);
      v11 = 0;
      v7 = v6 + v3;
      v8 = *(_DWORD **)(v7 + 4);
      if ( v8 == *(_DWORD **)(v7 + 8) )
      {
        std::vector<ItemInventory::ItemSlot *>::_M_insert_overflow();
      }
      else
      {
        *v8 = 0;
        *(_DWORD *)(v7 + 4) += 4;
      }
    }
    v3 += 12;
  }
  while ( v3 != 24 );
}


// ===== 3ff330 ItemInventory::ItemInventory(void) =====
void __fastcall ItemInventory::ItemInventory(ItemInventory *this)
{
  char *v2; // r0
  int v3; // r7
  size_t v4; // r1
  int i; // r4
  int v6; // r0
  int v7; // r0
  _DWORD *v8; // r1
  void *__p[2]; // [sp+0h] [bp-10h] BYREF
  int v10; // [sp+8h] [bp-8h]
  int v11; // [sp+Ch] [bp-4h] BYREF

  *(_DWORD *)this = off_967768;
  v2 = (char *)this + 48;
  *((_DWORD *)this + 10) = 0x7FFFFFFF;
  v3 = 0;
  *((_BYTE *)this + 44) = -1;
  *((_DWORD *)this + 13) = v2;
  *((_DWORD *)this + 1) = 0;
  *((_DWORD *)this + 2) = 0;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 4) = 0;
  *((_DWORD *)this + 5) = 0;
  *((_DWORD *)this + 6) = 0;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 8) = 0;
  *((_DWORD *)this + 9) = 0;
  *((_BYTE *)this + 45) = 0;
  *((_BYTE *)this + 46) = 0;
  *((_BYTE *)this + 47) = 0;
  *((_DWORD *)this + 12) = v2;
  do
  {
    __p[0] = nullptr;
    __p[1] = nullptr;
    v10 = 0;
    std::vector<std::vector<ItemInventory::ItemSlot *>>::push_back((int)this + 20, (unsigned int)__p);
    if ( __p[0] )
    {
      v4 = (v10 - (unsigned int)__p[0]) & 0xFFFFFFFC;
      if ( v4 > 0x80 )
        CustomFree(__p[0]);
      else
        __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(__p[0], v4);
    }
    for ( i = 0; i != 9; ++i )
    {
      v6 = *((_DWORD *)this + 5);
      v11 = 0;
      v7 = v6 + v3;
      v8 = *(_DWORD **)(v7 + 4);
      if ( v8 == *(_DWORD **)(v7 + 8) )
      {
        std::vector<ItemInventory::ItemSlot *>::_M_insert_overflow(v7, (int)v8, &v11);
      }
      else
      {
        *v8 = 0;
        *(_DWORD *)(v7 + 4) += 4;
      }
    }
    v3 += 12;
  }
  while ( v3 != 24 );
}


// ===== 3ff460 ItemInventory::~ItemInventory() =====
void __fastcall ItemInventory::~ItemInventory(void **this)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4
  _BYTE *v5; // r0
  size_t v6; // r1

  *this = off_967768;
  v2 = (char *)(this + 12);
  ItemInventory::RemoveAllItems((ItemInventory *)this, 1u);
  v3 = (char *)*(this + 12);
  if ( v3 != v2 )
  {
    while ( 1 )
    {
      v4 = *(char **)v3;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x10u);
      if ( v4 == v2 )
        break;
      v3 = v4;
    }
    v3 = v2;
  }
  *(this + 12) = v3;
  *((_DWORD *)v2 + 1) = v3;
  std::vector<std::vector<ItemInventory::ItemSlot *>>::~vector(this + 5);
  v5 = *(this + 2);
  if ( v5 )
  {
    v6 = ((_BYTE *)*(this + 4) - v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
}


// ===== 3ff50c ItemInventory::~ItemInventory() =====
void __fastcall ItemInventory::~ItemInventory(void **this)
{
  ItemInventory::~ItemInventory(this);
  CustomFree(this);
}


// ===== 3ff528 ItemInventory::~ItemInventory() =====
void __fastcall ItemInventory::~ItemInventory(void **this)
{
  char *v2; // r5
  char *v3; // r0
  char *v4; // r4
  _BYTE *v5; // r0
  size_t v6; // r1

  *this = off_967768;
  v2 = (char *)(this + 12);
  ItemInventory::RemoveAllItems((ItemInventory *)this, 1u);
  v3 = (char *)*(this + 12);
  if ( v3 != v2 )
  {
    while ( 1 )
    {
      v4 = *(char **)v3;
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, 0x10u);
      if ( v4 == v2 )
        break;
      v3 = v4;
    }
    v3 = v2;
  }
  *(this + 12) = v3;
  *((_DWORD *)v2 + 1) = v3;
  std::vector<std::vector<ItemInventory::ItemSlot *>>::~vector(this + 5);
  v5 = *(this + 2);
  if ( v5 )
  {
    v6 = ((_BYTE *)*(this + 4) - v5) & 0xFFFFFFFC;
    if ( v6 > 0x80 )
      CustomFree(v5);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v5, v6);
  }
}


// ===== 3ff5d4 ItemInventory::_AddItemInstance(ItemInstance *,bool,bool) =====
int __fastcall ItemInventory::_AddItemInstance(ItemInventory *this, ItemInstance *a2, unsigned int a3, int a4)
{
  ItemInstance ***v8; // r7
  ItemInstance ***v9; // r2
  ItemInstance **v10; // r10
  int v11; // r0
  int *v12; // r1
  int *v13; // r3
  TrophyManager *v14; // r5
  int v16; // r6
  ItemInstance *v17; // r0
  int v18; // r1
  TrophyManager *v19; // r0
  int v20; // r1
  int v21; // [sp+4h] [bp-8h] BYREF

  if ( !*((_BYTE *)this + 44) && *(_DWORD *)(ItemInstance::GetItem(a2) + 88) == 14 )
  {
    if ( a2 )
    {
      (*(void (__fastcall **)(ItemInstance *))(*(_DWORD *)a2 + 4))(a2);
      return -1;
    }
    return -1;
  }
  if ( *((_DWORD *)this + 9) || *(_DWORD *)(ItemInstance::GetItem(a2) + 88) != 14 )
  {
    if ( a4 && *(_DWORD *)(ItemInstance::GetItem(a2) + 88) == 13 )
    {
      ItemInventory::AddGold(this, *((_DWORD *)a2 + 21));
      (*(void (__fastcall **)(ItemInstance *))(*(_DWORD *)a2 + 4))(a2);
      return -1;
    }
  }
  else
  {
    *((_DWORD *)this + 9) = a2;
  }
  if ( ItemInstance::IsStackable(a2) )
  {
    if ( !a3 )
    {
      v8 = *((ItemInstance ****)this + 2);
      v9 = *((ItemInstance ****)this + 3);
      if ( v8 != v9 )
      {
        while ( 1 )
        {
          v10 = *v8;
          if ( **v8 )
          {
            if ( !ItemInventory::IsItemEquipped(this, a3) && ItemInstance::operator==(*v10, a2) )
            {
              v16 = *((__int16 *)a2 + 40);
              if ( *(_DWORD *)(ItemInstance::GetItem(a2) + 88) == 14 )
              {
                v17 = *v10;
                v20 = *((char *)this + 44) - *((__int16 *)*v10 + 40);
                if ( v20 < v16 )
                  v18 = v20 & ~(v20 >> 31);
                else
                  v18 = v16;
              }
              else
              {
                v17 = *v10;
                v18 = v16;
              }
              ItemInstance::AddQty(v17, v18);
              (*(void (__fastcall **)(ItemInstance *))(*(_DWORD *)a2 + 4))(a2);
              return a3;
            }
            v9 = *((ItemInstance ****)this + 3);
          }
          if ( ++v8 == v9 )
            break;
          ++a3;
        }
      }
    }
  }
  v11 = operator new(8u, 0);
  *(_DWORD *)v11 = a2;
  *(_BYTE *)(v11 + 5) = -1;
  *(_BYTE *)(v11 + 4) = -1;
  v12 = *((int **)this + 3);
  v13 = *((int **)this + 4);
  v21 = v11;
  if ( v12 == v13 )
  {
    std::vector<ItemInventory::ItemSlot *>::_M_insert_overflow((int)this + 8, (int)v12, &v21);
  }
  else
  {
    *v12 = v11;
    *((_DWORD *)this + 3) += 4;
  }
  v14 = (TrophyManager *)TrophyManager::s_instance;
  if ( ItemInventory::IsInventoryFull(this)
    && (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 40))(*((_DWORD *)this + 1))
    && PlayerManager::IsLocalPlayer((PlayerManager *)dword_99F76C, *((const Character **)this + 1)) )
  {
    v19 = (TrophyManager *)Arrays::GetMemberIDByString<Arrays::TrophyTable>("full_inventory");
    TrophyManager::UnlockTrophy(v14, v19);
  }
  return ((*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2) - 1;
}


// ===== 3ff858 ItemInventory::TransferItemTo(uint,ItemInventory&,int,bool,bool) =====
int __fastcall ItemInventory::TransferItemTo(
        ItemInventory *this,
        unsigned int a2,
        ItemInventory *a3,
        int a4,
        bool a5,
        bool a6)
{
  void **v10; // r5
  __int16 *v11; // r0
  int v12; // r6
  int v13; // r7
  ItemInstance *v15; // r1
  __int16 **v16; // r3
  int v17; // r1
  int v18; // r1
  ItemInstance *v19; // r1
  char *v20; // r6
  void **v21; // r3

  if ( a2 >= (*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp",
        426);
    }
  }
  if ( a4 <= 0 )
    return -1;
  v10 = *((void ***)this + 2);
  if ( a2 )
    v10 += a2;
  v11 = *(__int16 **)*v10;
  v12 = v11[40];
  if ( v12 < a4 )
  {
    if ( !v11[40] )
      return 0;
    ItemInstance::GetItem((ItemInstance *)v11);
LABEL_16:
    v16 = (__int16 **)*v10;
    v17 = *((char *)*v10 + 4);
    if ( v17 != -1 )
    {
      (*(void (__fastcall **)(ItemInventory *, int, _DWORD))(*(_DWORD *)this + 32))(this, v17, 0);
      v16 = (__int16 **)*v10;
    }
    v18 = *((char *)v16 + 5);
    if ( v18 != -1 )
    {
      (*(void (__fastcall **)(ItemInventory *, int, int))(*(_DWORD *)this + 32))(this, v18, 1);
      v16 = (__int16 **)*v10;
    }
    v19 = (ItemInstance *)*v16;
    if ( *v16 == *((__int16 **)this + 9) )
    {
      *((_DWORD *)this + 9) = 0;
      v19 = *(ItemInstance **)*v10;
    }
    v13 = ItemInventory::_AddItemInstance(a3, v19, a5, a6);
    v20 = (char *)(v10 + 1);
    CustomFree(*v10);
    v21 = *((void ***)this + 3);
    if ( v10 + 1 != v21 )
    {
      memmove(v10, v20, (char *)v21 - v20);
      v20 = *((char **)this + 3);
    }
    *((_DWORD *)this + 3) = v20 - 4;
    return v13;
  }
  ItemInstance::GetItem((ItemInstance *)v11);
  if ( v12 == a4 )
    goto LABEL_16;
  v15 = ItemInstance::Split(*(ItemInstance **)*v10, a4);
  return ItemInventory::_AddItemInstance(a3, v15, a5, a6);
}


// ===== 3ffa44 ItemInventory::TransferItemTo(uint,ItemInventory&,bool,bool) =====
int __fastcall ItemInventory::TransferItemTo(ItemInventory *this, unsigned int a2, ItemInventory *a3, bool a4, bool a5)
{
  return ItemInventory::TransferItemTo(this, a2, a3, 0x7FFFFFFF, a4, a5);
}


// ===== 3ffa68 ItemInventory::TransferInventoryTo(ItemInventory&,bool,bool) =====
int __fastcall ItemInventory::TransferInventoryTo(ItemInventory *this, ItemInventory *a2, unsigned int a3, int a4)
{
  int v5; // r4
  int v9; // r4
  char *v10; // r5
  int ItemId; // r0
  int v12; // r3
  int v13; // r10
  char *v14; // r3
  int CurrentLevel; // r3
  int v16; // r3
  int v17; // r2
  int v18; // r2
  int v20; // [sp+0h] [bp-44h]
  EventManager *v21; // [sp+4h] [bp-40h]
  _DWORD v22[4]; // [sp+24h] [bp-20h] BYREF
  char v23; // [sp+34h] [bp-10h]
  char v24; // [sp+35h] [bp-Fh]
  int v25; // [sp+38h] [bp-Ch]
  int v26; // [sp+3Ch] [bp-8h]

  v5 = *((_DWORD *)this + 2);
  if ( *((_DWORD *)this + 3) != v5 )
  {
    v9 = v5 + 4;
    v10 = (char *)a2 + 48;
    do
    {
      ItemInventory::_AddItemInstance(a2, **(ItemInstance ***)(v9 - 4), a3, a4);
      ItemId = ItemInstance::GetItemId(**(ItemInstance ***)(v9 - 4));
      v12 = *((_DWORD *)a2 + 1);
      v13 = ItemId;
      if ( v12 && (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v12 + 40))(*((_DWORD *)a2 + 1)) )
      {
        v14 = *((char **)a2 + 12);
        if ( v14 != v10 )
        {
          while ( v13 != *((_DWORD *)v14 + 2) )
          {
            v14 = *(char **)v14;
            if ( v10 == v14 )
            {
              v14 = (char *)a2 + 48;
              break;
            }
          }
        }
        if ( v10 != v14 )
        {
          CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
          if ( CurrentLevel )
          {
            v21 = (EventManager *)CurrentLevel;
            v20 = *((_DWORD *)a2 + 1);
            v22[1] = PyDataConstants::getConstant((PyDataConstants *)dword_99F758, "v2QuestObjectiveType", "GatherLoot");
            v22[0] = off_9699A0;
            v24 = 0;
            v23 = 0;
            v22[2] = v20;
            v26 = v13;
            v22[3] = -1;
            v25 = -1;
            EventManager::RaiseAsync(v21, (const IEvent *)v22);
            v22[0] = off_95B458;
          }
        }
      }
      CustomFree(*(void **)(v9 - 4));
      v16 = *((_DWORD *)this + 3);
      v17 = v9;
      v9 += 4;
    }
    while ( v16 != v17 );
    v18 = *((_DWORD *)this + 2);
    if ( v16 != v18 )
      *((_DWORD *)this + 3) = v18;
  }
  return ItemInventory::TransferGoldTo(this, *((_DWORD *)this + 8), a2);
}


// ===== 3ffc40 ItemInventory::SetPotionQty(int) =====
int __fastcall ItemInventory::SetPotionQty(ItemInventory *this, unsigned int a2)
{
  int v2; // r5
  int v6; // r7
  int v7; // r8
  int v8; // r7
  ItemInstance *v9; // r5

  v2 = *((_DWORD *)this + 9);
  if ( v2 )
  {
    if ( a2 )
      return ItemInstance::SetQty(*((ItemInstance **)this + 9), a2);
    else
      return ItemInventory::_DelItemInstance(this, *((ItemInstance **)this + 9));
  }
  else
  {
    v6 = Arrays::ItemTable::size;
    if ( Arrays::ItemTable::size )
    {
      v7 = Arrays::ItemTable::m_memberNames;
      while ( LC_API_STRCMP_0("Potion0", *(const char **)(v7 + 4 * v2)) )
      {
        if ( ++v2 == v6 )
          goto LABEL_11;
      }
      v8 = v2;
    }
    else
    {
LABEL_11:
      v8 = -1;
    }
    v9 = (ItemInstance *)operator new(108, 0);
    ItemInstance::ItemInstance(v9, v8, a2);
    return ItemInventory::_AddItemInstance(this, v9, 1, 0);
  }
}


// ===== 3ffd1c ItemInventory::AddItemInstance(ItemInstance *,bool,bool) =====
// attributes: thunk
int __fastcall ItemInventory::AddItemInstance(ItemInventory *this, ItemInstance *a2, unsigned int a3, int a4)
{
  return ItemInventory::_AddItemInstance(this, a2, a3, a4);
}


// ===== 3ffd20 ItemInventory::GetNumEquipmentSlots(void) =====
int __fastcall ItemInventory::GetNumEquipmentSlots(ItemInventory *this)
{
  return (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2;
}


// ===== 3ffd38 ItemInventory::CanMeleeAttack(void) =====
int __fastcall ItemInventory::CanMeleeAttack(ItemInventory *this)
{
  return (*(unsigned __int8 (__fastcall **)(ItemInventory *))(*(_DWORD *)this + 8))(this) ^ 1;
}


// ===== 3ffd54 ItemInventory::GetModularCategoryName(uint) =====
const char *__fastcall ItemInventory::GetModularCategoryName(ItemInventory *this, unsigned int a2)
{
  const char *result; // r0

  switch ( a2 )
  {
    case 0u:
      result = "MC_Torso";
      break;
    case 1u:
      result = "MC_RWeapon";
      break;
    case 2u:
      result = "MC_LWeapon";
      break;
    case 3u:
      result = "MC_Feet";
      break;
    case 4u:
      result = "MC_Hands";
      break;
    case 8u:
      result = "MC_Head";
      break;
    default:
      result = nullptr;
      break;
  }
  return result;
}


// ===== 3ffdec ItemInventory::GetEquippedItem(uint) =====
int __fastcall ItemInventory::GetEquippedItem(ItemInventory *this, unsigned int a2)
{
  int v3; // r3

  if ( a2 < (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2
    && (v3 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, a2)) + 4 * a2)) != 0 )
  {
    return *(_DWORD *)v3;
  }
  else
  {
    return 0;
  }
}


// ===== 3ffe3c ItemInventory::GetEquippedItem(uint) =====
int __fastcall ItemInventory::GetEquippedItem(ItemInventory *this, unsigned int a2)
{
  int v3; // r3

  if ( a2 < (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2
    && (v3 = *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, a2)) + 4 * a2)) != 0 )
  {
    return *(_DWORD *)v3;
  }
  else
  {
    return 0;
  }
}


// ===== 3ffe8c ItemInventory::HasMainHandWeapon(void) =====
bool __fastcall ItemInventory::HasMainHandWeapon(ItemInventory *this)
{
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, 1)) + 4) != 0;
}


// ===== 3ffebc ItemInventory::CanRangeAttack(int &,int &,int &) =====
int __fastcall ItemInventory::CanRangeAttack(ItemInventory *this, int *a2, int *a3, int *a4)
{
  int result; // r0
  int CurrentEquipSet; // r0
  int Item; // r0
  int v11; // r2
  int v12; // r3

  result = (*(int (__fastcall **)(ItemInventory *))(*(_DWORD *)this + 8))(this);
  if ( result )
  {
    CurrentEquipSet = ItemInventory::GetCurrentEquipSet(this, 1);
    Item = ItemInstance::GetItem(**(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * CurrentEquipSet) + 4));
    v11 = *(_DWORD *)(Item + 152);
    v12 = Item;
    *a2 = v11;
    *a3 = *(_DWORD *)(v12 + 156);
    *a4 = *(_DWORD *)(v12 + 160);
    return 1;
  }
  return result;
}


// ===== 3fff30 ItemInventory::CanMeleeAttack(int &) =====
int __fastcall ItemInventory::CanMeleeAttack(ItemInventory *this, int *a2)
{
  ItemInstance **v5; // r3

  if ( (*(int (__fastcall **)(ItemInventory *))(*(_DWORD *)this + 8))(this) )
    return 0;
  v5 = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, 1)) + 4);
  if ( v5 )
    *a2 = *(_DWORD *)(ItemInstance::GetItem(*v5) + 156);
  else
    *a2 = 0;
  return 1;
}


// ===== 3fffa4 ItemInventory::HasRangedWeapon(void) =====
ItemInstance **__fastcall ItemInventory::HasRangedWeapon(ItemInventory *this)
{
  int v2; // r5
  ItemInstance **result; // r0

  v2 = 12 * ItemInventory::GetCurrentEquipSet(this, 1);
  result = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + v2) + 4);
  if ( result )
    return (ItemInstance **)(*(_DWORD *)(ItemInstance::GetItem(*result) + 88) == 4
                          || *(_DWORD *)(ItemInstance::GetItem(**(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5)
                                                                                              + v2)
                                                                                  + 4))
                                       + 88) == 5);
  return result;
}


// ===== 400014 ItemInventory::CanRangeAttack(void) =====
// attributes: thunk
ItemInstance **__fastcall ItemInventory::CanRangeAttack(ItemInventory *this)
{
  return ItemInventory::HasRangedWeapon(this);
}


// ===== 400018 ItemInventory::HasAxeOrMace(void) =====
ItemInstance **__fastcall ItemInventory::HasAxeOrMace(ItemInventory *this)
{
  int v2; // r5
  ItemInstance **result; // r0

  v2 = 12 * ItemInventory::GetCurrentEquipSet(this, 1);
  result = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + v2) + 4);
  if ( result )
  {
    result = *(ItemInstance ***)(ItemInstance::GetItem(*result) + 148);
    if ( result != (ItemInstance **)((char *)&dword_0 + 1) )
      return (ItemInstance **)(*(_DWORD *)(ItemInstance::GetItem(**(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5)
                                                                                                + v2)
                                                                                    + 4))
                                         + 148) == 2);
  }
  return result;
}


// ===== 400080 ItemInventory::HasBow(void) =====
ItemInstance **__fastcall ItemInventory::HasBow(ItemInventory *this)
{
  ItemInstance **result; // r0

  result = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, 1)) + 4);
  if ( result )
    return (ItemInstance **)(*(_DWORD *)(ItemInstance::GetItem(*result) + 148) == 4);
  return result;
}


// ===== 4000c8 ItemInventory::HasStaff(void) =====
ItemInstance **__fastcall ItemInventory::HasStaff(ItemInventory *this)
{
  ItemInstance **result; // r0

  result = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, 1)) + 4);
  if ( result )
    return (ItemInstance **)(*(_DWORD *)(ItemInstance::GetItem(*result) + 148) == 5);
  return result;
}


// ===== 400110 ItemInventory::HasShield(void) =====
ItemInstance **__fastcall ItemInventory::HasShield(ItemInventory *this)
{
  ItemInstance **result; // r0

  result = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, 2)) + 8);
  if ( result )
    return (ItemInstance **)(*(_DWORD *)(ItemInstance::GetItem(*result) + 88) == 6);
  return result;
}


// ===== 400158 ItemInventory::HasOffHandWeapon(void) =====
ItemInstance **__fastcall ItemInventory::HasOffHandWeapon(ItemInventory *this)
{
  ItemInstance **result; // r0

  result = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, 2)) + 8);
  if ( result )
    return (ItemInstance **)(*(_DWORD *)(ItemInstance::GetItem(*result) + 88) != 6);
  return result;
}


// ===== 40019c ItemInventory::IsDualWielding(void) =====
// attributes: thunk
int __fastcall ItemInventory::IsDualWielding(ItemInventory *this)
{
  return ItemInventory::HasOffHandWeapon(this);
}


// ===== 4001a0 ItemInventory::HasTwoHander(bool) =====
ItemInstance **__fastcall ItemInventory::HasTwoHander(ItemInventory *this, int a2)
{
  ItemInstance **result; // r0
  int Item; // r0
  int v6; // r3
  int v7; // r0

  result = *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, 1)) + 4);
  if ( result )
  {
    Item = ItemInstance::GetItem(*result);
    v6 = *(_DWORD *)(Item + 88);
    v7 = *(_DWORD *)(Item + 104);
    if ( (unsigned int)(v6 - 4) <= 1 || a2 )
      return (ItemInstance **)(v7 == -4);
    else
      return (ItemInstance **)(v7 == -4 && *(_DWORD *)(*((_DWORD *)this + 1) + 4900) == 0);
  }
  return result;
}


// ===== 40022c ItemInventory::IsEquipmentSlotLeftHand(uint) =====
bool __fastcall ItemInventory::IsEquipmentSlotLeftHand(ItemInventory *this, unsigned int a2)
{
  if ( a2 >= (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2 )
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
        "slotIdx < m_equipmentSlots[0].size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
        330);
    }
  }
  return a2 == 2;
}


// ===== 4002d8 ItemInventory::IsEquipmentSlotTaken(uint) =====
bool __fastcall ItemInventory::IsEquipmentSlotTaken(ItemInventory *this, unsigned int a2)
{
  if ( a2 >= (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2 )
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
        "slotIdx < m_equipmentSlots[0].size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
        320);
    }
  }
  return *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * ItemInventory::GetCurrentEquipSet(this, a2)) + 4 * a2) != 0;
}


// ===== 4003a4 ItemInventory::_UnEquipItemFromSlot(uint,int) =====
void __fastcall ItemInventory::_UnEquipItemFromSlot(ItemInventory *this, unsigned int a2, int CurrentEquipSet)
{
  int v6; // r3
  int v7; // r7
  ItemInstance *Item; // r0
  unsigned int v9; // [sp+Ch] [bp-8h] BYREF

  if ( a2 >= (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2 )
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
        "slotIdx < m_equipmentSlots[0].size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
        273);
    }
  }
  if ( CurrentEquipSet == -1 )
    CurrentEquipSet = ItemInventory::GetCurrentEquipSet(this, a2);
  v6 = *(_DWORD *)(*((_DWORD *)this + 5) + 12 * CurrentEquipSet);
  v7 = *(_DWORD *)(v6 + 4 * a2);
  *(_DWORD *)(v6 + 4 * a2) = 0;
  if ( v7 )
  {
    *(_BYTE *)(v7 + CurrentEquipSet + 4) = -1;
    if ( *(__int16 *)(v7 + 4) == -1
      && ItemInstance::IsStackable(*(ItemInstance **)v7)
      && ItemInventory::_HasItemInstanceLike(this, *(const ItemInstance **)v7, &v9)
      && !ItemInventory::IsItemEquipped(this, v9) )
    {
      Item = (ItemInstance *)ItemInventory::GetItem((int)this, v9);
      ItemInstance::AddQty(Item, *(__int16 *)(*(_DWORD *)v7 + 80));
      ItemInventory::_DelItemInstance(this, *(ItemInstance **)v7);
    }
  }
}


// ===== 40050c ItemInventory::UnEquipItemFromSlot(uint,int) =====
// attributes: thunk
void __fastcall ItemInventory::UnEquipItemFromSlot(ItemInventory *this, unsigned int a2, int CurrentEquipSet)
{
  ItemInventory::_UnEquipItemFromSlot(this, a2, CurrentEquipSet);
}


// ===== 400510 ItemInventory::_UnEquipItemAuto(uint) =====
int __fastcall ItemInventory::_UnEquipItemAuto(ItemInventory *this, unsigned int a2)
{
  int result; // r0
  int v5; // r1
  unsigned int v6; // r1

  if ( a2 >= (*((_DWORD *)this + 3) - *((_DWORD *)this + 2)) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
        115);
    }
  }
  result = ItemInventory::IsItemEquipped(this, a2);
  if ( result )
  {
    v5 = *(_DWORD *)(ItemInstance::GetItem(**(ItemInstance ***)(*((_DWORD *)this + 2) + 4 * a2)) + 104);
    if ( (unsigned int)v5 >= 0xFFFFFFFC )
    {
      if ( v5 > -3 )
      {
        if ( v5 == -2 )
          v5 = 5;
      }
      else
      {
        v5 = 1;
      }
    }
    v6 = *(char *)(*(_DWORD *)(*((_DWORD *)this + 2) + 4 * a2) + ItemInventory::GetCurrentEquipSet(this, v5) + 4);
    return ItemInventory::_UnEquipItemFromSlot(this, v6, -1);
  }
  return result;
}


// ===== 400630 ItemInventory::UnEquipItemAuto(uint) =====
// attributes: thunk
int __fastcall ItemInventory::UnEquipItemAuto(ItemInventory *this, unsigned int a2)
{
  return ItemInventory::_UnEquipItemAuto(this, a2);
}


// ===== 400634 ItemInventory::_EquipItemToSlot(uint,uint,bool) =====
int __fastcall ItemInventory::_EquipItemToSlot(ItemInventory *this, unsigned int a2, unsigned int a3, int a4)
{
  int *v5; // r0
  int v7; // r1
  int result; // r0
  int v11; // r3
  ItemInstance **v12; // r6
  int CurrentEquipSet; // r8
  int v14; // r9
  int v15; // r11
  unsigned int v16; // r1
  unsigned int v17; // r10
  int v18; // r1
  ItemInstance *v19; // r9
  int v20; // [sp+Ch] [bp-8h]

  v5 = *((int **)this + 5);
  v7 = *v5;
  result = v5[1];
  if ( a2 >= (result - v7) >> 2 )
  {
    if ( gAssertLevel == 2 )
    {
      dword_0 = 0;
    }
    else if ( gAssertLevel == 1 )
    {
      result = fprintf(
                 (FILE *)&_sF + 2,
                 "ASSERT(%s) FAILED: %s:%d\n",
                 "slotIdx < m_equipmentSlots[0].size()",
                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
                 188);
    }
  }
  v11 = *((_DWORD *)this + 2);
  if ( a3 < (*((_DWORD *)this + 3) - v11) >> 2 )
    goto LABEL_47;
  if ( gAssertLevel == 2 )
  {
    dword_0 = 0;
    return result;
  }
  if ( gAssertLevel == 1 )
  {
    result = fprintf(
               (FILE *)&_sF + 2,
               "ASSERT(%s) FAILED: %s:%d\n",
               "itemIdx < m_items.size()",
               "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
               189);
    v11 = *((_DWORD *)this + 2);
    if ( a3 < (*((_DWORD *)this + 3) - v11) >> 2 )
    {
LABEL_47:
      v12 = *(ItemInstance ***)(v11 + 4 * a3);
      if ( v12 && *v12 )
      {
        CurrentEquipSet = ItemInventory::GetCurrentEquipSet(this, a2);
        v14 = *(_DWORD *)(ItemInstance::GetItem(*v12) + 104);
        v15 = *((_DWORD *)this + 1);
        if ( *(_DWORD *)(ItemInstance::GetItem(*v12) + 88) != 5
          && *(_DWORD *)(ItemInstance::GetItem(*v12) + 88) != 4
          && v14 == -4
          && *(_DWORD *)(v15 + 4900) )
        {
          v14 = 1;
        }
        result = ItemInstance::IsEquippable(*v12);
        if ( result )
        {
          if ( *((char *)v12 + CurrentEquipSet + 4) == a2 )
          {
            v20 = 12 * CurrentEquipSet;
            if ( *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + 12 * CurrentEquipSet) + 4 * a2) == v12 )
              return result;
          }
          else
          {
            v20 = 12 * CurrentEquipSet;
          }
          ItemInventory::_UnEquipItemFromSlot(this, a2, -1);
          v16 = *((char *)v12 + CurrentEquipSet + 4);
          if ( v16 != -1 && *(ItemInstance ***)(*(_DWORD *)(*((_DWORD *)this + 5) + v20) + 4 * v16) == v12 )
            ItemInventory::_UnEquipItemFromSlot(this, v16, -1);
          if ( v14 == -4 )
          {
            if ( !a4 )
              ItemInventory::_UnEquipItemFromSlot(this, 2u, -1);
            ItemInventory::_UnEquipItemFromSlot(this, 1u, -1);
            v17 = 4;
            LOBYTE(a2) = 1;
          }
          else if ( a2 == 2 && ItemInventory::HasTwoHander(this, 0) && !a4 )
          {
            ItemInventory::_UnEquipItemFromSlot(this, 1u, -1);
            v17 = 8;
          }
          else
          {
            v17 = 4 * a2;
          }
          result = (int)*v12;
          v18 = *((__int16 *)*v12 + 40);
          if ( v18 == 1 )
          {
            *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + v20) + v17) = v12;
            *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + v20) + v17) + CurrentEquipSet + 4) = a2;
          }
          else
          {
            v19 = ItemInstance::Split((ItemInstance *)result, v18 - 1);
            if ( !v19 )
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
                  "oldStack",
                  "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
                  256);
              }
            }
            *(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + v20) + v17) = v12;
            *(_BYTE *)(*(_DWORD *)(*(_DWORD *)(*((_DWORD *)this + 5) + v20) + v17) + CurrentEquipSet + 4) = a2;
            return ItemInventory::_AddItemInstance(this, v19, 1u, 1);
          }
        }
      }
    }
  }
  return result;
}


// ===== 4009f0 ItemInventory::EquipItemToSlot(uint,uint) =====
int __fastcall ItemInventory::EquipItemToSlot(ItemInventory *this, unsigned int a2, unsigned int a3)
{
  return ItemInventory::_EquipItemToSlot(this, a2, a3, 0);
}


// ===== 4009f8 ItemInventory::_EquipItemAuto(uint) =====
int __fastcall ItemInventory::_EquipItemAuto(ItemInventory *this, unsigned int a2)
{
  int v3; // r2
  ItemInstance **v5; // r7
  int v7; // r8
  signed int v8; // r6

  v3 = *((_DWORD *)this + 2);
  if ( a2 >= (*((_DWORD *)this + 3) - v3) >> 2 )
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
        "itemIdx < m_items.size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
        35);
      v3 = *((_DWORD *)this + 2);
    }
  }
  v5 = *(ItemInstance ***)(v3 + 4 * a2);
  if ( !ItemInstance::IsEquippable(*v5) )
    return 0;
  v7 = *((_DWORD *)this + 1);
  v8 = *(_DWORD *)(ItemInstance::GetItem(*v5) + 104);
  if ( *(_DWORD *)(ItemInstance::GetItem(*v5) + 88) != 5 && *(_DWORD *)(ItemInstance::GetItem(*v5) + 88) != 4 )
  {
    if ( v8 == 1 )
    {
      if ( *(_DWORD *)(v7 + 4896) )
        goto LABEL_21;
      goto LABEL_13;
    }
    if ( v8 == -4 )
    {
      if ( !*(_DWORD *)(v7 + 4900) )
      {
LABEL_26:
        ItemInventory::_UnEquipItemFromSlot(this, 2u, -1);
        ItemInventory::_EquipItemToSlot(this, 1u, a2, 0);
        return 1;
      }
      v8 = 1;
      goto LABEL_13;
    }
  }
  if ( v8 < 0 )
    goto LABEL_16;
LABEL_13:
  if ( v8 >= (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2 )
  {
LABEL_16:
    if ( v8 != -3 )
    {
      if ( v8 == -2 )
      {
        if ( !ItemInventory::IsEquipmentSlotTaken(this, 5u) )
        {
          ItemInventory::_EquipItemToSlot(this, 5u, a2, 0);
          return 1;
        }
        if ( !ItemInventory::IsEquipmentSlotTaken(this, 6u) )
        {
          ItemInventory::_EquipItemToSlot(this, 6u, a2, 0);
          return 1;
        }
      }
      else if ( v8 == -4 )
      {
        goto LABEL_26;
      }
      return 0;
    }
LABEL_21:
    if ( !ItemInventory::IsEquipmentSlotTaken(this, 1u) )
    {
      ItemInventory::_EquipItemToSlot(this, 1u, a2, 0);
      return 1;
    }
    if ( !ItemInventory::IsEquipmentSlotTaken(this, 2u) )
    {
      ItemInventory::_EquipItemToSlot(this, 2u, a2, 0);
      return 1;
    }
    return 0;
  }
  if ( v8 == 2 )
  {
    if ( ItemInventory::HasTwoHander(this, 0) )
      ItemInventory::_UnEquipItemFromSlot(this, 1u, -1);
  }
  ItemInventory::_EquipItemToSlot(this, v8, a2, 0);
  return 1;
}


// ===== 400c84 ItemInventory::EquipItemAuto(uint) =====
// attributes: thunk
int __fastcall ItemInventory::EquipItemAuto(ItemInventory *this, unsigned int a2)
{
  return ItemInventory::_EquipItemAuto(this, a2);
}


// ===== 400c88 std::__push_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByValueAndClass>(ItemInventory::Item *,int,int,ItemInventory::Item,SortByValueAndClass) =====
int std::__push_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByValueAndClass>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        ...)
{
  int v6; // r4
  int v8; // r5
  int v9; // r3
  ItemInstance *v11; // r1
  int i; // r9
  unsigned int v13; // r0
  int v14; // r1
  ItemInstance *varg_r3; // [sp+34h] [bp+28h] BYREF
  va_list va; // [sp+40h] [bp+34h] BYREF

  va_start(va, a6);
  v6 = a2;
  if ( a2 > a3 )
  {
    for ( i = (a2 - 1) / 2; ; i = (i - 1) / 2 )
    {
      v8 = a1 + 12 * i;
      v13 = SortByValueAndClass::operator()((int)&va, (const char ***)v8, &varg_r3);
      v9 = v8 + 4;
      v14 = a1 + 12 * v6;
      if ( !v13 )
        break;
      *(_DWORD *)(a1 + 12 * v6) = *(_DWORD *)(a1 + 12 * i);
      *(_DWORD *)(v14 + 4) = *(_DWORD *)(v8 + 4);
      *(_DWORD *)(v14 + 8) = *(_DWORD *)(v8 + 8);
      if ( a3 >= i )
        goto LABEL_3;
      v6 = i;
    }
    v8 = a1 + 12 * v6;
    v9 = v8 + 4;
  }
  else
  {
    v8 = a1 + 12 * a2;
    v9 = v8 + 4;
  }
LABEL_3:
  v11 = varg_r3;
  *(_DWORD *)(v8 + 4) = a5;
  *(_DWORD *)v8 = v11;
  *(_DWORD *)(v9 + 4) = a6;
  return a5;
}


// ===== 400d74 std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByValueAndClass>(ItemInventory::Item *,int,int,ItemInventory::Item,SortByValueAndClass) =====
int __fastcall std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByValueAndClass>(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7)
{
  int v7; // r4
  int v10; // r9
  int v11; // r10
  int v12; // r5
  unsigned int v13; // r0
  int v14; // r9
  int v15; // r2
  int v16; // r4
  _DWORD *v17; // r2
  _DWORD *v18; // r3
  int v20; // [sp+14h] [bp-8h]
  int varg_r3; // [sp+44h] [bp+28h]

  v7 = 2 * (a2 + 1);
  v20 = a2;
  if ( v7 < a3 )
  {
    v10 = a2;
    do
    {
      v11 = v7 - 1;
      v12 = a1 + 12 * v7;
      v13 = SortByValueAndClass::operator()((int)&a7, (const char ***)v12, (ItemInstance **)(a1 + 12 * (v7 - 1)));
      if ( v13 )
        v12 = a1 + 12 * (v7 - 1);
      v14 = 12 * v10;
      if ( !v13 )
        v11 = v7;
      *(_DWORD *)(a1 + v14) = *(_DWORD *)v12;
      v15 = a1 + v14;
      *(_DWORD *)(v15 + 4) = *(_DWORD *)(v12 + 4);
      v7 = 2 * (v11 + 1);
      v10 = v11;
      *(_DWORD *)(v15 + 8) = *(_DWORD *)(v12 + 8);
    }
    while ( a3 > v7 );
    a2 = v11;
  }
  if ( v7 == a3 )
  {
    v16 = v7 - 1;
    v17 = (_DWORD *)(a1 + 12 * v16);
    v18 = (_DWORD *)(a1 + 12 * a2);
    *v18 = *v17;
    a2 = v16;
    v18[1] = v17[1];
    v18[2] = v17[2];
  }
  return std::__push_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByValueAndClass>(
           a1,
           a2,
           v20,
           varg_r3,
           a5,
           a6,
           a7);
}


// ===== 400e88 std::__make_heap<ItemInventory::Item *,SortByValueAndClass,ItemInventory::Item,int>(ItemInventory::Item *,ItemInventory::Item *,SortByValueAndClass,ItemInventory::Item *,int *) =====
int __fastcall std::__make_heap<ItemInventory::Item *,SortByValueAndClass,ItemInventory::Item,int>(
        int result,
        int a2,
        int a3)
{
  int v3; // r1
  int v4; // r7
  int v6; // r4
  int v7; // r9
  int v8; // r5
  int v9; // r6

  v3 = a2 - result;
  v4 = result;
  if ( v3 > 23 )
  {
    v6 = 0;
    v7 = -1431655765 * (v3 >> 2);
    v8 = (v7 - 2) >> 1;
    v9 = result + 12 * v8;
    while ( 1 )
    {
      result = std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByValueAndClass>(
                 v4,
                 v8,
                 v7,
                 *(_DWORD *)(v9 + v6),
                 *(_DWORD *)(v9 + v6 + 4),
                 *(_DWORD *)(v9 + v6 + 8),
                 a3);
      v6 -= 12;
      if ( !v8 )
        break;
      --v8;
    }
  }
  return result;
}


// ===== 400f44 std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass,int>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass,int *) =====
int __fastcall std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass,int>(
        _DWORD *a1,
        int a2,
        _DWORD *a3,
        int a4,
        int a5,
        int a6,
        int a7)
{
  *a3 = *a1;
  a3[1] = a1[1];
  a3[2] = a1[2];
  return std::__adjust_heap<ItemInventory::Item *,int,ItemInventory::Item,SortByValueAndClass>(
           (int)a1,
           0,
           -1431655765 * ((a2 - (int)a1) >> 2),
           a4,
           a5,
           a6,
           a7);
}


// ===== 400fc0 std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,SortByValueAndClass) =====
unsigned int __fastcall std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
        ItemInstance **a1,
        int a2,
        unsigned int a3,
        int a4,
        int a5)
{
  char *v6; // r4
  unsigned int result; // r0
  char *v9; // r5
  int v10; // r12
  char *v11; // r2
  const char **v12; // r3
  int v13; // r5
  int i; // r10
  int v15; // [sp+0h] [bp-34h]

  v6 = (char *)a2;
  result = std::__make_heap<ItemInventory::Item *,SortByValueAndClass,ItemInventory::Item,int>((int)a1, a2, a5);
  if ( (unsigned int)v6 < a3 )
  {
    v9 = v6;
    do
    {
      while ( 1 )
      {
        result = SortByValueAndClass::operator()((int)&a5, (const char ***)v9, a1);
        if ( result )
          break;
        v9 += 12;
        if ( a3 <= (unsigned int)v9 )
          goto LABEL_6;
      }
      v10 = *((_DWORD *)v9 + 2);
      v11 = v9;
      v12 = *(const char ***)v9;
      v15 = *((_DWORD *)v9 + 1);
      v9 += 12;
      result = std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass,int>(
                 a1,
                 (int)v6,
                 v11,
                 (int)v12,
                 v15,
                 v10,
                 a5);
    }
    while ( a3 > (unsigned int)v9 );
  }
LABEL_6:
  v13 = v6 - (char *)a1;
  for ( i = a5;
        v13 > 23;
        result = std::__pop_heap<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass,int>(
                   a1,
                   (int)v6,
                   v6,
                   *(_DWORD *)v6,
                   *((_DWORD *)v6 + 1),
                   *((_DWORD *)v6 + 2),
                   i) )
  {
    v6 -= 12;
    v13 -= 12;
  }
  return result;
}


// ===== 401104 std::priv::__median<ItemInventory::Item,SortByValueAndClass>(ItemInventory::Item const&,ItemInventory::Item const&,ItemInventory::Item const&,SortByValueAndClass) =====
const char ***__fastcall std::priv::__median<ItemInventory::Item,SortByValueAndClass>(
        const char ***a1,
        ItemInstance **a2,
        ItemInstance **a3,
        int a4)
{
  const char ***v5; // r5
  int v8; // [sp+4h] [bp-8h] BYREF

  v8 = a4;
  v5 = (const char ***)a2;
  if ( !SortByValueAndClass::operator()((int)&v8, a1, a2) )
  {
    if ( !SortByValueAndClass::operator()((int)&v8, a1, a3) )
    {
      if ( !SortByValueAndClass::operator()((int)&v8, v5, a3) )
        return v5;
      return (const char ***)a3;
    }
    return a1;
  }
  if ( !SortByValueAndClass::operator()((int)&v8, v5, a3) )
  {
    if ( SortByValueAndClass::operator()((int)&v8, a1, a3) )
      return (const char ***)a3;
    return a1;
  }
  return v5;
}


// ===== 4011b8 std::priv::__unguarded_partition<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass) =====
unsigned int std::priv::__unguarded_partition<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
        unsigned int a1,
        unsigned int a2,
        int a3,
        int a4,
        int a5,
        ...)
{
  char v7; // r12
  char v8; // r0
  int v9; // lr
  const char **v10; // r1
  unsigned int v11; // r3
  const char **varg_r2; // [sp+18h] [bp-Ch] BYREF
  va_list va; // [sp+24h] [bp+0h] BYREF

  va_start(va, a5);
  while ( 1 )
  {
    while ( SortByValueAndClass::operator()((int)&va, (const char ***)a1, (ItemInstance **)&varg_r2) )
      a1 += 12;
    do
      a2 -= 12;
    while ( SortByValueAndClass::operator()((int)&va, &varg_r2, (ItemInstance **)a2) );
    if ( a1 >= a2 )
      break;
    v7 = *(_BYTE *)(a1 + 5);
    v8 = *(_BYTE *)(a1 + 4);
    v9 = *(_DWORD *)(a1 + 8);
    v10 = *(const char ***)a1;
    *(_DWORD *)a1 = *(_DWORD *)a2;
    v11 = a1 + 4;
    *(_DWORD *)(a1 + 4) = *(_DWORD *)(a2 + 4);
    a1 += 12;
    *(_DWORD *)(v11 + 4) = *(_DWORD *)(a2 + 8);
    *(_DWORD *)(a2 + 8) = v9;
    *(_BYTE *)(a2 + 5) = v7;
    *(_BYTE *)(a2 + 4) = v8;
    *(_DWORD *)a2 = v10;
  }
  return a1;
}


// ===== 401270 std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByValueAndClass>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,int,SortByValueAndClass) =====
int __fastcall std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByValueAndClass>(
        int result,
        unsigned int a2,
        int a3,
        int a4,
        int a5)
{
  unsigned int v5; // r5
  int v6; // r1
  const char ***v7; // r4
  int v8; // r6
  int *v9; // r0
  unsigned int v10; // r10

  v5 = a2;
  v6 = a2 - result;
  v7 = (const char ***)result;
  v8 = a4;
  if ( v6 > 203 )
  {
    if ( a4 )
    {
      while ( 1 )
      {
        --v8;
        v9 = (int *)std::priv::__median<ItemInventory::Item,SortByValueAndClass>(
                      v7,
                      (ItemInstance **)&v7[3 * ((-1431655765 * (v6 >> 2)) >> 1)],
                      (ItemInstance **)(v5 - 12),
                      a5);
        v10 = std::priv::__unguarded_partition<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
                (unsigned int)v7,
                v5,
                *v9,
                v9[1],
                v9[2],
                a5);
        result = std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByValueAndClass>(
                   v10,
                   v5,
                   0,
                   v8,
                   a5);
        v6 = v10 - (_DWORD)v7;
        if ( (int)(v10 - (_DWORD)v7) <= 203 )
          break;
        v5 = v10;
        if ( !v8 )
          return std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
                   (ItemInstance **)v7,
                   v5,
                   v5,
                   0,
                   a5);
      }
    }
    else
    {
      return std::priv::__partial_sort<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
               (ItemInstance **)v7,
               v5,
               v5,
               0,
               a5);
    }
  }
  return result;
}


// ===== 40137c std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item *,SortByValueAndClass) =====
const char **__fastcall std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
        const char **result,
        const char **a2,
        int a3,
        int a4)
{
  const char **v5; // r8
  const char **v6; // r1
  const char *v7; // r2
  const char *v8; // r3
  const char **v9; // r4
  const char **v10; // r5
  _DWORD *v11; // r2
  unsigned int v12; // r0
  const char **v13; // r3
  const char *v14; // r1
  const char *v15; // r2
  const char **v17; // [sp+8h] [bp-14h] BYREF
  const char *v18; // [sp+Ch] [bp-10h]
  const char *v19; // [sp+10h] [bp-Ch]
  int v20; // [sp+14h] [bp-8h] BYREF

  if ( result != a2 )
  {
    v5 = result;
    do
    {
      v6 = (const char **)*v5;
      v7 = v5[1];
      v20 = a4;
      v8 = v5[2];
      v9 = v5 - 3;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v10 = v5;
      while ( 1 )
      {
        v12 = SortByValueAndClass::operator()((int)&v20, &v17, (ItemInstance **)v9);
        v13 = v9;
        v9 -= 3;
        if ( !v12 )
          break;
        *v10 = v9[3];
        v11 = v10 + 1;
        v10[1] = v9[4];
        v10 = v13;
        v11[1] = v9[5];
      }
      result = v17;
      v14 = v18;
      v15 = v19;
      v5 += 3;
      *v10 = (const char *)v17;
      v10[1] = v14;
      v10[2] = v15;
    }
    while ( a2 != v5 );
  }
  return result;
}


// ===== 401448 std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(ItemInventory::Item *,ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass) =====
const char **__fastcall std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
        int a1,
        ItemInstance **a2,
        int a3,
        int a4,
        ItemInstance *a5,
        int a6)
{
  int v8; // r3
  ItemInstance *v9; // t1
  ItemInstance *v10; // r1
  ItemInstance *v11; // r2
  ItemInstance *v12; // r1
  const char **result; // r0
  ItemInstance **v14; // r5
  _DWORD *v15; // r2
  ItemInstance **v16; // r3
  const char **v17; // [sp+0h] [bp-14h] BYREF
  ItemInstance *v18; // [sp+4h] [bp-10h]
  ItemInstance *v19; // [sp+8h] [bp-Ch]
  int v20; // [sp+Ch] [bp-8h] BYREF
  const char **varg_r2; // [sp+28h] [bp+14h] BYREF
  ItemInstance *varg_r3; // [sp+2Ch] [bp+18h]

  if ( SortByValueAndClass::operator()((int)&a6, &varg_r2, (ItemInstance **)a1) )
  {
    v8 = -1431655765 * (((int)a2 - a1) >> 2);
    if ( v8 > 0 )
    {
      do
      {
        v9 = *(a2 - 3);
        a2 -= 3;
        --v8;
        v10 = a2[1];
        v11 = a2[2];
        a2[3] = v9;
        a2[4] = v10;
        a2[5] = v11;
      }
      while ( v8 );
    }
    v12 = varg_r3;
    result = varg_r2;
    *(_DWORD *)a1 = varg_r2;
    *(_DWORD *)(a1 + 4) = v12;
    *(_DWORD *)(a1 + 8) = a5;
  }
  else
  {
    v18 = varg_r3;
    v19 = a5;
    v17 = varg_r2;
    v14 = a2 - 3;
    v20 = a6;
    while ( 1 )
    {
      result = (const char **)SortByValueAndClass::operator()((int)&v20, &v17, v14);
      v16 = v14;
      v14 -= 3;
      if ( !result )
        break;
      *a2 = v14[3];
      v15 = a2 + 1;
      a2[1] = v14[4];
      a2 = v16;
      v15[1] = v14[5];
    }
    *a2 = (ItemInstance *)v17;
    a2[1] = v18;
    a2[2] = v19;
  }
  return result;
}


// ===== 401588 std::priv::__final_insertion_sort<ItemInventory::Item *,SortByValueAndClass>(ItemInventory::Item *,ItemInventory::Item *,SortByValueAndClass) =====
const char **__fastcall std::priv::__final_insertion_sort<ItemInventory::Item *,SortByValueAndClass>(
        const char **result,
        const char **a2,
        int a3)
{
  int v3; // r5
  const char **v6; // r10
  int *v7; // r7
  int *v8; // r4
  int v9; // r2
  int v10; // r3
  ItemInstance *v11; // r12
  ItemInstance **v12; // r1
  int *v13; // r4
  int v14; // r2
  int v15; // r3
  ItemInstance *v16; // r12
  ItemInstance **v17; // r1

  v3 = (int)result;
  if ( (char *)a2 - (char *)result <= 203 )
  {
    if ( a2 != result )
    {
      v13 = (int *)(result + 3);
      if ( a2 != result + 3 )
      {
        do
        {
          v14 = *v13;
          v15 = v13[1];
          v16 = (ItemInstance *)v13[2];
          v17 = (ItemInstance **)v13;
          v13 += 3;
          result = std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
                     v3,
                     v17,
                     v14,
                     v15,
                     v16,
                     a3);
        }
        while ( a2 != (const char **)v13 );
      }
    }
  }
  else
  {
    v6 = result + 3;
    v7 = (int *)(result + 48);
    v8 = (int *)(result + 3);
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = (ItemInstance *)v8[2];
      v12 = (ItemInstance **)v8;
      v8 += 3;
      std::priv::__linear_insert<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
        v3,
        v12,
        v9,
        v10,
        v11,
        a3);
    }
    while ( v8 != v7 );
    return std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item *,ItemInventory::Item,SortByValueAndClass>(
             v6 + 45,
             a2,
             0,
             a3);
  }
  return result;
}


// ===== 401634 std::sort<ItemInventory::Item *,SortByValueAndClass>(ItemInventory::Item *,ItemInventory::Item *,SortByValueAndClass) =====
const char **__fastcall std::sort<ItemInventory::Item *,SortByValueAndClass>(
        const char **result,
        const char **a2,
        int a3)
{
  const char **v3; // r5
  int v6; // r2
  int v7; // r3
  int v8; // r3

  v3 = result;
  if ( result != a2 )
  {
    v6 = -1431655765 * (a2 - result);
    if ( v6 == 1 )
    {
      v7 = 0;
    }
    else
    {
      v8 = 0;
      do
      {
        v6 >>= 1;
        ++v8;
      }
      while ( v6 != 1 );
      v7 = 2 * v8;
    }
    std::priv::__introsort_loop<ItemInventory::Item *,ItemInventory::Item,int,SortByValueAndClass>(
      (int)result,
      (unsigned int)a2,
      0,
      v7,
      a3);
    return std::priv::__final_insertion_sort<ItemInventory::Item *,SortByValueAndClass>(v3, a2, a3);
  }
  return result;
}


// ===== 4016c4 std::allocator<ItemInventory::Item>::deallocate(ItemInventory::Item*,uint) =====
void __fastcall std::allocator<ItemInventory::Item>::deallocate(int a1, void *a2, int a3)
{
  if ( a2 )
  {
    if ( (unsigned int)(12 * a3) > 0x80 )
      CustomFree(a2);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(a2, 12 * a3);
  }
}


// ===== 4016e4 ItemInventory::_EquipSlotAuto(uint,Character *) =====
int __fastcall ItemInventory::_EquipSlotAuto(ItemInventory *this, unsigned int a2, Character *a3)
{
  if ( a2 >= (*(_DWORD *)(*((_DWORD *)this + 5) + 4) - **((_DWORD **)this + 5)) >> 2 )
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
        "slotIdx < m_equipmentSlots[0].size()",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp",
        145);
    }
  }
  ItemInventory::GetItemListForSlot(this, a2);
  if ( a3 )
    std::sort<ItemInventory::Item *,SortByValueAndClass>(0, 0, a3);
  else
    std::sort<ItemInventory::Item *,SortByValueAndClass>(0, 0, *((_DWORD *)this + 1));
  return 0;
}


// ===== 401940 ItemInventory::EquipSlotAuto(uint,Character *) =====
// attributes: thunk
int __fastcall ItemInventory::EquipSlotAuto(ItemInventory *this, unsigned int a2, Character *a3)
{
  return ItemInventory::_EquipSlotAuto(this, a2, a3);
}


// ===== 401944 `global constructor keyed to'.._.._sources_Game_Items_ItemInventory_Equipment.cpp =====
int `global constructor keyed to'.._.._sources_Game_Items_ItemInventory_Equipment.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3148 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3144 = 1056964608;
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


// ===== 401a20 `global constructor keyed to'.._.._sources_Game_Items_ItemInventory_Loots.cpp =====
int `global constructor keyed to'.._.._sources_Game_Items_ItemInventory_Loots.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3154 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3150 = 1056964608;
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


// ===== 401afc Random::GetRandom(int,bool) [clone] =====
unsigned int __fastcall Random::GetRandom(unsigned int this, int a2, bool a3)
{
  if ( this )
  {
    Random::s_seed = (59051 * Random::s_seed + 177149) % 0xDAF26Bu;
    this = abs32(Random::s_seed % this);
  }
  ++Random::s_debugRandomCounters;
  return this;
}


// ===== 401b90 ItemInventory::_GetProbQuantity(int,int) =====
int __fastcall ItemInventory::_GetProbQuantity(int this, int a2, int a3)
{
  int v5; // r5
  int v6; // r1
  int v7; // r3
  unsigned int v8; // r7
  int v9; // r2
  unsigned int Random; // r0
  int v12; // r12
  unsigned int v13; // r0
  __int16 *v14; // r1
  unsigned int v15; // r3
  int v16; // r2

  if ( this < 0 || this >= Arrays::NumProbArray::size )
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
        "numItemProbsId >= 0 && numItemProbsId < (int)Arrays::NumProbArray::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
        119);
    }
  }
  v5 = Arrays::NumProbArray::members + 12 * this;
  v6 = *(_DWORD *)(v5 + 4);
  if ( v6 )
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(__int16 *)(*(_DWORD *)(v5 + 8) + 8 * v7++ + 6);
      v8 += v9;
    }
    while ( v7 != v6 );
    if ( v8 )
    {
      Random = Random::GetRandom(v8, v6, v9);
      v12 = *(_DWORD *)(v5 + 4);
      v13 = Random + a2;
      if ( v13 >= v8 )
        v13 = v8 - 1;
      if ( v12 )
      {
        v14 = *(__int16 **)(v5 + 8);
        v15 = v14[3];
        if ( v13 < v15 )
          return v14[2];
        v16 = 0;
        while ( 1 )
        {
          ++v16;
          v13 -= v15;
          if ( v16 == v12 )
            break;
          v15 = v14[7];
          v14 += 4;
          if ( v15 > v13 )
            return v14[2];
        }
      }
      if ( gAssertLevel != 2 )
      {
        if ( gAssertLevel != 1 )
          return 0;
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "!\"WTF! Something went wrong guys! (_GetProbQuantity)\"",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
          152);
        return 0;
      }
LABEL_26:
      dword_0 = 0;
      return 0;
    }
  }
  if ( gAssertLevel == 2 )
    goto LABEL_26;
  if ( gAssertLevel != 1 )
    return 0;
  fprintf(
    (FILE *)&_sF + 2,
    "ASSERT(%s) FAILED: %s:%d\n",
    "!\"Invalid probabilities (_GetProbQuantity)\"",
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
    132);
  return 0;
}


// ===== 401dbc ItemInventory::_GetRandomItem(Structs::ItemListEntryList const&) =====
int __fastcall ItemInventory::_GetRandomItem(ItemInventory *this, const Structs::ItemListEntryList *a2)
{
  int v2; // r12
  int v4; // r3
  int v5; // r2
  unsigned int v6; // r0
  int v7; // r1
  int result; // r0
  unsigned int Random; // r0
  int v10; // r12
  int v11; // r1
  unsigned int v12; // r3
  unsigned int v13; // r2

  v2 = *((_DWORD *)this + 1);
  if ( !v2 )
    goto LABEL_5;
  v4 = 0;
  v5 = *((_DWORD *)this + 2);
  v6 = 0;
  do
  {
    v7 = *(__int16 *)(v5 + 8);
    ++v4;
    v6 += v7;
    v5 += 12;
  }
  while ( v4 != v2 );
  if ( !v6 )
  {
LABEL_5:
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "!\"Invalid probabilities (_GetRandomItem)\"",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
          382);
        return 0;
      }
      return 0;
    }
LABEL_19:
    dword_0 = 0;
    return 0;
  }
  Random = Random::GetRandom(v6, v7, v5);
  v10 = *((_DWORD *)this + 1);
  if ( v10 )
  {
    v11 = *((_DWORD *)this + 2);
    v12 = Random;
    v13 = *(__int16 *)(v11 + 8);
    if ( Random < v13 )
      return 0;
    result = 0;
    while ( 1 )
    {
      ++result;
      v12 -= v13;
      if ( result == v10 )
        break;
      v13 = *(__int16 *)(v11 + 20);
      v11 += 12;
      if ( v13 > v12 )
        return result;
    }
  }
  if ( gAssertLevel == 2 )
    goto LABEL_19;
  if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "!\"WTF! Something went wrong guys! (_GetRandomItem)\"",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
      396);
    return 0;
  }
  return 0;
}


// ===== 401f38 ItemInventory::_GetRandomItemPowerEntry(Structs::ItemPowerEntryList const&) =====
int __fastcall ItemInventory::_GetRandomItemPowerEntry(ItemInventory *this, const Structs::ItemPowerEntryList *a2)
{
  int v2; // r12
  int v4; // r3
  int v5; // r2
  unsigned int v6; // r0
  int v7; // r1
  int result; // r0
  unsigned int Random; // r0
  int v10; // r12
  int v11; // r1
  unsigned int v12; // r3
  unsigned int v13; // r2

  v2 = *((_DWORD *)this + 1);
  if ( !v2 )
    goto LABEL_5;
  v4 = 0;
  v5 = *((_DWORD *)this + 2);
  v6 = 0;
  do
  {
    v7 = *(char *)(v5 + 8);
    ++v4;
    v6 += v7;
    v5 += 12;
  }
  while ( v4 != v2 );
  if ( !v6 )
  {
LABEL_5:
    if ( gAssertLevel != 2 )
    {
      if ( gAssertLevel == 1 )
      {
        fprintf(
          (FILE *)&_sF + 2,
          "ASSERT(%s) FAILED: %s:%d\n",
          "!\"Invalid probabilities (_GetRandomItemPowerEntry)\"",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
          543);
        return 0;
      }
      return 0;
    }
LABEL_19:
    dword_0 = 0;
    return 0;
  }
  Random = Random::GetRandom(v6, v7, v5);
  v10 = *((_DWORD *)this + 1);
  if ( v10 )
  {
    v11 = *((_DWORD *)this + 2);
    v12 = Random;
    v13 = *(char *)(v11 + 8);
    if ( Random < v13 )
      return 0;
    result = 0;
    while ( 1 )
    {
      ++result;
      v12 -= v13;
      if ( result == v10 )
        break;
      v13 = *(char *)(v11 + 20);
      v11 += 12;
      if ( v13 > v12 )
        return result;
    }
  }
  if ( gAssertLevel == 2 )
    goto LABEL_19;
  if ( gAssertLevel == 1 )
  {
    fprintf(
      (FILE *)&_sF + 2,
      "ASSERT(%s) FAILED: %s:%d\n",
      "!\"WTF! Something went wrong guys! (_GetRandomItemPowerEntry)\"",
      "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
      557);
    return 0;
  }
  return 0;
}


// ===== 4020b4 ItemInventory::CalcLootItemValue(ItemInstance *,int) =====
void __fastcall ItemInventory::CalcLootItemValue(ItemInventory *this, int a2, int a3)
{
  _DWORD *Item; // r0
  int v6; // r1
  bool v7; // r2
  unsigned int v8; // r4
  int v9; // r6
  int v10; // r7
  int Power; // r0
  int v12; // r4

  Item = (_DWORD *)ItemInstance::GetItem(this);
  if ( Item[22] == 13 )
  {
    v12 = Item[27];
    v9 = (int)(float)((float)(int)(Random::GetRandom(Item[28] + 1 - v12, v6, v7) + v12)
                    * (float)((float)((float)(a2 >> 8) + 100.0) / 100.0));
  }
  else
  {
    v8 = 0;
    v9 = Item[27] * Item[28];
    while ( v8 < ItemInstance::GetNumPowers(this) )
    {
      v10 = *(_DWORD *)(ItemInstance::GetPower(this, v8) + 32);
      Power = ItemInstance::GetPower(this, v8++);
      v9 += *(_DWORD *)(Power + 24) * v10;
    }
  }
  ItemInstance::SetValue(this, v9);
}


// ===== 402184 std::allocator<std::priv::_Rb_tree_node<int>>::allocate(uint,void const*) [clone] =====
void *std::allocator<std::priv::_Rb_tree_node<int>>::allocate()
{
  size_t v1; // [sp+4h] [bp-8h] BYREF

  v1 = 20;
  return __ZNSt12__node_alloc11_M_allocateERj_veneer(&v1);
}


// ===== 4021a4 std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_insert(std::priv::_Rb_tree_node_base *,int const&,std::priv::_Rb_tree_node_base *,std::priv::_Rb_tree_node_base *) [clone] =====
_DWORD *__fastcall std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_insert(
        _DWORD *a1,
        _DWORD *a2,
        _DWORD *a3,
        int *a4,
        int a5)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r6
  int v9; // r1
  _DWORD *v10; // r2
  int v11; // r1
  _DWORD *v13; // r0
  int v14; // r3

  if ( a2 == a3 )
  {
    v8 = std::allocator<std::priv::_Rb_tree_node<int>>::allocate();
    v11 = *a4;
    v8[3] = 0;
    v8[4] = v11;
    v8[2] = 0;
    a2[2] = v8;
    a2[1] = v8;
    a2[3] = v8;
    v10 = a3;
  }
  else if ( a5 || *a4 < a3[4] )
  {
    v7 = std::allocator<std::priv::_Rb_tree_node<int>>::allocate();
    v8 = v7;
    v9 = *a4;
    v7[3] = 0;
    v7[4] = v9;
    v7[2] = 0;
    v10 = a3;
    a3[2] = v7;
    if ( a3 == (_DWORD *)a2[2] )
      a2[2] = v7;
  }
  else
  {
    v13 = std::allocator<std::priv::_Rb_tree_node<int>>::allocate();
    v8 = v13;
    v14 = *a4;
    v13[3] = 0;
    v13[2] = 0;
    v13[4] = v14;
    v10 = a3;
    a3[3] = v13;
    if ( a3 == (_DWORD *)a2[3] )
      a2[3] = v13;
  }
  v8[1] = v10;
  std::priv::_Rb_global<bool>::_Rebalance((int)v8, a2 + 1);
  ++a2[4];
  *a1 = v8;
  return a1;
}


// ===== 4022c4 std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::insert_unique(int const&) =====
int __fastcall std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::insert_unique(
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
    std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_insert(
      &v17,
      a2,
      v3,
      a3,
      (int)v3);
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
      std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_insert(
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


// ===== 402444 std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_erase(std::priv::_Rb_tree_node_base *) =====
void __fastcall std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_erase(
        int a1,
        _DWORD *a2)
{
  _DWORD *v2; // r4
  _DWORD *v4; // r5

  v2 = a2;
  if ( a2 )
  {
    do
    {
      std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_erase(
        a1,
        v2[3]);
      v4 = (_DWORD *)v2[2];
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, 0x14u);
      v2 = v4;
    }
    while ( v4 );
  }
}


// ===== 40247c std::vector<ItemInventory::LootInfo,std::allocator<ItemInventory::LootInfo>>::~vector() =====
int __fastcall std::vector<ItemInventory::LootInfo>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFF0;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 4024bc std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>>::~vector() =====
int __fastcall std::vector<Structs::LootEntry const*>::~vector(int a1)
{
  void *v2; // r0
  size_t v3; // r1

  v2 = *(void **)a1;
  if ( !v2 )
    return a1;
  v3 = (*(_DWORD *)(a1 + 8) - (_DWORD)v2) & 0xFFFFFFFC;
  if ( v3 <= 0x80 )
  {
    __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v2, v3);
    return a1;
  }
  CustomFree(v2);
  return a1;
}


// ===== 4024fc std::allocator<ItemInventory::LootInfo>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<ItemInventory::LootInfo>::_M_allocate(int a1, unsigned int a2, size_t *a3)
{
  void *result; // r0
  size_t __n; // [sp+4h] [bp-4h] BYREF

  if ( a2 > 0xFFFFFFF )
  {
    puts("out of memory\n");
    exit(1);
  }
  if ( !a2 )
    return nullptr;
  __n = 16 * a2;
  if ( 16 * a2 > 0x80 )
    result = CustomAlloc(16 * a2);
  else
    result = __ZNSt12__node_alloc11_M_allocateERj_veneer(&__n);
  *a3 = __n >> 4;
  return result;
}


// ===== 40256c std::vector<ItemInventory::LootInfo,std::allocator<ItemInventory::LootInfo>>::_M_insert_overflow_aux(ItemInventory::LootInfo*,ItemInventory::LootInfo const&,std::__false_type const&,uint,bool) [clone] =====
void __fastcall std::vector<ItemInventory::LootInfo>::_M_insert_overflow_aux(void **a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  _DWORD *v8; // r0
  char *v9; // r7
  _DWORD *v10; // r6
  int v11; // r10
  _DWORD *v12; // r10
  int v13; // r5
  unsigned int v14; // r4
  _DWORD *v15; // r12
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r1
  int v21; // r2
  int v22; // r3
  _BYTE *v23; // r0
  _BYTE *v24; // r3
  _DWORD *v25; // r10
  size_t v26; // r1
  size_t v27; // r3
  size_t v28; // [sp+4h] [bp-4h] BYREF

  v5 = ((_BYTE *)a1[1] - (_BYTE *)*a1) >> 4;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0xFFFFFFF || v5 > v6 )
    v6 = 0xFFFFFFF;
  v28 = v6;
  v8 = std::allocator<ItemInventory::LootInfo>::_M_allocate((int)(a1 + 2), v6, &v28);
  v9 = (char *)*a1;
  v10 = v8;
  v11 = (a2 - (int)*a1) >> 4;
  if ( v11 > 0 )
  {
    v13 = v11;
    v14 = 0;
    do
    {
      v15 = &v10[v14 / 4];
      --v13;
      v16 = *(_DWORD *)&v9[v14];
      v17 = *(_DWORD *)&v9[v14 + 4];
      v18 = *(_DWORD *)&v9[v14 + 8];
      v19 = *(_DWORD *)&v9[v14 + 12];
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
  v20 = a3[1];
  v21 = a3[2];
  v22 = a3[3];
  *v12 = *a3;
  v12[1] = v20;
  v12[2] = v21;
  v12[3] = v22;
  v23 = *a1;
  v24 = a1[1];
  v25 = v12 + 4;
  if ( v24 != *a1 )
    v24 += 16 * ~((unsigned int)(v24 - 16 - v23) >> 4);
  if ( v24 )
  {
    v26 = ((_BYTE *)a1[2] - v24) & 0xFFFFFFF0;
    if ( v26 > 0x80 )
      CustomFree(v23);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v23, v26);
  }
  v27 = v28;
  *a1 = v10;
  a1[1] = v25;
  a1[2] = &v10[4 * v27];
}


// ===== 40266c std::allocator<Structs::LootEntry const*>::_M_allocate(uint,uint &) =====
void *__fastcall std::allocator<Structs::LootEntry const*>::_M_allocate(int a1, unsigned int a2, size_t *a3)
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


// ===== 4026dc std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>>::_M_insert_overflow(Structs::LootEntry const**,Structs::LootEntry const* const&,std::__true_type const&,uint,bool) [clone] =====
void __fastcall std::vector<Structs::LootEntry const*>::_M_insert_overflow(int a1, int a2, _DWORD *a3)
{
  unsigned int v5; // r3
  unsigned int v6; // r1
  char *v8; // r0
  char *v9; // r5
  size_t v10; // r6
  char *v11; // r6
  _DWORD *v12; // r6
  void *v13; // r0
  size_t v14; // r1
  size_t v15; // r3
  size_t v16; // [sp+4h] [bp-8h] BYREF

  v5 = (*(_DWORD *)(a1 + 4) - *(_DWORD *)a1) >> 2;
  if ( v5 )
    v6 = 2 * v5;
  else
    v6 = 1;
  if ( v6 > 0x3FFFFFFF || v5 > v6 )
    v6 = 0x3FFFFFFF;
  v16 = v6;
  v8 = (char *)std::allocator<Structs::LootEntry const*>::_M_allocate(a1 + 8, v6, &v16);
  v9 = v8;
  v10 = a2 - *(_DWORD *)a1;
  if ( v10 )
    v11 = (char *)memmove(v8, *(const void **)a1, v10) + v10;
  else
    v11 = v8;
  *(_DWORD *)v11 = *a3;
  v12 = v11 + 4;
  v13 = *(void **)a1;
  if ( *(_DWORD *)a1 )
  {
    v14 = (*(_DWORD *)(a1 + 8) - (_DWORD)v13) & 0xFFFFFFFC;
    if ( v14 > 0x80 )
      CustomFree(v13);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v13, v14);
  }
  v15 = v16;
  *(_DWORD *)a1 = v9;
  *(_DWORD *)(a1 + 4) = v12;
  *(_DWORD *)(a1 + 8) = &v9[4 * v15];
}


// ===== 4027a4 ItemInventory::_IsLootEntryUsingPct(Structs::LootEntry const&) =====
bool __fastcall ItemInventory::_IsLootEntryUsingPct(ItemInventory *this, const Structs::LootEntry *a2)
{
  int Switch; // r7
  std::string v5; // [sp+4h] [bp-1Ch] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v5, "InfiniteLootDrops");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v5);
  std::string::~string(&v5);
  return Switch || *((_DWORD *)this + 5) <= 0x64u;
}


// ===== 402854 ItemInventory::_GetEffectiveProb(Structs::LootEntry const&) =====
int __fastcall ItemInventory::_GetEffectiveProb(ItemInventory *this, const Structs::LootEntry *a2)
{
  int v4; // r5
  int v5; // r6
  int v6; // r8
  int v7; // r9
  PlayerManager *v8; // r4
  int NumPlayerCharacterMage; // r7
  int NumPlayerCharacterRogue; // r10

  if ( ItemInventory::_IsLootEntryUsingPct(this, a2) )
    return 0;
  v4 = *((_DWORD *)this + 8);
  v5 = *((_DWORD *)this + 6);
  v6 = *((_DWORD *)this + 3);
  v7 = *((_DWORD *)this + 7);
  v8 = (PlayerManager *)dword_99F76C;
  NumPlayerCharacterMage = PlayerManager::GetNumPlayerCharacterMage((PlayerManager *)dword_99F76C);
  NumPlayerCharacterRogue = PlayerManager::GetNumPlayerCharacterRogue(v8);
  return v7 * NumPlayerCharacterRogue
       + v6 * NumPlayerCharacterMage
       + v5
       + v4 * PlayerManager::GetNumPlayerCharacterWarrior(v8);
}


// ===== 4028d0 ItemInventory::_GetRandomLootEntry(std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>> const&) =====
unsigned int __fastcall ItemInventory::_GetRandomLootEntry(int *a1, const Structs::LootEntry *a2)
{
  int v2; // r3
  unsigned int v4; // r4
  unsigned int v5; // r6
  int v6; // r2
  int EffectiveProb; // r0
  unsigned int v8; // r4
  unsigned int Random; // r0
  const Structs::LootEntry *v11; // r1
  int v12; // r3
  unsigned int v13; // r6
  unsigned int v14; // r0

  v2 = *a1;
  if ( !((unsigned int)(a1[1] - *a1) >> 2) )
    return 0;
  v4 = 0;
  v5 = 0;
  do
  {
    while ( ItemInventory::_IsLootEntryUsingPct(*(ItemInventory **)(v2 + 4 * v4), a2) )
    {
      v2 = *a1;
      ++v4;
      v6 = a1[1] - *a1;
      if ( v4 >= v6 >> 2 )
        goto LABEL_6;
    }
    EffectiveProb = ItemInventory::_GetEffectiveProb(*(ItemInventory **)(*a1 + 4 * v4), a2);
    v2 = *a1;
    ++v4;
    v5 += EffectiveProb;
    v6 = a1[1] - *a1;
  }
  while ( v4 < v6 >> 2 );
LABEL_6:
  if ( !v5 )
    return 0;
  Random = Random::GetRandom(v5, (int)a2, v6);
  v12 = *a1;
  if ( !((unsigned int)(a1[1] - *a1) >> 2) )
  {
LABEL_15:
    if ( gAssertLevel == 2 )
    {
      v8 = 0;
      dword_0 = 0;
      return v8;
    }
    if ( gAssertLevel == 1 )
    {
      v8 = 0;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "!\"WTF! Something went wrong guys! (_GetRandomLootEntry)\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
        327);
      return v8;
    }
    return 0;
  }
  v13 = Random;
  v8 = 0;
  while ( 1 )
  {
    while ( ItemInventory::_IsLootEntryUsingPct(*(ItemInventory **)(v12 + 4 * v8), v11) )
    {
      v12 = *a1;
      if ( ++v8 >= (a1[1] - *a1) >> 2 )
        goto LABEL_15;
    }
    v14 = ItemInventory::_GetEffectiveProb(*(ItemInventory **)(*a1 + 4 * v8), v11);
    if ( v14 > v13 )
      return v8;
    v12 = *a1;
    ++v8;
    v13 -= v14;
    if ( v8 >= (a1[1] - *a1) >> 2 )
      goto LABEL_15;
  }
}


// ===== 402a60 ItemInventory::_GetRandomLootEntry(Structs::Loot const&) =====
unsigned int __fastcall ItemInventory::_GetRandomLootEntry(ItemInventory *this, const Structs::Loot *a2)
{
  int v3; // r5
  unsigned int v4; // r6
  unsigned int v5; // r7
  bool v6; // r2
  unsigned int v7; // r6
  unsigned int Random; // r0
  const Structs::LootEntry *v10; // r1
  int v11; // r5
  unsigned int v12; // r7
  unsigned int EffectiveProb; // r0

  if ( !*((_DWORD *)this + 3) )
    return 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    while ( 1 )
    {
      ++v4;
      if ( !ItemInventory::_IsLootEntryUsingPct((ItemInventory *)(*((_DWORD *)this + 4) + v3), a2) )
        break;
      v3 += 36;
      if ( *((_DWORD *)this + 3) <= v4 )
        goto LABEL_6;
    }
    v5 += ItemInventory::_GetEffectiveProb((ItemInventory *)(*((_DWORD *)this + 4) + v3), a2);
    v3 += 36;
  }
  while ( *((_DWORD *)this + 3) > v4 );
LABEL_6:
  if ( !v5 )
    return 0;
  Random = Random::GetRandom(v5, (int)a2, v6);
  if ( !*((_DWORD *)this + 3) )
  {
LABEL_15:
    if ( gAssertLevel == 2 )
    {
      v7 = 0;
      dword_0 = 0;
      return v7;
    }
    if ( gAssertLevel == 1 )
    {
      v7 = 0;
      fprintf(
        (FILE *)&_sF + 2,
        "ASSERT(%s) FAILED: %s:%d\n",
        "!\"WTF! Something went wrong guys! (_GetRandomLootEntry)\"",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
        290);
      return v7;
    }
    return 0;
  }
  v11 = 0;
  v12 = Random;
  v7 = 0;
  while ( 1 )
  {
    while ( ItemInventory::_IsLootEntryUsingPct((ItemInventory *)(*((_DWORD *)this + 4) + v11), v10) )
    {
      ++v7;
      v11 += 36;
      if ( *((_DWORD *)this + 3) <= v7 )
        goto LABEL_15;
    }
    EffectiveProb = ItemInventory::_GetEffectiveProb((ItemInventory *)(*((_DWORD *)this + 4) + v11), v10);
    if ( EffectiveProb > v12 )
      return v7;
    ++v7;
    v12 -= EffectiveProb;
    v11 += 36;
    if ( *((_DWORD *)this + 3) <= v7 )
      goto LABEL_15;
  }
}


// ===== 402bdc ItemInventory::_DoPctRoll(Structs::LootEntry const&) =====
int __fastcall ItemInventory::_DoPctRoll(ItemInventory *this, const Structs::LootEntry *a2)
{
  int Switch; // r10
  const Structs::LootEntry *v4; // r1
  int v6; // r1
  bool v7; // r2
  std::string v8; // [sp+Ch] [bp-38h] BYREF
  std::string v9; // [sp+24h] [bp-20h] BYREF

  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string(&v9, "InfiniteLootDrops");
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v9);
  std::string::~string(&v9);
  if ( Switch )
    return 1;
  if ( ItemInventory::_IsLootEntryUsingPct(this, v4)
    && (signed int)Random::GetRandom((unsigned int)&dword_64, v6, v7) <= *((_DWORD *)this + 5) )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string(&v8, "isTracingItemPctRoll");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v8);
    std::string::~string(&v8);
    return 1;
  }
  return 0;
}


// ===== 402ce4 ItemInventory::_DoPctRolls(std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>> &,std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>> const&) =====
void __fastcall ItemInventory::_DoPctRolls(int a1, int *a2)
{
  int v2; // r3
  int *v3; // r5
  int v5; // r7
  int v6; // r4
  int v7; // r0
  int v8; // r3

  v2 = *a2;
  v3 = a2;
  v5 = (a2[1] - *a2) >> 2;
  if ( v5 )
  {
    v6 = 0;
    while ( 1 )
    {
      v7 = ItemInventory::_DoPctRoll(*(ItemInventory **)(v2 + 4 * v6), (const Structs::LootEntry *)a2);
      v8 = 4 * v6;
      if ( !v7 )
        goto LABEL_3;
      a2 = *(int **)(a1 + 4);
      if ( a2 == *(int **)(a1 + 8) )
        break;
      ++v6;
      *a2 = *(_DWORD *)(*v3 + v8);
      *(_DWORD *)(a1 + 4) += 4;
      if ( v6 == v5 )
        return;
LABEL_4:
      v2 = *v3;
    }
    std::vector<Structs::LootEntry const*>::_M_insert_overflow(a1, (int)a2, (_DWORD *)(*v3 + v8));
LABEL_3:
    if ( ++v6 == v5 )
      return;
    goto LABEL_4;
  }
}


// ===== 402d70 ItemInventory::_DoPctRolls(std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>> &,Structs::LootEntry const*,int) =====
void __fastcall ItemInventory::_DoPctRolls(int a1, ItemInventory *this, int a3)
{
  ItemInventory *v5; // r4
  int i; // r5
  ItemInventory *v7; // r3
  ItemInventory *v8; // [sp+4h] [bp-4h] BYREF

  if ( a3 > 0 )
  {
    v5 = this;
    for ( i = 0; i != a3; ++i )
    {
      while ( !ItemInventory::_DoPctRoll(v5, this) )
      {
LABEL_3:
        ++i;
        v5 = (ItemInventory *)((char *)v5 + 36);
        if ( i == a3 )
          return;
      }
      this = *(ItemInventory **)(a1 + 4);
      v7 = *(ItemInventory **)(a1 + 8);
      v8 = v5;
      if ( this == v7 )
      {
        std::vector<Structs::LootEntry const*>::_M_insert_overflow(a1, (int)this, &v8);
        goto LABEL_3;
      }
      *(_DWORD *)this = v5;
      *(_DWORD *)(a1 + 4) += 4;
      v5 = (ItemInventory *)((char *)v5 + 36);
    }
  }
}


// ===== 402dfc ItemInventory::_AddLootItems(std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>> const&,std::vector&<ItemInventory::LootInfo,std::allocator<std::vector&>>,bool) =====
int __fastcall ItemInventory::_AddLootItems(Structs::ItemListEntryList ***a1, int a2, int a3)
{
  const Structs::ItemListEntryList *v4; // r1
  int v5; // r3
  ItemInventory *v6; // r7
  unsigned int v7; // r9
  int v8; // r10
  int v9; // r5
  int v10; // r3
  _DWORD *v11; // r12
  _DWORD *v12; // r2
  int v13; // r1
  char v14; // r0
  Structs::ItemListEntryList *v15; // r1
  int v16; // r2
  int v17; // r3
  int v19; // r7
  int v20; // r3
  _DWORD *v21; // r12
  int v22; // r1
  bool v23; // zf
  char v24; // r0
  Structs::ItemListEntryList *v25; // r1
  int v26; // r2
  int v27; // r3
  Structs::ItemListEntryList *v28; // [sp+10h] [bp-A4h]
  Structs::ItemListEntryList **i; // [sp+2Ch] [bp-88h]
  int v32; // [sp+54h] [bp-60h] BYREF
  Structs::ItemListEntryList *v33; // [sp+58h] [bp-5Ch]
  int v34; // [sp+5Ch] [bp-58h]
  int v35; // [sp+60h] [bp-54h]
  int v36; // [sp+64h] [bp-50h] BYREF
  Structs::ItemListEntryList *v37; // [sp+68h] [bp-4Ch]
  int v38; // [sp+6Ch] [bp-48h]
  int v39; // [sp+70h] [bp-44h]
  std::string v40; // [sp+7Ch] [bp-38h] BYREF
  std::string v41; // [sp+94h] [bp-20h] BYREF

  for ( i = *a1; i != a1[1]; ++i )
  {
    while ( 1 )
    {
      v28 = *i;
      if ( !*i )
      {
        if ( gAssertLevel == 2 )
        {
          *(_DWORD *)*i = *i;
        }
        else if ( gAssertLevel == 1 )
        {
          fprintf(
            (FILE *)&_sF + 2,
            "ASSERT(%s) FAILED: %s:%d\n",
            "lootEntry",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
            339);
        }
      }
      v4 = v28;
      v5 = *((_DWORD *)v28 + 1);
      if ( v5 < 0 || v5 >= Arrays::ItemList::size )
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
            "lootEntry->ItemListID >= 0 && lootEntry->ItemListID < (int)Arrays::ItemList::size",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
            340);
          v5 = *((_DWORD *)v28 + 1);
        }
      }
      v6 = (ItemInventory *)(Arrays::ItemList::members + 12 * v5);
      if ( a3 )
        break;
      v19 = *((_DWORD *)v6 + 2) + 12 * ItemInventory::_GetRandomItem(v6, v4);
      v20 = *(_DWORD *)(v19 + 4);
      if ( v20 < 0 || v20 >= Arrays::ItemTable::size )
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
            "itemEntry.ItemID >= 0 && itemEntry.ItemID < (int)Arrays::ItemTable::size",
            "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
            361);
        }
      }
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v40, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
      std::string::~string(&v40);
      v21 = *(_DWORD **)(a2 + 4);
      v22 = Arrays::ItemTable::members + 164 * *(_DWORD *)(v19 + 4);
      v23 = v21 == *(_DWORD **)(a2 + 8);
      v24 = *(_BYTE *)(v19 + 10);
      LOWORD(v32) = *(_DWORD *)(v19 + 4);
      LOBYTE(v34) = v24;
      v33 = v28;
      v35 = v22;
      if ( v23 )
      {
        std::vector<ItemInventory::LootInfo>::_M_insert_overflow_aux(a2, v21, &v32);
        if ( ++i == a1[1] )
          return 16556;
      }
      else
      {
        v25 = v33;
        v26 = v34;
        v27 = v35;
        *v21 = v32;
        v21[1] = v25;
        v21[2] = v26;
        v21[3] = v27;
        *(_DWORD *)(a2 + 4) += 16;
        if ( ++i == a1[1] )
          return 16556;
      }
    }
    if ( *((_DWORD *)v6 + 1) )
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *((_DWORD *)v6 + 2) + v8;
        v10 = *(_DWORD *)(v9 + 4);
        if ( v10 < 0 || v10 >= Arrays::ItemTable::size )
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
              "itemEntry.ItemID >= 0 && itemEntry.ItemID < (int)Arrays::ItemTable::size",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
              350);
          }
        }
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v41, "isTracingItemInventory_Loot");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
        std::string::~string(&v41);
        v11 = *(_DWORD **)(a2 + 4);
        v12 = *(_DWORD **)(a2 + 8);
        v13 = Arrays::ItemTable::members + 164 * *(_DWORD *)(v9 + 4);
        v14 = *(_BYTE *)(v9 + 10);
        LOWORD(v36) = *(_DWORD *)(v9 + 4);
        LOBYTE(v38) = v14;
        v39 = v13;
        v37 = v28;
        if ( v11 == v12 )
        {
          std::vector<ItemInventory::LootInfo>::_M_insert_overflow_aux(a2, v11, &v36);
        }
        else
        {
          v15 = v37;
          v16 = v38;
          v17 = v39;
          *v11 = v36;
          v11[1] = v15;
          v11[2] = v16;
          v11[3] = v17;
          *(_DWORD *)(a2 + 4) += 16;
        }
        ++v7;
        v8 += 12;
      }
      while ( *((_DWORD *)v6 + 1) > v7 );
    }
  }
  return 16556;
}


// ===== 403310 ItemInventory::_AddLootItemPowers(Structs::LootEntry const*,ItemInstance *,int,int,int) =====
void __fastcall ItemInventory::_AddLootItemPowers(
        ItemInventory *this,
        const Structs::LootEntry *a2,
        int a3,
        unsigned int a4,
        int a5,
        int a6)
{
  int v7; // r0
  ItemInventory *v10; // r7
  unsigned int v11; // r3
  unsigned int v12; // r11
  const Structs::ItemPowerEntryList *v13; // r1
  int v14; // r8
  int v15; // r3
  _DWORD *v16; // r5
  int v17; // r3
  int v18; // r3
  int v19; // r10
  int v20; // r9
  int v21; // r12
  int v22; // r0
  _BYTE *v23; // r3
  _BYTE *v24; // r1
  int v25; // r2
  bool v26; // cc
  _BYTE *v27; // r2
  unsigned int v28; // r8
  int v29; // r10
  unsigned int i; // r8
  int v31; // r1
  _DWORD *v32; // r6
  int v33; // r3
  int v34; // r9
  int v35; // r11
  int v36; // lr
  int v37; // r12
  _BYTE *v38; // r3
  _BYTE *v39; // r0
  int v40; // r2
  bool v41; // cc
  _BYTE *v42; // r2
  unsigned int v43; // r5
  int v44; // r4
  unsigned int v45; // r5
  unsigned int v47; // [sp+10h] [bp-A4h]
  unsigned int ProbQuantity; // [sp+18h] [bp-9Ch]
  _BYTE v49[4]; // [sp+30h] [bp-84h] BYREF
  _BYTE *v50; // [sp+34h] [bp-80h]
  _BYTE *v51; // [sp+38h] [bp-7Ch]
  _BYTE *v52; // [sp+3Ch] [bp-78h]
  int v53; // [sp+40h] [bp-74h]
  _BYTE v54[8]; // [sp+48h] [bp-6Ch] BYREF
  _BYTE v55[8]; // [sp+50h] [bp-64h] BYREF
  std::string v56; // [sp+64h] [bp-50h] BYREF
  std::string v57; // [sp+7Ch] [bp-38h] BYREF
  std::string v58; // [sp+94h] [bp-20h] BYREF

  v7 = *((_DWORD *)this + 2);
  if ( v7 != -1 )
  {
    if ( v7 < 0 || v7 >= Arrays::ItemPowerList::size )
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
          "lootEntry->ItemPowerList >= 0 && lootEntry->ItemPowerList < (int)Arrays::ItemPowerList::size",
          "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
          408);
      }
    }
    if ( a4 == -1 )
      ProbQuantity = ItemInventory::_GetProbQuantity(*((ItemInventory **)this + 4), a3 >> 8, a3);
    else
      ProbQuantity = a4;
    v10 = (ItemInventory *)(Arrays::ItemPowerList::members + 12 * *((_DWORD *)this + 2));
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v58, "isTracingItemInventory_Loot");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v58);
    std::string::~string(&v58);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v57, "isTracingItemInventory_Loot");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v57);
    std::string::~string(&v57);
    v11 = *((_DWORD *)v10 + 1);
    if ( ProbQuantity >= v11 )
    {
      if ( v11 )
      {
        v44 = 0;
        v45 = 0;
        do
        {
          ItemInstance::AddPower(a2, *(_DWORD *)(*((_DWORD *)v10 + 2) + v44 + 4), a5);
          ++v45;
          v44 += 12;
        }
        while ( *((_DWORD *)v10 + 1) > v45 );
      }
    }
    else
    {
      v12 = 0;
      v49[0] = 0;
      v50 = nullptr;
      v51 = v49;
      v52 = v49;
      v53 = 0;
      while ( ProbQuantity > ItemInstance::GetNumPowers(a2) )
      {
        v14 = *((_DWORD *)v10 + 2) + 12 * ItemInventory::_GetRandomItemPowerEntry(v10, v13);
        v15 = *(_DWORD *)(v14 + 4);
        if ( v15 < 0 || v15 >= Arrays::ItemPowerTable::size )
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
              "powerEntry.Power >= 0 && powerEntry.Power < (int)Arrays::ItemPowerTable::size",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
              443);
            v15 = *(_DWORD *)(v14 + 4);
          }
        }
        v16 = (_DWORD *)(Arrays::ItemPowerTable::members + 40 * v15);
        v17 = v16[9];
        if ( v17 < 0 || v17 >= Arrays::ItemBonusAttrMonopoly::size )
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
              "power.AttrMonopoly >= 0 && power.AttrMonopoly < (int)Arrays::ItemBonusAttrMonopoly::size",
              "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
              446);
            v17 = v16[9];
          }
        }
        v18 = Arrays::ItemBonusAttrMonopoly::members + 12 * v17;
        v19 = *(_DWORD *)(v18 + 4);
        if ( v19 )
        {
          v20 = *(_DWORD *)(v18 + 8);
          v21 = 0;
          while ( 1 )
          {
            if ( !v50 )
              goto LABEL_81;
            v22 = *(_DWORD *)(v20 + 4 * v21);
            v23 = v50;
            v24 = v49;
            while ( 1 )
            {
              v25 = *((_DWORD *)v23 + 4);
              v26 = v25 < v22;
              if ( v25 >= v22 )
                v27 = *((_BYTE **)v23 + 2);
              else
                v27 = *((_BYTE **)v23 + 3);
              if ( v26 )
                v23 = v24;
              if ( !v27 )
                break;
              v24 = v23;
              v23 = v27;
            }
            if ( v23 == v49 )
            {
LABEL_81:
              v23 = v49;
            }
            else if ( *((_DWORD *)v23 + 4) > v22 )
            {
              v23 = v49;
            }
            if ( v23 != v49 )
              break;
            if ( ++v21 == v19 )
              goto LABEL_38;
          }
          ++v12;
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v56, "isTracingItemInventory_Loot");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v56);
          std::string::~string(&v56);
          if ( v12 > 9 )
            break;
        }
        else
        {
LABEL_38:
          ItemInstance::AddPower(a2, *(_DWORD *)(v14 + 4), a5);
          if ( v16[3] )
          {
            v28 = 0;
            do
              std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::insert_unique(
                v55,
                v49,
                v16[4] + 16 * v28++ + 4);
            while ( v16[3] > v28 );
          }
          v12 = 0;
        }
      }
      if ( ProbQuantity > ItemInstance::GetNumPowers(a2) )
      {
        v47 = *((_DWORD *)v10 + 1);
        if ( v47 )
        {
          v29 = 0;
          for ( i = 0; i < v47; ++i )
          {
            v31 = *(_DWORD *)(*((_DWORD *)v10 + 2) + v29 + 4);
            v32 = (_DWORD *)(Arrays::ItemPowerTable::members + 40 * v31);
            v33 = Arrays::ItemBonusAttrMonopoly::members + 12 * v32[9];
            v34 = *(_DWORD *)(v33 + 4);
            if ( v34 )
            {
              v35 = *(_DWORD *)(v33 + 8);
              v36 = 0;
              while ( 1 )
              {
                if ( !v50 )
                  goto LABEL_82;
                v37 = *(_DWORD *)(v35 + 4 * v36);
                v38 = v50;
                v39 = v49;
                while ( 1 )
                {
                  v40 = *((_DWORD *)v38 + 4);
                  v41 = v37 <= v40;
                  if ( v37 <= v40 )
                    v42 = *((_BYTE **)v38 + 2);
                  else
                    v42 = *((_BYTE **)v38 + 3);
                  if ( !v41 )
                    v38 = v39;
                  if ( !v42 )
                    break;
                  v39 = v38;
                  v38 = v42;
                }
                if ( v38 == v49 )
                {
LABEL_82:
                  v38 = v49;
                }
                else if ( v37 < *((_DWORD *)v38 + 4) )
                {
                  v38 = v49;
                }
                if ( v38 != v49 )
                  break;
                if ( ++v36 == v34 )
                  goto LABEL_67;
              }
            }
            else
            {
LABEL_67:
              ItemInstance::AddPower(a2, v31, a5);
              if ( ProbQuantity <= ItemInstance::GetNumPowers(a2) )
                break;
              if ( v32[3] )
              {
                v43 = 0;
                do
                  std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::insert_unique(
                    v54,
                    v49,
                    v32[4] + 16 * v43++ + 4);
                while ( v32[3] > v43 );
                v47 = *((_DWORD *)v10 + 1);
              }
              else
              {
                v47 = *((_DWORD *)v10 + 1);
              }
            }
            v29 += 12;
          }
        }
      }
      ItemInstance::GetNumPowers(a2);
      if ( v53 )
        std::priv::_Rb_tree<int,std::less<int>,int,std::priv::_Identity<int>,std::priv::_SetTraitsT<int>,std::allocator<int>>::_M_erase(
          v49,
          v50);
    }
  }
}


// ===== 4039a0 ItemInventory::_AddLootTable(int,std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>> &,std::vector<Structs::LootEntry const*,std::allocator<Structs::LootEntry const*>>*) =====
void *__fastcall ItemInventory::_AddLootTable(int a1, int a2, int a3)
{
  int v6; // r6
  int v7; // r2
  int v8; // r7
  unsigned int v9; // r10
  _DWORD *v10; // r1
  int v11; // r3
  int v12; // r7
  unsigned int v13; // r8
  _DWORD *v14; // r1
  _DWORD *v15; // r2
  int v16; // r3
  unsigned int v17; // r7
  int v18; // r2
  void **p_p; // r2
  void *result; // r0
  size_t v21; // r1
  int v22; // r8
  _DWORD *v23; // r1
  const Structs::Loot *v24; // r1
  Structs::Loot *i; // r7
  int RandomLootEntry; // r10
  int *v27; // r1
  int *v28; // r3
  int v29; // r2
  Structs::Loot *ProbQuantity; // [sp+Ch] [bp-1A0h]
  int v31; // [sp+10h] [bp-19Ch]
  void *__p; // [sp+20h] [bp-18Ch] BYREF
  int v33; // [sp+24h] [bp-188h]
  int v34; // [sp+28h] [bp-184h]
  _DWORD v35[3]; // [sp+2Ch] [bp-180h] BYREF
  std::string v36; // [sp+6Ch] [bp-140h] BYREF
  std::string v37; // [sp+84h] [bp-128h] BYREF
  std::string v38; // [sp+9Ch] [bp-110h] BYREF
  std::string v39; // [sp+B4h] [bp-F8h] BYREF
  std::string v40; // [sp+CCh] [bp-E0h] BYREF
  std::string v41; // [sp+E4h] [bp-C8h] BYREF
  std::string v42; // [sp+FCh] [bp-B0h] BYREF
  std::string v43; // [sp+114h] [bp-98h] BYREF
  std::string v44; // [sp+12Ch] [bp-80h] BYREF
  std::string v45; // [sp+144h] [bp-68h] BYREF
  std::string v46; // [sp+15Ch] [bp-50h] BYREF
  std::string v47; // [sp+174h] [bp-38h] BYREF
  std::string v48; // [sp+18Ch] [bp-20h] BYREF

  if ( a1 < 0 || a1 >= Arrays::LootTable::size )
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
        "lootTableId >= 0 && lootTableId < (int)Arrays::LootTable::size",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp",
        160);
    }
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v48, "isTracingItemInventory_Loot");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v48);
  std::string::~string(&v48);
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v47, "isTracingItemInventory_Loot");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v47);
  std::string::~string(&v47);
  v6 = Arrays::LootTable::members + 36 * a1;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v46, "isTracingItemInventory_Loot");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v46);
  std::string::~string(&v46);
  if ( *(_DWORD *)(v6 + 20) )
  {
    v8 = 0;
    v9 = 0;
    do
    {
      while ( 1 )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v45, "isTracingItemInventory_Loot");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v45);
        std::string::~string(&v45);
        v10 = *(_DWORD **)(a2 + 4);
        v7 = *(_DWORD *)(a2 + 8);
        v11 = *(_DWORD *)(v6 + 24) + v8;
        v35[2] = v11;
        if ( v10 == (_DWORD *)v7 )
          break;
        *v10 = v11;
        ++v9;
        v8 += 36;
        *(_DWORD *)(a2 + 4) += 4;
        if ( *(_DWORD *)(v6 + 20) <= v9 )
          goto LABEL_8;
      }
      std::vector<Structs::LootEntry const*>::_M_insert_overflow(a2);
      ++v9;
      v8 += 36;
    }
    while ( *(_DWORD *)(v6 + 20) > v9 );
  }
LABEL_8:
  if ( *(_DWORD *)(v6 + 12) )
  {
    if ( a3 )
    {
      v12 = 0;
      v13 = 0;
      do
      {
        while ( 1 )
        {
          v14 = *(_DWORD **)(a3 + 4);
          v15 = *(_DWORD **)(a3 + 8);
          v16 = *(_DWORD *)(v6 + 16) + v12;
          v35[1] = v16;
          if ( v14 == v15 )
            break;
          *v14 = v16;
          ++v13;
          v12 += 36;
          *(_DWORD *)(a3 + 4) += 4;
          if ( *(_DWORD *)(v6 + 12) <= v13 )
            goto LABEL_14;
        }
        std::vector<Structs::LootEntry const*>::_M_insert_overflow(a3);
        ++v13;
        v12 += 36;
      }
      while ( *(_DWORD *)(v6 + 12) > v13 );
    }
    else
    {
      ProbQuantity = (Structs::Loot *)ItemInventory::_GetProbQuantity(*(ItemInventory **)(v6 + 8), 0, v7);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v44, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v44);
      std::string::~string(&v44);
      if ( ProbQuantity )
      {
        v24 = (const Structs::Loot *)v35;
        for ( i = nullptr; i != ProbQuantity; i = (Structs::Loot *)((char *)i + 1) )
        {
          RandomLootEntry = ItemInventory::_GetRandomLootEntry((ItemInventory *)v6, v24);
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v43, "isTracingItemInventory_Loot");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v43);
          std::string::~string(&v43);
          v27 = *(int **)(a2 + 4);
          v28 = *(int **)(a2 + 8);
          v29 = *(_DWORD *)(v6 + 16) + 36 * RandomLootEntry;
          v35[0] = v29;
          if ( v27 == v28 )
          {
            std::vector<Structs::LootEntry const*>::_M_insert_overflow(a2);
          }
          else
          {
            *v27 = v29;
            *(_DWORD *)(a2 + 4) += 4;
          }
          v24 = ProbQuantity;
        }
        a3 = 0;
      }
      ItemInventory::_DoPctRolls(a2, *(ItemInventory **)(v6 + 16));
    }
  }
  else
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v42, "isTracingItemInventory_Loot");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v42);
    std::string::~string(&v42);
  }
LABEL_14:
  v17 = 0;
  __p = nullptr;
  v33 = 0;
  v34 = 0;
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  std::string::string((int)&v41, "isTracingItemInventory_Loot");
  DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
  std::string::~string(&v41);
  if ( *(_DWORD *)(v6 + 28) )
  {
    do
    {
      if ( a3 )
        p_p = (void **)a3;
      else
        p_p = &__p;
      ItemInventory::_AddLootTable(*(_DWORD *)(*(_DWORD *)(v6 + 32) + 4 * v17++), a2, p_p);
    }
    while ( *(_DWORD *)(v6 + 28) > v17 );
  }
  if ( a3 )
    goto LABEL_20;
  result = __p;
  if ( (unsigned int)(v33 - (_DWORD)__p) >> 2 )
  {
    v31 = ItemInventory::_GetProbQuantity(*(ItemInventory **)(v6 + 8), 0, v18);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v40, "isTracingItemInventory_Loot");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
    std::string::~string(&v40);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v39, "isTracingItemInventory_Loot");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v39);
    std::string::~string(&v39);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v38, "isTracingItemInventory_Loot");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v38);
    std::string::~string(&v38);
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v37, "isTracingItemInventory_Loot");
    DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v37);
    std::string::~string(&v37);
    if ( v31 )
    {
      do
      {
        while ( 1 )
        {
          v22 = ItemInventory::_GetRandomLootEntry(&__p);
          DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
          std::string::string((int)&v36, "isTracingItemInventory_Loot");
          DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v36);
          std::string::~string(&v36);
          v23 = *(_DWORD **)(a2 + 4);
          if ( v23 == *(_DWORD **)(a2 + 8) )
            break;
          ++a3;
          *v23 = *((_DWORD *)__p + v22);
          *(_DWORD *)(a2 + 4) += 4;
          if ( a3 == v31 )
            goto LABEL_37;
        }
        std::vector<Structs::LootEntry const*>::_M_insert_overflow(a2);
        ++a3;
      }
      while ( a3 != v31 );
    }
LABEL_37:
    ItemInventory::_DoPctRolls(a2, &__p);
LABEL_20:
    result = __p;
  }
  if ( result )
  {
    v21 = (v34 - (_DWORD)result) & 0xFFFFFFFC;
    if ( v21 > 0x80 )
      CustomFree(result);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(result, v21);
  }
  return result;
}


// ===== 40407c ItemInventory::AddLoot(int,int,int,int,bool) =====
void __fastcall ItemInventory::AddLoot(
        ItemInventory *this,
        int a2,
        ItemInstance *a3,
        ItemInstance *a4,
        int a5,
        bool a6)
{
  int Switch; // r8
  int v9; // r2
  int v10; // r3
  int v11; // r4
  int v12; // r9
  int v13; // r6
  int v14; // r5
  int CurrentLevel; // r7
  int v16; // r10
  int v17; // r2
  char v18; // r3
  ItemInstance *v19; // r5
  int v20; // r1
  int v21; // r2
  bool v22; // zf
  int v23; // [sp+4h] [bp-1D0h]
  ItemInventory *v26; // [sp+14h] [bp-1C0h]
  int v27; // [sp+40h] [bp-194h] BYREF
  int v28; // [sp+44h] [bp-190h]
  int v29; // [sp+48h] [bp-18Ch]
  int v30; // [sp+4Ch] [bp-188h] BYREF
  int v31; // [sp+50h] [bp-184h]
  int v32; // [sp+54h] [bp-180h]
  char v33[64]; // [sp+84h] [bp-150h] BYREF
  std::string v34; // [sp+C4h] [bp-110h] BYREF
  std::string v35; // [sp+DCh] [bp-F8h] BYREF
  std::string v36; // [sp+F4h] [bp-E0h] BYREF
  std::string v37; // [sp+10Ch] [bp-C8h] BYREF
  std::string v38; // [sp+124h] [bp-B0h] BYREF
  std::string v39; // [sp+13Ch] [bp-98h] BYREF
  std::string v40; // [sp+154h] [bp-80h] BYREF
  std::string v41; // [sp+16Ch] [bp-68h] BYREF
  std::string v42; // [sp+184h] [bp-50h] BYREF
  std::string v43; // [sp+19Ch] [bp-38h] BYREF
  std::string v44; // [sp+1B4h] [bp-20h] BYREF

  if ( a2 >= 0 && a2 < Arrays::LootTable::size )
  {
    DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
    std::string::string((int)&v44, "MP_MinimalRandoms");
    Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v44);
    std::string::~string(&v44);
    if ( !Switch )
    {
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v43, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v43);
      std::string::~string(&v43);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v42, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v42);
      std::string::~string(&v42);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      ItemInventory::_AddLootTable(a2, &v30, 0);
      if ( !((unsigned int)(v31 - v30) >> 2) )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v41, "isTracingItemInventory_Loot");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v41);
        std::string::~string(&v41);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v40, "isTracingItemInventory_Loot");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v40);
        std::string::~string(&v40);
LABEL_7:
        std::vector<Structs::LootEntry const*>::~vector(&v30);
        return;
      }
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v39, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v39);
      std::string::~string(&v39);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v38, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v38);
      std::string::~string(&v38);
      v9 = *((unsigned __int8 *)this + 45);
      v29 = 0;
      v27 = 0;
      v28 = 0;
      ItemInventory::_AddLootItems(&v30, &v27, v9);
      if ( !((unsigned int)(v28 - v27) >> 4) )
      {
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v37, "isTracingItemInventory_Loot");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v37);
        std::string::~string(&v37);
        DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
        std::string::string((int)&v36, "isTracingItemInventory_Loot");
        DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v36);
        std::string::~string(&v36);
        std::vector<ItemInventory::LootInfo>::~vector(&v27);
        goto LABEL_7;
      }
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v35, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v35);
      std::string::~string(&v35);
      DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
      std::string::string((int)&v34, "isTracingItemInventory_Loot");
      DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, &v34);
      std::string::~string(&v34);
      v10 = v28;
      if ( v27 != v28 )
      {
        v11 = v27 + 16;
        v26 = this;
        do
        {
          if ( (unsigned int)(*(_DWORD *)(*(_DWORD *)(v11 - 4) + 16) - 2) <= 1 )
          {
            v12 = *(_DWORD *)(dword_99F76C + 1732);
            if ( v12 <= 0 )
              goto LABEL_28;
          }
          else
          {
            v12 = 1;
          }
          v13 = 0;
          do
          {
            v14 = *(__int16 *)(v11 - 16);
            CurrentLevel = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
            if ( CurrentLevel )
              CurrentLevel = *(_DWORD *)(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst)
                                       + 280);
            if ( a6 || (v16 = v14 + 2, v14 + 2 >= (unsigned int)Arrays::ItemTable::size) )
            {
LABEL_21:
              v16 = v14;
              goto LABEL_22;
            }
            if ( CurrentLevel == 1 )
            {
              LC_API_STRCPY_0(v33, *(const char **)(Arrays::ItemTable::m_memberNames + 4 * v14));
              strcpy(&v33[LC_API_STRLEN_0(v33)], "_Hard");
              if ( LC_API_STRCMP_0(v33, *(const char **)(Arrays::ItemTable::m_memberNames + 4 * (v14 + 1))) )
                goto LABEL_21;
              v16 = v14 + 1;
            }
            else
            {
              if ( CurrentLevel != 2 )
                goto LABEL_21;
              LC_API_STRCPY_0(v33, *(const char **)(Arrays::ItemTable::m_memberNames + 4 * v14));
              strcpy(&v33[LC_API_STRLEN_0(v33)], "_VeryHard");
              if ( LC_API_STRCMP_0(v33, *(const char **)(Arrays::ItemTable::m_memberNames + 4 * v16)) )
                goto LABEL_21;
            }
LABEL_22:
            if ( *(__int16 *)(v11 - 16) != v16 )
            {
              v17 = Arrays::ItemTable::members;
              v18 = *(_BYTE *)(v11 - 8);
              *(_WORD *)(v11 - 16) = v16;
              *(_BYTE *)(v11 - 8) = v18;
              *(_DWORD *)(v11 - 4) = v17 + 164 * v16;
            }
            v19 = (ItemInstance *)operator new(108, 0);
            ItemInstance::ItemInstance(v19, v16, 1u);
            v20 = *(char *)(v11 - 8);
            ++v13;
            if ( v20 == -2 )
            {
              *(_BYTE *)(v11 - 8) = 99;
              v20 = 99;
            }
            ItemInstance::SetQty(v19, v20);
            ItemInventory::_AddLootItemPowers(*(ItemInventory **)(v11 - 12), v19, a4, a5, CurrentLevel, v23);
            ItemInventory::CalcLootItemValue(v19, a3, v21);
            ItemInventory::_AddItemInstance(v26, v19, 1, 0);
          }
          while ( v13 != v12 );
          v10 = v28;
LABEL_28:
          v22 = v10 == v11;
          v11 += 16;
        }
        while ( !v22 );
      }
      std::vector<ItemInventory::LootInfo>::~vector(&v27);
      std::vector<Structs::LootEntry const*>::~vector(&v30);
    }
  }
}


// ===== 404658 ItemInventory::DBG_DropAllLoots(void) =====
void __fastcall ItemInventory::DBG_DropAllLoots(ItemInventory *this)
{
  *((_BYTE *)this + 45) = 1;
  ItemInventory::AddLoot(this, 5, nullptr, nullptr, -1, 0);
  *((_BYTE *)this + 45) = 0;
}


// ===== 404698 GamepadTweaker::UpdateButtonMappings(void) =====
_DWORD *__fastcall GamepadTweaker::UpdateButtonMappings(_DWORD *this)
{
  int v1; // r12
  int v2; // r9
  int v3; // r10
  int v4; // r7
  int v5; // r6
  int v6; // r5
  int v7; // r4
  int v8; // r1
  int v9; // r2
  int v10; // r11
  int v11; // r8
  int v12; // r3

  v1 = *(this + 37);
  v2 = *(this + 31);
  v3 = *(this + 32);
  v4 = *(this + 33);
  v5 = *(this + 34);
  v6 = *(this + 35);
  v7 = *(this + 36);
  v8 = *(this + 38);
  v9 = *(this + 39);
  v10 = *(this + 41);
  v11 = *(this + 43);
  *(this + 54) = *(this + 40);
  v12 = *(this + 42);
  *(this + 45) = v2;
  *(this + 46) = v3;
  *(this + 57) = v11;
  *(this + 47) = v4;
  *(this + 48) = v5;
  *(this + 49) = v6;
  *(this + 50) = v7;
  *(this + 51) = v1;
  *(this + 52) = v8;
  *(this + 53) = v9;
  *(this + 55) = v10;
  *(this + 56) = v12;
  return this;
}


// ===== 40470c GamepadTweaker::onSetValue(std::string const&) =====
// attributes: thunk
_DWORD *__fastcall GamepadTweaker::onSetValue(_DWORD *this, const std::string *a2)
{
  return GamepadTweaker::UpdateButtonMappings(this);
}


// ===== 404710 GamepadTweaker::TranslateButton(int,Gamepad::Button) =====
int __fastcall GamepadTweaker::TranslateButton(_DWORD *a1, int a2, int a3)
{
  if ( a2 )
  {
    if ( a2 == 1 )
    {
      switch ( a3 )
      {
        case 0:
LABEL_8:
          a3 = a1[45];
          break;
        case 1:
LABEL_9:
          a3 = a1[46];
          break;
        case 2:
LABEL_10:
          a3 = a1[47];
          break;
        case 3:
LABEL_11:
          a3 = a1[48];
          break;
        case 6:
LABEL_12:
          a3 = a1[49];
          break;
        case 8:
LABEL_14:
          a3 = a1[52];
          break;
        case 14:
LABEL_16:
          a3 = a1[55];
          break;
        case 15:
LABEL_3:
          a3 = a1[56];
          break;
        case 16:
LABEL_17:
          a3 = a1[57];
          break;
        case 19:
LABEL_18:
          a3 = a1[51];
          break;
        case 22:
LABEL_7:
          a3 = a1[54];
          break;
        case 23:
LABEL_13:
          a3 = a1[50];
          break;
        case 24:
LABEL_15:
          a3 = a1[53];
          break;
        default:
          return a3;
      }
    }
  }
  else
  {
    switch ( a3 )
    {
      case 0:
        goto LABEL_8;
      case 1:
        goto LABEL_9;
      case 2:
        goto LABEL_10;
      case 3:
        goto LABEL_11;
      case 6:
        goto LABEL_12;
      case 7:
        goto LABEL_13;
      case 8:
        goto LABEL_14;
      case 9:
        goto LABEL_15;
      case 14:
        goto LABEL_16;
      case 15:
        goto LABEL_3;
      case 16:
        goto LABEL_17;
      case 23:
        goto LABEL_18;
      case 24:
        goto LABEL_7;
      default:
        return a3;
    }
  }
  return a3;
}


// ===== 40486c std::pair<std::string const,glitch::debugger::CTweakable::SMapping>::~pair() =====
int __fastcall std::pair<std::string const,glitch::debugger::CTweakable::SMapping>::~pair(int a1)
{
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(a1 + 56));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)(a1 + 32));
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)a1);
  return a1;
}


// ===== 404894 `global constructor keyed to'.._.._sources_Game_Controllers_GamepadTweaker.cpp =====
int `global constructor keyed to'.._.._sources_Game_Controllers_GamepadTweaker.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3160 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A315C = 1056964608;
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


// ===== 404970 std::basic_ostringstream<char,std::char_traits<char>,std::allocator<char>>::basic_ostringstream(int) [clone] =====
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


// ===== 404a20 std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(float *,float const&,std::__true_type const&,uint,bool) [clone] =====
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


// ===== 404ab0 glitch::debugger::CTweakable::~CTweakable() =====
void __fastcall glitch::debugger::CTweakable::~CTweakable(glitch::debugger::CTweakable *this)
{
  char *v2; // r1
  void *v3; // r0
  size_t v4; // r1

  *(_DWORD *)this = off_95B4D0;
  v2 = (char *)this + 112;
  v3 = *((void **)this + 28);
  if ( v3 )
  {
    v4 = *((_DWORD *)v2 + 2) - (_DWORD)v3;
    if ( v4 > 0x80 )
      CustomFree(v3);
    else
      __ZNSt12__node_alloc13_M_deallocateEPvj_veneer(v3, v4);
  }
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block((std::priv::_String_base<char,std::allocator<char> > *const)((char *)this + 84));
  glitch::debugger::CTweakable::SGroup::~SGroup((glitch::debugger::CTweakable *)((char *)this + 28));
  if ( *((_DWORD *)this + 5) )
  {
    std::priv::_Rb_tree<std::string,std::less<std::string>,std::pair<std::string const,glitch::debugger::CTweakable::SMapping>,std::priv::_Select1st<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::priv::_MapTraitsT<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>,std::allocator<std::pair<std::string const,glitch::debugger::CTweakable::SMapping>>>::_M_erase(
      (int)this + 4,
      *((_DWORD *)this + 2));
    *((_DWORD *)this + 4) = (char *)this + 4;
    *((_DWORD *)this + 5) = 0;
    *((_DWORD *)this + 3) = (char *)this + 4;
    *((_DWORD *)this + 2) = 0;
  }
}


// ===== 404b4c GamepadTweaker::~GamepadTweaker() =====
void __fastcall GamepadTweaker::~GamepadTweaker(GamepadTweaker *this)
{
  *(_DWORD *)this = off_967798;
  glitch::debugger::CTweakable::~CTweakable(this);
}


// ===== 404b80 GamepadTweaker::~GamepadTweaker() =====
void __fastcall GamepadTweaker::~GamepadTweaker(GamepadTweaker *this)
{
  *(_DWORD *)this = off_967798;
  glitch::debugger::CTweakable::~CTweakable(this);
  CustomFree(this);
}


// ===== 404bbc glitch::io::CNumbersAttribute::CNumbersAttribute(char const*,glitch::video::SColorf const&,bool) [clone] =====
int __fastcall glitch::io::CNumbersAttribute::CNumbersAttribute(int a1, _DWORD *a2)
{
  _DWORD *v2; // r6
  _DWORD *v5; // r1
  _DWORD *v6; // r3
  _DWORD *v7; // r1
  _DWORD *v8; // r3
  _DWORD *v9; // r1
  _DWORD *v10; // r3
  _DWORD *v11; // r1

  *(_DWORD *)(a1 + 4) = 1;
  *(_DWORD *)a1 = off_95B608;
  v2 = (_DWORD *)(a1 + 8);
  *(_DWORD *)(a1 + 24) = a1 + 8;
  *(_DWORD *)(a1 + 28) = a1 + 8;
  std::priv::_String_base<char,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_allocate_block(
    (_DWORD *)(a1 + 8),
    0x10u);
  **(_BYTE **)(a1 + 24) = 0;
  *(_DWORD *)a1 = off_95BCE8;
  *(_DWORD *)(a1 + 56) = 0;
  *(_DWORD *)(a1 + 60) = 4;
  *(_BYTE *)(a1 + 32) = 0;
  *(_DWORD *)(a1 + 36) = 0;
  *(_DWORD *)(a1 + 40) = 0;
  *(_DWORD *)(a1 + 44) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_DWORD *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 64) = 1;
  std::basic_string<char,std::char_traits<char>,glitch::core::SAllocator<char,(glitch::memory::E_MEMORY_HINT)0>>::_M_assign(
    v2,
    "",
    "");
  v5 = *(_DWORD **)(a1 + 52);
  if ( v5 == *(_DWORD **)(a1 + 56) )
  {
    std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
      a1 + 48,
      (int)v5,
      a2);
    v7 = *(_DWORD **)(a1 + 52);
    if ( *(_DWORD **)(a1 + 56) != v7 )
    {
LABEL_3:
      *v7 = a2[1];
      v8 = *(_DWORD **)(a1 + 56);
      v9 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
      *(_DWORD *)(a1 + 52) = v9;
      if ( v8 != v9 )
        goto LABEL_4;
LABEL_8:
      std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
        a1 + 48,
        (int)v9,
        a2 + 2);
      v11 = *(_DWORD **)(a1 + 52);
      if ( *(_DWORD **)(a1 + 56) != v11 )
        goto LABEL_5;
      goto LABEL_9;
    }
  }
  else
  {
    *v5 = *a2;
    v6 = *(_DWORD **)(a1 + 56);
    v7 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
    *(_DWORD *)(a1 + 52) = v7;
    if ( v6 != v7 )
      goto LABEL_3;
  }
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v7,
    a2 + 1);
  v9 = *(_DWORD **)(a1 + 52);
  if ( *(_DWORD **)(a1 + 56) == v9 )
    goto LABEL_8;
LABEL_4:
  *v9 = a2[2];
  v10 = *(_DWORD **)(a1 + 56);
  v11 = (_DWORD *)(*(_DWORD *)(a1 + 52) + 4);
  *(_DWORD *)(a1 + 52) = v11;
  if ( v10 != v11 )
  {
LABEL_5:
    *v11 = a2[3];
    *(_DWORD *)(a1 + 52) += 4;
    return a1;
  }
LABEL_9:
  std::vector<float,glitch::core::SAllocator<float,(glitch::memory::E_MEMORY_HINT)0>>::_M_insert_overflow(
    a1 + 48,
    (int)v11,
    a2 + 3);
  return a1;
}


// ===== 404d60 v2Controllable::Ctrl_Click(Point3D<float> const&,bool) =====
void v2Controllable::Ctrl_Click()
{
  ;
}


// ===== 404d64 v2Controllable::Ctrl_RotateBy(float) =====
void __fastcall v2Controllable::Ctrl_RotateBy(v2Controllable *this, float a2)
{
  ;
}


// ===== 404d68 v2Controllable::Ctrl_LookAt(Point3D<float> const&) =====
void v2Controllable::Ctrl_LookAt()
{
  ;
}


// ===== 404d6c v2Controllable::Ctrl_LookAt(GameObject *) =====
void __fastcall v2Controllable::Ctrl_LookAt(v2Controllable *this, GameObject *a2)
{
  ;
}


// ===== 404d70 v2Controllable::Ctrl_WarpTo(Point3D<float> const&) =====
void v2Controllable::Ctrl_WarpTo()
{
  ;
}


// ===== 404d74 v2Controllable::Ctrl_HeadTowards(Point3D<float> const&) =====
void v2Controllable::Ctrl_HeadTowards()
{
  ;
}


// ===== 404d78 v2Controllable::Ctrl_HeadTowards(GameObject *) =====
void __fastcall v2Controllable::Ctrl_HeadTowards(v2Controllable *this, GameObject *a2)
{
  ;
}


// ===== 404d7c v2Controllable::Ctrl_HeadTo(Point3D<float> const&) =====
void v2Controllable::Ctrl_HeadTo()
{
  ;
}


// ===== 404d80 v2Controllable::Ctrl_HeadTo(GameObject *) =====
void __fastcall v2Controllable::Ctrl_HeadTo(v2Controllable *this, GameObject *a2)
{
  ;
}


// ===== 404d84 v2Controllable::Ctrl_MoveTo(Point3D<float> const&) =====
void v2Controllable::Ctrl_MoveTo()
{
  ;
}


// ===== 404d88 v2Controllable::Ctrl_MoveTo(GameObject *) =====
void __fastcall v2Controllable::Ctrl_MoveTo(v2Controllable *this, GameObject *a2)
{
  ;
}


// ===== 404d8c v2Controllable::Ctrl_Stop(void) =====
void __fastcall v2Controllable::Ctrl_Stop(v2Controllable *this)
{
  ;
}


// ===== 404d90 v2Controllable::Ctrl_Attack(GameObject *) =====
void __fastcall v2Controllable::Ctrl_Attack(v2Controllable *this, GameObject *a2)
{
  ;
}


// ===== 404d94 v2Controllable::Ctrl_BeginSkill(uint) =====
void __fastcall v2Controllable::Ctrl_BeginSkill(v2Controllable *this, unsigned int a2)
{
  ;
}


// ===== 404d98 v2Controllable::Ctrl_EndSkill(uint) =====
void __fastcall v2Controllable::Ctrl_EndSkill(v2Controllable *this, unsigned int a2)
{
  ;
}


// ===== 404d9c v2Controllable::Ctrl_BeginCast(bool) =====
void __fastcall v2Controllable::Ctrl_BeginCast(v2Controllable *this, bool a2)
{
  ;
}


// ===== 404da0 v2Controllable::Ctrl_EndCast(bool) =====
void __fastcall v2Controllable::Ctrl_EndCast(v2Controllable *this, bool a2)
{
  ;
}


// ===== 404da4 v2Controllable::Ctrl_UsePotion(void) =====
void __fastcall v2Controllable::Ctrl_UsePotion(v2Controllable *this)
{
  ;
}


// ===== 404da8 v2Controllable::Ctrl_UseOOI(GameObject *) =====
void __fastcall v2Controllable::Ctrl_UseOOI(v2Controllable *this, GameObject *a2)
{
  ;
}


// ===== 404dac v2Controllable::Ctrl_DropObject(void) =====
void __fastcall v2Controllable::Ctrl_DropObject(v2Controllable *this)
{
  ;
}


// ===== 404db0 v2Controllable::Ctrl_Kill(GameObject *,bool) =====
void __fastcall v2Controllable::Ctrl_Kill(v2Controllable *this, GameObject *a2, bool a3)
{
  ;
}


// ===== 404db4 v2Controllable::Ctrl_OpenIGM(void) =====
void __fastcall v2Controllable::Ctrl_OpenIGM(v2Controllable *this)
{
  ;
}


// ===== 404db8 v2Controllable::v2Controllable(void) =====
void __fastcall v2Controllable::v2Controllable(v2Controllable *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_9677B8;
}


// ===== 404de4 v2Controllable::v2Controllable(void) =====
void __fastcall v2Controllable::v2Controllable(v2Controllable *this)
{
  *((_DWORD *)this + 1) = 0;
  *(_DWORD *)this = off_9677B8;
}


// ===== 404e10 v2Controllable::SetController(v2Controller *) =====
int __fastcall v2Controllable::SetController(int this, v2Controller *a2)
{
  v2Controller *v2; // r3
  int v3; // r4

  v2 = *(v2Controller **)(this + 4);
  v3 = this;
  if ( v2 != a2 )
  {
    if ( v2 )
    {
      this = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)v2 + 4))(*(_DWORD *)(this + 4));
      *(_DWORD *)(v3 + 4) = 0;
    }
    *(_DWORD *)(v3 + 4) = a2;
  }
  return this;
}


// ===== 404e50 v2Controllable::Ctrl_ResetZoom(void) =====
int __fastcall v2Controllable::Ctrl_ResetZoom(v2Controllable *this)
{
  int result; // r0
  int v2; // r3

  result = Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst);
  v2 = *(_DWORD *)(dword_99F77C + 32);
  if ( v2 )
  {
    if ( !*(_BYTE *)(v2 + 134) )
      *(_DWORD *)(v2 + 136) = 0;
  }
  return result;
}


// ===== 404e98 v2Controllable::Ctrl_Zoom(float) =====
float __fastcall v2Controllable::Ctrl_Zoom(v2Controllable *this, float a2)
{
  float result; // r0
  int v4; // r4
  float v5; // r1

  result = COERCE_FLOAT(Application::GetCurrentLevel((Application *)&Singleton<Application>::s_inst));
  v4 = *(_DWORD *)(dword_99F77C + 32);
  if ( v4 && !*(_BYTE *)(v4 + 134) )
  {
    if ( *(_BYTE *)(v4 + 133) )
      v5 = -0.125;
    else
      LODWORD(v5) = 49807;
    if ( *(_BYTE *)(v4 + 133) )
      LODWORD(v5) += 0x800000;
    else
      HIWORD(v5) = -17163;
    result = (float)(a2 * v5) + *(float *)(v4 + 136);
    *(float *)(v4 + 136) = result;
  }
  return result;
}


// ===== 404f10 `global constructor keyed to'.._.._sources_Game_Controllers_v2Controllable.cpp =====
int `global constructor keyed to'.._.._sources_Game_Controllers_v2Controllable.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A316C = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3168 = 1056964608;
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


// ===== 404fec v2Controllable::Ctrl_TranslateMapCam(float,float) =====
void __fastcall v2Controllable::Ctrl_TranslateMapCam(v2Controllable *this, float a2, float a3)
{
  int v3; // r4
  float v4; // r0
  float v5; // r7
  float v6; // r5
  float v7; // r0

  v3 = *(_DWORD *)(dword_99F77C + 32);
  if ( v3 && !*(_BYTE *)(v3 + 134) )
  {
    if ( *(_BYTE *)(v3 + 133) )
    {
      v4 = COERCE_FLOAT(LODWORD(a3) + 0x80000000) * 0.70711;
      v5 = *(float *)(v3 + 152) + (float)((float)((float)((float)(a2 * 0.70711) - v4) + 0.0) * 250.0);
      v6 = *(float *)(v3 + 156) + (float)((float)((float)((float)(a2 * 0.70711) + v4) + 0.0) * 250.0);
      v7 = *(float *)(v3 + 160) + 0.0;
      *(float *)(v3 + 152) = v5;
      *(float *)(v3 + 160) = v7;
      *(float *)(v3 + 156) = v6;
    }
  }
}


// ===== 4050e4 v2Controllable::~v2Controllable() =====
void __fastcall v2Controllable::~v2Controllable(v2Controllable *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_9677B8;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 405138 v2Controllable::~v2Controllable() =====
void __fastcall v2Controllable::~v2Controllable(v2Controllable *this)
{
  int v1; // r1

  v1 = *((_DWORD *)this + 1);
  *(_DWORD *)this = off_9677B8;
  if ( v1 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v1 + 4))(v1);
    *((_DWORD *)this + 1) = 0;
  }
}


// ===== 40518c v2Controllable::~v2Controllable() =====
void __fastcall v2Controllable::~v2Controllable(v2Controllable *this)
{
  v2Controllable::~v2Controllable(this);
  CustomFree(this);
}


// ===== 4051a8 v2Controller::Cmd_Click(Point3D<float> const&,bool) =====
int __fastcall v2Controller::Cmd_Click(int result)
{
  if ( *(_BYTE *)(result + 9) || !v2Controller::s_blocked && !*(_BYTE *)(result + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(result + 4) + 8))(*(_DWORD *)(result + 4));
  return result;
}


// ===== 405204 v2Controller::Cmd_RotateBy(float) =====
int __fastcall v2Controller::Cmd_RotateBy(int this, float a2)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(this + 4) + 12))(*(_DWORD *)(this + 4), LODWORD(a2));
  return this;
}


// ===== 405260 v2Controller::Cmd_LookAt(Point3D<float> const&) =====
int __fastcall v2Controller::Cmd_LookAt(int result)
{
  if ( *(_BYTE *)(result + 9) || !v2Controller::s_blocked && !*(_BYTE *)(result + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(result + 4) + 16))(*(_DWORD *)(result + 4));
  return result;
}


// ===== 4052bc v2Controller::Cmd_LookAt(GameObject *) =====
int __fastcall v2Controller::Cmd_LookAt(int this, GameObject *a2)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD, GameObject *))(**(_DWORD **)(this + 4) + 20))(*(_DWORD *)(this + 4), a2);
  return this;
}


// ===== 405318 v2Controller::Cmd_WarpTo(Point3D<float> const&) =====
int __fastcall v2Controller::Cmd_WarpTo(int result)
{
  if ( *(_BYTE *)(result + 9) || !v2Controller::s_blocked && !*(_BYTE *)(result + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(result + 4) + 24))(*(_DWORD *)(result + 4));
  return result;
}


// ===== 405374 v2Controller::Cmd_HeadTowards(Point3D<float> const&) =====
int __fastcall v2Controller::Cmd_HeadTowards(int result)
{
  if ( *(_BYTE *)(result + 9) || !v2Controller::s_blocked && !*(_BYTE *)(result + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(result + 4) + 28))(*(_DWORD *)(result + 4));
  return result;
}


// ===== 4053d0 v2Controller::Cmd_HeadTowards(GameObject *) =====
int __fastcall v2Controller::Cmd_HeadTowards(int this, GameObject *a2)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD, GameObject *))(**(_DWORD **)(this + 4) + 32))(*(_DWORD *)(this + 4), a2);
  return this;
}


// ===== 40542c v2Controller::Cmd_HeadTo(Point3D<float> const&) =====
int __fastcall v2Controller::Cmd_HeadTo(int result)
{
  if ( *(_BYTE *)(result + 9) || !v2Controller::s_blocked && !*(_BYTE *)(result + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(result + 4) + 36))(*(_DWORD *)(result + 4));
  return result;
}


// ===== 405488 v2Controller::Cmd_HeadTo(GameObject *) =====
int __fastcall v2Controller::Cmd_HeadTo(int this, GameObject *a2)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD, GameObject *))(**(_DWORD **)(this + 4) + 40))(*(_DWORD *)(this + 4), a2);
  return this;
}


// ===== 4054e4 v2Controller::Cmd_MoveTo(Point3D<float> const&) =====
int __fastcall v2Controller::Cmd_MoveTo(int result)
{
  if ( *(_BYTE *)(result + 9) || !v2Controller::s_blocked && !*(_BYTE *)(result + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(result + 4) + 44))(*(_DWORD *)(result + 4));
  return result;
}


// ===== 405540 v2Controller::Cmd_MoveTo(GameObject *) =====
int __fastcall v2Controller::Cmd_MoveTo(int this, GameObject *a2)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD, GameObject *))(**(_DWORD **)(this + 4) + 48))(*(_DWORD *)(this + 4), a2);
  return this;
}


// ===== 40559c v2Controller::Cmd_Stop(void) =====
int __fastcall v2Controller::Cmd_Stop(int this)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 4) + 52))(*(_DWORD *)(this + 4));
  return this;
}


// ===== 4055f8 v2Controller::Cmd_BeginCast(bool) =====
int __fastcall v2Controller::Cmd_BeginCast(int this, bool a2)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD, bool))(**(_DWORD **)(this + 4) + 68))(*(_DWORD *)(this + 4), a2);
  return this;
}


// ===== 405654 v2Controller::Cmd_EndCast(bool) =====
int __fastcall v2Controller::Cmd_EndCast(int this, bool a2)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD, bool))(**(_DWORD **)(this + 4) + 72))(*(_DWORD *)(this + 4), a2);
  return this;
}


// ===== 4056b0 v2Controller::Cmd_UsePotion(void) =====
int __fastcall v2Controller::Cmd_UsePotion(int this)
{
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(this + 4) + 76))(*(_DWORD *)(this + 4));
  return this;
}


// ===== 40570c v2Controller::Cmd_Kill(GameObject *,bool) =====
int __fastcall v2Controller::Cmd_Kill(v2Controller *this, GameObject *a2, bool a3)
{
  return (*(int (__fastcall **)(_DWORD, GameObject *, bool))(**((_DWORD **)this + 1) + 88))(
           *((_DWORD *)this + 1),
           a2,
           a3);
}


// ===== 405728 v2Controller::Cmd_OpenIGM(void) =====
int __fastcall v2Controller::Cmd_OpenIGM(v2Controller *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 92))(*((_DWORD *)this + 1));
}


// ===== 405744 v2Controller::Cmd_Zoom(float) =====
int __fastcall v2Controller::Cmd_Zoom(v2Controller *this, float a2)
{
  return (*(int (__fastcall **)(_DWORD, _DWORD))(**((_DWORD **)this + 1) + 96))(*((_DWORD *)this + 1), LODWORD(a2));
}


// ===== 405760 v2Controller::Cmd_ResetZoom(void) =====
int __fastcall v2Controller::Cmd_ResetZoom(v2Controller *this)
{
  return (*(int (__fastcall **)(_DWORD))(**((_DWORD **)this + 1) + 100))(*((_DWORD *)this + 1));
}


// ===== 40577c v2Controller::Cmd_TranslateMapCam(float,float) =====
int __fastcall v2Controller::Cmd_TranslateMapCam(v2Controller *this, float a2, float a3)
{
  return (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(**((_DWORD **)this + 1) + 104))(
           *((_DWORD *)this + 1),
           LODWORD(a2),
           LODWORD(a3));
}


// ===== 405798 v2Controller::Cmd_DropObject(void) =====
int __fastcall v2Controller::Cmd_DropObject(int this)
{
  int v1; // r4

  v1 = this;
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
  {
    GetOnline();
    return (*(int (__fastcall **)(_DWORD))(**(_DWORD **)(v1 + 4) + 84))(*(_DWORD *)(v1 + 4));
  }
  return this;
}


// ===== 4057fc v2Controller::Cmd_UseOOI(GameObject *) =====
int __fastcall v2Controller::Cmd_UseOOI(int this, GameObject *a2)
{
  int v2; // r4
  int v4; // r7
  Character *v5; // r6
  CMessaging *v6; // r0
  CMessaging *v7; // r8
  int v8; // r6
  char v9; // r7
  bool v10; // r2
  int Message; // r0

  v2 = this;
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
  {
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      if ( *(_BYTE *)(v2 + 10) )
      {
        v4 = *(_DWORD *)(v2 + 12);
        if ( v4 )
        {
          if ( a2 )
          {
            v5 = a2;
LABEL_11:
            if ( (!(*(int (__fastcall **)(Character *))(*(_DWORD *)v5 + 36))(v5) || !Character::IsMerchant(v5))
              && (*(int (__fastcall **)(Character *, _DWORD))(*(_DWORD *)v5 + 144))(v5, *(_DWORD *)(v2 + 12)) != 1 )
            {
              v6 = (CMessaging *)(*(int (__fastcall **)(Character *, _DWORD))(*(_DWORD *)v5 + 144))(
                                   v5,
                                   *(_DWORD *)(v2 + 12));
              if ( v6 != (CMessaging *)&byte_8 )
              {
                v7 = (CMessaging *)CMessaging::Get(v6);
                v8 = *((_DWORD *)v5 + 66);
                v9 = *(_BYTE *)(v4 + 264);
                Message = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (const char *)&dword_0 + 1, v10);
                *(_BYTE *)(Message + 84) = v9;
                *(_BYTE *)(Message + 80) = 5;
                *(_WORD *)(Message + 82) = v8;
                CMessaging::SendMsg(v7, (CMessage *)Message);
              }
            }
            return (*(int (__fastcall **)(_DWORD, GameObject *))(**(_DWORD **)(v2 + 4) + 80))(*(_DWORD *)(v2 + 4), a2);
          }
          v5 = *(Character **)(v4 + 5284);
          if ( v5 )
            goto LABEL_11;
        }
      }
    }
    return (*(int (__fastcall **)(_DWORD, GameObject *))(**(_DWORD **)(v2 + 4) + 80))(*(_DWORD *)(v2 + 4), a2);
  }
  return this;
}


// ===== 405954 v2Controller::Cmd_EndSkill(uint) =====
int __fastcall v2Controller::Cmd_EndSkill(int this, unsigned int a2)
{
  int v2; // r4
  CMessaging *Online; // r0
  int v5; // r7
  CMessaging *v6; // r6
  char v7; // r7
  bool v8; // r2
  int Message; // r0

  v2 = this;
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
  {
    Online = (CMessaging *)GetOnline();
    if ( *((_BYTE *)Online + 5) && *(_BYTE *)(v2 + 10) )
    {
      v5 = *(_DWORD *)(v2 + 12);
      if ( v5 )
      {
        v6 = (CMessaging *)CMessaging::Get(Online);
        v7 = *(_BYTE *)(v5 + 264);
        Message = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (const char *)&dword_0 + 1, v8);
        *(_BYTE *)(Message + 84) = v7;
        *(_BYTE *)(Message + 80) = 2;
        *(_WORD *)(Message + 82) = a2;
        CMessaging::SendMsg(v6, (CMessage *)Message);
      }
    }
    return (*(int (__fastcall **)(_DWORD, unsigned int))(**(_DWORD **)(v2 + 4) + 64))(*(_DWORD *)(v2 + 4), a2);
  }
  return this;
}


// ===== 405a20 v2Controller::Cmd_BeginSkill(uint) =====
int __fastcall v2Controller::Cmd_BeginSkill(int this, unsigned int a2)
{
  int v2; // r4
  int v4; // r6
  CMessaging *IsSkillUsable; // r0
  CMessaging *v6; // r7
  char v7; // r6
  bool v8; // r2
  int Message; // r0

  v2 = this;
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
  {
    if ( *(_BYTE *)(GetOnline() + 5) )
    {
      if ( *(_BYTE *)(v2 + 10) )
      {
        v4 = *(_DWORD *)(v2 + 12);
        if ( v4 )
        {
          IsSkillUsable = (CMessaging *)CharAI::AI_IsSkillUsable((CharAI *)(v4 + 968), a2);
          if ( IsSkillUsable )
          {
            v6 = (CMessaging *)CMessaging::Get(IsSkillUsable);
            v7 = *(_BYTE *)(v4 + 264);
            Message = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (const char *)&dword_0 + 1, v8);
            *(_BYTE *)(Message + 84) = v7;
            *(_BYTE *)(Message + 80) = 1;
            *(_WORD *)(Message + 82) = a2;
            CMessaging::SendMsg(v6, (CMessage *)Message);
          }
        }
      }
    }
    return (*(int (__fastcall **)(_DWORD, unsigned int))(**(_DWORD **)(v2 + 4) + 60))(*(_DWORD *)(v2 + 4), a2);
  }
  return this;
}


// ===== 405b04 v2Controller::Cmd_Attack(GameObject *) =====
int __fastcall v2Controller::Cmd_Attack(int this, GameObject **a2)
{
  int v2; // r4
  int v4; // r3
  GameObject *v5; // r6
  GameObject *v6; // r8
  int v7; // r7
  int v8; // r0
  CMessaging *v9; // r0
  bool v10; // r2
  CMessaging *v11; // r7
  char v12; // r8
  int Message; // r0
  int v14; // r3

  v2 = this;
  if ( *(_BYTE *)(this + 9) || !v2Controller::s_blocked && !*(_BYTE *)(this + 8) )
  {
    if ( !*(_BYTE *)(GetOnline() + 5) )
      return (*(int (__fastcall **)(_DWORD, GameObject **))(**(_DWORD **)(v2 + 4) + 56))(*(_DWORD *)(v2 + 4), a2);
    if ( !*(_BYTE *)(v2 + 10) )
      return (*(int (__fastcall **)(_DWORD, GameObject **))(**(_DWORD **)(v2 + 4) + 56))(*(_DWORD *)(v2 + 4), a2);
    v4 = *(_DWORD *)(v2 + 12);
    if ( !v4 )
      return (*(int (__fastcall **)(_DWORD, GameObject **))(**(_DWORD **)(v2 + 4) + 56))(*(_DWORD *)(v2 + 4), a2);
    v5 = *(GameObject **)(v4 + 1032);
    v6 = *(GameObject **)(v4 + 1036);
    v7 = *(unsigned __int8 *)(v4 + 1088);
    CharAI::AI_DoMeleeAttack((CharAI *)(v4 + 968), (GameObject *)a2, 1);
    v8 = *(_DWORD *)(v2 + 12);
    if ( v5 == *(GameObject **)(v8 + 1032) && *(unsigned __int8 *)(v8 + 1088) == v7 )
    {
      if ( CharStateMachine::SM_IsAttacking((CharStateMachine *)(v8 + 1276)) )
      {
        v14 = *(_DWORD *)(v2 + 12);
LABEL_19:
        CharAI::AI_SetTarget((CharAI *)(v14 + 968), v6, 1);
        CharAI::AI_SyncLastTarget((CharAI *)(*(_DWORD *)(v2 + 12) + 968));
        CharAI::AI_SetTarget((CharAI *)(*(_DWORD *)(v2 + 12) + 968), v5, 1);
        *(_BYTE *)(*(_DWORD *)(v2 + 12) + 1088) = v7;
        return (*(int (__fastcall **)(_DWORD, GameObject **))(**(_DWORD **)(v2 + 4) + 56))(*(_DWORD *)(v2 + 4), a2);
      }
      v14 = *(_DWORD *)(v2 + 12);
      v8 = v14;
      if ( *(_BYTE *)(v14 + 1088) )
        goto LABEL_19;
    }
    CharAI::AI_SetTarget((CharAI *)(v8 + 968), v6, 1);
    CharAI::AI_SyncLastTarget((CharAI *)(*(_DWORD *)(v2 + 12) + 968));
    v9 = (CMessaging *)CharAI::AI_SetTarget((CharAI *)(*(_DWORD *)(v2 + 12) + 968), v5, 1);
    *(_BYTE *)(*(_DWORD *)(v2 + 12) + 1088) = v7;
    v11 = (CMessaging *)CMessaging::Get(v9);
    if ( a2 )
      v5 = a2[66];
    v12 = *(_BYTE *)(*(_DWORD *)(v2 + 12) + 264);
    if ( !a2 )
      LOWORD(v5) = 0;
    Message = CMessage::CreateMessage((CMessage *)"CMsgControllerAction", (const char *)&dword_0 + 1, v10);
    *(_BYTE *)(Message + 84) = v12;
    *(_BYTE *)(Message + 80) = 0;
    *(_WORD *)(Message + 82) = (_WORD)v5;
    CMessaging::SendMsg(v11, (CMessage *)Message);
    return (*(int (__fastcall **)(_DWORD, GameObject **))(**(_DWORD **)(v2 + 4) + 56))(*(_DWORD *)(v2 + 4), a2);
  }
  return this;
}


// ===== 405cbc `global constructor keyed to'.._.._sources_Game_Controllers_v2Controller.cpp =====
int __fastcall `global constructor keyed to'.._.._sources_Game_Controllers_v2Controller.cpp(CMessage *a1)
{
  CMessage *(*v1)(bool); // r2
  CMessage *(*v2)(bool); // r2
  CMessage *(*v3)(bool); // r2
  CMessage *(*v4)(bool); // r2
  CMessage *(*v5)(bool); // r2
  CMessage *(*v6)(bool); // r2
  CMessage *(*v7)(bool); // r2
  CMessage *(*v8)(bool); // r2
  CMessage *(*v9)(bool); // r2
  CMessage *(*v10)(bool); // r2
  CMessage *(*v11)(bool); // r2
  CMessage *(*v12)(bool); // r2
  CMessage *(*v13)(bool); // r2
  CMessage *v14; // r0
  int result; // r0

  dword_9A3178 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3174 = 1056964608;
  messageCreationMap = CMessage::InitializeMessageRegistration(a1);
  byte_9A317D = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgStartGame",
                  (const char *)GetNewInstance<CMsgStartGame>,
                  v1);
  byte_9A317E = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgControllerAction",
                  (const char *)GetNewInstance<CMsgControllerAction>,
                  v2);
  byte_9A317F = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgAttackResult",
                  (const char *)GetNewInstance<CMsgAttackResult>,
                  v3);
  byte_9A3180 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgRaisedEvent",
                  (const char *)GetNewInstance<CMsgRaisedEvent>,
                  v4);
  byte_9A3181 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgMenuReady",
                  (const char *)GetNewInstance<CMsgMenuReady>,
                  v5);
  byte_9A3182 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgScriptCmd",
                  (const char *)GetNewInstance<CMsgScriptCmd>,
                  v6);
  byte_9A3183 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgInitialSetup",
                  (const char *)GetNewInstance<CMsgInitialSetup>,
                  v7);
  byte_9A3184 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgQuestsSync",
                  (const char *)GetNewInstance<CMsgQuestsSync>,
                  v8);
  byte_9A3185 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgDropLoot",
                  (const char *)GetNewInstance<CMsgDropLoot>,
                  v9);
  byte_9A3186 = CMessage::RegisterMessageType((CMessage *)"CMsgIsHost", (const char *)GetNewInstance<CMsgIsHost>, v10);
  byte_9A3187 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgSpawnObject",
                  (const char *)GetNewInstance<CMsgSpawnObject>,
                  v11);
  byte_9A3188 = CMessage::RegisterMessageType(
                  (CMessage *)"CMsgGlobalDeath",
                  (const char *)GetNewInstance<CMsgGlobalDeath>,
                  v12);
  v14 = (CMessage *)CMessage::RegisterMessageType(
                      (CMessage *)"CMsgAskResendAttributes",
                      (const char *)GetNewInstance<CMsgAskResendAttributes>,
                      v13);
  byte_9A3189 = (char)v14;
  result = CMessage::TerminateMessageRegistration(v14);
  byte_9A318A = result;
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


// ===== 405f48 v2EmuController::_onEvent(EvMouseButton const*,EventManager const*) =====
int __fastcall v2EmuController::_onEvent(v2EmuController *this, const EvMouseButton *a2, const EventManager *a3)
{
  int v4; // r3
  int v5; // r0
  int v7; // r0
  int v8; // r0
  _DWORD v9[3]; // [sp+4h] [bp-3Ch] BYREF
  _DWORD v10[3]; // [sp+10h] [bp-30h] BYREF
  _DWORD v11[3]; // [sp+1Ch] [bp-24h] BYREF
  float v12[2]; // [sp+28h] [bp-18h] BYREF
  float v13[2]; // [sp+30h] [bp-10h] BYREF
  float v14[2]; // [sp+38h] [bp-8h] BYREF

  if ( !*((_DWORD *)a2 + 2) && !*((_BYTE *)a2 + 12) )
  {
    v4 = *((_DWORD *)this + 6);
    if ( (v4 & 3) == 3 )
    {
      v8 = *((__int16 *)a2 + 8);
      memset(v11, 0, sizeof(v11));
      v14[0] = (float)*((__int16 *)a2 + 7);
      v14[1] = (float)v8;
      if ( PFWorld::TranslateScreenToWorld(&Singleton<PFWorld>::s_inst, v14, v11) )
        v2Controller::Cmd_MoveTo((int)this);
    }
    else if ( (v4 & 1) != 0 )
    {
      v7 = *((__int16 *)a2 + 8);
      memset(v10, 0, sizeof(v10));
      v13[0] = (float)*((__int16 *)a2 + 7);
      v13[1] = (float)v7;
      if ( PFWorld::TranslateScreenToWorld(&Singleton<PFWorld>::s_inst, v13, v10) )
        v2Controller::Cmd_WarpTo((int)this);
    }
    else if ( (v4 & 2) != 0 )
    {
      v5 = *((__int16 *)a2 + 8);
      memset(v9, 0, sizeof(v9));
      v12[0] = (float)*((__int16 *)a2 + 7);
      v12[1] = (float)v5;
      if ( PFWorld::TranslateScreenToWorld(&Singleton<PFWorld>::s_inst, v12, v9) )
        v2Controller::Cmd_LookAt((int)this);
    }
  }
  return 0;
}


// ===== 4060c0 v2EmuController::_onEvent(EvKeyboard const*,EventManager const*) =====
int __fastcall v2EmuController::_onEvent(v2EmuController *this, const EvKeyboard *a2, const EventManager *a3)
{
  int v4; // r1
  int v6; // r3
  int v7; // r4
  unsigned int v8; // r4
  int v10; // r3
  unsigned int v11; // r3
  Character *v12; // r0
  unsigned int SkillInSlot; // r1
  int v14; // r3
  int v15; // r4
  unsigned int v16; // r4
  int v17; // r3
  int v18; // r4
  unsigned int v19; // r4
  int v20; // r3
  int v21; // r4
  unsigned int v22; // r4
  int v23; // r3
  unsigned int v24; // r3

  v4 = *((_DWORD *)a2 + 3);
  switch ( v4 )
  {
    case 49:
    case 50:
    case 51:
    case 52:
      if ( *((_BYTE *)a2 + 16) )
        v2Controller::Cmd_UsePotion((int)this);
      return 0;
    case 77:
      if ( *((_BYTE *)a2 + 16) )
        v2Controller::Cmd_UseOOI((int)this, nullptr);
      return 0;
    case 78:
      if ( *((_BYTE *)a2 + 16) )
        v2Controller::Cmd_Attack((int)this, nullptr);
      return 0;
    case 95:
    case 96:
    case 97:
      v12 = *((Character **)this + 3);
      if ( v12 )
      {
        SkillInSlot = Character::SG_GetSkillInSlot(v12, v4 - 95);
        if ( SkillInSlot != -1 )
        {
          if ( *((_BYTE *)a2 + 16) )
            v2Controller::Cmd_BeginSkill((int)this, SkillInSlot);
          else
            v2Controller::Cmd_EndSkill((int)this, SkillInSlot);
        }
      }
      return 0;
    case 98:
      if ( *((_BYTE *)a2 + 16) )
        v2Controller::Cmd_BeginCast((int)this, 0);
      else
        v2Controller::Cmd_EndCast((int)this, 0);
      return 0;
    case 135:
      v6 = *((unsigned __int8 *)a2 + 16);
      v7 = *((_DWORD *)this + 5);
      if ( v6 )
        v8 = v7 | 9;
      else
        v8 = v7 & 0xFFFFFFF6;
      *((_DWORD *)this + 5) = v8;
      goto LABEL_6;
    case 136:
      v14 = *((unsigned __int8 *)a2 + 16);
      v15 = *((_DWORD *)this + 5);
      if ( v14 )
        v16 = v15 | 6;
      else
        v16 = v15 & 0xFFFFFFF9;
      *((_DWORD *)this + 5) = v16;
      goto LABEL_6;
    case 137:
      v17 = *((unsigned __int8 *)a2 + 16);
      v18 = *((_DWORD *)this + 5);
      if ( v17 )
        v19 = v18 | 5;
      else
        v19 = v18 & 0xFFFFFFFA;
      *((_DWORD *)this + 5) = v19;
      goto LABEL_6;
    case 138:
      v20 = *((unsigned __int8 *)a2 + 16);
      v21 = *((_DWORD *)this + 5);
      if ( v20 )
        v22 = v21 | 0xA;
      else
        v22 = v21 & 0xFFFFFFF5;
      *((_DWORD *)this + 5) = v22;
LABEL_6:
      v2Controller::Cmd_HeadTowards((int)this);
      break;
    case 145:
      v23 = *((_DWORD *)this + 6);
      if ( *((_BYTE *)a2 + 16) )
        v24 = v23 | 9;
      else
        v24 = v23 & 0xFFFFFFF6;
      *((_DWORD *)this + 6) = v24;
      break;
    case 146:
      v10 = *((_DWORD *)this + 6);
      if ( *((_BYTE *)a2 + 16) )
        v11 = v10 | 0x12;
      else
        v11 = v10 & 0xFFFFFFED;
      *((_DWORD *)this + 6) = v11;
      break;
    default:
      return 0;
  }
  return 0;
}


// ===== 406448 `non-virtual thunk to'v2EmuController::onEvent(IEvent const*,EventManager const*) =====
int __fastcall `non-virtual thunk to'v2EmuController::onEvent(
        v2EmuController *this,
        const IEvent *a2,
        const EventManager *a3)
{
  return v2EmuController::onEvent((v2EmuController *)((char *)this - 16), a2, a3);
}


// ===== 406450 v2EmuController::onEvent(IEvent const*,EventManager const*) =====
int __fastcall v2EmuController::onEvent(v2EmuController *this, const IEvent *a2, const EventManager *a3)
{
  int v6; // r0

  v6 = (*(int (__fastcall **)(const IEvent *))(*(_DWORD *)a2 + 8))(a2);
  if ( !v6 )
    return v2EmuController::_onEvent(this, a2, a3);
  if ( v6 == 2 )
    return v2EmuController::_onEvent(this, a2, a3);
  return 0;
}


// ===== 4064b0 `non-virtual thunk to'v2EmuController::~v2EmuController() =====
void __fastcall `non-virtual thunk to'v2EmuController::~v2EmuController(v2EmuController *this)
{
  v2EmuController::~v2EmuController((v2EmuController *)((char *)this - 16));
}


// ===== 4064b8 v2EmuController::~v2EmuController() =====
void __fastcall v2EmuController::~v2EmuController(v2EmuController *this)
{
  IEventReceiver *v1; // r4

  *(_DWORD *)this = off_967830;
  *((_DWORD *)this + 4) = off_967848;
  v1 = (v2EmuController *)((char *)this + 16);
  EventManager::Detach((EventManager *)dword_99F740, 0, (v2EmuController *)((char *)this + 16));
  EventManager::Detach((EventManager *)dword_99F740, 2, v1);
}


// ===== 406520 `non-virtual thunk to'v2EmuController::~v2EmuController() =====
void __fastcall `non-virtual thunk to'v2EmuController::~v2EmuController(v2EmuController *this)
{
  v2EmuController::~v2EmuController((v2EmuController *)((char *)this - 16));
}


// ===== 406528 v2EmuController::~v2EmuController() =====
void __fastcall v2EmuController::~v2EmuController(v2EmuController *this)
{
  v2EmuController::~v2EmuController(this);
  CustomFree(this);
}


// ===== 406544 v2EmuController::~v2EmuController() =====
void __fastcall v2EmuController::~v2EmuController(v2EmuController *this)
{
  IEventReceiver *v1; // r4

  *(_DWORD *)this = off_967830;
  *((_DWORD *)this + 4) = off_967848;
  v1 = (v2EmuController *)((char *)this + 16);
  EventManager::Detach((EventManager *)dword_99F740, 0, (v2EmuController *)((char *)this + 16));
  EventManager::Detach((EventManager *)dword_99F740, 2, v1);
}


// ===== 4065ac v2EmuController::v2EmuController(v2Controllable *) =====
void __fastcall v2EmuController::v2EmuController(v2EmuController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  if ( !a2 )
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_967830;
  *((_DWORD *)this + 4) = off_967848;
  *((_DWORD *)this + 6) = 0;
  EventManager::Attach((EventManager *)dword_99F740, 0, (v2EmuController *)((char *)this + 16), 0);
  EventManager::Attach((EventManager *)dword_99F740, 2, (v2EmuController *)((char *)this + 16), 0);
}


// ===== 4066cc v2EmuController::v2EmuController(v2Controllable *) =====
void __fastcall v2EmuController::v2EmuController(v2EmuController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  if ( !a2 )
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_967830;
  *((_DWORD *)this + 4) = off_967848;
  *((_DWORD *)this + 6) = 0;
  EventManager::Attach((EventManager *)dword_99F740, 0, (v2EmuController *)((char *)this + 16), 0);
  EventManager::Attach((EventManager *)dword_99F740, 2, (v2EmuController *)((char *)this + 16), 0);
}


// ===== 4067ec `global constructor keyed to'.._.._sources_Game_Controllers_v2EmuController.cpp =====
int `global constructor keyed to'.._.._sources_Game_Controllers_v2EmuController.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A3194 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A3190 = 1056964608;
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
    result = _aeabi_atexit((int)&Singleton<Application>::s_inst, (int)Application::~Application, (int)&_dso_handle);
  }
  if ( (`guard variable for'Singleton<PFWorld>::s_inst & 1) == 0 )
  {
    `guard variable for'Singleton<PFWorld>::s_inst = 1;
    PFWorld::PFWorld((PFWorld *)&Singleton<PFWorld>::s_inst);
    return _aeabi_atexit((int)&Singleton<PFWorld>::s_inst, (int)PFWorld::~PFWorld, (int)&_dso_handle);
  }
  return result;
}


// ===== 40691c EvGamepadAxis::~EvGamepadAxis() =====
void __fastcall EvGamepadAxis::~EvGamepadAxis(EvGamepadAxis *this)
{
  ;
}


// ===== 406920 v2GamepadController::~v2GamepadController() =====
void __fastcall v2GamepadController::~v2GamepadController(v2GamepadController *this)
{
  ;
}


// ===== 406924 v2GamepadController::~v2GamepadController() =====
void __fastcall v2GamepadController::~v2GamepadController(v2GamepadController *this)
{
  ;
}


// ===== 406928 EvGamepadAxis::~EvGamepadAxis() =====
void __fastcall EvGamepadAxis::~EvGamepadAxis(EvGamepadAxis *this)
{
  *(_DWORD *)this = off_95B458;
  CustomFree(this);
}


// ===== 40695c v2GamepadController::~v2GamepadController() =====
void __fastcall v2GamepadController::~v2GamepadController(v2GamepadController *this)
{
  v2GamepadController::~v2GamepadController(this);
  CustomFree(this);
}


// ===== 406978 v2GamepadController::v2GamepadController(v2Controllable *,int) =====
void __fastcall v2GamepadController::v2GamepadController(v2GamepadController *this, v2Controllable *a2, int a3)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  if ( !a2 )
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *((_DWORD *)this + 4) = a3;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_967878;
  *((_DWORD *)this + 6) = 0;
}


// ===== 406a64 v2GamepadController::v2GamepadController(v2Controllable *,int) =====
void __fastcall v2GamepadController::v2GamepadController(v2GamepadController *this, v2Controllable *a2, int a3)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  if ( !a2 )
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *((_DWORD *)this + 4) = a3;
  *((_DWORD *)this + 7) = 0;
  *((_DWORD *)this + 5) = 0;
  *(_DWORD *)this = off_967878;
  *((_DWORD *)this + 6) = 0;
}


// ===== 406b50 `global constructor keyed to'.._.._sources_Game_Controllers_v2GamepadController.cpp =====
int `global constructor keyed to'.._.._sources_Game_Controllers_v2GamepadController.cpp()
{
  int result; // r0

  result = `guard variable for'Singleton<PlayerStatManager>::s_inst;
  dword_9A31A0 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A319C = 1056964608;
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


// ===== 406c2c v2GamepadController::Update(void) =====
int __fastcall v2GamepadController::Update(Character **this)
{
  InputManager *Instance; // r0
  int v3; // r8
  InputManager *v4; // r4
  int result; // r0
  int v6; // r4
  float v7; // r10
  int v8; // r10
  float v9; // r0
  float Dt; // r0
  Character *v11; // r10
  unsigned int SkillInSlot; // r11
  unsigned int v13; // r9
  unsigned int v14; // r10
  int v15; // r10
  int v16; // r9
  const Character *v17; // r1
  int v18; // r9
  EventManager *v19; // r10
  int v20; // r2
  int v21; // r2
  int v22; // r2
  int v23; // r2
  int v24; // r2
  int v25; // r2
  int v26; // r2
  int v27; // r12
  int v28; // r2
  int v29; // r2
  int v30; // r2
  int v31; // r2
  int v32; // r2
  int v33; // r2
  int v34; // r2
  int v35; // r2
  int v36; // r2
  int v37; // r2
  int v38; // r2
  int v39; // r2
  int v40; // r2
  int v41; // r2
  int v42; // r2
  int v43; // r2
  _BOOL4 v44; // r12
  int v45; // r12
  float v46; // r8
  float v47; // r10
  float v48; // r4
  int Switch; // r9
  float v50; // r1
  float v51; // r2
  float v52; // r0
  float v53; // r0
  float v54; // r3
  _BOOL4 v55; // r1
  float v56; // r1
  float v57; // r2
  float v58; // r10
  float v59; // r9
  int v60; // r0
  float v61; // [sp+0h] [bp-2F4h]
  float v62; // [sp+4h] [bp-2F0h]
  float v63; // [sp+8h] [bp-2ECh]
  _DWORD v64[6]; // [sp+14h] [bp-2E0h] BYREF
  _DWORD v65[6]; // [sp+2Ch] [bp-2C8h] BYREF
  _DWORD v66[6]; // [sp+44h] [bp-2B0h] BYREF
  _DWORD v67[6]; // [sp+5Ch] [bp-298h] BYREF
  _DWORD v68[6]; // [sp+74h] [bp-280h] BYREF
  _DWORD v69[6]; // [sp+8Ch] [bp-268h] BYREF
  _DWORD v70[6]; // [sp+A4h] [bp-250h] BYREF
  _DWORD v71[6]; // [sp+BCh] [bp-238h] BYREF
  _DWORD v72[6]; // [sp+D4h] [bp-220h] BYREF
  _DWORD v73[6]; // [sp+ECh] [bp-208h] BYREF
  _DWORD v74[6]; // [sp+104h] [bp-1F0h] BYREF
  _DWORD v75[6]; // [sp+11Ch] [bp-1D8h] BYREF
  _DWORD v76[6]; // [sp+134h] [bp-1C0h] BYREF
  _DWORD v77[6]; // [sp+14Ch] [bp-1A8h] BYREF
  _DWORD v78[6]; // [sp+164h] [bp-190h] BYREF
  _DWORD v79[6]; // [sp+17Ch] [bp-178h] BYREF
  _DWORD v80[6]; // [sp+194h] [bp-160h] BYREF
  _DWORD v81[6]; // [sp+1ACh] [bp-148h] BYREF
  _DWORD v82[6]; // [sp+1C4h] [bp-130h] BYREF
  _DWORD v83[6]; // [sp+1DCh] [bp-118h] BYREF
  _DWORD v84[6]; // [sp+1F4h] [bp-100h] BYREF
  _DWORD v85[6]; // [sp+20Ch] [bp-E8h] BYREF
  _DWORD v86[6]; // [sp+224h] [bp-D0h] BYREF
  _DWORD v87[6]; // [sp+23Ch] [bp-B8h] BYREF
  _DWORD v88[6]; // [sp+254h] [bp-A0h] BYREF
  _DWORD v89[6]; // [sp+26Ch] [bp-88h] BYREF
  _DWORD v90[5]; // [sp+284h] [bp-70h] BYREF
  float v91; // [sp+298h] [bp-5Ch] BYREF
  float v92; // [sp+29Ch] [bp-58h]
  float v93; // [sp+2A0h] [bp-54h]
  _DWORD v94[3]; // [sp+2A4h] [bp-50h] BYREF
  _DWORD v95[3]; // [sp+2B0h] [bp-44h] BYREF
  _DWORD v96[3]; // [sp+2BCh] [bp-38h] BYREF
  float v97; // [sp+2C8h] [bp-2Ch] BYREF
  float v98; // [sp+2CCh] [bp-28h]
  float v99; // [sp+2D0h] [bp-24h]
  std::priv::_String_base<char,std::allocator<char> > v100; // [sp+2D4h] [bp-20h] BYREF

  Instance = (InputManager *)InputManager::GetInstance((InputManager *)this);
  v3 = (int)*(this + 4);
  v4 = Instance;
  result = InputManager::GetNumGamepads(Instance);
  if ( v3 >= result )
    return result;
  result = (int)*(this + 4) < 0
         ? InputManager::GetFirstConnectedGamepad(v4)
         : (*(int (__fastcall **)(InputManager *))(*(_DWORD *)v4 + 8))(v4);
  v6 = result;
  if ( !result )
    return result;
  GamepadTweaker::UpdateButtonMappings((_DWORD *)dword_99F794);
  v91 = 0.0;
  v92 = 0.0;
  v93 = 0.0;
  v91 = (float)(*(float *)(v6 + 1452) + *(float *)(v6 + 1452)) / (float)(*(float *)(v6 + 1460) - *(float *)(v6 + 1456));
  LODWORD(v92) = COERCE_INT(
                   (float)(*(float *)(v6 + 1484) + *(float *)(v6 + 1484))
                 / (float)(*(float *)(v6 + 1492) - *(float *)(v6 + 1488)))
               + 0x80000000;
  v7 = sqrtf((float)((float)(v91 * v91) + (float)(v92 * v92)) + 0.0);
  if ( v7 >= 0.25 )
  {
    Point3D<float>::normalize(&v91);
    if ( v7 < 1.0 )
    {
      v59 = (float)(v7 - 0.25) / 0.75;
      v58 = v59 * v91;
      v91 = v59 * v91;
      v92 = v92 * v59;
      v93 = v93 * v59;
    }
    else
    {
      v58 = v91;
    }
    v97 = v58;
    v98 = v92;
    v99 = v93;
  }
  else
  {
    v99 = *(float *)&dword_99F85C;
    v97 = *(float *)&Vec3f_Origin;
    v98 = *(float *)&dword_99F858;
  }
  v8 = (int)*(this + 3);
  if ( v8 && *(_BYTE *)(v8 + 5320) )
  {
    *(this + 5) = (Character *)Vec3f_Origin;
    *(this + 6) = (Character *)dword_99F858;
    *(this + 7) = (Character *)dword_99F85C;
    if ( CameraBase::s_activeCamera )
    {
      CameraBase::GetCameraLookAtVec(v96, CameraBase::s_activeCamera);
      v96[2] = 0;
      v9 = Point3D<float>::angle();
      Point3D<float>::rotateXY(&v97, v9);
      v8 = (int)*(this + 3);
    }
    v62 = v97 * 1.25;
    v63 = v98 * 1.25;
    v61 = v99 * 1.25;
    Dt = (float)(unsigned int)Application::GetDt((Application *)&Singleton<Application>::s_inst);
    *(float *)(v8 + 5296) = (float)(Dt * v62) + *(float *)(v8 + 5296);
    *(float *)(v8 + 5300) = (float)(Dt * v63) + *(float *)(v8 + 5300);
    *(float *)(v8 + 5304) = (float)(Dt * v61) + *(float *)(v8 + 5304);
    goto LABEL_12;
  }
  DebugSwitches::load((DebugSwitches *)&DebugSwitches::s_inst);
  v100._M_finish = (char *)&v100;
  v100._M_start_of_storage._M_data = (char *)&v100;
  std::priv::_String_base<char,std::allocator<char>>::_M_allocate_block(&v100, 0x1Cu);
  v100._M_finish = (char *)memcpy(v100._M_start_of_storage._M_data, "OPTIM_UseOldGamepadHandling", 0x1Bu) + 27;
  *v100._M_finish = 0;
  Switch = DebugSwitches::GetSwitch((DebugSwitches *)&DebugSwitches::s_inst, (const std::string *)&v100);
  std::priv::_String_base<char,std::allocator<char>>::_M_deallocate_block(&v100);
  if ( Switch )
  {
    v54 = v99 - *((float *)this + 7);
    v53 = (float)((float)(v97 - *((float *)this + 5)) * (float)(v97 - *((float *)this + 5)))
        + (float)((float)(v98 - *((float *)this + 6)) * (float)(v98 - *((float *)this + 6)));
    v55 = (float)(v53 + (float)(v54 * v54)) > 0.0001;
    if ( (float)(v53 + (float)(v54 * v54)) > 0.0001 )
    {
      v56 = v98;
      v57 = v99;
      *((float *)this + 5) = v97;
      *((float *)this + 6) = v56;
      *((float *)this + 7) = v57;
      if ( !CameraBase::s_activeCamera )
        goto LABEL_160;
      CameraBase::GetCameraLookAtVec(v94, CameraBase::s_activeCamera);
      v94[2] = 0;
      goto LABEL_159;
    }
    v60 = (int)*(this + 3);
    if ( v60 && !CharStateMachine::SM_IsMoving((CharStateMachine *)(v60 + 1276), v55) )
    {
      *(this + 7) = nullptr;
      *(this + 5) = nullptr;
      *(this + 6) = nullptr;
    }
  }
  else
  {
    if ( (float)((float)((float)((float)(v97 - *(float *)&Vec3f_Origin) * (float)(v97 - *(float *)&Vec3f_Origin))
                       + (float)((float)(v98 - *(float *)&dword_99F858) * (float)(v98 - *(float *)&dword_99F858)))
               + (float)((float)(v99 - *(float *)&dword_99F85C) * (float)(v99 - *(float *)&dword_99F85C))) > 0.0001 )
    {
      v50 = v98;
      v51 = v99;
      *((float *)this + 5) = v97;
      *((float *)this + 6) = v50;
      *((float *)this + 7) = v51;
      if ( !CameraBase::s_activeCamera )
        goto LABEL_160;
      CameraBase::GetCameraLookAtVec(v95, CameraBase::s_activeCamera);
      v95[2] = 0;
LABEL_159:
      v52 = Point3D<float>::angle();
      Point3D<float>::rotateXY(&v97, v52);
LABEL_160:
      v2Controller::Cmd_HeadTowards((int)this);
      goto LABEL_12;
    }
    if ( (float)((float)((float)((float)(*((float *)this + 5) - *(float *)&Vec3f_Origin)
                               * (float)(*((float *)this + 5) - *(float *)&Vec3f_Origin))
                       + (float)((float)(*((float *)this + 6) - *(float *)&dword_99F858)
                               * (float)(*((float *)this + 6) - *(float *)&dword_99F858)))
               + (float)((float)(*((float *)this + 7) - *(float *)&dword_99F85C)
                       * (float)(*((float *)this + 7) - *(float *)&dword_99F85C))) > 0.0001 )
    {
      *(this + 7) = nullptr;
      *(this + 5) = nullptr;
      *(this + 6) = nullptr;
      v2Controller::Cmd_HeadTowards((int)this);
    }
  }
LABEL_12:
  if ( *(float *)(v6 + 12) >= (float)((float)((float)(*(float *)(v6 + 20) + *(float *)(v6 + 16)) + 1.0) * 0.5) )
    v2Controller::Cmd_Attack((int)this, nullptr);
  v11 = *(this + 3);
  if ( v11 )
  {
    SkillInSlot = Character::SG_GetSkillInSlot(*(this + 3), 0);
    v13 = Character::SG_GetSkillInSlot(v11, 1);
    v14 = Character::SG_GetSkillInSlot(v11, 2);
    if ( SkillInSlot != -1 )
    {
      if ( *(float *)(v6 + 88) < (float)((float)((float)(*(float *)(v6 + 100) + *(float *)(v6 + 96)) + 1.0) * 0.5) )
      {
        if ( *(_BYTE *)(v6 + 104) )
          v2Controller::Cmd_EndSkill((int)this, SkillInSlot);
      }
      else if ( !*(_BYTE *)(v6 + 104) )
      {
        v2Controller::Cmd_BeginSkill((int)this, SkillInSlot);
      }
    }
    if ( v13 != -1 )
    {
      if ( *(float *)(v6 + 120) < (float)((float)((float)(*(float *)(v6 + 132) + *(float *)(v6 + 128)) + 1.0) * 0.5) )
      {
        if ( *(_BYTE *)(v6 + 136) )
          v2Controller::Cmd_EndSkill((int)this, v13);
      }
      else if ( !*(_BYTE *)(v6 + 136) )
      {
        v2Controller::Cmd_BeginSkill((int)this, v13);
      }
    }
    if ( v14 != -1 )
    {
      if ( *(float *)(v6 + 56) < (float)((float)((float)(*(float *)(v6 + 68) + *(float *)(v6 + 64)) + 1.0) * 0.5) )
      {
        if ( *(_BYTE *)(v6 + 72) )
          v2Controller::Cmd_EndSkill((int)this, v14);
      }
      else if ( !*(_BYTE *)(v6 + 72) )
      {
        v2Controller::Cmd_BeginSkill((int)this, v14);
      }
    }
  }
  if ( *(float *)(v6 + 280) >= (float)((float)((float)(*(float *)(v6 + 292) + *(float *)(v6 + 288)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 296) )
      v2Controller::Cmd_BeginCast((int)this, 0);
  }
  else if ( *(_BYTE *)(v6 + 296) )
  {
    v2Controller::Cmd_EndCast((int)this, 0);
  }
  if ( *(float *)(v6 + 344) >= (float)((float)((float)(*(float *)(v6 + 356) + *(float *)(v6 + 352)) + 1.0) * 0.5)
    && !*(_BYTE *)(v6 + 360)
    || *(float *)(v6 + 408) >= (float)((float)((float)(*(float *)(v6 + 420) + *(float *)(v6 + 416)) + 1.0) * 0.5)
    && !*(_BYTE *)(v6 + 424)
    || *(float *)(v6 + 376) >= (float)((float)((float)(*(float *)(v6 + 388) + *(float *)(v6 + 384)) + 1.0) * 0.5)
    && !*(_BYTE *)(v6 + 392)
    || *(float *)(v6 + 440) >= (float)((float)((float)(*(float *)(v6 + 452) + *(float *)(v6 + 448)) + 1.0) * 0.5)
    && !*(_BYTE *)(v6 + 456) )
  {
    v2Controller::Cmd_UsePotion((int)this);
  }
  if ( *(float *)(v6 + 204) >= (float)((float)((float)(*(float *)(v6 + 212) + *(float *)(v6 + 208)) + 1.0) * 0.5) )
  {
    v15 = (int)*(this + 3);
    if ( v15 )
    {
      v16 = *(_DWORD *)(v15 + 5284);
      if ( CharStateMachine::SM_IsLifting((CharStateMachine *)(v15 + 1276)) )
      {
        v2Controller::Cmd_DropObject((int)this);
      }
      else if ( v16
             && (*(int (__fastcall **)(int, int))(*(_DWORD *)v16 + 136))(v16, v15)
             && (*(int (__fastcall **)(int, int))(*(_DWORD *)v16 + 144))(v16, v15) != 8 )
      {
        v2Controller::Cmd_UseOOI((int)this, nullptr);
      }
    }
  }
  if ( *(float *)(v6 + 472) < (float)((float)((float)(*(float *)(v6 + 484) + *(float *)(v6 + 480)) + 1.0) * 0.5)
    && *(_BYTE *)(v6 + 488) )
  {
    v2Controller::Cmd_OpenIGM((v2Controller *)this);
  }
  v17 = *(this + 3);
  if ( v17 )
    v18 = *((_DWORD *)PlayerManager::GetPlayerByCharacter((PlayerManager *)dword_99F76C, v17, 0) + 410);
  else
    v18 = 0;
  v19 = (EventManager *)dword_99F740;
  if ( *(float *)(v6 + 24) < (float)((float)((float)(*(float *)(v6 + 36) + *(float *)(v6 + 32)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 40) )
      goto LABEL_49;
    v20 = 0;
    goto LABEL_48;
  }
  if ( !*(_BYTE *)(v6 + 40) )
  {
    v20 = 1;
LABEL_48:
    v89[1] = 7;
    v89[0] = off_95B470;
    v89[2] = 0;
    v89[5] = 1065353216;
    v89[3] = v20;
    v89[4] = v18;
    EventManager::Raise((EventManager *)dword_99F740, (const IEvent *)v89);
    v89[0] = off_95B458;
  }
LABEL_49:
  if ( *(float *)(v6 + 56) < (float)((float)((float)(*(float *)(v6 + 68) + *(float *)(v6 + 64)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 72) )
      goto LABEL_53;
    v21 = 0;
    goto LABEL_52;
  }
  if ( !*(_BYTE *)(v6 + 72) )
  {
    v21 = 1;
LABEL_52:
    v88[1] = 7;
    v88[0] = off_95B470;
    v88[2] = 1;
    v88[5] = 1065353216;
    v88[3] = v21;
    v88[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v88);
    v88[0] = off_95B458;
  }
LABEL_53:
  if ( *(float *)(v6 + 88) < (float)((float)((float)(*(float *)(v6 + 100) + *(float *)(v6 + 96)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 104) )
      goto LABEL_57;
    v22 = 0;
    goto LABEL_56;
  }
  if ( !*(_BYTE *)(v6 + 104) )
  {
    v22 = 1;
LABEL_56:
    v87[1] = 7;
    v87[0] = off_95B470;
    v87[2] = 2;
    v87[5] = 1065353216;
    v87[3] = v22;
    v87[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v87);
    v87[0] = off_95B458;
  }
LABEL_57:
  if ( *(float *)(v6 + 120) < (float)((float)((float)(*(float *)(v6 + 132) + *(float *)(v6 + 128)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 136) )
      goto LABEL_61;
    v23 = 0;
    goto LABEL_60;
  }
  if ( !*(_BYTE *)(v6 + 136) )
  {
    v23 = 1;
LABEL_60:
    v86[1] = 7;
    v86[0] = off_95B470;
    v86[2] = 3;
    v86[5] = 1065353216;
    v86[3] = v23;
    v86[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v86);
    v86[0] = off_95B458;
  }
LABEL_61:
  if ( *(float *)(v6 + 152) < (float)((float)((float)(*(float *)(v6 + 164) + *(float *)(v6 + 160)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 168) )
      goto LABEL_65;
    v24 = 0;
    goto LABEL_64;
  }
  if ( !*(_BYTE *)(v6 + 168) )
  {
    v24 = 1;
LABEL_64:
    v85[1] = 7;
    v85[0] = off_95B470;
    v85[2] = 4;
    v85[5] = 1065353216;
    v85[3] = v24;
    v85[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v85);
    v85[0] = off_95B458;
  }
LABEL_65:
  if ( *(float *)(v6 + 184) < (float)((float)((float)(*(float *)(v6 + 196) + *(float *)(v6 + 192)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 200) )
      goto LABEL_69;
    v25 = 0;
    goto LABEL_68;
  }
  if ( !*(_BYTE *)(v6 + 200) )
  {
    v25 = 1;
LABEL_68:
    v84[1] = 7;
    v84[0] = off_95B470;
    v84[2] = 5;
    v84[5] = 1065353216;
    v84[3] = v25;
    v84[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v84);
    v84[0] = off_95B458;
  }
LABEL_69:
  if ( *(float *)(v6 + 216) < (float)((float)((float)(*(float *)(v6 + 228) + *(float *)(v6 + 224)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 232) )
      goto LABEL_73;
    v26 = 0;
    goto LABEL_72;
  }
  if ( !*(_BYTE *)(v6 + 232) )
  {
    v26 = 1;
LABEL_72:
    v83[1] = 7;
    v83[0] = off_95B470;
    v83[2] = 6;
    v83[5] = 1065353216;
    v83[3] = v26;
    v83[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v83);
    v83[0] = off_95B458;
  }
LABEL_73:
  if ( *(float *)(v6 + 760) < (float)((float)((float)(*(float *)(v6 + 772) + *(float *)(v6 + 768)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 776) )
      goto LABEL_77;
    v27 = 0;
    goto LABEL_76;
  }
  if ( !*(_BYTE *)(v6 + 776) )
  {
    v27 = 1;
LABEL_76:
    v82[2] = 7;
    v82[0] = off_95B470;
    v82[5] = 1065353216;
    v82[3] = v27;
    v82[1] = 7;
    v82[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v82);
    v82[0] = off_95B458;
  }
LABEL_77:
  if ( *(float *)(v6 + 280) < (float)((float)((float)(*(float *)(v6 + 292) + *(float *)(v6 + 288)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 296) )
      goto LABEL_81;
    v28 = 0;
    goto LABEL_80;
  }
  if ( !*(_BYTE *)(v6 + 296) )
  {
    v28 = 1;
LABEL_80:
    v81[1] = 7;
    v81[0] = off_95B470;
    v81[2] = 8;
    v81[5] = 1065353216;
    v81[3] = v28;
    v81[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v81);
    v81[0] = off_95B458;
  }
LABEL_81:
  if ( *(float *)(v6 + 792) < (float)((float)((float)(*(float *)(v6 + 804) + *(float *)(v6 + 800)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 808) )
      goto LABEL_85;
    v29 = 0;
    goto LABEL_84;
  }
  if ( !*(_BYTE *)(v6 + 808) )
  {
    v29 = 1;
LABEL_84:
    v80[1] = 7;
    v80[0] = off_95B470;
    v80[2] = 9;
    v80[5] = 1065353216;
    v80[3] = v29;
    v80[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v80);
    v80[0] = off_95B458;
  }
LABEL_85:
  if ( *(float *)(v6 + 344) < (float)((float)((float)(*(float *)(v6 + 356) + *(float *)(v6 + 352)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 360) )
      goto LABEL_89;
    v30 = 0;
    goto LABEL_88;
  }
  if ( !*(_BYTE *)(v6 + 360) )
  {
    v30 = 1;
LABEL_88:
    v79[1] = 7;
    v79[0] = off_95B470;
    v79[2] = 10;
    v79[5] = 1065353216;
    v79[3] = v30;
    v79[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v79);
    v79[0] = off_95B458;
  }
LABEL_89:
  if ( *(float *)(v6 + 376) < (float)((float)((float)(*(float *)(v6 + 388) + *(float *)(v6 + 384)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 392) )
      goto LABEL_93;
    v31 = 0;
    goto LABEL_92;
  }
  if ( !*(_BYTE *)(v6 + 392) )
  {
    v31 = 1;
LABEL_92:
    v78[1] = 7;
    v78[0] = off_95B470;
    v78[2] = 11;
    v78[5] = 1065353216;
    v78[3] = v31;
    v78[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v78);
    v78[0] = off_95B458;
  }
LABEL_93:
  if ( *(float *)(v6 + 408) < (float)((float)((float)(*(float *)(v6 + 420) + *(float *)(v6 + 416)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 424) )
      goto LABEL_97;
    v32 = 0;
    goto LABEL_96;
  }
  if ( !*(_BYTE *)(v6 + 424) )
  {
    v32 = 1;
LABEL_96:
    v77[1] = 7;
    v77[0] = off_95B470;
    v77[2] = 12;
    v77[5] = 1065353216;
    v77[3] = v32;
    v77[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v77);
    v77[0] = off_95B458;
  }
LABEL_97:
  if ( *(float *)(v6 + 440) < (float)((float)((float)(*(float *)(v6 + 452) + *(float *)(v6 + 448)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 456) )
      goto LABEL_101;
    v33 = 0;
    goto LABEL_100;
  }
  if ( !*(_BYTE *)(v6 + 456) )
  {
    v33 = 1;
LABEL_100:
    v76[1] = 7;
    v76[0] = off_95B470;
    v76[2] = 13;
    v76[5] = 1065353216;
    v76[3] = v33;
    v76[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v76);
    v76[0] = off_95B458;
  }
LABEL_101:
  if ( *(float *)(v6 + 472) < (float)((float)((float)(*(float *)(v6 + 484) + *(float *)(v6 + 480)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 488) )
      goto LABEL_105;
    v34 = 0;
    goto LABEL_104;
  }
  if ( !*(_BYTE *)(v6 + 488) )
  {
    v34 = 1;
LABEL_104:
    v75[1] = 7;
    v75[0] = off_95B470;
    v75[2] = 14;
    v75[5] = 1065353216;
    v75[3] = v34;
    v75[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v75);
    v75[0] = off_95B458;
  }
LABEL_105:
  if ( *(float *)(v6 + 504) < (float)((float)((float)(*(float *)(v6 + 516) + *(float *)(v6 + 512)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 520) )
      goto LABEL_109;
    v35 = 0;
    goto LABEL_108;
  }
  if ( !*(_BYTE *)(v6 + 520) )
  {
    v35 = 1;
LABEL_108:
    v74[1] = 7;
    v74[0] = off_95B470;
    v74[2] = 15;
    v74[5] = 1065353216;
    v74[3] = v35;
    v74[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v74);
    v74[0] = off_95B458;
  }
LABEL_109:
  if ( *(float *)(v6 + 1208) < (float)((float)((float)(*(float *)(v6 + 1220) + *(float *)(v6 + 1216)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1224) )
      goto LABEL_113;
    v36 = 0;
    goto LABEL_112;
  }
  if ( !*(_BYTE *)(v6 + 1224) )
  {
    v36 = 1;
LABEL_112:
    v73[1] = 7;
    v73[0] = off_95B470;
    v73[2] = 37;
    v73[5] = 1065353216;
    v73[3] = v36;
    v73[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v73);
    v73[0] = off_95B458;
  }
LABEL_113:
  if ( *(float *)(v6 + 1240) < (float)((float)((float)(*(float *)(v6 + 1252) + *(float *)(v6 + 1248)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1256) )
      goto LABEL_117;
    v37 = 0;
    goto LABEL_116;
  }
  if ( !*(_BYTE *)(v6 + 1256) )
  {
    v37 = 1;
LABEL_116:
    v72[1] = 7;
    v72[0] = off_95B470;
    v72[2] = 38;
    v72[5] = 1065353216;
    v72[3] = v37;
    v72[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v72);
    v72[0] = off_95B458;
  }
LABEL_117:
  if ( *(float *)(v6 + 1272) < (float)((float)((float)(*(float *)(v6 + 1284) + *(float *)(v6 + 1280)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1288) )
      goto LABEL_121;
    v38 = 0;
    goto LABEL_120;
  }
  if ( !*(_BYTE *)(v6 + 1288) )
  {
    v38 = 1;
LABEL_120:
    v71[1] = 7;
    v71[0] = off_95B470;
    v71[2] = 39;
    v71[5] = 1065353216;
    v71[3] = v38;
    v71[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v71);
    v71[0] = off_95B458;
  }
LABEL_121:
  if ( *(float *)(v6 + 1304) < (float)((float)((float)(*(float *)(v6 + 1316) + *(float *)(v6 + 1312)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1320) )
      goto LABEL_125;
    v39 = 0;
    goto LABEL_124;
  }
  if ( !*(_BYTE *)(v6 + 1320) )
  {
    v39 = 1;
LABEL_124:
    v70[1] = 7;
    v70[0] = off_95B470;
    v70[2] = 40;
    v70[5] = 1065353216;
    v70[3] = v39;
    v70[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v70);
    v70[0] = off_95B458;
  }
LABEL_125:
  if ( *(float *)(v6 + 1336) < (float)((float)((float)(*(float *)(v6 + 1348) + *(float *)(v6 + 1344)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1352) )
      goto LABEL_129;
    v40 = 0;
    goto LABEL_128;
  }
  if ( !*(_BYTE *)(v6 + 1352) )
  {
    v40 = 1;
LABEL_128:
    v69[1] = 7;
    v69[0] = off_95B470;
    v69[2] = 41;
    v69[5] = 1065353216;
    v69[3] = v40;
    v69[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v69);
    v69[0] = off_95B458;
  }
LABEL_129:
  if ( *(float *)(v6 + 1368) < (float)((float)((float)(*(float *)(v6 + 1380) + *(float *)(v6 + 1376)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1384) )
      goto LABEL_133;
    v41 = 0;
    goto LABEL_132;
  }
  if ( !*(_BYTE *)(v6 + 1384) )
  {
    v41 = 1;
LABEL_132:
    v68[1] = 7;
    v68[0] = off_95B470;
    v68[2] = 42;
    v68[5] = 1065353216;
    v68[3] = v41;
    v68[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v68);
    v68[0] = off_95B458;
  }
LABEL_133:
  if ( *(float *)(v6 + 1400) < (float)((float)((float)(*(float *)(v6 + 1412) + *(float *)(v6 + 1408)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1416) )
      goto LABEL_137;
    v42 = 0;
    goto LABEL_136;
  }
  if ( !*(_BYTE *)(v6 + 1416) )
  {
    v42 = 1;
LABEL_136:
    v67[1] = 7;
    v67[0] = off_95B470;
    v67[2] = 43;
    v67[5] = 1065353216;
    v67[3] = v42;
    v67[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v67);
    v67[0] = off_95B458;
  }
LABEL_137:
  if ( *(float *)(v6 + 1432) < (float)((float)((float)(*(float *)(v6 + 1444) + *(float *)(v6 + 1440)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 1448) )
      goto LABEL_141;
    v43 = 0;
    goto LABEL_140;
  }
  if ( !*(_BYTE *)(v6 + 1448) )
  {
    v43 = 1;
LABEL_140:
    v66[1] = 7;
    v66[0] = off_95B470;
    v66[2] = 44;
    v66[5] = 1065353216;
    v66[3] = v43;
    v66[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v66);
    v66[0] = off_95B458;
  }
LABEL_141:
  if ( *(float *)(v6 + 632) < (float)((float)((float)(*(float *)(v6 + 644) + *(float *)(v6 + 640)) + 1.0) * 0.5) )
  {
    if ( !*(_BYTE *)(v6 + 648) )
      goto LABEL_146;
    *(_BYTE *)(*(_DWORD *)(dword_99F73C + 28) + 656) = 1;
    v44 = (float)((float)((float)(*(float *)(v6 + 644) + *(float *)(v6 + 640)) + 1.0) * 0.5) <= *(float *)(v6 + 632)
       && !*(_BYTE *)(v6 + 648);
    goto LABEL_145;
  }
  if ( !*(_BYTE *)(v6 + 648) )
  {
    v44 = 1;
LABEL_145:
    v65[1] = 7;
    v65[0] = off_95B470;
    v65[2] = 19;
    v65[5] = 1065353216;
    v65[3] = v44;
    v65[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v65);
    v65[0] = off_95B458;
  }
LABEL_146:
  if ( *(float *)(v6 + 728) >= (float)((float)((float)(*(float *)(v6 + 740) + *(float *)(v6 + 736)) + 1.0) * 0.5) )
  {
    if ( *(_BYTE *)(v6 + 744) )
      goto LABEL_150;
    v45 = 1;
    goto LABEL_149;
  }
  if ( *(_BYTE *)(v6 + 744) )
  {
    v45 = 0;
LABEL_149:
    v64[1] = 7;
    v64[0] = off_95B470;
    v64[2] = 22;
    v64[5] = 1065353216;
    v64[3] = v45;
    v64[4] = v18;
    EventManager::Raise(v19, (const IEvent *)v64);
    v64[0] = off_95B458;
  }
LABEL_150:
  v46 = (float)(*(float *)(v6 + 1548) + *(float *)(v6 + 1548)) / (float)(*(float *)(v6 + 1556) - *(float *)(v6 + 1552));
  if ( fabs(v46) > 0.25 )
  {
    v2Controller::Cmd_Zoom(
      (v2Controller *)this,
      (float)(*(float *)(v6 + 1548) + *(float *)(v6 + 1548)) / (float)(*(float *)(v6 + 1556) - *(float *)(v6 + 1552)));
    v90[1] = 8;
    v90[0] = off_967860;
    v90[2] = 3;
    v90[3] = v18;
    *(float *)&v90[4] = v46;
    EventManager::Raise(v19, (const IEvent *)v90);
    v90[0] = off_95B458;
  }
  v47 = (float)(*(float *)(v6 + 1484) + *(float *)(v6 + 1484)) / (float)(*(float *)(v6 + 1492) - *(float *)(v6 + 1488));
  v48 = (float)(*(float *)(v6 + 1452) + *(float *)(v6 + 1452)) / (float)(*(float *)(v6 + 1460) - *(float *)(v6 + 1456));
  if ( COERCE_FLOAT(LODWORD(v48) & 0x7FFFFFFF) > 0.25 )
    return v2Controller::Cmd_TranslateMapCam((v2Controller *)this, v48, v47);
  result = COERCE_FLOAT(LODWORD(v47) & 0x7FFFFFFF) > 0.25;
  if ( COERCE_FLOAT(LODWORD(v47) & 0x7FFFFFFF) > 0.25 )
    return v2Controller::Cmd_TranslateMapCam((v2Controller *)this, v48, v47);
  return result;
}


// ===== 4088ec v2HudController::~v2HudController() =====
void __fastcall v2HudController::~v2HudController(v2HudController *this)
{
  ;
}


// ===== 4088f0 v2HudController::~v2HudController() =====
void __fastcall v2HudController::~v2HudController(v2HudController *this)
{
  ;
}


// ===== 4088f4 `global constructor keyed to'.._.._sources_Game_Controllers_v2HudController.cpp =====
void `global constructor keyed to'.._.._sources_Game_Controllers_v2HudController.cpp()
{
  dword_9A31AC = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A31A8 = 1056964608;
}


// ===== 408914 v2HudController::~v2HudController() =====
void __fastcall v2HudController::~v2HudController(v2HudController *this)
{
  v2HudController::~v2HudController(this);
  CustomFree(this);
}


// ===== 408930 v2HudController::v2HudController(v2Controllable *) =====
void __fastcall v2HudController::v2HudController(v2HudController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  if ( !a2 )
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *(_DWORD *)this = off_967890;
}


// ===== 408a04 v2HudController::v2HudController(v2Controllable *) =====
void __fastcall v2HudController::v2HudController(v2HudController *this, v2Controllable *a2)
{
  *(_DWORD *)this = off_965F20;
  *((_DWORD *)this + 3) = 0;
  *((_DWORD *)this + 1) = a2;
  *((_BYTE *)this + 8) = 0;
  *((_BYTE *)this + 9) = 0;
  *((_BYTE *)this + 10) = 0;
  if ( !a2 )
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
        "controllable",
        "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\/v2Controller.h",
        68);
    }
  }
  *(_DWORD *)this = off_967890;
}


// ===== 408ad8 v2MixedController::Update(void) =====
int __fastcall v2MixedController::Update(int this)
{
  int v1; // r3
  int v2; // r5
  int v3; // r6
  int v4; // r4
  int v5; // r3

  v1 = *(_DWORD *)(this + 24);
  v2 = this;
  v3 = (*(_DWORD *)(this + 28) - v1) >> 2;
  if ( v3 )
  {
    v4 = 0;
    while ( 1 )
    {
      v5 = *(_DWORD *)(v1 + 4 * v4++);
      this = (*(int (__fastcall **)(int))(*(_DWORD *)v5 + 8))(v5);
      if ( v4 == v3 )
        break;
      v1 = *(_DWORD *)(v2 + 24);
    }
  }
  return this;
}


// ===== 408b24 `global constructor keyed to'.._.._sources_Game_Controllers_v2MixedController.cpp =====
void `global constructor keyed to'.._.._sources_Game_Controllers_v2MixedController.cpp()
{
  dword_9A31B8 = 1056964608;
  glitch::ps::vHalf = 1056964608;
  dword_9A31B4 = 1056964608;
}


// ===== 408b44 `non-virtual thunk to'v2MixedController::Ctrl_ResetZoom(void) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_ResetZoom(v2MixedController *this)
{
  return v2MixedController::Ctrl_ResetZoom((v2MixedController *)((char *)this - 16));
}


// ===== 408b4c v2MixedController::Ctrl_ResetZoom(void) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_ResetZoom(v2Controller *this)
{
  return v2Controller::Cmd_ResetZoom(this);
}


// ===== 408b50 `non-virtual thunk to'v2MixedController::Ctrl_Zoom(float) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_Zoom(v2MixedController *this, float a2)
{
  return v2MixedController::Ctrl_Zoom((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408b58 v2MixedController::Ctrl_Zoom(float) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_Zoom(v2Controller *this, float a2)
{
  return v2Controller::Cmd_Zoom(this, a2);
}


// ===== 408b5c `non-virtual thunk to'v2MixedController::Ctrl_OpenIGM(void) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_OpenIGM(v2MixedController *this)
{
  return v2MixedController::Ctrl_OpenIGM((v2MixedController *)((char *)this - 16));
}


// ===== 408b64 v2MixedController::Ctrl_OpenIGM(void) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_OpenIGM(v2Controller *this)
{
  return v2Controller::Cmd_OpenIGM(this);
}


// ===== 408b68 `non-virtual thunk to'v2MixedController::Ctrl_Kill(GameObject *,bool) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_Kill(v2MixedController *this, GameObject *a2, bool a3)
{
  return v2MixedController::Ctrl_Kill((v2MixedController *)((char *)this - 16), a2, a3);
}


// ===== 408b70 v2MixedController::Ctrl_Kill(GameObject *,bool) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_Kill(v2Controller *this, GameObject *a2, bool a3)
{
  return v2Controller::Cmd_Kill(this, a2, a3);
}


// ===== 408b74 `non-virtual thunk to'v2MixedController::Ctrl_DropObject(void) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_DropObject(v2MixedController *this)
{
  return v2MixedController::Ctrl_DropObject((v2MixedController *)((char *)this - 16));
}


// ===== 408b7c v2MixedController::Ctrl_DropObject(void) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_DropObject(int this)
{
  return v2Controller::Cmd_DropObject(this);
}


// ===== 408b80 `non-virtual thunk to'v2MixedController::Ctrl_UseOOI(GameObject *) =====
int __fastcall `non-virtual thunk to'v2MixedController::Ctrl_UseOOI(v2MixedController *this, GameObject *a2)
{
  return v2MixedController::Ctrl_UseOOI((v2MixedController *)((char *)this - 16), a2);
}


// ===== 408b88 v2MixedController::Ctrl_UseOOI(GameObject *) =====
// attributes: thunk
int __fastcall v2MixedController::Ctrl_UseOOI(int this, GameObject *a2)
{
  return v2Controller::Cmd_UseOOI(this, a2);
}

