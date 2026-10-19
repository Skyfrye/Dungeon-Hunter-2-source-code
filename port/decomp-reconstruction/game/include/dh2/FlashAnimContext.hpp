// FlashAnimContext: one playback slot of FlashAnimManager. A slot plays one clone of a style's FlashAnim clip at a
// screen position, from a start frame, until its flags say it is done.
// Original 32-bit size 0x50 (80): FlashAnimManager keeps twelve contexts back to back at an 80-byte stride.
// Reconstructed from libDungeonHunter2.so pseudocode (SetText 0x413aec, SetTextToNumber 0x413f14). The fields are
// read and written by the FlashAnimManager ctor, PlayFlashAnim, Update, Draw and FindAvailableAnimContextID.
#pragma once

#include <cstdint>

class FlashAnimContext {
public:
    // Methods in original order.
    void SetText(const char* text);                                     // 0x413aec copies text that is at most 46 characters long; longer text is ignored
    void SetTextToNumber(int value);                                    // 0x413f14 a negative value clears m_text; values below 2147483646 are formatted with "%d" into m_text

    int m_x;                                                            // +0x00 screen x offset added to the clone's position in Draw
    int m_y;                                                            // +0x04 screen y offset
    int m_color;                                                        // +0x08 colour passed to RenderFX::SetColorTransform for the text field
    int m_frame;                                                        // +0x0c frame that Draw goes to; Update advances it while the clip plays
    int m_elapsed;                                                      // +0x10 milliseconds since the last frame step; Update adds the frame time
    int m_flags;                                                        // +0x14 bit 0 (1): context is active. bit 1 (2): stop when m_frame reaches the clone's frame count
    int m_styleId;                                                      // +0x18 style index into FlashAnimManager's style table; -1 before first use
    int m_cloneId;                                                      // +0x1c clone slot 0..7 of that style, chosen by FindAnimInstance
    char m_text[48];                                                    // +0x20 NUL-terminated text formatted into the clone's text field
};
