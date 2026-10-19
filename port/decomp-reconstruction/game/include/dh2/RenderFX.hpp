// RenderFX: the gameswf menu renderer wrapper (lib-gameswf, engine side). This header only
// carries what MenuFX needs: the base-class layout (original size 0x100) and the virtual slots.
// Placeholder written by the MenuFX layout wave; the engine unification wave should replace it
// with the full recovered layout. Offsets are original 32-bit ARM offsets.
#pragma once

#include <cstdint>

#include "base/container.h"  // gameswf::array, hash, tu_string (global in the upstream base)
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_player.h"
#include "vendor-gameswf/gameswf_root.hpp"
#include "vendor-gameswf/gameswf_dh2_runtime.hpp"  // gameswf::texture_loader_callback

namespace gameswf {
class player_context;
class character;
class as_object;
class as_value;
class render_state;
class root;
enum orientation_mode : int;
enum scale_mode : int;
struct filter;
// 0x7a7fe4 calls gameswf::destruct<player_context> (_ZN7gameswf8destructINS_14player_contextEEEvPKT_), which the
// binary provides; the template body is not in the tree, so only the declaration is here.
template <class T>
void destruct(const T* object);
}  // namespace gameswf

namespace glitch {
namespace video {
class IVideoDriver;
class ITexture;
}  // namespace video
}  // namespace glitch

class RenderFX {
public:
    struct Event;
    struct Cursor;
    enum EventType : int {
        EVENT_FOCUS_IN = 0,           // SendEvent calls on_focus_in
        EVENT_FOCUS_OUT = 1,          // on_focus_out
        EVENT_CLICKED = 2,            // on_clicked
        EVENT_PRESS = 4,              // onPress
        EVENT_RELEASE = 6,            // onRelease
        EVENT_RELEASE_OUTSIDE = 7,    // onReleaseOutside
        EVENT_ROLL_OVER = 8,          // onRollOver
        EVENT_ROLL_OUT = 9,           // onRollOut
        EVENT_DRAG_OVER = 10,         // onDragOver
        EVENT_DRAG_OUT = 11,          // onDragOut
        EVENT_UPDATE_INPUT = 3,       // UpdateInput sends it with the direction mask in unk_1c
    };

    // One DepthSearch work item: a character and the remaining dotted path to match below it (8 bytes at 32-bit).
    struct DepthSearchEntry {
        gameswf::character* character;  // +0x00
        const char* path;               // +0x04
    };

    // The Find work area at RenderFX +0x18 (0x20 bytes): the start index of each depth level into the entry list.
    struct DepthSearchData {
        ::array<int> m_levels;                  // +0x00 start index of each search depth
        ::array<DepthSearchEntry> m_entries;    // +0x10 the work items
        void Init(gameswf::character* root, const char* path);  // 0x7a8098
        ~DepthSearchData();                                      // 0x7a8190
    };

    // The name index at RenderFX +0x14 (4 bytes at 32-bit): short name -> every character with that name and its full path.
    class SearchIndex {
    public:
        // 0x104 bytes: the character, then its dotted path from the root.
        struct Entry {
            gameswf::character* character;  // +0x00
            char path[256];                 // +0x04
        };
        ::hash<::tu_string, ::array<Entry>*, ::string_hash_functor<::tu_string> > m_table;  // +0x00
        void Clear();                    // 0x7aa6ac
        gameswf::character* Find(const char* path);  // 0x7aadf8, the character whose path ends in the dotted path, or null
        void Init(RenderFX& owner);      // 0x7adb14
    };

