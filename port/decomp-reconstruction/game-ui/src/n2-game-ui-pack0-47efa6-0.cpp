// Batch n2-game-ui-pack0-47efa6-0 (RenderFX::Event, RenderFX::EventListener, RenderFX::DepthSearchData, RenderFX::Controller,
// RenderFX::SearchIndex; part 1 of 1).
// Reconstructed: EventListener::CanHandleEvent (asm: MOVS r0, #1; BX LR).
// Partial: Event::GetCharacterPath (the path walk over the character's parents, the names and the joined path; its
// pieces are not declared), Controller::Reset and the Controller destructor (the five smart pointers at +0x10 .. +0x23
// are inside pad_00 in dh2/RenderFX.hpp and are not typed). The DepthSearchData and SearchIndex members have no layout and
// no declaration in dh2/RenderFX.hpp, so their rows are partial with no body in this file.
#include "dh2/RenderFX.hpp"

#include <cstring>

#include "gameswf/gameswf_sprite.h"
#include "vendor-gameswf/gameswf_alloc.hpp"

namespace {
// The dotted path of a character: the non-empty names of the character and its parents, outermost first. The original keeps the
// names in a 38-slot stack array and writes into a caller buffer without a bound; the same walk is shared by
// Event::GetCharacterPath (0x421e48) and SearchIndex::Init (0x7adb14).
void BuildCharacterPath(gameswf::character* character, char* path) {
    const char* names[64];
    int count = 0;
    for (gameswf::character* current = character; current != nullptr; current = current->get_parent()) {
        if (current->get_name().length() > 0 && count < 64) {
            names[count++] = current->get_name().c_str();
        }
    }
    path[0] = '\0';
    for (int i = count - 1; i >= 0; --i) {
        std::strcat(path, names[i]);
        if (i != 0) {
            const std::size_t length = std::strlen(path);
            path[length] = '.';
            path[length + 1] = '\0';
        }
    }
}
}  // namespace

// 0x421e48 RenderFX::Event::GetCharacterPath()
// The cached path when already built, else the dotted path of the target built into the event.
char* RenderFX::Event::GetCharacterPath() {
    if (path[0] != '\0') {
        return path;
    }
    if (target == nullptr) {
        path[0] = '\0';
        return path;
    }
    BuildCharacterPath(target, path);
    return path;
}

// 0x42ca80 RenderFX::EventListener::CanHandleEvent(RenderFX::Event&): the default listener handles every event. Defined
// inline in RenderFX.hpp (the binary's symbol is weak), together with the pure OnEvent and OnFSCommand.

// 0x7a84c4 RenderFX::Controller::Reset(): clears the five character pointers (slots 4 to 8 of the record).
void RenderFX::Controller::Reset() {
    for (int i = 0; i < 5; ++i) {
        m_characters[i] = nullptr;
    }
}

// 0x7a9a34 RenderFX::Controller::~Controller(): drops the five smart pointers, last first; the smart_ptr members do exactly that,
// so the destructor is the implicit one.

// 0x7a8098 RenderFX::DepthSearchData::Init(gameswf::character*, char const*): empties both lists, then seeds level 0 with the
// single entry (root, path).
void RenderFX::DepthSearchData::Init(gameswf::character* root, const char* path) {
    m_entries.clear();
    m_levels.clear();
    m_levels.push_back<int>(m_entries.size());
    DepthSearchEntry entry{root, path};
    m_entries.push_back<DepthSearchEntry>(entry);
}

// 0x7a8190 RenderFX::DepthSearchData::~DepthSearchData(): empties and releases both lists.
RenderFX::DepthSearchData::~DepthSearchData() {
    m_entries.clear();
    m_entries.reserve(0);
    m_levels.clear();
    m_levels.reserve(0);
}

namespace gameswf {
// 0x7a9988 gameswf::destruct<gameswf::array<RenderFX::SearchIndex::Entry>>(gameswf::array<RenderFX::SearchIndex::Entry> const*)
// Empties the array, releases its buffer and frees the block.
template <>
void destruct<::array<RenderFX::SearchIndex::Entry> >(const ::array<RenderFX::SearchIndex::Entry>* object) {
    if (object != nullptr) {
        ::array<RenderFX::SearchIndex::Entry>* array = const_cast< ::array<RenderFX::SearchIndex::Entry>*>(object);
        array->clear();
        array->reserve(0);
        free_internal(array, 0);
    }
}
}  // namespace gameswf

// 0x7aa6ac RenderFX::SearchIndex::Clear(): destroys every entry array, then clears the table.
void RenderFX::SearchIndex::Clear() {
    for (auto it = m_table.begin(); it != m_table.end(); ++it) {
        gameswf::destruct(it->second);
    }
    m_table.clear();
}

// 0x7aadf8 RenderFX::SearchIndex::Find(char const*)
// The table is keyed by the last dotted segment of the path. Every entry stored under it is tried: each dotted segment of the
// request must occur in the entry's path, in order, and the last one must end the path. The original keeps stepping past the end
// of the request when the last segment matches without ending the path (it reads beyond the terminator); that step ends the
// entry's try here.
gameswf::character* RenderFX::SearchIndex::Find(const char* path) {
    const char* const end = path + std::strlen(path);
    const char* lastDot = std::strrchr(path, '.');
    const char* key = lastDot != nullptr ? lastDot + 1 : path;
    ::tu_string name(key, static_cast<int>(end - key));
    ::array<Entry>* entries = nullptr;
    if (m_table.get(name, &entries) && entries->size() > 0) {
        for (int i = 0; i < entries->size(); ++i) {
            Entry& entry = (*entries)[i];
            const char* segment = path;
            const char* cursor = entry.path;
            while (true) {
                const char* dot = std::strchr(segment, '.');
                if (dot == nullptr) {
                    dot = end;
                }
                char piece[128];
                const std::size_t length = static_cast<std::size_t>(dot - segment);
                std::memcpy(piece, segment, length);
                piece[length] = '\0';
                const char* found = std::strstr(cursor, piece);
                if (found == nullptr) {
                    break;
                }
                cursor = found + length;
                if (*cursor == '\0') {
                    return entry.character;
                }
                if (dot == end) {
                    break;
                }
                segment += length + 1;
            }
        }
    }
    return nullptr;
}

// 0x7adb14 RenderFX::SearchIndex::Init(RenderFX&)
// Rebuilds the table from every named character below the owner's context (FindCharacters flag 4 skips unnamed ones).
void RenderFX::SearchIndex::Init(RenderFX& owner) {
    Clear();
    CharacterArray* found = owner.FindCharacters(owner.m_context, nullptr, 4);
    for (int i = 0; i < found->count; ++i) {
        gameswf::character* character = found->data[i];
        const ::tu_string& name = character->get_name();
        if (name.length() > 0) {
            ::array<Entry>* entries = nullptr;
            if (!m_table.get(name, &entries)) {
                entries = new ::array<Entry>();
                m_table.add(name, entries);
            }
            Entry entry;
            std::memset(&entry, 0, sizeof(entry));
            entry.character = character;
            BuildCharacterPath(character, entry.path);
            entries->push_back<Entry>(entry);
        }
    }
}
