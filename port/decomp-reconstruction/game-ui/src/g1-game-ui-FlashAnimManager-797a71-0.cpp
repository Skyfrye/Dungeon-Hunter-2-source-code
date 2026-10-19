// FlashAnimManager bodies, batch g1-game-ui-FlashAnimManager-797a71-0 (the whole class).
// The singleton that plays the short FlashAnim clips of the menu movie (scrolling combat text and values).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit
// ARM offsets; the code never uses them for addressing.
//
// The byte at +0x9b of gameswf::character is the visible flag (character::m_visible): Draw sets it around the display call and
// ScanForAnims clears it on every anim_ template.

#include <cstdio>
#include <cstdlib>
#include <map>
#include <string>
#include <vector>

#include "dh2/global/screen_size.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/FlashAnimManager.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sprite.h"

// gAssertLevel is declared in core-platform/memory.hpp, which is not included here: that header pulls in the
// core-platform glitch_core stand-in, which clashes with the shared glitch_core that FlashAnimManager.hpp uses.
extern int gAssertLevel;

// 0x4137b4 _ZN16FlashAnimManagerC1Ev FlashAnimManager::FlashAnimManager()  (C1)
// 0x413748 _ZN16FlashAnimManagerC2Ev FlashAnimManager::FlashAnimManager()  (C2, the same body: one C++ constructor serves both forms)
FlashAnimManager::FlashAnimManager() {
    // +0x000 .. +0x3bf: the twelve playback contexts. Every field is zeroed except the style id, which starts at -1,
    // and the first byte of the text.
    for (FlashAnimContext& ctx : m_contexts) {
        ctx.m_x = 0;           // +0x00
        ctx.m_y = 0;           // +0x04
        ctx.m_color = 0;       // +0x08
        ctx.m_frame = 0;       // +0x0c
        ctx.m_elapsed = 0;     // +0x10
        ctx.m_flags = 0;       // +0x14
        ctx.m_styleId = -1;    // +0x18
        ctx.m_cloneId = 0;     // +0x1c
        ctx.m_text[0] = '\0';  // +0x20
    }
    // +0x3c0: no menu yet. The style table (+0x3c4 .. +0x3cf) and the name map (+0x3d0 .. +0x3e3) are
    // default-constructed empty by the language.
    m_animMenuFxRoot = nullptr;
}

// 0x414128 _ZN16FlashAnimManagerD1Ev FlashAnimManager::~FlashAnimManager()  (D1)
// 0x414180 _ZN16FlashAnimManagerD2Ev FlashAnimManager::~FlashAnimManager()  (D2, the same body)
FlashAnimManager::~FlashAnimManager() {
    // The original erases the name map when it is not empty and resets its header, then destroys the style table
    // (~vector at +0x3c4). Here the map is cleared, and the style table is released by its member destructor after
    // this body runs.
    m_styleIdByName.clear();
}

// 0x413820 FlashAnimManager::StopAllFlashAnim()
void FlashAnimManager::StopAllFlashAnim() {
    for (FlashAnimContext& ctx : m_contexts) {
        ctx.m_flags = 0;  // +0x14
    }
}

// 0x413840 FlashAnimManager::ResetScanForAnims(MenuFX*)
void FlashAnimManager::ResetScanForAnims(MenuFX* menu) {
    if (m_animMenuFxRoot == menu) {
        m_animMenuFxRoot = nullptr;  // +0x3c0
        // The original sets the end of the style table back to its begin (+0x3c8 = +0x3c4), which keeps the storage.
        m_swfDataInstances.clear();
        StopAllFlashAnim();
    }
}

// 0x413868 FlashAnimManager::StopFlashAnim(int)
void FlashAnimManager::StopFlashAnim(int contextId) {
    m_contexts[contextId].m_flags = 0;  // the flags word of the context at 80 * contextId (+0x14)
}

