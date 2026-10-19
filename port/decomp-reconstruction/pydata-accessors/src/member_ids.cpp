// GetMemberIDByString family (Arrays and Structs name lookups).
#include "pydata-accessors/member_names.hpp"

#include <cstring>

namespace pydata {
int FindMemberName(const NameTable& table, int count, const char* name) {
    if (table.names == nullptr) return -1;  // a table whose names file is skipped by the loader
    if (count > table.size) count = table.size;  // a Structs table (Item: kCount 38, 23 own names) never reads past its names
    for (int i = 0; i < count; ++i) {
        if (std::strcmp(name, table.names[i]) == 0) return i;
    }
    return -1;
}
}  // namespace pydata

namespace Arrays {

template <class T>
int GetMemberIDByString(const char* name) {
    return pydata::FindMemberName(T::m_memberNames, T::m_memberNames.size, name);
}

// 0x364b80 _ZN6Arrays19GetMemberIDByStringINS_8AnimDictEEEiPKc
template int GetMemberIDByString<AnimDict>(const char* name);
// 0x37ba84 _ZN6Arrays19GetMemberIDByStringINS_6SoundsEEEiPKc
template int GetMemberIDByString<Sounds>(const char* name);
// 0x39c2c8 _ZN6Arrays19GetMemberIDByStringINS_9LevelListEEEiPKc
template int GetMemberIDByString<LevelList>(const char* name);
// 0x3a1084 _ZN6Arrays19GetMemberIDByStringINS_22DestructibleContainersEEEiPKc
template int GetMemberIDByString<DestructibleContainers>(const char* name);
// 0x3a1708 _ZN6Arrays19GetMemberIDByStringINS_18OpenableContainersEEEiPKc
template int GetMemberIDByString<OpenableContainers>(const char* name);
// TrophyTable (0x3a3f70), CharacterTable (0x3fa188) and ItemTable (0x4ad5f8) are defined as explicit specializations
// in tb_accessors-Arrays-0.cpp; instantiating them here as well would define each symbol twice.
// 0x3e8bcc _ZN6Arrays19GetMemberIDByStringINS_11SpawnGroupsEEEiPKc
template int GetMemberIDByString<SpawnGroups>(const char* name);
// 0x4ac5c0 _ZN6Arrays19GetMemberIDByStringINS_15StrID_LanguagesEEEiPKc
template int GetMemberIDByString<StrID_Languages>(const char* name);
// 0x4ac664 _ZN6Arrays19GetMemberIDByStringINS_14GameObjectDictEEEiPKc
template int GetMemberIDByString<GameObjectDict>(const char* name);
// 0x4ac6d8 _ZN6Arrays19GetMemberIDByStringINS_14ProjectileDictEEEiPKc
template int GetMemberIDByString<ProjectileDict>(const char* name);
// 0x4ac74c _ZN6Arrays19GetMemberIDByStringINS_10EffectDictEEEiPKc
template int GetMemberIDByString<EffectDict>(const char* name);
// 0x4ac7c0 _ZN6Arrays19GetMemberIDByStringINS_9ModelDictEEEiPKc
template int GetMemberIDByString<ModelDict>(const char* name);
// 0x4ac864 _ZN6Arrays19GetMemberIDByStringINS_15WorldMapLockersEEEiPKc
template int GetMemberIDByString<WorldMapLockers>(const char* name);
// 0x4ac924 _ZN6Arrays19GetMemberIDByStringINS_8WorldMapEEEiPKc
template int GetMemberIDByString<WorldMap>(const char* name);
// 0x4ac9f0 _ZN6Arrays19GetMemberIDByStringINS_8v2QuestsEEEiPKc
template int GetMemberIDByString<v2Quests>(const char* name);
// 0x4acabc _ZN6Arrays19GetMemberIDByStringINS_8v2EventsEEEiPKc
template int GetMemberIDByString<v2Events>(const char* name);
// 0x4acb88 _ZN6Arrays19GetMemberIDByStringINS_12v2ConditionsEEEiPKc
template int GetMemberIDByString<v2Conditions>(const char* name);
// 0x4accf8 _ZN6Arrays19GetMemberIDByStringINS_10Sounds_bakEEEiPKc
template int GetMemberIDByString<Sounds_bak>(const char* name);
// 0x4acdc4 _ZN6Arrays19GetMemberIDByStringINS_18SoundGroupsRoutingEEEiPKc
template int GetMemberIDByString<SoundGroupsRouting>(const char* name);
// 0x4ace84 _ZN6Arrays19GetMemberIDByStringINS_17SoundBankPlaybackEEEiPKc
template int GetMemberIDByString<SoundBankPlayback>(const char* name);
// 0x4acf44 _ZN6Arrays19GetMemberIDByStringINS_9ListenersEEEiPKc
template int GetMemberIDByString<Listeners>(const char* name);
// 0x4ad010 _ZN6Arrays19GetMemberIDByStringINS_15CharSoundsTableEEEiPKc
template int GetMemberIDByString<CharSoundsTable>(const char* name);
// 0x4ad0dc _ZN6Arrays19GetMemberIDByStringINS_10SkillTableEEEiPKc
template int GetMemberIDByString<SkillTable>(const char* name);
// 0x4ad1a8 _ZN6Arrays19GetMemberIDByStringINS_14SkillListTableEEEiPKc
template int GetMemberIDByString<SkillListTable>(const char* name);
// 0x4ad24c _ZN6Arrays19GetMemberIDByStringINS_15ProjectileTableEEEiPKc
template int GetMemberIDByString<ProjectileTable>(const char* name);
// 0x4ad318 _ZN6Arrays19GetMemberIDByStringINS_12NumProbArrayEEEiPKc
template int GetMemberIDByString<NumProbArray>(const char* name);
// 0x4ad3bc _ZN6Arrays19GetMemberIDByStringINS_13MerchantTableEEEiPKc
template int GetMemberIDByString<MerchantTable>(const char* name);
// 0x4ad488 _ZN6Arrays19GetMemberIDByStringINS_9LootTableEEEiPKc
template int GetMemberIDByString<LootTable>(const char* name);
// 0x4ad554 _ZN6Arrays19GetMemberIDByStringINS_12ItemTypeListEEEiPKc
template int GetMemberIDByString<ItemTypeList>(const char* name);
// 0x4ad6c8 _ZN6Arrays19GetMemberIDByStringINS_8ItemListEEEiPKc
template int GetMemberIDByString<ItemList>(const char* name);
// 0x4ad76c _ZN6Arrays19GetMemberIDByStringINS_14InventoryTableEEEiPKc
template int GetMemberIDByString<InventoryTable>(const char* name);
// 0x4ad810 _ZN6Arrays19GetMemberIDByStringINS_21DropTilePriorityTableEEEiPKc
template int GetMemberIDByString<DropTilePriorityTable>(const char* name);
// 0x4ad8b4 _ZN6Arrays19GetMemberIDByStringINS_20ItemAudioVisualTableEEEiPKc
template int GetMemberIDByString<ItemAudioVisualTable>(const char* name);
// 0x4ad9d8 _ZN6Arrays19GetMemberIDByStringINS_14FastTravelListEEEiPKc
template int GetMemberIDByString<FastTravelList>(const char* name);
// 0x4adaa4 _ZN6Arrays19GetMemberIDByStringINS_21ItemBonusAttrMonopolyEEEiPKc
template int GetMemberIDByString<ItemBonusAttrMonopoly>(const char* name);
// 0x4adb48 _ZN6Arrays19GetMemberIDByStringINS_14ItemPowerTableEEEiPKc
template int GetMemberIDByString<ItemPowerTable>(const char* name);
// 0x4adc14 _ZN6Arrays19GetMemberIDByStringINS_13ItemPowerListEEEiPKc
template int GetMemberIDByString<ItemPowerList>(const char* name);
// 0x4adcb8 _ZN6Arrays19GetMemberIDByStringINS_9HintPagesEEEiPKc
template int GetMemberIDByString<HintPages>(const char* name);
// 0x4add78 _ZN6Arrays19GetMemberIDByStringINS_9HelpPagesEEEiPKc
template int GetMemberIDByString<HelpPages>(const char* name);
// 0x4ade38 _ZN6Arrays19GetMemberIDByStringINS_12TriggerTrapsEEEiPKc
template int GetMemberIDByString<TriggerTraps>(const char* name);
// 0x4adf04 _ZN6Arrays19GetMemberIDByStringINS_13TriggerPlatesEEEiPKc
template int GetMemberIDByString<TriggerPlates>(const char* name);
// 0x4adfd0 _ZN6Arrays19GetMemberIDByStringINS_14TriggerObjectsEEEiPKc
template int GetMemberIDByString<TriggerObjects>(const char* name);
// 0x4ae09c _ZN6Arrays19GetMemberIDByStringINS_10TimerTrapsEEEiPKc
template int GetMemberIDByString<TimerTraps>(const char* name);
// 0x4ae168 _ZN6Arrays19GetMemberIDByStringINS_15ProjectileTrapsEEEiPKc
template int GetMemberIDByString<ProjectileTraps>(const char* name);
// 0x4ae28c _ZN6Arrays19GetMemberIDByStringINS_15LiftableObjectsEEEiPKc
template int GetMemberIDByString<LiftableObjects>(const char* name);
// 0x4ae330 _ZN6Arrays19GetMemberIDByStringINS_17GameObjectDamagerEEEiPKc
template int GetMemberIDByString<GameObjectDamager>(const char* name);
// 0x4ae3fc _ZN6Arrays19GetMemberIDByStringINS_14ExplosiveTrapsEEEiPKc
template int GetMemberIDByString<ExplosiveTraps>(const char* name);
// 0x4ae4c8 _ZN6Arrays19GetMemberIDByStringINS_5DoorsEEEiPKc
template int GetMemberIDByString<Doors>(const char* name);
// 0x4ae5ec _ZN6Arrays19GetMemberIDByStringINS_11FontPaletteEEEiPKc
template int GetMemberIDByString<FontPalette>(const char* name);
// 0x4ae6ac _ZN6Arrays19GetMemberIDByStringINS_10FaeryTableEEEiPKc
template int GetMemberIDByString<FaeryTable>(const char* name);
// 0x4ae778 _ZN6Arrays19GetMemberIDByStringINS_14FaeryListTableEEEiPKc
template int GetMemberIDByString<FaeryListTable>(const char* name);
// 0x4ae81c _ZN6Arrays19GetMemberIDByStringINS_19FootstepEffectTableEEEiPKc
template int GetMemberIDByString<FootstepEffectTable>(const char* name);
// 0x4ae8e8 _ZN6Arrays19GetMemberIDByStringINS_15CharEffectTableEEEiPKc
template int GetMemberIDByString<CharEffectTable>(const char* name);
// 0x4ae9b4 _ZN6Arrays19GetMemberIDByStringINS_19AnimatedEffectTableEEEiPKc
template int GetMemberIDByString<AnimatedEffectTable>(const char* name);
// 0x4aea80 _ZN6Arrays19GetMemberIDByStringINS_7DialogsEEEiPKc
template int GetMemberIDByString<Dialogs>(const char* name);
// 0x4aeb24 _ZN6Arrays19GetMemberIDByStringINS_12DialogActorsEEEiPKc
template int GetMemberIDByString<DialogActors>(const char* name);
// 0x4aebf0 _ZN6Arrays19GetMemberIDByStringINS_15GameOptionTableEEEiPKc
template int GetMemberIDByString<GameOptionTable>(const char* name);
// 0x4aecbc _ZN6Arrays19GetMemberIDByStringINS_16GameDifficultiesEEEiPKc
template int GetMemberIDByString<GameDifficulties>(const char* name);
// 0x4aed88 _ZN6Arrays19GetMemberIDByStringINS_19DesignSettingsTableEEEiPKc
template int GetMemberIDByString<DesignSettingsTable>(const char* name);
// 0x4aee58 _ZN6Arrays19GetMemberIDByStringINS_9RectTableEEEiPKc
template int GetMemberIDByString<RectTable>(const char* name);
// 0x4aef24 _ZN6Arrays19GetMemberIDByStringINS_18Charater_TemplatesEEEiPKc
template int GetMemberIDByString<Charater_Templates>(const char* name);
// 0x4aefc8 _ZN6Arrays19GetMemberIDByStringINS_13StatListTableEEEiPKc
template int GetMemberIDByString<StatListTable>(const char* name);
// 0x4af06c _ZN6Arrays19GetMemberIDByStringINS_25StatAutoAssignSchemeTableEEEiPKc
template int GetMemberIDByString<StatAutoAssignSchemeTable>(const char* name);
// 0x4af16c _ZN6Arrays19GetMemberIDByStringINS_10ClassTableEEEiPKc
template int GetMemberIDByString<ClassTable>(const char* name);
// 0x4af210 _ZN6Arrays19GetMemberIDByStringINS_13CharAnimTableEEEiPKc
template int GetMemberIDByString<CharAnimTable>(const char* name);
// 0x4af2e0 _ZN6Arrays19GetMemberIDByStringINS_15CamAnimSetTableEEEiPKc
template int GetMemberIDByString<CamAnimSetTable>(const char* name);
// 0x4af3ac _ZN6Arrays19GetMemberIDByStringINS_9AnimTableEEEiPKc
template int GetMemberIDByString<AnimTable>(const char* name);
// 0x4af478 _ZN6Arrays19GetMemberIDByStringINS_14AIFactionTableEEEiPKc
template int GetMemberIDByString<AIFactionTable>(const char* name);
// 0x4af51c _ZN6Arrays19GetMemberIDByStringINS_7AITableEEEiPKc
template int GetMemberIDByString<AITable>(const char* name);

}  // namespace Arrays

