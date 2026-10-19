// Arrays::X::finalizeNames / readNames / skipNames, one function per original symbol.
#include "pydata-accessors/member_names.hpp"

namespace Arrays {

pydata::NameTable AIFactionTable::m_memberNames;
pydata::NameTable AITable::m_memberNames;
pydata::NameTable AnimDict::m_memberNames;
pydata::NameTable AnimTable::m_memberNames;
pydata::NameTable AnimatedEffectTable::m_memberNames;
pydata::NameTable CamAnimSetTable::m_memberNames;
pydata::NameTable CharAnimTable::m_memberNames;
pydata::NameTable CharEffectTable::m_memberNames;
pydata::NameTable CharSoundsTable::m_memberNames;
pydata::NameTable CharacterTable::m_memberNames;
pydata::NameTable Charater_Templates::m_memberNames;
pydata::NameTable ClassTable::m_memberNames;
pydata::NameTable DesignSettingsTable::m_memberNames;
pydata::NameTable DestructibleContainers::m_memberNames;
pydata::NameTable DialogActors::m_memberNames;
pydata::NameTable Dialogs::m_memberNames;
pydata::NameTable Doors::m_memberNames;
pydata::NameTable DropTilePriorityTable::m_memberNames;
pydata::NameTable EffectDict::m_memberNames;
pydata::NameTable ExplosiveTraps::m_memberNames;
pydata::NameTable FaeryListTable::m_memberNames;
pydata::NameTable FaeryTable::m_memberNames;
pydata::NameTable FastTravelList::m_memberNames;
pydata::NameTable FontPalette::m_memberNames;
pydata::NameTable FootstepEffectTable::m_memberNames;
pydata::NameTable GameDifficulties::m_memberNames;
pydata::NameTable GameObjectDamager::m_memberNames;
pydata::NameTable GameObjectDict::m_memberNames;
pydata::NameTable GameOptionTable::m_memberNames;
pydata::NameTable HelpPages::m_memberNames;
pydata::NameTable HintPages::m_memberNames;
pydata::NameTable InventoryTable::m_memberNames;
pydata::NameTable ItemAudioVisualTable::m_memberNames;
pydata::NameTable ItemBonusAttrMonopoly::m_memberNames;
pydata::NameTable ItemList::m_memberNames;
pydata::NameTable ItemTable::m_memberNames;  // 0x9a6628 (link-1: the only table of the family that had no definition; tb_accessors-Arrays-0.cpp reads it)
pydata::NameTable ItemPowerList::m_memberNames;
pydata::NameTable ItemPowerTable::m_memberNames;
pydata::NameTable ItemTypeList::m_memberNames;
pydata::NameTable LevelList::m_memberNames;
pydata::NameTable LiftableObjects::m_memberNames;
pydata::NameTable Listeners::m_memberNames;
pydata::NameTable LootTable::m_memberNames;
pydata::NameTable MerchantTable::m_memberNames;
pydata::NameTable ModelDict::m_memberNames;
pydata::NameTable NumProbArray::m_memberNames;
pydata::NameTable OpenableContainers::m_memberNames;
pydata::NameTable ProjectileDict::m_memberNames;
pydata::NameTable ProjectileTable::m_memberNames;
pydata::NameTable ProjectileTraps::m_memberNames;
pydata::NameTable RectTable::m_memberNames;
pydata::NameTable SkillListTable::m_memberNames;
pydata::NameTable SkillTable::m_memberNames;
pydata::NameTable SoundBankPlayback::m_memberNames;
pydata::NameTable SoundGroupsRouting::m_memberNames;
pydata::NameTable Sounds::m_memberNames;
pydata::NameTable Sounds_bak::m_memberNames;
pydata::NameTable SpawnGroups::m_memberNames;
pydata::NameTable StatAutoAssignSchemeTable::m_memberNames;
pydata::NameTable StatListTable::m_memberNames;
pydata::NameTable StrID_Languages::m_memberNames;
pydata::NameTable TimerTraps::m_memberNames;
pydata::NameTable TriggerObjects::m_memberNames;
pydata::NameTable TriggerPlates::m_memberNames;
pydata::NameTable TriggerTraps::m_memberNames;
pydata::NameTable TrophyTable::m_memberNames;
pydata::NameTable WorldMap::m_memberNames;
pydata::NameTable WorldMapLockers::m_memberNames;
pydata::NameTable v2Conditions::m_memberNames;
pydata::NameTable v2Events::m_memberNames;
pydata::NameTable v2Quests::m_memberNames;

// 0x4a3808 _ZN6Arrays6Sounds13finalizeNamesEv
void Sounds::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a3988 _ZN6Arrays15StrID_Languages13finalizeNamesEv
void StrID_Languages::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a3b08 _ZN6Arrays14GameObjectDict13finalizeNamesEv
void GameObjectDict::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a3c88 _ZN6Arrays14ProjectileDict13finalizeNamesEv
void ProjectileDict::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a3e08 _ZN6Arrays10EffectDict13finalizeNamesEv
void EffectDict::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a3f88 _ZN6Arrays8AnimDict13finalizeNamesEv
void AnimDict::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4108 _ZN6Arrays9ModelDict13finalizeNamesEv
void ModelDict::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4288 _ZN6Arrays15WorldMapLockers13finalizeNamesEv
void WorldMapLockers::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4408 _ZN6Arrays8WorldMap13finalizeNamesEv
void WorldMap::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4588 _ZN6Arrays8v2Quests13finalizeNamesEv
void v2Quests::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4708 _ZN6Arrays8v2Events13finalizeNamesEv
void v2Events::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4888 _ZN6Arrays12v2Conditions13finalizeNamesEv
void v2Conditions::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a49fc _ZN6Arrays11TrophyTable13finalizeNamesEv
void TrophyTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4b70 _ZN6Arrays11SpawnGroups13finalizeNamesEv
void SpawnGroups::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4cf0 _ZN6Arrays10Sounds_bak13finalizeNamesEv
void Sounds_bak::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4e70 _ZN6Arrays18SoundGroupsRouting13finalizeNamesEv
void SoundGroupsRouting::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a4fe4 _ZN6Arrays17SoundBankPlayback13finalizeNamesEv
void SoundBankPlayback::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a5164 _ZN6Arrays9Listeners13finalizeNamesEv
void Listeners::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a52e4 _ZN6Arrays15CharSoundsTable13finalizeNamesEv
void CharSoundsTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a5464 _ZN6Arrays10SkillTable13finalizeNamesEv
void SkillTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a55e4 _ZN6Arrays14SkillListTable13finalizeNamesEv
void SkillListTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a5764 _ZN6Arrays15ProjectileTable13finalizeNamesEv
void ProjectileTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a58e4 _ZN6Arrays12NumProbArray13finalizeNamesEv
void NumProbArray::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a5a64 _ZN6Arrays13MerchantTable13finalizeNamesEv
void MerchantTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a5be4 _ZN6Arrays9LootTable13finalizeNamesEv
void LootTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a5d64 _ZN6Arrays12ItemTypeList13finalizeNamesEv
void ItemTypeList::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6064 _ZN6Arrays8ItemList13finalizeNamesEv
void ItemList::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a61e4 _ZN6Arrays14InventoryTable13finalizeNamesEv
void InventoryTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6358 _ZN6Arrays21DropTilePriorityTable13finalizeNamesEv
void DropTilePriorityTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a64d8 _ZN6Arrays20ItemAudioVisualTable13finalizeNamesEv
void ItemAudioVisualTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6658 _ZN6Arrays9LevelList13finalizeNamesEv
void LevelList::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a67d8 _ZN6Arrays14FastTravelList13finalizeNamesEv
void FastTravelList::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6958 _ZN6Arrays21ItemBonusAttrMonopoly13finalizeNamesEv
void ItemBonusAttrMonopoly::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6ad8 _ZN6Arrays14ItemPowerTable13finalizeNamesEv
void ItemPowerTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6c58 _ZN6Arrays13ItemPowerList13finalizeNamesEv
void ItemPowerList::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6dd8 _ZN6Arrays9HintPages13finalizeNamesEv
void HintPages::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a6f58 _ZN6Arrays9HelpPages13finalizeNamesEv
void HelpPages::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a70d8 _ZN6Arrays12TriggerTraps13finalizeNamesEv
void TriggerTraps::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a7258 _ZN6Arrays13TriggerPlates13finalizeNamesEv
void TriggerPlates::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a73cc _ZN6Arrays14TriggerObjects13finalizeNamesEv
void TriggerObjects::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a754c _ZN6Arrays10TimerTraps13finalizeNamesEv
void TimerTraps::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a76c0 _ZN6Arrays15ProjectileTraps13finalizeNamesEv
void ProjectileTraps::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a7840 _ZN6Arrays18OpenableContainers13finalizeNamesEv
void OpenableContainers::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a79c0 _ZN6Arrays15LiftableObjects13finalizeNamesEv
void LiftableObjects::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a7b34 _ZN6Arrays17GameObjectDamager13finalizeNamesEv
void GameObjectDamager::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a7cb4 _ZN6Arrays14ExplosiveTraps13finalizeNamesEv
void ExplosiveTraps::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a7e34 _ZN6Arrays5Doors13finalizeNamesEv
void Doors::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a7fb4 _ZN6Arrays22DestructibleContainers13finalizeNamesEv
void DestructibleContainers::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a8134 _ZN6Arrays11FontPalette13finalizeNamesEv
void FontPalette::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a82b4 _ZN6Arrays10FaeryTable13finalizeNamesEv
void FaeryTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a8434 _ZN6Arrays14FaeryListTable13finalizeNamesEv
void FaeryListTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a85b4 _ZN6Arrays19FootstepEffectTable13finalizeNamesEv
void FootstepEffectTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a8728 _ZN6Arrays15CharEffectTable13finalizeNamesEv
void CharEffectTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a88a8 _ZN6Arrays19AnimatedEffectTable13finalizeNamesEv
void AnimatedEffectTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a8a28 _ZN6Arrays7Dialogs13finalizeNamesEv
void Dialogs::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a8ba8 _ZN6Arrays12DialogActors13finalizeNamesEv
void DialogActors::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a8d28 _ZN6Arrays15GameOptionTable13finalizeNamesEv
void GameOptionTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a8e9c _ZN6Arrays16GameDifficulties13finalizeNamesEv
void GameDifficulties::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a901c _ZN6Arrays19DesignSettingsTable13finalizeNamesEv
void DesignSettingsTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a919c _ZN6Arrays9RectTable13finalizeNamesEv
void RectTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a931c _ZN6Arrays18Charater_Templates13finalizeNamesEv
void Charater_Templates::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a949c _ZN6Arrays13StatListTable13finalizeNamesEv
void StatListTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a961c _ZN6Arrays25StatAutoAssignSchemeTable13finalizeNamesEv
void StatAutoAssignSchemeTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a979c _ZN6Arrays14CharacterTable13finalizeNamesEv
void CharacterTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a991c _ZN6Arrays10ClassTable13finalizeNamesEv
void ClassTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a9a9c _ZN6Arrays13CharAnimTable13finalizeNamesEv
void CharAnimTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a9c1c _ZN6Arrays15CamAnimSetTable13finalizeNamesEv
void CamAnimSetTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a9d9c _ZN6Arrays9AnimTable13finalizeNamesEv
void AnimTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4a9f1c _ZN6Arrays14AIFactionTable13finalizeNamesEv
void AIFactionTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4aa09c _ZN6Arrays7AITable13finalizeNamesEv
void AITable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4aff90 _ZN6Arrays12ItemTypeList9readNamesEP11IStreamBase
void ItemTypeList::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b012c _ZN6Arrays12NumProbArray9readNamesEP11IStreamBase
void NumProbArray::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b02c8 _ZN6Arrays13MerchantTable9readNamesEP11IStreamBase
void MerchantTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0464 _ZN6Arrays14SkillListTable9readNamesEP11IStreamBase
void SkillListTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0600 _ZN6Arrays15ProjectileTable9readNamesEP11IStreamBase
void ProjectileTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b079c _ZN6Arrays15CharSoundsTable9readNamesEP11IStreamBase
void CharSoundsTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0938 _ZN6Arrays10SkillTable9readNamesEP11IStreamBase
void SkillTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0ad0 _ZN6Arrays17SoundBankPlayback9readNamesEP11IStreamBase
void SoundBankPlayback::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0c68 _ZN6Arrays9Listeners9readNamesEP11IStreamBase
void Listeners::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0e00 _ZN6Arrays10Sounds_bak9readNamesEP11IStreamBase
void Sounds_bak::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0f98 _ZN6Arrays18SoundGroupsRouting9readNamesEP11IStreamBase
void SoundGroupsRouting::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1130 _ZN6Arrays11TrophyTable9readNamesEP11IStreamBase
void TrophyTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b12c8 _ZN6Arrays11SpawnGroups9readNamesEP11IStreamBase
void SpawnGroups::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1460 _ZN6Arrays8v2Events9readNamesEP11IStreamBase
void v2Events::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b15f8 _ZN6Arrays12v2Conditions9readNamesEP11IStreamBase
void v2Conditions::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1790 _ZN6Arrays8WorldMap9readNamesEP11IStreamBase
void WorldMap::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1c5c _ZN6Arrays15WorldMapLockers9readNamesEP11IStreamBase
void WorldMapLockers::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1df8 _ZN6Arrays10EffectDict9readNamesEP11IStreamBase
void EffectDict::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1f94 _ZN6Arrays8AnimDict9readNamesEP11IStreamBase
void AnimDict::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2130 _ZN6Arrays14GameObjectDict9readNamesEP11IStreamBase
void GameObjectDict::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b22cc _ZN6Arrays14ProjectileDict9readNamesEP11IStreamBase
void ProjectileDict::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2468 _ZN6Arrays10FaeryTable9readNamesEP11IStreamBase
void FaeryTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2604 _ZN6Arrays14FaeryListTable9readNamesEP11IStreamBase
void FaeryListTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b27a0 _ZN6Arrays22DestructibleContainers9readNamesEP11IStreamBase
void DestructibleContainers::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2938 _ZN6Arrays11FontPalette9readNamesEP11IStreamBase
void FontPalette::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2ad4 _ZN6Arrays19AnimatedEffectTable9readNamesEP11IStreamBase
void AnimatedEffectTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2c6c _ZN6Arrays7Dialogs9readNamesEP11IStreamBase
void Dialogs::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2e08 _ZN6Arrays19FootstepEffectTable9readNamesEP11IStreamBase
void FootstepEffectTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2fa0 _ZN6Arrays15CharEffectTable9readNamesEP11IStreamBase
void CharEffectTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b313c _ZN6Arrays6Sounds9readNamesEP11IStreamBase
void Sounds::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b32d4 _ZN6Arrays15StrID_Languages9readNamesEP11IStreamBase
void StrID_Languages::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b3470 _ZN6Arrays12DialogActors9readNamesEP11IStreamBase
void DialogActors::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b360c _ZN6Arrays15GameOptionTable9readNamesEP11IStreamBase
void GameOptionTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b48bc _ZN6Arrays8ItemList9readNamesEP11IStreamBase
void ItemList::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b4a58 _ZN6Arrays15CamAnimSetTable9readNamesEP11IStreamBase
void CamAnimSetTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b4bf0 _ZN6Arrays9AnimTable9readNamesEP11IStreamBase
void AnimTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b4d8c _ZN6Arrays20ItemAudioVisualTable9readNamesEP11IStreamBase
void ItemAudioVisualTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b4f28 _ZN6Arrays9LevelList9readNamesEP11IStreamBase
void LevelList::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b50c0 _ZN6Arrays14InventoryTable9readNamesEP11IStreamBase
void InventoryTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b525c _ZN6Arrays21DropTilePriorityTable9readNamesEP11IStreamBase
void DropTilePriorityTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b57d4 _ZN6Arrays16GameDifficulties9readNamesEP11IStreamBase
void GameDifficulties::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b596c _ZN6Arrays15ProjectileTraps9readNamesEP11IStreamBase
void ProjectileTraps::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b5b04 _ZN6Arrays18OpenableContainers9readNamesEP11IStreamBase
void OpenableContainers::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b5c9c _ZN6Arrays14TriggerObjects9readNamesEP11IStreamBase
void TriggerObjects::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b5e34 _ZN6Arrays10TimerTraps9readNamesEP11IStreamBase
void TimerTraps::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b5fcc _ZN6Arrays14ExplosiveTraps9readNamesEP11IStreamBase
void ExplosiveTraps::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6164 _ZN6Arrays5Doors9readNamesEP11IStreamBase
void Doors::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b62fc _ZN6Arrays15LiftableObjects9readNamesEP11IStreamBase
void LiftableObjects::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6494 _ZN6Arrays17GameObjectDamager9readNamesEP11IStreamBase
void GameObjectDamager::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6630 _ZN6Arrays14ItemPowerTable9readNamesEP11IStreamBase
void ItemPowerTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b67c8 _ZN6Arrays13ItemPowerList9readNamesEP11IStreamBase
void ItemPowerList::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6964 _ZN6Arrays14FastTravelList9readNamesEP11IStreamBase
void FastTravelList::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6afc _ZN6Arrays21ItemBonusAttrMonopoly9readNamesEP11IStreamBase
void ItemBonusAttrMonopoly::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6c98 _ZN6Arrays12TriggerTraps9readNamesEP11IStreamBase
void TriggerTraps::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6e30 _ZN6Arrays13TriggerPlates9readNamesEP11IStreamBase
void TriggerPlates::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6fc8 _ZN6Arrays9HintPages9readNamesEP11IStreamBase
void HintPages::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7164 _ZN6Arrays9HelpPages9readNamesEP11IStreamBase
void HelpPages::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7300 _ZN6Arrays14AIFactionTable9readNamesEP11IStreamBase
void AIFactionTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b749c _ZN6Arrays7AITable9readNamesEP11IStreamBase
void AITable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7638 _ZN6Arrays19DesignSettingsTable9readNamesEP11IStreamBase
void DesignSettingsTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b77d4 _ZN6Arrays9RectTable9readNamesEP11IStreamBase
void RectTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7970 _ZN6Arrays18Charater_Templates9readNamesEP11IStreamBase
void Charater_Templates::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7b08 _ZN6Arrays13StatListTable9readNamesEP11IStreamBase
void StatListTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7ca4 _ZN6Arrays25StatAutoAssignSchemeTable9readNamesEP11IStreamBase
void StatAutoAssignSchemeTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7e40 _ZN6Arrays14CharacterTable9readNamesEP11IStreamBase
void CharacterTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7fd8 _ZN6Arrays10ClassTable9readNamesEP11IStreamBase
void ClassTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b8174 _ZN6Arrays13CharAnimTable9readNamesEP11IStreamBase
void CharAnimTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4aff8c _ZN6Arrays9LootTable9skipNamesEP11IStreamBase
void LootTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0128 _ZN6Arrays12ItemTypeList9skipNamesEP11IStreamBase
void ItemTypeList::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b02c4 _ZN6Arrays12NumProbArray9skipNamesEP11IStreamBase
void NumProbArray::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0460 _ZN6Arrays13MerchantTable9skipNamesEP11IStreamBase
void MerchantTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b05fc _ZN6Arrays14SkillListTable9skipNamesEP11IStreamBase
void SkillListTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0798 _ZN6Arrays15ProjectileTable9skipNamesEP11IStreamBase
void ProjectileTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b0934 _ZN6Arrays15CharSoundsTable9skipNamesEP11IStreamBase
void CharSoundsTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1c58 _ZN6Arrays9ModelDict9skipNamesEP11IStreamBase
void ModelDict::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1df4 _ZN6Arrays15WorldMapLockers9skipNamesEP11IStreamBase
void WorldMapLockers::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1f90 _ZN6Arrays10EffectDict9skipNamesEP11IStreamBase
void EffectDict::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b212c _ZN6Arrays8AnimDict9skipNamesEP11IStreamBase
void AnimDict::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b22c8 _ZN6Arrays14GameObjectDict9skipNamesEP11IStreamBase
void GameObjectDict::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2464 _ZN6Arrays14ProjectileDict9skipNamesEP11IStreamBase
void ProjectileDict::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2600 _ZN6Arrays10FaeryTable9skipNamesEP11IStreamBase
void FaeryTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b279c _ZN6Arrays14FaeryListTable9skipNamesEP11IStreamBase
void FaeryListTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2ad0 _ZN6Arrays11FontPalette9skipNamesEP11IStreamBase
void FontPalette::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b2e04 _ZN6Arrays7Dialogs9skipNamesEP11IStreamBase
void Dialogs::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b3138 _ZN6Arrays15CharEffectTable9skipNamesEP11IStreamBase
void CharEffectTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b346c _ZN6Arrays15StrID_Languages9skipNamesEP11IStreamBase
void StrID_Languages::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b3608 _ZN6Arrays12DialogActors9skipNamesEP11IStreamBase
void DialogActors::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b4d88 _ZN6Arrays9AnimTable9skipNamesEP11IStreamBase
void AnimTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b4f24 _ZN6Arrays20ItemAudioVisualTable9skipNamesEP11IStreamBase
void ItemAudioVisualTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b662c _ZN6Arrays17GameObjectDamager9skipNamesEP11IStreamBase
void GameObjectDamager::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6960 _ZN6Arrays13ItemPowerList9skipNamesEP11IStreamBase
void ItemPowerList::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b6c94 _ZN6Arrays21ItemBonusAttrMonopoly9skipNamesEP11IStreamBase
void ItemBonusAttrMonopoly::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7160 _ZN6Arrays9HintPages9skipNamesEP11IStreamBase
void HintPages::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b72fc _ZN6Arrays9HelpPages9skipNamesEP11IStreamBase
void HelpPages::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7498 _ZN6Arrays14AIFactionTable9skipNamesEP11IStreamBase
void AIFactionTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7634 _ZN6Arrays7AITable9skipNamesEP11IStreamBase
void AITable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b77d0 _ZN6Arrays19DesignSettingsTable9skipNamesEP11IStreamBase
void DesignSettingsTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b796c _ZN6Arrays9RectTable9skipNamesEP11IStreamBase
void RectTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7ca0 _ZN6Arrays13StatListTable9skipNamesEP11IStreamBase
void StatListTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b7e3c _ZN6Arrays25StatAutoAssignSchemeTable9skipNamesEP11IStreamBase
void StatAutoAssignSchemeTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b8170 _ZN6Arrays10ClassTable9skipNamesEP11IStreamBase
void ClassTable::skipNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

}  // namespace Arrays
