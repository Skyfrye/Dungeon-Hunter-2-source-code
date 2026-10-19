// Message factories (<global>). GetNewInstance<T>(bool) builds one multiplayer message of type T for the
// CMessage type registry (CMessage::CreatorFn is CMessage* (*)(bool)). The original emits one explicit
// instantiation per message class; each is declared here and defined in
// game-app/src/g1-game-app-global-f216b6-0.cpp. The bool is the serial gate of the CMessage(name, bool)
// base constructor. The primary template has no definition: only these thirteen instantiations exist
// (the last two, CMsgSpawnObject and CMsgScriptCmd, are defined in game-app/src/g1-game-app-global-f216b6-1.cpp).
#pragma once

class CMessage;
class CMsgControllerAction;
class CMsgMenuReady;
class CMsgAttackResult;
class CMsgInitialSetup;
class CMsgDropLoot;
class CMsgAskResendAttributes;
class CMsgIsHost;
class CMsgQuestsSync;
class CMsgGlobalDeath;
class CMsgRaisedEvent;
class CMsgStartGame;
class CMsgSpawnObject;
class CMsgScriptCmd;

template <class T>
CMessage* GetNewInstance(bool withSerial);

template <>
CMessage* GetNewInstance<CMsgControllerAction>(bool withSerial);   // 0x328ad4
template <>
CMessage* GetNewInstance<CMsgMenuReady>(bool withSerial);          // 0x328afc
template <>
CMessage* GetNewInstance<CMsgAttackResult>(bool withSerial);       // 0x328b6c
template <>
CMessage* GetNewInstance<CMsgInitialSetup>(bool withSerial);       // 0x328c5c
template <>
CMessage* GetNewInstance<CMsgDropLoot>(bool withSerial);           // 0x328d08
template <>
CMessage* GetNewInstance<CMsgAskResendAttributes>(bool withSerial); // 0x328d30
template <>
CMessage* GetNewInstance<CMsgIsHost>(bool withSerial);             // 0x328da8
template <>
CMessage* GetNewInstance<CMsgQuestsSync>(bool withSerial);         // 0x329270
template <>
CMessage* GetNewInstance<CMsgGlobalDeath>(bool withSerial);        // 0x329298
template <>
CMessage* GetNewInstance<CMsgRaisedEvent>(bool withSerial);        // 0x3296ac
template <>
CMessage* GetNewInstance<CMsgStartGame>(bool withSerial);          // 0x32a140
template <>
CMessage* GetNewInstance<CMsgSpawnObject>(bool withSerial);        // 0x32a6e8 (defined in g1-game-app-global-f216b6-1.cpp)
template <>
CMessage* GetNewInstance<CMsgScriptCmd>(bool withSerial);          // 0x32a710 (defined in g1-game-app-global-f216b6-1.cpp)