// 0x413880 FlashAnimManager::FindAvailableAnimContextID()
int FlashAnimManager::FindAvailableAnimContextID() {
    for (int i = 0; i < 12; ++i) {
        if ((m_contexts[i].m_flags & 1) == 0) {
            return i;
        }
    }
    return -1;
}

// 0x4138ac FlashAnimManager::Update()
void FlashAnimManager::Update() {
    // Frame time in ms of the menu movie: 1000 / frame rate when a menu is shown and the level is not in the
    // loading range; 33 otherwise. The level's load step is at +0x130 (Level::m_loadStep).
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    const bool loadStepInRange = level && level->m_loadStep > 1 && level->m_loadStep <= 26;
    int frameMs = 33;
    if (m_animMenuFxRoot && !loadStepInRange) {
        gameswf::root* root = m_animMenuFxRoot->GetRoot();
        frameMs = static_cast<int>(static_cast<float>(1000.0 / root->get_frame_rate()));
    }

    const int dt = ApplicationGetInstance().GetDt();  // +0x8c, read once for all contexts
    for (int contextId = 0; contextId < 12; ++contextId) {
        FlashAnimContext& ctx = m_contexts[contextId];
        if ((ctx.m_flags & 1) == 0) {
            continue;
        }
        const bool stopAtEnd = (ctx.m_flags & 2) != 0;
        SWFDataInstances& style = m_swfDataInstances[ctx.m_styleId];
        SWFDataInstances::CloneSlot& slot = style.m_clones[ctx.m_cloneId];

        ctx.m_elapsed += dt;  // +0x10
        int remainder = ctx.m_elapsed - frameMs;
        if (ctx.m_elapsed > frameMs) {
            // One frame step per pass; the context keeps the time left over after each step.
            do {
                ctx.m_elapsed = remainder;
                ctx.m_frame += 1;  // +0x0c
                // gameswf::character::get_frame_count() (vtable +0x13c) of the clone.
                const int frameCount = slot.m_character->get_frame_count();
                if (stopAtEnd && frameCount <= ctx.m_frame) {
                    StopFlashAnim(contextId);
                    style.m_clones[ctx.m_cloneId].m_inUse = false;  // the clone slot byte at +0x08
                }
                remainder = ctx.m_elapsed - frameMs;
            } while (ctx.m_elapsed > frameMs);
        }
    }
}

// 0x413a28 FlashAnimManager::UpdateAnimInstance(FlashAnimContext*)
void FlashAnimManager::UpdateAnimInstance(FlashAnimContext* context) {
    gameswf::character* textField =
        m_swfDataInstances[context->m_styleId].m_clones[context->m_cloneId].m_textField;  // +0x04 of the slot
    if (textField) {
        m_animMenuFxRoot->FormatHTML(textField, "%s", context->m_text);
    }
}

// 0x413b1c FlashAnimManager::FindAnimInstance(int)
int FlashAnimManager::FindAnimInstance(int styleId) {
    SWFDataInstances& style = m_swfDataInstances[styleId];

    // The first clone slot of the style that is not in use. When all eight are in use, slot 7 is taken.
    int cloneId = 0;
    while (style.m_clones[cloneId].m_inUse) {
        ++cloneId;
        if (cloneId == 8) {
            cloneId = 7;
            break;
        }
    }

    SWFDataInstances::CloneSlot& slot = style.m_clones[cloneId];
    if (slot.m_character == nullptr) {
        // Create the clone: clone_display_object("_clone_<n>", depth) on the style's template (slot 0), with depth
        // from the highest depth of the template's parent sprite. The template's weak parent link is read with
        // get_parent(), which checks the proxy first, as the original does.
        gameswf::character* templateChar = style.m_clones[0].m_character;
        char name[64];
        std::sprintf(name, "_clone_%d", cloneId);
        const tu_string cloneName(name);
        const int depth = static_cast<gameswf::sprite_instance*>(templateChar->get_parent())->get_highest_depth();
        gameswf::character* clone = templateChar->clone_display_object(cloneName, depth);
        slot.m_character = clone;
        slot.m_textField = m_animMenuFxRoot->Find("_text", clone);
    }
    slot.m_inUse = true;  // +0x08
    return cloneId;
}