    // Secondary interface MenuFX and MenuManager implement. Vtable of 3 slots, no virtual dtor.
    // _ZTVN8RenderFX13EventListenerE (9863344, 20 bytes, weak): slots +0x00 and +0x04 both hold 0xa36490 (the
    // __cxa_pure_virtual import), slot +0x08 is the weak _ZN8RenderFX13EventListener14CanHandleEventERNS_5EventE (0x42ca80).
    // So OnEvent and OnFSCommand are pure and CanHandleEvent is defined inline: the class has no key function, and every
    // unit that needs the vtable or typeinfo emits it (the toolchain-specific clang gap in android-link-missing.csv).
    class EventListener {
    public:
        virtual void OnEvent(Event& e) = 0;                                   // slot +0x00
        virtual void OnFSCommand(const char* command, const char* args) = 0;  // slot +0x04
        virtual bool CanHandleEvent(Event& e) { return true; }                // slot +0x08 (0x42ca80 returns true)
    };

    virtual ~RenderFX();                                                // +0x00, +0x04
    virtual void Load(const char* swfFile, gameswf::player_context* ctx);  // +0x08
    virtual void Unload();                                              // +0x0c
    virtual void Update(int dt, bool a);                                // +0x10
    virtual void UpdateCursor(Cursor& cursor, int a);                   // +0x14

    // A menu event: the record mySendEvent (0x42cf68) fills. Size at least 0x26 at 32-bit.
    struct Event {
        gameswf::character* target;   // +0x00 RenderFX::Find result for the event's character
        const char* name;             // +0x04 event name (OnEvent passes it to strstr; mySendEvent stores it)
        EventType type;               // +0x08 OnEvent tests it against 6
        float x;                      // +0x0c pointer x (local to the character for cursor events; MenuCharacterSelect::OnEvent, type 5)
        float y;                      // +0x10 pointer y
        int unk_14;                   // +0x14 zeroed by every writer
        int cursorState;              // +0x18 the Cursor state word of UpdateCursor (zero elsewhere)
        int unk_1c;                   // +0x1c zeroed by mySendEvent; UpdateInput stores its direction mask here
        unsigned int controller;      // +0x20 controller index (SetFocus, UpdateCursor, UpdateInput)
        uint8_t unk_24;               // +0x24 set to 1 by a listener that consumed the event; SendEvent skips the callbacks then
        char path[256];               // +0x25 dotted path of the target, built by GetCharacterPath (zero length until then)
        char* GetCharacterPath();     // 0x421e48
    };

    // One cursor record of UpdateCursor (16 bytes), copied into the controller record's first four words.
    struct Cursor {
        float x;                      // +0x00
        float y;                      // +0x04
        float angle;                  // +0x08 given to matrix::set_scale_rotation for the cursor character
        int state;                    // +0x0c pressed state, tested non-zero
    };

    // Result array of FindCharacters: a gameswf array, data at +0x00 and count at +0x04.
    struct CharacterArray {
        gameswf::character** data;    // +0x00
        int count;                    // +0x04
        int capacity;                 // +0x08
        bool borrowed;                // +0x0c (::array<character*> layout)
    };

    // One controller record, 0x28 bytes (GetController(i) = this + 0x58 + 0x28 * i, 0x7a7c74).
    // Reset (0x7a84c4) clears two gameswf smart pointers at +0x10 and +0x14 of the record.
    class Controller {
    public:
        void Reset();                 // 0x7a84c4
        Cursor m_cursor;              // +0x00 the last cursor state UpdateCursor stored (zeroed by the constructor)
        ::smart_ptr<gameswf::character> m_characters[5];  // +0x10 .. +0x23 cleared by Reset (0x7a84c4): [0] focus, [1] pressed target, [2] cursor sprite, [3] "clicked" holder, [4] drag target
        bool m_enabled;               // +0x24 set by SetControllerEnabled (0x7a7c88), 1 after the ctor
        uint8_t pad_25[3];            // +0x25 .. +0x27
    };