namespace Structs {
pydata::NameTable SoundAutoGen::m_dataNames;
pydata::NameTable LangSheetList::m_dataNames;
pydata::NameTable ColladaFile::m_dataNames;
pydata::NameTable WorldMapLocker::m_dataNames;
pydata::NameTable WldMapLocation::m_dataNames;
pydata::NameTable v2Quest::m_dataNames;
pydata::NameTable v2Event::m_dataNames;
pydata::NameTable v2CondAnd::m_dataNames;
pydata::NameTable Trophy::m_dataNames;
pydata::NameTable SpawnGroup::m_dataNames;
pydata::NameTable Sound::m_dataNames;
pydata::NameTable SoundGroup::m_dataNames;
pydata::NameTable SoundBank::m_dataNames;
pydata::NameTable Listener::m_dataNames;
pydata::NameTable CharSounds::m_dataNames;
pydata::NameTable Skill::m_dataNames;
pydata::NameTable SkillList::m_dataNames;
pydata::NameTable Projectile::m_dataNames;
pydata::NameTable NumProbList::m_dataNames;
pydata::NameTable Merchant::m_dataNames;
pydata::NameTable Loot::m_dataNames;
pydata::NameTable ItemTypeListList::m_dataNames;
pydata::NameTable Item::m_dataNames;
pydata::NameTable ItemListEntryList::m_dataNames;
pydata::NameTable Inventory::m_dataNames;
pydata::NameTable TileOffsetList::m_dataNames;
pydata::NameTable ItemAudioVisual::m_dataNames;
pydata::NameTable LevelDeclaration::m_dataNames;
pydata::NameTable FastTravelDestination::m_dataNames;
pydata::NameTable ItemBonusAttrList::m_dataNames;
pydata::NameTable ItemPowerRef::m_dataNames;
pydata::NameTable ItemPowerEntryList::m_dataNames;
pydata::NameTable HintPage::m_dataNames;
pydata::NameTable HelpPage::m_dataNames;
pydata::NameTable TriggerTrap::m_dataNames;
pydata::NameTable TriggerPlate::m_dataNames;
pydata::NameTable TriggerObject::m_dataNames;
pydata::NameTable TimerTrap::m_dataNames;
pydata::NameTable ProjectileTrap::m_dataNames;
pydata::NameTable OpenableContainer::m_dataNames;
pydata::NameTable LiftableObject::m_dataNames;
pydata::NameTable GameObjectDamage::m_dataNames;
pydata::NameTable ExplosiveTrap::m_dataNames;
pydata::NameTable Door::m_dataNames;
pydata::NameTable DestructibleContainer::m_dataNames;
pydata::NameTable FontColorDef::m_dataNames;
pydata::NameTable Faery::m_dataNames;
pydata::NameTable FaeryList::m_dataNames;
pydata::NameTable FootstepEffect::m_dataNames;
pydata::NameTable CharEffect::m_dataNames;
pydata::NameTable AnimFXTpl::m_dataNames;
pydata::NameTable DialogStepList::m_dataNames;
pydata::NameTable DialogActor::m_dataNames;
pydata::NameTable GameOption::m_dataNames;
pydata::NameTable GameDifficulty::m_dataNames;
pydata::NameTable DesignSettings::m_dataNames;
pydata::NameTable Rect::m_dataNames;
pydata::NameTable CharTemplate::m_dataNames;
pydata::NameTable StatListList::m_dataNames;
pydata::NameTable StatAutoAssignTargetList::m_dataNames;
pydata::NameTable CharacterProperties::m_dataNames;
pydata::NameTable ClassFuncList::m_dataNames;
pydata::NameTable CharAnim::m_dataNames;
pydata::NameTable CamAnimSet::m_dataNames;
pydata::NameTable AnimTpl::m_dataNames;
pydata::NameTable AIFactions::m_dataNames;
pydata::NameTable AIProps::m_dataNames;

template <class T>
int GetMemberIDByString(const char* name) {
    return pydata::FindMemberName(T::m_dataNames, T::kCount, name);
}

// 0x4ac574 _ZN7Structs19GetMemberIDByStringINS_12SoundAutoGenEEEiPKc
template int GetMemberIDByString<SoundAutoGen>(const char* name);
// 0x4ac634 _ZN7Structs19GetMemberIDByStringINS_13LangSheetListEEEiPKc
template int GetMemberIDByString<LangSheetList>(const char* name);
// 0x4ac834 _ZN7Structs19GetMemberIDByStringINS_11ColladaFileEEEiPKc
template int GetMemberIDByString<ColladaFile>(const char* name);
// 0x4ac8d8 _ZN7Structs19GetMemberIDByStringINS_14WorldMapLockerEEEiPKc
template int GetMemberIDByString<WorldMapLocker>(const char* name);
// 0x4ac998 _ZN7Structs19GetMemberIDByStringINS_14WldMapLocationEEEiPKc
template int GetMemberIDByString<WldMapLocation>(const char* name);
// 0x4aca64 _ZN7Structs19GetMemberIDByStringINS_7v2QuestEEEiPKc
template int GetMemberIDByString<v2Quest>(const char* name);
// 0x4acb30 _ZN7Structs19GetMemberIDByStringINS_7v2EventEEEiPKc
template int GetMemberIDByString<v2Event>(const char* name);
// 0x4acbfc _ZN7Structs19GetMemberIDByStringINS_9v2CondAndEEEiPKc
template int GetMemberIDByString<v2CondAnd>(const char* name);
// 0x4acc48 _ZN7Structs19GetMemberIDByStringINS_6TrophyEEEiPKc
template int GetMemberIDByString<Trophy>(const char* name);
// 0x4acca0 _ZN7Structs19GetMemberIDByStringINS_10SpawnGroupEEEiPKc
template int GetMemberIDByString<SpawnGroup>(const char* name);
// 0x4acd6c _ZN7Structs19GetMemberIDByStringINS_5SoundEEEiPKc
template int GetMemberIDByString<Sound>(const char* name);
// 0x4ace38 _ZN7Structs19GetMemberIDByStringINS_10SoundGroupEEEiPKc
template int GetMemberIDByString<SoundGroup>(const char* name);
// 0x4acef8 _ZN7Structs19GetMemberIDByStringINS_9SoundBankEEEiPKc
template int GetMemberIDByString<SoundBank>(const char* name);
// 0x4acfb8 _ZN7Structs19GetMemberIDByStringINS_8ListenerEEEiPKc
template int GetMemberIDByString<Listener>(const char* name);
// 0x4ad084 _ZN7Structs19GetMemberIDByStringINS_10CharSoundsEEEiPKc
template int GetMemberIDByString<CharSounds>(const char* name);
// 0x4ad150 _ZN7Structs19GetMemberIDByStringINS_5SkillEEEiPKc
template int GetMemberIDByString<Skill>(const char* name);
// 0x4ad21c _ZN7Structs19GetMemberIDByStringINS_9SkillListEEEiPKc
template int GetMemberIDByString<SkillList>(const char* name);
// 0x4ad2c0 _ZN7Structs19GetMemberIDByStringINS_10ProjectileEEEiPKc
template int GetMemberIDByString<Projectile>(const char* name);
// 0x4ad38c _ZN7Structs19GetMemberIDByStringINS_11NumProbListEEEiPKc
template int GetMemberIDByString<NumProbList>(const char* name);
// 0x4ad430 _ZN7Structs19GetMemberIDByStringINS_8MerchantEEEiPKc
template int GetMemberIDByString<Merchant>(const char* name);
// 0x4ad4fc _ZN7Structs19GetMemberIDByStringINS_4LootEEEiPKc
template int GetMemberIDByString<Loot>(const char* name);
// 0x4ad5c8 _ZN7Structs19GetMemberIDByStringINS_16ItemTypeListListEEEiPKc
template int GetMemberIDByString<ItemTypeListList>(const char* name);
// 0x4ad66c _ZN7Structs19GetMemberIDByStringINS_4ItemEEEiPKc
template int GetMemberIDByString<Item>(const char* name);
// 0x4ad73c _ZN7Structs19GetMemberIDByStringINS_17ItemListEntryListEEEiPKc
template int GetMemberIDByString<ItemListEntryList>(const char* name);
// 0x4ad7e0 _ZN7Structs19GetMemberIDByStringINS_9InventoryEEEiPKc
template int GetMemberIDByString<Inventory>(const char* name);
// 0x4ad884 _ZN7Structs19GetMemberIDByStringINS_14TileOffsetListEEEiPKc
template int GetMemberIDByString<TileOffsetList>(const char* name);
// 0x4ad928 _ZN7Structs19GetMemberIDByStringINS_15ItemAudioVisualEEEiPKc
template int GetMemberIDByString<ItemAudioVisual>(const char* name);
// 0x4ad980 _ZN7Structs19GetMemberIDByStringINS_16LevelDeclarationEEEiPKc
template int GetMemberIDByString<LevelDeclaration>(const char* name);
// 0x4ada4c _ZN7Structs19GetMemberIDByStringINS_21FastTravelDestinationEEEiPKc
template int GetMemberIDByString<FastTravelDestination>(const char* name);
// 0x4adb18 _ZN7Structs19GetMemberIDByStringINS_17ItemBonusAttrListEEEiPKc
template int GetMemberIDByString<ItemBonusAttrList>(const char* name);
// 0x4adbbc _ZN7Structs19GetMemberIDByStringINS_12ItemPowerRefEEEiPKc
template int GetMemberIDByString<ItemPowerRef>(const char* name);
// 0x4adc88 _ZN7Structs19GetMemberIDByStringINS_18ItemPowerEntryListEEEiPKc
template int GetMemberIDByString<ItemPowerEntryList>(const char* name);
// 0x4add2c _ZN7Structs19GetMemberIDByStringINS_8HintPageEEEiPKc
template int GetMemberIDByString<HintPage>(const char* name);
// 0x4addec _ZN7Structs19GetMemberIDByStringINS_8HelpPageEEEiPKc
template int GetMemberIDByString<HelpPage>(const char* name);
// 0x4adeac _ZN7Structs19GetMemberIDByStringINS_11TriggerTrapEEEiPKc
template int GetMemberIDByString<TriggerTrap>(const char* name);
// 0x4adf78 _ZN7Structs19GetMemberIDByStringINS_12TriggerPlateEEEiPKc
template int GetMemberIDByString<TriggerPlate>(const char* name);
// 0x4ae044 _ZN7Structs19GetMemberIDByStringINS_13TriggerObjectEEEiPKc
template int GetMemberIDByString<TriggerObject>(const char* name);
// 0x4ae110 _ZN7Structs19GetMemberIDByStringINS_9TimerTrapEEEiPKc
template int GetMemberIDByString<TimerTrap>(const char* name);
// 0x4ae1dc _ZN7Structs19GetMemberIDByStringINS_14ProjectileTrapEEEiPKc
template int GetMemberIDByString<ProjectileTrap>(const char* name);
// 0x4ae234 _ZN7Structs19GetMemberIDByStringINS_17OpenableContainerEEEiPKc
template int GetMemberIDByString<OpenableContainer>(const char* name);
// 0x4ae300 _ZN7Structs19GetMemberIDByStringINS_14LiftableObjectEEEiPKc
template int GetMemberIDByString<LiftableObject>(const char* name);
// 0x4ae3a4 _ZN7Structs19GetMemberIDByStringINS_16GameObjectDamageEEEiPKc
template int GetMemberIDByString<GameObjectDamage>(const char* name);
// 0x4ae470 _ZN7Structs19GetMemberIDByStringINS_13ExplosiveTrapEEEiPKc
template int GetMemberIDByString<ExplosiveTrap>(const char* name);
// 0x4ae53c _ZN7Structs19GetMemberIDByStringINS_4DoorEEEiPKc
template int GetMemberIDByString<Door>(const char* name);
// 0x4ae594 _ZN7Structs19GetMemberIDByStringINS_21DestructibleContainerEEEiPKc
template int GetMemberIDByString<DestructibleContainer>(const char* name);
// 0x4ae660 _ZN7Structs19GetMemberIDByStringINS_12FontColorDefEEEiPKc
template int GetMemberIDByString<FontColorDef>(const char* name);
// 0x4ae720 _ZN7Structs19GetMemberIDByStringINS_5FaeryEEEiPKc
template int GetMemberIDByString<Faery>(const char* name);
// 0x4ae7ec _ZN7Structs19GetMemberIDByStringINS_9FaeryListEEEiPKc
template int GetMemberIDByString<FaeryList>(const char* name);
// 0x4ae890 _ZN7Structs19GetMemberIDByStringINS_14FootstepEffectEEEiPKc
template int GetMemberIDByString<FootstepEffect>(const char* name);
// 0x4ae95c _ZN7Structs19GetMemberIDByStringINS_10CharEffectEEEiPKc
template int GetMemberIDByString<CharEffect>(const char* name);
// 0x4aea28 _ZN7Structs19GetMemberIDByStringINS_9AnimFXTplEEEiPKc
template int GetMemberIDByString<AnimFXTpl>(const char* name);
// 0x4aeaf4 _ZN7Structs19GetMemberIDByStringINS_14DialogStepListEEEiPKc
template int GetMemberIDByString<DialogStepList>(const char* name);
// 0x4aeb98 _ZN7Structs19GetMemberIDByStringINS_11DialogActorEEEiPKc
template int GetMemberIDByString<DialogActor>(const char* name);
// 0x4aec64 _ZN7Structs19GetMemberIDByStringINS_10GameOptionEEEiPKc
template int GetMemberIDByString<GameOption>(const char* name);
// 0x4aed30 _ZN7Structs19GetMemberIDByStringINS_14GameDifficultyEEEiPKc
template int GetMemberIDByString<GameDifficulty>(const char* name);
// 0x4aedfc _ZN7Structs19GetMemberIDByStringINS_14DesignSettingsEEEiPKc
template int GetMemberIDByString<DesignSettings>(const char* name);
// 0x4aeecc _ZN7Structs19GetMemberIDByStringINS_4RectEEEiPKc
template int GetMemberIDByString<Rect>(const char* name);
// 0x4aef98 _ZN7Structs19GetMemberIDByStringINS_12CharTemplateEEEiPKc
template int GetMemberIDByString<CharTemplate>(const char* name);
// 0x4af03c _ZN7Structs19GetMemberIDByStringINS_12StatListListEEEiPKc
template int GetMemberIDByString<StatListList>(const char* name);
// 0x4af0e0 _ZN7Structs19GetMemberIDByStringINS_24StatAutoAssignTargetListEEEiPKc
template int GetMemberIDByString<StatAutoAssignTargetList>(const char* name);
// 0x4af110 _ZN7Structs19GetMemberIDByStringINS_19CharacterPropertiesEEEiPKc
template int GetMemberIDByString<CharacterProperties>(const char* name);
// 0x4af1e0 _ZN7Structs19GetMemberIDByStringINS_13ClassFuncListEEEiPKc
template int GetMemberIDByString<ClassFuncList>(const char* name);
// 0x4af284 _ZN7Structs19GetMemberIDByStringINS_8CharAnimEEEiPKc
template int GetMemberIDByString<CharAnim>(const char* name);
// 0x4af354 _ZN7Structs19GetMemberIDByStringINS_10CamAnimSetEEEiPKc
template int GetMemberIDByString<CamAnimSet>(const char* name);
// 0x4af420 _ZN7Structs19GetMemberIDByStringINS_7AnimTplEEEiPKc
template int GetMemberIDByString<AnimTpl>(const char* name);
// 0x4af4ec _ZN7Structs19GetMemberIDByStringINS_10AIFactionsEEEiPKc
template int GetMemberIDByString<AIFactions>(const char* name);
// 0x4af590 _ZN7Structs19GetMemberIDByStringINS_7AIPropsEEEiPKc
template int GetMemberIDByString<AIProps>(const char* name);

}  // namespace Structs