// 0x413c6c FlashAnimManager::PlayFlashAnim(int, int, int, int, int)
FlashAnimContext* FlashAnimManager::PlayFlashAnim(int styleId, int x, int y, int frame, int flags) {
    const int contextId = FindAvailableAnimContextID();
    if (contextId < 0) {
        return nullptr;
    }
    FlashAnimContext& ctx = m_contexts[contextId];
    ctx.m_styleId = styleId;                    // +0x18
    ctx.m_cloneId = FindAnimInstance(styleId);  // +0x1c
    ctx.m_x = x;                                // +0x00
    ctx.m_y = y;                                // +0x04
    ctx.m_frame = frame;                        // +0x0c
    ctx.m_elapsed = 0;                          // +0x10
    ctx.m_flags = flags | 1;                    // +0x14, bit 0 marks the context active
    return &ctx;
}

// 0x413cf4 FlashAnimManager::PlayFlashAnim(int, glitch::core::vector3d<float> const&, int, int)
FlashAnimContext* FlashAnimManager::PlayFlashAnim(int styleId, const glitch::core::vector3d<float>& position,
                                                  int frame, int flags) {
    // The world position is converted to screen pixels. The scale factors come from the root of the template
    // (get_root(), vtable +0x54), one call for each axis as in the original.
    glitch::core::position2d<int> screen;  // X and Y start at 0
    GetScreenPosFromWorldPos(position, screen);
    gameswf::character* templateChar = m_swfDataInstances[styleId].m_clones[0].m_character;
    const float scaleX = GameSWFUtils::GetInvPixelScaleX(templateChar->get_root());
    const float scaleY = GameSWFUtils::GetInvPixelScaleY(templateChar->get_root());
    return PlayFlashAnim(styleId, static_cast<int>(scaleX * static_cast<float>(screen.X - FlashBoxOffsetX(templateChar->get_root()))),
                         static_cast<int>(scaleY * static_cast<float>(screen.Y - FlashBoxOffsetY(templateChar->get_root()))), frame, flags);
}

// 0x413dc4 FlashAnimManager::PlayScrollingCombatText(int, glitch::core::vector3d<float> const&, char const*, int)
FlashAnimContext* FlashAnimManager::PlayScrollingCombatText(int styleId, const glitch::core::vector3d<float>& position,
                                                            const char* text, int color) {
    FlashAnimContext* ctx = PlayFlashAnim(styleId, position, 0, 2);  // flags 2: stop at the last frame
    if (ctx) {
        ctx->m_color = color;  // +0x08
        ctx->SetText(text);
        UpdateAnimInstance(ctx);
    }
    return ctx;
}

// 0x413e90 FlashAnimManager::GetInstance()
FlashAnimManager* FlashAnimManager::GetInstance() {
    // A function-local static. The guard variable and the atexit registration of ~FlashAnimManager are the
    // compiler's, as the original's guard and _aeabi_atexit are.
    static FlashAnimManager singleton;
    return &singleton;
}

// 0x413fa0 FlashAnimManager::PlayScrollingCombatValue(int, glitch::core::vector3d<float> const&, int, int)
FlashAnimContext* FlashAnimManager::PlayScrollingCombatValue(int styleId, const glitch::core::vector3d<float>& position,
                                                             int value, int color) {
    FlashAnimContext* ctx = PlayFlashAnim(styleId, position, 0, 2);  // flags 2: stop at the last frame
    if (ctx) {
        ctx->m_color = color;  // +0x08
        ctx->SetTextToNumber(value);
        UpdateAnimInstance(ctx);
    }
    return ctx;
}