    // Non-virtual methods. The addresses are the RenderFX symbols in the binary; signatures come from them.
    void SetEventListener(EventListener* listener);                       // 0x7a7c6c
    Controller* GetController(int index);                                 // 0x7a7c74
    void SetInputBehavior(int behavior);                                  // 0x7a7c98
    gameswf::character* GetFlashRoot() const;                             // 0x7a7ca0, root +0x10 (the movie character)
    gameswf::root* GetRoot() const;                                       // 0x7a7cac, m_root
    static void SetWireFrame(bool enabled);                                      // 0x7a7c34
    void SetTextBufferingEnabled(bool enabled);                           // 0x7a7cb4
    int GetAlpha(gameswf::character* character);                          // 0x7a7cd8
    bool IsAnimOver(gameswf::character* character);                       // 0x7a7dd4
    bool IsAnimOver(const char* name);                                    // 0x7a9204
    int RegisterDisplayCallback(gameswf::character* character,
                                 void (*callback)(gameswf::render_state&, void*), void* userData);  // 0x7a7e80
    int RegisterDisplayCallback(const char* name,
                                 void (*callback)(gameswf::render_state&, void*), void* userData);  // 0x7a91d8
    void SetContext(gameswf::character* context);                         // 0x7a7ee8, m_context
    gameswf::character* GetContext();                                     // 0x7a7ef0
    void Render();                                                        // 0x7a9a94
    static void Finalize();                                                      // 0x7a97ac
    gameswf::as_object* Find(const char* name);                           // 0x7a9160
    CharacterArray* FindCharacters(gameswf::character* context, const char* prefix, int index);  // 0x7a8c08, returns &m_foundCharacters
    void SetMember(const char* target, const char* name, gameswf::as_value& value);  // 0x7ab5d4
    void SetMember(const char* target, const char* name, int value);      // 0x7ab6c8
    void SetMember(const char* target, const char* name, const char* value);  // 0x7ab730
    void SetFocus(gameswf::character* character, int flag);               // 0x7ac228
    void SetFocus(const char* name, int flag);                            // 0x7ac498
    void ResetFocus(int flag);                                            // 0x7ac410
    // Declared for AbstractTableModel (batch g1-game-ui-pack0-13b7dd-0). Sets the enabled state of a button character.
    int SetEnabled(gameswf::character* character, bool enabled);          // 0x7aba0c
    int PlayAnim(gameswf::character* character, const char* anim, int flag);  // 0x7aba04
    int PlayAnim(const char* name, const char* anim, int flag);           // 0x7abb18
    int InvokeASCallback(gameswf::character* character, const char* name,
                         const gameswf::as_value* args, int count);       // 0x7abe0c
    int InvokeASCallback(const char* name, const char* function,
                         const gameswf::as_value* args, int count);       // 0x7ad7e8
    void FormatHTML(const char* name, const char* format, ...);           // 0x7a93bc
    void FormatHTML(gameswf::character* character, const char* format, ...);  // 0x7a947c
    int SendEvent(Event& event);                                          // 0x7abf34
    // Declared for FlashAnimManager (batch g1-game-ui-FlashAnimManager-797a71-0). The return type of Find(name, context)
    // is not in the symbol; it is typed character* because FlashAnimManager stores the result in a character slot.
    gameswf::character* Find(const char* name, gameswf::character* context);  // 0x7a8a84, DepthSearch from context for name
    void BeginDisplay();                                                  // 0x7a9afc, root->begin_display
    void EndDisplay();                                                    // 0x7a9ac8, root->end_display
    static void SetPosition(gameswf::character* character, int x, int y);       // 0x7aa3f0
    void GotoFrame(gameswf::character* character, int frame, bool flag);  // 0x7a7d34
    int SetColorTransform(gameswf::character* character, unsigned int first, unsigned int second);  // 0x7a9dd0
    // Declared for MenuDebugHUD (batch g1-game-ui-MenuDebugHUD-c7396f-0). The symbols carry no return type and the callers
    // discard the result, so void is written.
    void SetText(gameswf::character* character, const char* text, bool flag);  // 0x7a92e0 RenderFX::SetText(gameswf::character*, char const*, bool)
    void FormatText(gameswf::character* character, const char* format, ...);   // 0x7a94dc RenderFX::FormatText(gameswf::character*, char const*, ...)

