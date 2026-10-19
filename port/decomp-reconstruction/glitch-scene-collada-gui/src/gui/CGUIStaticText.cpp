// Bodies of glitch::gui::IGUIStaticText and CGUIStaticText (canonical classes: gui/CGUIStaticText.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp and recon/slice_31.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"

#include <cwchar>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

// 0x550354 _ZN6glitch3gui14IGUIStaticTextC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIStaticText::IGUIStaticText(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_STATIC_TEXT, environment, parent, id, rectangle) {}

// 0x550f24 _ZN6glitch3gui14IGUIStaticTextD1Ev (D0 0x5510cc skipped)
IGUIStaticText::~IGUIStaticText() = default;

// 0x55061c _ZN6glitch3gui14CGUIStaticTextC1EPKwbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEEb (C2 0x551e64)
CGUIStaticText::CGUIStaticText(const wchar_t* textValue, bool borderValue, IGUIEnvironment* environment, IGUIElement* parent, int id,
                               const core::rect<int>& rectangle, bool backgroundValue)
    : IGUIStaticText(environment, parent, id, rectangle) {
    border = borderValue;
    background = backgroundValue;
    overrideColor.color = 0x65FFFFFFu;  // (101, 255, 255, 255)
    bgColor.color = 0x65D2D2D2u;        // (101, 210, 210, 210)
    if (textValue == nullptr) {
        textValue = L"";
    }
    text.assign(textValue, textValue + std::wcslen(textValue));
    if (environment != nullptr && environment->getSkin() != nullptr) {
        bgColor = environment->getSkin()->getColor(EGDC_3D_FACE);
    }
}

// 0x550f98 _ZN6glitch3gui14CGUIStaticTextD1Ev (0x55102c and 0x551048 are the other forms)
CGUIStaticText::~CGUIStaticText() {
    if (overrideFont != nullptr) {
        overrideFont->drop();
    }
}

// 0x54ff14 _ZNK6glitch3gui14CGUIStaticText15getOverrideFontEv
IGUIFont* CGUIStaticText::getOverrideFont() const {
    return overrideFont;
}

// 0x551840 _ZN6glitch3gui14CGUIStaticText15setOverrideFontEPNS0_8IGUIFontE
void CGUIStaticText::setOverrideFont(IGUIFont* font) {
    if (overrideFont != font) {
        if (overrideFont != nullptr) {
            overrideFont->drop();
        }
        overrideFont = font;
        if (font != nullptr) {
            ++font->referenceCounter;
        }
        breakText();
    }
}

// 0x54ff1c _ZN6glitch3gui14CGUIStaticText16setOverrideColorENS_5video6SColorE
void CGUIStaticText::setOverrideColor(video::SColor color) {
    overrideColorEnabled = true;
    overrideColor = color;
}

// 0x54ffa8 _ZNK6glitch3gui14CGUIStaticText16getOverrideColorEv
const video::SColor& CGUIStaticText::getOverrideColor() const {
    return overrideColor;
}

// 0x54ffb4 _ZN6glitch3gui14CGUIStaticText19enableOverrideColorEb
void CGUIStaticText::enableOverrideColor(bool enable) {
    overrideColorEnabled = enable;
}

// 0x54ffbc _ZNK6glitch3gui14CGUIStaticText22isOverrideColorEnabledEv
bool CGUIStaticText::isOverrideColorEnabled() const {
    return overrideColorEnabled;
}

// 0x54ff54 _ZN6glitch3gui14CGUIStaticText18setBackgroundColorENS_5video6SColorE
void CGUIStaticText::setBackgroundColor(video::SColor color) {
    background = true;
    bgColor = color;
}

// 0x54ff8c _ZN6glitch3gui14CGUIStaticText17setDrawBackgroundEb
void CGUIStaticText::setDrawBackground(bool draw) {
    background = draw;
}

// 0x54ff94 _ZN6glitch3gui14CGUIStaticText13setDrawBorderEb
void CGUIStaticText::setDrawBorder(bool draw) {
    border = draw;
}

// 0x54ff9c _ZN6glitch3gui14CGUIStaticText16setTextAlignmentENS0_14EGUI_ALIGNMENTES2_
void CGUIStaticText::setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) {
    hAlign = horizontal;
    vAlign = vertical;
}

// 0x551838 _ZN6glitch3gui14CGUIStaticText11setWordWrapEb
void CGUIStaticText::setWordWrap(bool wrap) {
    wordWrap = wrap;
    breakText();
}

// 0x54ffc4 _ZNK6glitch3gui14CGUIStaticText17isWordWrapEnabledEv
bool CGUIStaticText::isWordWrapEnabled() const {
    return wordWrap;
}

