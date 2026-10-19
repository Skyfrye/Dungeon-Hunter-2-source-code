// Batch g1-game-ui-DialogMsg-3e9364-0: DialogMsg, one line of dialog queued through MenuMessageManager<DialogMsg, 1>.
//
// Layout (dh2/DialogMsg.hpp, original size 0x4c): the title is the std::string base at +0x00, m_text at +0x18,
// m_style at +0x30 and m_actorName at +0x34. Original 32-bit std::string objects are 0x18 bytes (16-byte inline
// buffer, then two pointers at +0x10 and +0x14); the host uses std::string and the header members, not those offsets.
//
// The C1 and C2 constructor pairs have identical bodies in the binary (checked against the disassembly), so each pair
// is one definition with both addresses in its comment. ParsePlayerName (core-platform, 0x433d00) takes the result
// slot and the input in one call; the Hex-Rays text of some call sites shows the input argument dropped, the assembly
// does not.

#include "dh2/DialogMsg.hpp"

#include <string>

#include "core-platform/w7_global_rem.hpp"    // ParsePlayerName (0x433d00), returns the parsed string by value
#include "dh2/StringManager.hpp"              // StringManager::getString(int) const (0x508edc)
#include "dh2/global/item_instance.hpp"       // ApplicationGetStringManager(): Application::m_stringManager (dword_99F760)
#include "pydata-accessors/w7_arrays27.hpp"   // Arrays::DialogActors::members, the DialogActors table
#include "pydata-accessors/w7_structs_5.hpp"  // Structs::DialogActor, the host element of DialogActors

namespace {

// The title and text of the id constructors: getString(id) copied into a string, then passed through ParsePlayerName.
std::string ParsedStringById(int id) {
    return ParsePlayerName(std::string(ApplicationGetStringManager()->getString(id)));
}

}  // namespace

// 0x31feb0 DialogMsg::~DialogMsg()  (D1, complete-object destructor)
// The original frees the actor name (+0x34), the text (+0x18) and the title base (+0x00), in that order. The compiler
// destroys the members and the std::string base in reverse declaration order, which is the same order, so the body is
// empty.
DialogMsg::~DialogMsg() {}

// 0x433b9c DialogMsg::DialogMsg(DialogMsg const&)  (C1)
DialogMsg::DialogMsg(const DialogMsg& other)
    : std::string(static_cast<const std::string&>(other)),  // +0x00 title
      m_text(other.m_text),                                  // +0x18 text
      m_style(other.m_style),                                // +0x30 DialogStyles id
      m_actorName(other.m_actorName) {}                      // +0x34 actor name

// 0x433dd8 DialogMsg::SetActorName(int)
// Does nothing for a negative index. Otherwise the name is the string id stored in the DialogActors row, passed through
// StringManager::getString and then ParsePlayerName. The row is read as a host Structs::DialogActor (typed pointer, host
// stride). The original reads the same id at row +0x10 of the 20-byte listing stride. The original has no upper bound on
// the index, and neither does this code.
void DialogMsg::SetActorName(int actorIndex) {
    if (actorIndex < 0) {
        return;
    }
    const auto* actors = static_cast<const Structs::DialogActor*>(static_cast<const void*>(Arrays::DialogActors::members));
    const char* text = ApplicationGetStringManager()->getString(actors[actorIndex].Name);
    // The original parses into a local and then assigns it to m_actorName. Its `v2 != &v4` test is always true (the
    // local is never the member), so it is not reproduced.
    const std::string raw(text);
    m_actorName = ParsePlayerName(raw);
}

// 0x433ea8 DialogMsg::DialogMsg(std::string const&,std::string const&,int,int)  (C1)
// 0x4343d8 DialogMsg::DialogMsg(std::string const&,std::string const&,int,int)  (C2, same body)
// Order of the original: title and text parsed into the base and m_text, style stored, m_actorName made empty, then
// SetActorName(actorIndex). The base and members are initialised in that order here.
DialogMsg::DialogMsg(const std::string& title, const std::string& text, int style, int actorIndex)
    : std::string(ParsePlayerName(title)),  // +0x00 title
      m_text(ParsePlayerName(text)),        // +0x18 text
      m_style(style),                       // +0x30 DialogStyles id
      m_actorName() {                       // +0x34 empty until SetActorName
    SetActorName(actorIndex);
}

// 0x434434 DialogMsg::DialogMsg(int,int,int,int)  (C1)
// 0x43452c DialogMsg::DialogMsg(int,int,int,int)  (C2, same body)
// The first two arguments are StringManager string ids for the title and the text. The original does title, then text,
// then style, then SetActorName(actorIndex).
DialogMsg::DialogMsg(int titleId, int textId, int style, int actorIndex)
    : std::string(ParsedStringById(titleId)),  // +0x00 title
      m_text(ParsedStringById(textId)),        // +0x18 text
      m_style(style),                          // +0x30 DialogStyles id
      m_actorName() {                          // +0x34 empty until SetActorName
    SetActorName(actorIndex);
}

// 0x43f828 DialogMsg::operator=(DialogMsg const&)
// The original compares the addresses before each member assignment. Those tests all reduce to `this != &other`, except
// that the style is copied unconditionally. The base and text assignments come first, then the style, then the name.
DialogMsg& DialogMsg::operator=(const DialogMsg& other) {
    if (this != &other) {
        std::string::operator=(static_cast<const std::string&>(other));  // +0x00 title
        m_text = other.m_text;                                           // +0x18 text
    }
    m_style = other.m_style;                                             // +0x30, copied even when self-assigned
    if (this != &other) {
        m_actorName = other.m_actorName;                                 // +0x34 actor name
    }
    return *this;
}