    // Added by the n2 wave (game-ui RenderFX batches). Symbols as in the binary; the addresses are the ledger rows.
    RenderFX();                                                           // 0x7a850c, 0x7a85f8 (C1, C2)
    void SetControllerEnabled(int index, bool enabled);                   // 0x7a7c88
    void SetAutoLoadGlyphsEnabled(bool enabled);                          // 0x7a7cc0
    void SetRenderCachingEnabled(bool enabled);                           // 0x7a7ccc
    char* GetText(gameswf::character* character);                         // 0x7a7cec
    int GetFrameCount(gameswf::character* character);                     // 0x7a7d90
    void FSCommand(const char* command, const char* args);                // 0x7a7e5c
    void SetOrientation(gameswf::orientation_mode mode);                  // 0x7a7eb4
    static void DestroyContext(gameswf::player_context* context);                // 0x7a7fe4
    gameswf::character* DepthSearch(int depth);                           // 0x7a87fc, returns the match or null

    // Added by the n2 wave, RenderFX part 2 (batch n2-game-ui-RenderFX-849cdc-1).
    // The CreateContext / Initialize argument (0x24 bytes). Layout from CreateContext (0x7a9708), Initialize (0x7a9814) and the
    // deprecated Initialize(IVideoDriver*) (0x7a98f8), which sets +0x00, zeroes +0x04 .. +0x1b, +0x1c = 1 and +0x20 = 1.0f.
    struct InitializationParameters {
        glitch::video::IVideoDriver* videoDriver;   // +0x00 stored in player_context +0x28, given to the render handler
        gameswf::texture_loader_callback textureLoader;  // +0x04 registered when non-null
        int unk_08;                                 // +0x08
        int glyphTextureWidth;                      // +0x0c glyph_provider texture width
        int glyphTextureHeight;                     // +0x10 glyph_provider texture height
        int bitmapGlyphTextureWidth;                // +0x14 bitmap_glyph_provider texture width
        int bitmapGlyphTextureHeight;               // +0x18 bitmap_glyph_provider texture height
        bool glyphFlag;                             // +0x1c passed to both providers
        float glyphScale;                           // +0x20 glyph_provider scale
    };
    int CollectCharacters(gameswf::character* character, const char* name, int flags);   // 0x7a8acc
    static gameswf::player_context* s_default_context;                  // the context Initialize created (null before)
    static void UnloadTextures(gameswf::player_context* context);                // 0x7a8cdc
    void InitializeGlyphTextureCache(int width, int height);              // 0x7a8d74, deprecated
    void TraceHierarchy(gameswf::character* character, int flags, int depth);  // 0x7a8d84
    void DBG_TraceContextInformation(gameswf::character* character);      // 0x7a9008
    int GetFrameCount(const char* name);                                  // 0x7a9228
    void GotoFrame(const char* name, int frame, bool flag);               // 0x7a924c
    char* GetText(const char* name);                                      // 0x7a9280
    void SetVisible(const char* name, bool visible);                      // 0x7a929c
    void SetCursor(const char* name, int cursor);                         // 0x7a92b4
    void SetText(const char* name, const char* text, bool flag);          // 0x7a9390
    void FormatText(const char* name, const char* format, ...);           // 0x7a941c
    void ClearGlyphTextureCaches(gameswf::player_context* context);       // 0x7a953c
    int PreloadGlyphs(gameswf::character* character);                     // 0x7a95a8, returns 1
    static gameswf::player_context* CreateContext(InitializationParameters& parameters);  // 0x7a9708

