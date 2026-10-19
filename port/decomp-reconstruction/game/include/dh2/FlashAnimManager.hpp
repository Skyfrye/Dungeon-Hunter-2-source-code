// FlashAnimManager: the singleton that plays short FlashAnim clips on the menu movie, such as scrolling combat text
// and combat values. It owns twelve playback contexts, the style table that ScanForAnims builds from the "anim_"
// characters of the menu, and a map from anim name to style index.
// Original 32-bit size 0x3e4 (996), inferred: the std::map at +0x3d0 is the last member that the ctor and dtor touch.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x413748 / 0x4137b4, ~FlashAnimManager 0x414128 / 0x414180,
// Update 0x4138ac, ScanForAnims 0x4151d8, Draw 0x414260, PlayFlashAnim 0x413c6c / 0x413cf4, GetInstance 0x413e90).
#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "dh2/FlashAnimContext.hpp"
#include "glitch-shared/glitch_core.hpp"

class MenuFX;
namespace gameswf {
class character;
}  // namespace gameswf

class FlashAnimManager {
public:
    // One style of the table: eight clones of the style's "anim_" movie, 96 bytes in the original.
    class SWFDataInstances {
    public:
        // One clone slot, 12 bytes in the original.
        struct CloneSlot {
            gameswf::character* m_character;                            // +0x00 clone movie; slot 0 holds the template that ScanForAnims found
            gameswf::character* m_textField;                            // +0x04 the "_text" field of the clone, found with RenderFX::Find
            bool m_inUse;                                               // +0x08 set while a playback context uses the slot
            uint8_t pad_09[3];                                          // +0x09
        };

        CloneSlot m_clones[8];                                          // +0x00 .. +0x5f eight slots, indexed by clone id
    };

    // Methods in original order.
    FlashAnimManager();                                                 // 0x413748 / 0x4137b4 zeroes the contexts and the table, sets m_contexts[i].m_styleId to -1
    ~FlashAnimManager();                                                // 0x414128 / 0x414180 clears the name map and releases the style table
    void StopAllFlashAnim();                                            // 0x413820 clears m_flags of all twelve contexts
    void ResetScanForAnims(MenuFX* menu);                               // 0x413840 when menu owns the table: clears m_animMenuFxRoot, empties the style table and stops all contexts
    void StopFlashAnim(int contextId);                                  // 0x413868 clears m_flags of one context
    int FindAvailableAnimContextID();                                   // 0x413880 index of the first context whose m_flags bit 0 is clear, -1 when all are busy
    void Update();                                                      // 0x4138ac advances the active contexts by the frame time, in steps of 1000 / menu frame rate, or 33 ms when the level-state check fails
    void UpdateAnimInstance(FlashAnimContext* context);                 // 0x413a28 formats context's text into the text field of its clone
    int FindAnimInstance(int styleId);                                  // 0x413b1c marks the first clone slot of the style that is not in use (slot 7 when all are) and returns its index; creates the clone movie when the slot has none
    FlashAnimContext* PlayFlashAnim(int styleId, int x, int y, int frame, int flags);                           // 0x413c6c returns null when no context is free
    FlashAnimContext* PlayFlashAnim(int styleId, const glitch::core::vector3d<float>& position, int frame, int flags);  // 0x413cf4 converts position to screen pixels first
    FlashAnimContext* PlayScrollingCombatText(int styleId, const glitch::core::vector3d<float>& position,
                                              const char* text, int color);                                     // 0x413dc4 flags 2 (stop at the end), text in m_text
    FlashAnimContext* PlayScrollingCombatValue(int styleId, const glitch::core::vector3d<float>& position,
                                               int value, int color);                                           // 0x413fa0 the value is formatted as a number
    static FlashAnimManager* GetInstance();                             // 0x413e90 function-local singleton, destroyed at exit
    void Draw();                                                        // 0x414260 positions and steps each active clone, unless the switch IsDisablingFlashAnimation is set
    int GetStyleIdFromName(const char* name) const;                     // 0x414678 style index of name in m_styleIdByName, 0 when the name is absent
    void ScanForAnims(MenuFX* menu);                                    // 0x4151d8 builds the style table from the "anim_" characters of menu and names each style

    FlashAnimContext m_contexts[12];                                    // +0x000 .. +0x3bf twelve playback contexts, 80 bytes each
    MenuFX* m_animMenuFxRoot;                                           // +0x3c0 menu whose movie holds the anim_ characters; set by ScanForAnims, asserted to be null on entry
    std::vector<SWFDataInstances> m_swfDataInstances;                   // +0x3c4 .. +0x3cf begin, end, end of storage; one element (96 bytes) per style, indexed by style id
    std::map<std::string, int> m_styleIdByName;                         // +0x3d0 .. +0x3e3 rb-tree header, root, leftmost, rightmost, node count (20 bytes); key is the anim name, value the style id
};