// 0x551e34 _ZN6glitch3gui14CGUIStaticText7setTextEPKw
void CGUIStaticText::setText(const wchar_t* newText) {
    text.assign(newText, newText + std::wcslen(newText));
    breakText();
}

// 0x551820 _ZN6glitch3gui14CGUIStaticText22updateAbsolutePositionEv
void CGUIStaticText::updateAbsolutePosition() {
    IGUIElement::updateAbsolutePosition();
    breakText();
}

// 0x54ffcc _ZNK6glitch3gui14CGUIStaticText13getTextHeightEv
// The height of one line (the height of "A" plus the font's kerning height), times the number of broken lines when word wrapped.
int CGUIStaticText::getTextHeight() const {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return 0;
    }
    IGUIFont* font = overrideFont;
    if (font == nullptr) {
        font = skin->getFont(EGDF_DEFAULT);  // K 0x28
        if (font == nullptr) {
            return 0;
        }
    }
    int height = font->getDimension(L"A").Height + font->getKerningHeight();  // K 0x1c, K 0x3c
    if (wordWrap) {
        height *= static_cast<int>(brokenText.size());
    }
    return height;
}

// 0x55009c _ZNK6glitch3gui14CGUIStaticText12getTextWidthEv
// The widest broken line when word wrapped, else the width of the text.
int CGUIStaticText::getTextWidth() const {
    IGUIFont* font = overrideFont;
    if (font == nullptr) {
        IGUISkin* skin = environment->getSkin();
        if (skin == nullptr) {
            return 0;
        }
        font = skin->getFont(EGDF_DEFAULT);
        if (font == nullptr) {
            return 0;
        }
    }
    if (!wordWrap) {
        return font->getDimension(text.c_str()).Width;
    }
    if (brokenText.empty()) {
        return 0;
    }
    int widest = 0;
    for (const std::wstring& line : brokenText) {
        const int width = font->getDimension(line.c_str()).Width;
        if (widest < width) {
            widest = width;
        }
    }
    return widest;
}

// 0x551204 _ZN6glitch3gui14CGUIStaticText9breakTextEv
// The lines are built word by word: a space, a hyphen, a NUL, the last character or a line break (CR, LF; a CR followed by LF erases the rest
// of the text from the LF on, as std::wstring::erase(pos) does) ends a word. The length is advanced by the word and the whitespace before the
// comparison with the width, so a word that does not fit starts the next line; a hyphen that ended the previous word stays on its line.
void CGUIStaticText::breakText() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (!wordWrap || skin == nullptr) {
        return;
    }
    brokenText.clear();
    IGUIFont* font = overrideFont;
    if (font == nullptr) {
        font = skin->getFont(EGDF_DEFAULT);
        if (font == nullptr) {
            return;
        }
    }
    lastBreakFont = font;

    std::wstring line;
    std::wstring word;
    std::wstring whitespace;
    int size = static_cast<int>(text.size());
    int length = 0;
    const int elementWidth = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X - 6;
    auto textAt = [this](int index) { return index < static_cast<int>(text.size()) ? text[index] : static_cast<wchar_t>(0); };
    auto widthOf = [font](const std::wstring& string) { return font->getDimension(string.c_str()).Width; };

    if (size > 0) {
        int last = size - 1;
        for (int i = 0;; ++i) {
            wchar_t c = textAt(i);
            bool lineBreak = false;
            bool breakPoint = true;
            if (c == L'\r') {
                lineBreak = true;
                c = L' ';
                if (textAt(i + 1) == L'\n') {
                    text.erase(static_cast<std::size_t>(i + 1));
                    size = last;
                    --last;
                }
            } else if (c == L'\n') {
                lineBreak = true;
                c = L' ';
            } else if (c != L' ' && c != L'-' && c != 0) {
                if (i != last) {
                    word.push_back(c);
                    breakPoint = false;
                }
            }
            if (breakPoint) {
                if (!word.empty() || i == last) {
                    const int whiteWidth = widthOf(whitespace);
                    int wordWidth = widthOf(word);
                    if (i == last) {
                        wordWidth += widthOf(std::wstring(1, c));
                    }
                    length += wordWidth + whiteWidth;
                    if (elementWidth > length) {
                        line += whitespace;
                        line += word;
                    } else {
                        if (whitespace == L"-") {
                            line += whitespace;
                        }
                        brokenText.push_back(line);
                        line = word;
                        length = wordWidth;
                    }
                    word.clear();
                    whitespace.clear();
                    whitespace.push_back(c);
                } else {
                    whitespace.push_back(c);
                }
                if (lineBreak) {
                    line += whitespace;
                    line += word;
                    brokenText.push_back(line);
                    line.clear();
                    word.clear();
                    whitespace.clear();
                    length = 0;
                }
            }
            if (size <= i + 1) {
                break;
            }
        }
    }
    line += whitespace;
    line += word;
    brokenText.push_back(line);
}