    // Added by the n2 wave, RenderFX part 3 (batch n2-game-ui-RenderFX-849cdc-2).
    static gameswf::player_context* Initialize(InitializationParameters& parameters);  // 0x7a9814
    static gameswf::player_context* Initialize(glitch::video::IVideoDriver* videoDriver);  // 0x7a98f8, deprecated
    void SetBounds(int x, int y, int width, int height, gameswf::scale_mode mode);  // 0x7a9b30
    void SetViewport(int x, int y, int width, int height);                // 0x7a9bac
    void PreRender();                                                     // 0x7a9c1c
    void SetColorFilter(gameswf::character* character, int index, unsigned int color);  // 0x7a9c80
    void SetColorFilter(const char* name, int index, unsigned int color); // 0x7a9da4
    int SetColorTransform(const char* name, unsigned int first, unsigned int second);  // 0x7aa02c
    void SetAlpha(const char* name, float alpha);                         // 0x7aa058
    static int ForceTexturesToVRAM(bool flag, gameswf::player_context* context); // 0x7aa0ec
    void SetPosition(const char* name, int x, int y);                     // 0x7aa5e0
    void ClearFonts(gameswf::player_context* context);                    // 0x7aac54
    unsigned int PreloadGlyphs(const unsigned short* text, int length, const char* font, int size,
                               bool bold, bool italic, const gameswf::filter* filter);  // 0x7aafac
    unsigned int PreloadGlyphs(const char* text, const char* font, int size, bool bold, bool italic,
                               const gameswf::filter* filter);            // 0x7ab0b8
    void SetLocalVariable(const char* name, const char* variable, gameswf::as_value& value);  // 0x7ab3d8
    void ReplaceTexture(const char* name, glitch::video::ITexture* texture);  // 0x7ab4cc

    // Added by the n2 wave, RenderFX part 4 (batch n2-game-ui-RenderFX-849cdc-3).
    int GotoFrame(gameswf::character* character, const char* label, bool flag);  // 0x7ab924
    int GotoFrame(const char* name, const char* label, bool flag);        // 0x7abaec
    int SetEnabled(const char* name, bool enabled);                       // 0x7abac8
    void SetTexture(const char* name, glitch::video::ITexture* texture, bool flag);  // 0x7ae6ac
    void UpdateInput(int x, int y);                                       // 0x7ac4bc
    SearchIndex* GetSearchIndex();                                        // 0x7add94, returns this + 0x14

    // +0x3c: gameswf root pointer; +0x40: current context character; +0x58/+0x80/+0xa8/+0xd0:
    // RenderFX::Controller (4 of them, reset in MenuFX::Unload); +0x68: focus; +0xf8: flags word.
public:
    // The former pad_04 filler (+0x04 .. +0xff, original size 0x100) is split into the fields below.
    CharacterArray m_foundCharacters;  // +0x04 FindCharacters result (a ::array<character*>, 16 bytes; FindCharacters returns &this+4)
    SearchIndex m_searchIndex;         // +0x14 name -> entries table (GetSearchIndex returns its address)
    DepthSearchData m_depthSearch;     // +0x18 .. +0x37 the Find work area
    ::smart_ptr<gameswf::player> m_player;  // +0x38 the player Load creates (SetRenderCachingEnabled writes its byte +0x98; Unload drops it)
    ::smart_ptr<gameswf::root> m_root;      // +0x3c root movie (GetRoot; MenuFX passes root+0x10 to SetContext; Unload drops it)
    gameswf::character* m_context;     // +0x40 current context character (GetContext)
    ::tu_string m_name;                // +0x44 .. +0x57 empty by default (byte +0x44 = 1, hash cache 0xffffff)
    Controller m_controllers[4];       // +0x58 .. +0xf7, GetController(i) = &m_controllers[i]
    uint32_t m_flags;                  // +0xf8 flags word: bits 0x01, 0x08, 0x40 tested by MenuFX::SetMenu and PopMenu;
                                       //       SetInputBehavior (0x7a7c98) stores the input behavior here
    EventListener* m_eventListener;    // +0xfc set by SetEventListener (0x7a7c6c), read by FSCommand and OnEvent paths
};
