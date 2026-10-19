// The message-type registration the original runs from the static initialiser of Core/Application.cpp (ELF 0x32db64, an .init_array
// entry): CMessage::InitializeMessageRegistration(), thirteen CMessage::RegisterMessageType(name, GetNewInstance<T>) calls in this
// order, then CMessage::TerminateMessageRegistration(). The tree had every piece but nothing called them, so every message type id
// stayed -1 and CMessage::messageCreationArray_ stayed empty (found by the 2026-10-16 stub audit, pattern 5). The libraries are linked
// whole-archive into libdh2.so, so this initialiser runs at load like the original's.
//
// The binary stores each returned type id in a byte global (byte_99FA1D .. byte_99FA2A); nothing in the tree reads those, so only the
// registry side effect is kept. (TerminateMessageRegistration stores 0 to s_isRegistrationTerminated, as the listing at 0x8099a0 does:
// registration stays open.)
#include "dh2/global/message_factory.hpp"
#include "net-session-online/c_message.hpp"

namespace {

struct MessageRegistration {
    MessageRegistration() {
        CMessage::InitializeMessageRegistration();
        CMessage::RegisterMessageType("CMsgStartGame", GetNewInstance<CMsgStartGame>);
        CMessage::RegisterMessageType("CMsgControllerAction", GetNewInstance<CMsgControllerAction>);
        CMessage::RegisterMessageType("CMsgAttackResult", GetNewInstance<CMsgAttackResult>);
        CMessage::RegisterMessageType("CMsgRaisedEvent", GetNewInstance<CMsgRaisedEvent>);
        CMessage::RegisterMessageType("CMsgMenuReady", GetNewInstance<CMsgMenuReady>);
        CMessage::RegisterMessageType("CMsgScriptCmd", GetNewInstance<CMsgScriptCmd>);
        CMessage::RegisterMessageType("CMsgInitialSetup", GetNewInstance<CMsgInitialSetup>);
        CMessage::RegisterMessageType("CMsgQuestsSync", GetNewInstance<CMsgQuestsSync>);
        CMessage::RegisterMessageType("CMsgDropLoot", GetNewInstance<CMsgDropLoot>);
        CMessage::RegisterMessageType("CMsgIsHost", GetNewInstance<CMsgIsHost>);
        CMessage::RegisterMessageType("CMsgSpawnObject", GetNewInstance<CMsgSpawnObject>);
        CMessage::RegisterMessageType("CMsgGlobalDeath", GetNewInstance<CMsgGlobalDeath>);
        CMessage::RegisterMessageType("CMsgAskResendAttributes", GetNewInstance<CMsgAskResendAttributes>);
        CMessage::TerminateMessageRegistration();
    }
};

const MessageRegistration s_messageRegistration;

}  // namespace