// 0x551888 _ZN6glitch3gui14CGUIStaticText4drawEv
void CGUIStaticText::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    video::IVideoDriver* driver = environment->getVideoDriver();  // K 0x20
    core::rect<int> frameRect = absoluteRect;
    if (background) {
        video::C2DDriver::draw2DRectangle(driver, bgColor, frameRect, &absoluteClippingRect);
    }
    if (border) {
        skin->draw3DSunkenPane(this, video::SColor{}, true, false, frameRect, &absoluteClippingRect);  // K 0x48
        frameRect.UpperLeftCorner.X += skin->getSize(EGDS_TEXT_DISTANCE_X);
    }
    if (!text.empty()) {
        IGUIFont* font = overrideFont;
        if (font == nullptr) {
            font = skin->getFont(EGDF_DEFAULT);
        }
        if (font != nullptr) {
            auto textColor = [&]() {
                return overrideColorEnabled ? overrideColor : skin->getColor(enabled ? EGDC_BUTTON_TEXT : EGDC_GRAY_TEXT);
            };
            if (wordWrap) {
                if (lastBreakFont != font) {
                    breakText();
                }
                core::rect<int> r = frameRect;
                const int height = font->getDimension(L"A").Height + font->getKerningHeight();
                const int lineCount = static_cast<int>(brokenText.size());
                const int totalHeight = height * lineCount + (lineCount - 1) * font->getTracking();  // K 0x44
                if (vAlign == EGUIA_CENTER) {
                    r.UpperLeftCorner.Y = (r.LowerRightCorner.Y + r.UpperLeftCorner.Y) / 2 - totalHeight / 2;
                } else if (vAlign == EGUIA_LOWERRIGHT) {
                    r.UpperLeftCorner.Y = r.LowerRightCorner.Y - totalHeight;
                }
                for (int i = 0; i < lineCount; ++i) {
                    if (hAlign == EGUIA_LOWERRIGHT) {
                        r.UpperLeftCorner.X = r.LowerRightCorner.X - font->getDimension(brokenText[i].c_str()).Width;
                    }
                    font->draw(brokenText[i].c_str(), r, textColor(), hAlign == EGUIA_CENTER, false, &absoluteClippingRect);  // K 0x0c
                    r.LowerRightCorner.Y += height + font->getTracking();
                    r.UpperLeftCorner.Y += height + font->getTracking();
                }
            } else {
                core::rect<int> r = frameRect;
                if (vAlign == EGUIA_LOWERRIGHT) {
                    r.UpperLeftCorner.Y = r.LowerRightCorner.Y - font->getDimension(L"A").Height - font->getKerningHeight();
                }
                if (hAlign == EGUIA_LOWERRIGHT) {
                    r.UpperLeftCorner.X = r.LowerRightCorner.X - font->getDimension(text.c_str()).Width;
                }
                font->draw(text.c_str(), r, textColor(), hAlign == EGUIA_CENTER, vAlign == EGUIA_CENTER, &absoluteClippingRect);
            }
        }
    }
    IGUIElement::draw();
}

// 0x5507e4 _ZNK6glitch3gui14CGUIStaticText19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIStaticText::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addBool("Border", border, false);                              // K 0xd8
    attributes->addBool("OverrideColorEnabled", overrideColorEnabled, false);
    attributes->addBool("WordWrap", wordWrap, false);
    attributes->addBool("Background", background, false);
    attributes->addColor("OverrideColor", overrideColor, false);               // K 0x118
    attributes->addEnum("HTextAlign", static_cast<int>(hAlign), GUIAlignmentNames, false);  // K 0xf4
    attributes->addEnum("VTextAlign", static_cast<int>(vAlign), GUIAlignmentNames, false);
}

// 0x550dcc _ZN6glitch3gui14CGUIStaticText21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIStaticText::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    border = attributes->getBool("Border");
    overrideColor = attributes->getColor("OverrideColor");
    enableOverrideColor(attributes->getBool("OverrideColorEnabled"));  // K 0x8c
    setWordWrap(attributes->getBool("WordWrap"));                       // K 0xa4
    background = attributes->getBool("Background");
    const int horizontal = attributes->getEnum("HTextAlign", GUIAlignmentNames);  // K 0x100
    const int vertical = attributes->getEnum("VTextAlign", GUIAlignmentNames);
    setTextAlignment(static_cast<EGUI_ALIGNMENT>(horizontal), static_cast<EGUI_ALIGNMENT>(vertical));  // K 0xa0
}

}  // namespace glitch::gui