// 0x414260 FlashAnimManager::Draw()
// The visible flag (+0x9b) of the clone is set around its display call (vtable +0x120) and cleared after it.
void FlashAnimManager::Draw() {
    DebugSwitches::s_inst.load();
    const bool disabled = DebugSwitches::s_inst.GetSwitch(std::string("IsDisablingFlashAnimation"));
    if (disabled) {
        return;
    }
    if (!m_animMenuFxRoot) {
        return;
    }

    m_animMenuFxRoot->SetTextBufferingEnabled(false);
    m_animMenuFxRoot->BeginDisplay();
    for (FlashAnimContext& ctx : m_contexts) {
        if ((ctx.m_flags & 1) == 0) {
            continue;
        }
        SWFDataInstances& style = m_swfDataInstances[ctx.m_styleId];
        gameswf::character* clone = style.m_clones[ctx.m_cloneId].m_character;
        if (!clone) {
            continue;
        }
        // The clone's local matrix (+0x4c) gives its origin in twips; 20 twips make one pixel.
        const gameswf::matrix* local = clone->m_local_matrix;
        const int originX = static_cast<int>(static_cast<float>(local->m_[0][2] / 20.0));
        const int originY = static_cast<int>(static_cast<float>(local->m_[1][2] / 20.0));

        m_animMenuFxRoot->SetPosition(clone, originX + ctx.m_x, originY + ctx.m_y);
        m_animMenuFxRoot->GotoFrame(clone, ctx.m_frame, false);
        gameswf::character* textField = style.m_clones[ctx.m_cloneId].m_textField;
        if (textField) {
            m_animMenuFxRoot->SetColorTransform(textField, 0xFF000000u, static_cast<unsigned int>(ctx.m_color));
        }
        clone->m_visible = true;
        clone->display();  // vtable +0x120
        clone->m_visible = false;
        m_animMenuFxRoot->SetPosition(clone, originX, originY);
    }
    m_animMenuFxRoot->SetTextBufferingEnabled(true);
    m_animMenuFxRoot->EndDisplay();
}

// 0x414678 FlashAnimManager::GetStyleIdFromName(char const*) const
int FlashAnimManager::GetStyleIdFromName(const char* name) const {
    const auto it = m_styleIdByName.find(std::string(name));
    if (it == m_styleIdByName.end()) {
        return 0;
    }
    return it->second;
}

// 0x4151d8 FlashAnimManager::ScanForAnims(MenuFX*)
// The visible flag (+0x9b) of each anim_ template is cleared after its name is entered.
void FlashAnimManager::ScanForAnims(MenuFX* menu) {
    if (!menu) {
        return;
    }
    if (m_animMenuFxRoot) {
        // ASSERT(m_animMenuFxRoot == 0) FAILED at FlashAnimManager.cpp:80. Level 2 stops the program (the original
        // stores to address 0); level 1 prints the message.
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_animMenuFxRoot == 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\FlashAnimManager.cpp", 80);
        }
    }
    m_animMenuFxRoot = menu;

    // The anim_ characters are copied first: the next FindCharacters call overwrites the array it returns.
    const RenderFX::CharacterArray* found = menu->FindCharacters(menu->GetFlashRoot(), "anim_", 0);
    const std::vector<gameswf::character*> anims(found->data, found->data + found->count);

    for (std::size_t i = 0; i < anims.size(); ++i) {
        gameswf::character* anim = anims[i];
        // The first "_text" field of the template becomes the text field of clone slot 0; the other seven slots
        // stay empty.
        const RenderFX::CharacterArray* texts = menu->FindCharacters(anim, "_text", 0);
        SWFDataInstances style{};
        style.m_clones[0].m_character = anim;
        style.m_clones[0].m_textField = texts->count > 0 ? texts->data[0] : nullptr;
        m_swfDataInstances.push_back(style);

        // The style id is the index of the anim_ character; the name is the character's own name.
        m_styleIdByName[anim->get_name().c_str()] = static_cast<int>(i);
        anim->m_visible = false;
    }
}
