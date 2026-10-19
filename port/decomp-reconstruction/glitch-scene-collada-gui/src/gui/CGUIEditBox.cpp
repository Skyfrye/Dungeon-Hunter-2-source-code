// Bodies of glitch::gui::IGUIEditBox and CGUIEditBox (canonical classes: gui/CGUIEditBox.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_25.cpp and recon/slice_33.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIEditBox.hpp"

#include <algorithm>
#include <cwchar>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-scene-collada-gui/os/COSOperator.hpp"

namespace glitch::gui {

namespace {

// std::wstring::substr that clamps its arguments (the STLport one throws for a start past the end).
std::wstring subString(const std::wstring& string, int start, int count) {
    if (start < 0) {
        start = 0;
    }
    if (static_cast<std::size_t>(start) > string.size()) {
        return std::wstring();
    }
    if (count < 0) {
        count = 0;
    }
    return string.substr(static_cast<std::size_t>(start), static_cast<std::size_t>(count));
}

}  // namespace

// 0x6b0394 _ZN6glitch3gui11IGUIEditBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIEditBox::IGUIEditBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_EDIT_BOX, environment, parent, id, rectangle) {}

// 0x6b0b38 _ZN6glitch3gui11IGUIEditBoxD1Ev (D0 0x6b0d20 skipped)
IGUIEditBox::~IGUIEditBox() = default;

// 0x6b2608 _ZN6glitch3gui11CGUIEditBoxC1EPKwbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEE (C2 0x6b28c8)
CGUIEditBox::CGUIEditBox(const wchar_t* textValue, bool borderValue, IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id,
                         const core::rect<int>& rectangle)
    : IGUIEditBox(environmentValue, parentElement, id, rectangle) {
    border = borderValue;
    overrideColor.color = 0x65FFFFFFu;  // (101, 255, 255, 255)
    currentTextRect = detail::makeRect(0, 0, 1, 1);
    frameRect = rectangle;
    if (textValue == nullptr) {
        textValue = L"";
    }
    text.assign(textValue, textValue + std::wcslen(textValue));
    osOperator = environment->getOSOperator();  // K 0x28
    if (osOperator != nullptr) {
        ++osOperator->referenceCounter;
    }
    tabStop = true;
    setTabOrder(-1);
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (border && skin != nullptr) {
        frameRect.UpperLeftCorner.X += skin->getSize(EGDS_TEXT_DISTANCE_X) + 1;
        frameRect.UpperLeftCorner.Y += skin->getSize(EGDS_TEXT_DISTANCE_Y) + 1;
        frameRect.LowerRightCorner.X -= skin->getSize(EGDS_TEXT_DISTANCE_X) + 1;
        frameRect.LowerRightCorner.Y -= skin->getSize(EGDS_TEXT_DISTANCE_Y) + 1;
    }
    breakText();
    calculateScrollPos();
}

// 0x6b0bac _ZN6glitch3gui11CGUIEditBoxD1Ev (0x6b0c60 and 0x6b0c7c are the other forms)
CGUIEditBox::~CGUIEditBox() {
    if (overrideFont != nullptr) {
        overrideFont->drop();
    }
    if (osOperator != nullptr) {
        osOperator->drop();
    }
}

// 0x6afa70 _ZN6glitch3gui11CGUIEditBox16setOverrideColorENS_5video6SColorE
void CGUIEditBox::setOverrideColor(video::SColor color) {
    overrideColorEnabled = true;
    overrideColor = color;
}

// 0x6afab0 _ZN6glitch3gui11CGUIEditBox19enableOverrideColorEb
void CGUIEditBox::enableOverrideColor(bool enable) {
    overrideColorEnabled = enable;
}

// 0x6afaa8 _ZN6glitch3gui11CGUIEditBox13setDrawBorderEb
void CGUIEditBox::setDrawBorder(bool value) {
    border = value;
}

// 0x6afad8 _ZN6glitch3gui11CGUIEditBox16setTextAlignmentENS0_14EGUI_ALIGNMENTES2_
void CGUIEditBox::setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) {
    hAlign = horizontal;
    vAlign = vertical;
}

// 0x6b1624 _ZN6glitch3gui11CGUIEditBox11setWordWrapEb
void CGUIEditBox::setWordWrap(bool value) {
    wordWrap = value;
    breakText();
}

// 0x6afab8 _ZNK6glitch3gui11CGUIEditBox17isWordWrapEnabledEv
bool CGUIEditBox::isWordWrapEnabled() const {
    return wordWrap;
}

// 0x6afac0 _ZN6glitch3gui11CGUIEditBox12setMultiLineEb
void CGUIEditBox::setMultiLine(bool value) {
    multiLine = value;
}

// 0x6afac8 _ZNK6glitch3gui11CGUIEditBox18isMultiLineEnabledEv
bool CGUIEditBox::isMultiLineEnabled() const {
    return multiLine;
}

// 0x6afae4 _ZN6glitch3gui11CGUIEditBox13setAutoScrollEb
void CGUIEditBox::setAutoScroll(bool enable) {
    autoScroll = enable;
}

// 0x6afaec _ZNK6glitch3gui11CGUIEditBox19isAutoScrollEnabledEv
bool CGUIEditBox::isAutoScrollEnabled() const {
    return autoScroll;
}

// 0x6b0844 _ZN6glitch3gui11CGUIEditBox14setPasswordBoxEbw
// A password box is a single line without word wrap; its broken lines are discarded.
void CGUIEditBox::setPasswordBox(bool value, wchar_t character) {
    passwordBox = value;
    if (value) {
        passwordChar = character;
        setMultiLine(false);  // K 0x98
        setWordWrap(false);   // K 0x90
        brokenText.clear();
    }
}

// 0x6afad0 _ZNK6glitch3gui11CGUIEditBox13isPasswordBoxEv
bool CGUIEditBox::isPasswordBox() const {
    return passwordBox;
}

// 0x6afaf4 _ZNK6glitch3gui11CGUIEditBox6getMaxEv
std::uint32_t CGUIEditBox::getMax() const {
    return maxChars;
}

// 0x6b185c _ZN6glitch3gui11CGUIEditBox6setMaxEj
void CGUIEditBox::setMax(std::uint32_t max) {
    maxChars = max;
    if (max != 0 && max < text.size()) {
        text = text.substr(0, max);
    }
}

// 0x6b162c _ZN6glitch3gui11CGUIEditBox15setOverrideFontEPNS0_8IGUIFontE
void CGUIEditBox::setOverrideFont(IGUIFont* font) {
    if (font != nullptr) {
        ++font->referenceCounter;
    }
    if (overrideFont != nullptr) {
        overrideFont->drop();
    }
    overrideFont = font;
    breakText();
}

// 0x6b15c8 _ZN6glitch3gui11CGUIEditBox7setTextEPKw
void CGUIEditBox::setText(const wchar_t* newText) {
    text.assign(newText, newText + std::wcslen(newText));
    markEnd = 0;
    cursorPos = 0;
    hScrollPos = 0;
    markBegin = 0;
    breakText();
}

// 0x6b160c _ZN6glitch3gui11CGUIEditBox22updateAbsolutePositionEv
void CGUIEditBox::updateAbsolutePosition() {
    IGUIElement::updateAbsolutePosition();
    breakText();
}

// 0x6affcc _ZN6glitch3gui11CGUIEditBox15getLineFromPosEi
int CGUIEditBox::getLineFromPos(int pos) const {
    if (!wordWrap && !multiLine) {
        return 0;
    }
    const int count = static_cast<int>(brokenTextPositions.size());
    if (count > 0) {
        if (pos < brokenTextPositions[0]) {
            return -1;
        }
        for (int i = 1; i < count; ++i) {
            if (brokenTextPositions[static_cast<std::size_t>(i)] > pos) {
                return i - 1;
            }
        }
    }
    return count - 1;
}

// 0x6afafc _ZN6glitch3gui11CGUIEditBox11setTextRectEi
void CGUIEditBox::setTextRect(int line) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIFont* font = overrideFont != nullptr ? overrideFont : skin->getFont(EGDF_DEFAULT);
    if (font == nullptr) {
        return;
    }
    int lineCount;
    core::dimension2d<int> dimension;
    if (wordWrap || multiLine) {
        lineCount = static_cast<int>(brokenText.size());
        dimension = font->getDimension(brokenText[static_cast<std::size_t>(line)].c_str());  // K 0x1c
    } else {
        lineCount = 1;
        dimension = font->getDimension(text.c_str());
        dimension.Height = absoluteRect.LowerRightCorner.Y - absoluteRect.UpperLeftCorner.Y;
    }
    dimension.Height += font->getKerningHeight();  // K 0x3c
    const int frameWidth = frameRect.LowerRightCorner.X - frameRect.UpperLeftCorner.X;
    const int frameHeight = frameRect.LowerRightCorner.Y - frameRect.UpperLeftCorner.Y;
    if (hAlign == EGUIA_LOWERRIGHT) {
        currentTextRect.LowerRightCorner.X = frameWidth;
        currentTextRect.UpperLeftCorner.X = frameWidth - dimension.Width;
    } else if (hAlign == EGUIA_CENTER) {
        currentTextRect.UpperLeftCorner.X = frameWidth / 2 - dimension.Width / 2;
        currentTextRect.LowerRightCorner.X = frameWidth / 2 + dimension.Width / 2;
    } else {
        currentTextRect.UpperLeftCorner.X = 0;
        currentTextRect.LowerRightCorner.X = dimension.Width;
    }
    int top;
    if (vAlign == EGUIA_LOWERRIGHT) {
        top = frameHeight + dimension.Height * (line - lineCount);
    } else if (vAlign == EGUIA_CENTER) {
        top = frameHeight / 2 + line * dimension.Height - lineCount * dimension.Height / 2;
    } else {
        top = line * dimension.Height;
    }
    top -= vScrollPos;
    currentTextRect.UpperLeftCorner.X = currentTextRect.UpperLeftCorner.X - hScrollPos + frameRect.UpperLeftCorner.X;
    currentTextRect.LowerRightCorner.X = currentTextRect.LowerRightCorner.X - hScrollPos + frameRect.UpperLeftCorner.X;
    currentTextRect.UpperLeftCorner.Y = top + frameRect.UpperLeftCorner.Y;
    currentTextRect.LowerRightCorner.Y = dimension.Height + top + frameRect.UpperLeftCorner.Y;
}

// 0x6afe9c _ZN6glitch3gui11CGUIEditBox16getTextDimensionEv
core::dimension2d<int> CGUIEditBox::getTextDimension() {
    setTextRect(0);
    int minX = currentTextRect.UpperLeftCorner.X;
    int minY = currentTextRect.UpperLeftCorner.Y;
    int maxX = currentTextRect.LowerRightCorner.X;
    int maxY = currentTextRect.LowerRightCorner.Y;
    for (std::size_t i = 1; i < brokenText.size(); ++i) {
        setTextRect(static_cast<int>(i));
        const int left = std::min(currentTextRect.UpperLeftCorner.X, currentTextRect.LowerRightCorner.X);
        const int right = std::max(currentTextRect.UpperLeftCorner.X, currentTextRect.LowerRightCorner.X);
        const int top = std::min(currentTextRect.UpperLeftCorner.Y, currentTextRect.LowerRightCorner.Y);
        const int bottom = std::max(currentTextRect.UpperLeftCorner.Y, currentTextRect.LowerRightCorner.Y);
        minX = std::min(minX, left);
        maxX = std::max(maxX, right);
        minY = std::min(minY, top);
        maxY = std::max(maxY, bottom);
    }
    return core::dimension2d<int>{maxX - minX, maxY - minY};
}

// 0x6afd18 _ZN6glitch3gui11CGUIEditBox12getCursorPosEii
// (Without a line under the point the original dereferences a null line; 0 is returned here.)
int CGUIEditBox::getCursorPos(int x, int y) {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUIFont* font = overrideFont != nullptr ? overrideFont : skin->getFont(EGDF_DEFAULT);
    const bool multi = wordWrap || multiLine;
    const int lineCount = multi ? static_cast<int>(brokenText.size()) : 1;
    x += 3;
    const std::wstring* line = nullptr;
    int startPos = 0;
    for (int current = 0; current < lineCount; ++current) {
        setTextRect(current);
        if (current == 0 && y < currentTextRect.UpperLeftCorner.Y) {
            y = currentTextRect.UpperLeftCorner.Y;
        }
        if (current == lineCount - 1 && y >= currentTextRect.LowerRightCorner.Y) {
            y = currentTextRect.LowerRightCorner.Y;
        }
        if (y >= currentTextRect.UpperLeftCorner.Y && y <= currentTextRect.LowerRightCorner.Y) {
            line = multi ? &brokenText[static_cast<std::size_t>(current)] : &text;
            startPos = multi ? brokenTextPositions[static_cast<std::size_t>(current)] : 0;
            break;
        }
    }
    if (line == nullptr || font == nullptr) {
        return 0;
    }
    const int localX = x < currentTextRect.UpperLeftCorner.X ? 0 : x - currentTextRect.UpperLeftCorner.X;
    const int index = font->getCharacterFromPos(line->c_str(), localX);  // K 0x24
    if (index == -1) {
        return startPos + static_cast<int>(line->size());
    }
    return index + startPos;
}

// 0x6b0f8c _ZN6glitch3gui11CGUIEditBox9breakTextEv
// The text is split at spaces (and, with word wrap, wherever a word no longer fits the width of the element minus 6); a CR, LF or CR LF ends
// a line in a multi line box. The cursor is kept inside the text afterwards.
void CGUIEditBox::breakText() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if ((!wordWrap && !multiLine) || skin == nullptr) {
        return;
    }
    brokenText.clear();
    brokenTextPositions.clear();
    IGUIFont* font = overrideFont != nullptr ? overrideFont : skin->getFont(EGDF_DEFAULT);
    if (font == nullptr) {
        return;
    }
    lastBreakFont = font;
    std::wstring line;
    std::wstring word;
    std::wstring whitespace;
    int lastLineStart = 0;
    int size = static_cast<int>(text.size());
    int length = 0;
    const int elementWidth = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X - 6;
    auto widthOf = [font](const std::wstring& string) { return font->getDimension(string.c_str()).Width; };

    if (size > 0) {
        for (int i = 0;; ++i) {
            wchar_t c = text[static_cast<std::size_t>(i)];
            bool lineBreak = false;
            bool breakPoint;
            if (c == L'\r') {
                lineBreak = true;
                breakPoint = true;
                if (static_cast<std::size_t>(i + 1) <= text.size() && (static_cast<std::size_t>(i + 1) < text.size() ? text[static_cast<std::size_t>(i + 1)] : L'\0') == L'\n') {
                    text.erase(static_cast<std::size_t>(i + 1), 1);
                    --size;
                }
                c = L' ';
            } else if (c == L'\n') {
                lineBreak = true;
                breakPoint = true;
                c = L' ';
            } else {
                breakPoint = (c == 0 || c == L' ');
            }
            if (!multiLine) {
                lineBreak = false;
            }
            if (!breakPoint && i != size - 1) {
                word.push_back(c);
            } else {
                if (!word.empty()) {
                    const int whiteWidth = widthOf(whitespace);
                    const int wordWidth = widthOf(word);
                    bool broke = false;
                    length += wordWidth + whiteWidth;
                    if (wordWrap && elementWidth < length) {
                        brokenText.push_back(line);
                        brokenTextPositions.push_back(lastLineStart);
                        lastLineStart = i - static_cast<int>(word.size());
                        line = word;
                        length = wordWidth;
                        broke = true;
                    }
                    if (!broke) {
                        line += whitespace;
                        line += word;
                    }
                    word.clear();
                    whitespace.clear();
                }
                whitespace.push_back(c);
                if (lineBreak) {
                    line += whitespace;
                    line += word;
                    brokenText.push_back(line);
                    brokenTextPositions.push_back(lastLineStart);
                    lastLineStart = i + 1;
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
    brokenTextPositions.push_back(lastLineStart);
    const int textSize = static_cast<int>(text.size());
    if (cursorPos > textSize) {
        cursorPos = textSize;
    }
}

// 0x6b246c _ZN6glitch3gui11CGUIEditBox18calculateScrollPosEv
void CGUIEditBox::calculateScrollPos() {
    if (!autoScroll) {
        return;
    }
    const int cursorLine = getLineFromPos(cursorPos);
    setTextRect(cursorLine);
    if (!wordWrap) {
        IGUISkin* skin = environment->getSkin();  // K 0x38
        IGUIFont* font = overrideFont != nullptr ? overrideFont : skin->getFont(EGDF_DEFAULT);
        const std::wstring* line;
        int position;
        if (multiLine) {
            line = &brokenText[static_cast<std::size_t>(cursorLine)];
            position = cursorPos - brokenTextPositions[static_cast<std::size_t>(cursorLine)];
        } else {
            line = &text;
            position = cursorPos;
        }
        const int cursorStart = hScrollPos + currentTextRect.UpperLeftCorner.X + font->getDimension(subString(*line, 0, position).c_str()).Width;
        const int underscoreWidth = font->getDimension(L"_").Width;
        if (cursorStart + underscoreWidth <= frameRect.LowerRightCorner.X) {
            if (cursorStart < frameRect.UpperLeftCorner.X) {
                hScrollPos = cursorStart - frameRect.UpperLeftCorner.X;
            } else {
                hScrollPos = 0;
            }
        } else {
            hScrollPos = cursorStart + underscoreWidth - frameRect.LowerRightCorner.X;
        }
    }
    const int bottom = vScrollPos + currentTextRect.LowerRightCorner.Y;
    if (frameRect.LowerRightCorner.Y < bottom) {
        vScrollPos = bottom - frameRect.LowerRightCorner.Y;
    } else {
        const int top = vScrollPos + currentTextRect.UpperLeftCorner.Y;
        vScrollPos = frameRect.UpperLeftCorner.Y <= top ? 0 : top - frameRect.UpperLeftCorner.Y;
    }
}

// 0x6b1668 _ZN6glitch3gui11CGUIEditBox9inputCharEw
void CGUIEditBox::inputChar(wchar_t character) {
    if (!enabled) {
        return;
    }
    if (character != 0) {
        if (maxChars > text.size() || maxChars == 0) {
            std::wstring result;
            if (markBegin == markEnd) {
                result = subString(text, 0, cursorPos);
                result.push_back(character);
                result += subString(text, cursorPos, static_cast<int>(text.size()) - cursorPos);
                text = result;
                ++cursorPos;
            } else {
                const int realBegin = std::min(markBegin, markEnd);
                const int realEnd = std::max(markBegin, markEnd);
                result = subString(text, 0, realBegin);
                result.push_back(character);
                result += subString(text, realEnd, static_cast<int>(text.size()) - realEnd);
                text = result;
                cursorPos = realBegin + 1;
            }
            blinkStartTime = os::Timer::getTime();
            markEnd = 0;
            markBegin = 0;
        }
    }
    breakText();
}

// 0x6b2b3c _ZN6glitch3gui11CGUIEditBox12processMouseERKNS_6SEventE
bool CGUIEditBox::processMouse(const SEvent& event) {
    const int x = event.MouseInput.X;
    const int y = event.MouseInput.Y;
    switch (event.MouseInput.Event) {
        case EMIE_LMOUSE_LEFT_UP:
            if (environment->hasFocus(this)) {  // K 0x1c
                cursorPos = getCursorPos(x, y);
                if (mouseMarking) {
                    markEnd = cursorPos;
                }
                mouseMarking = false;
                calculateScrollPos();
                return true;
            }
            break;
        case EMIE_MOUSE_MOVED:
            if (mouseMarking) {
                cursorPos = getCursorPos(x, y);
                markEnd = cursorPos;
                calculateScrollPos();
                return true;
            }
            break;
        case EMIE_LMOUSE_PRESSED_DOWN:
            if (!environment->hasFocus(this)) {
                blinkStartTime = os::Timer::getTime();
                mouseMarking = true;
                cursorPos = getCursorPos(x, y);
                markEnd = cursorPos;
                markBegin = cursorPos;
                calculateScrollPos();
                return true;
            }
            if (detail::rectContains(absoluteClippingRect, x, y)) {
                cursorPos = getCursorPos(x, y);
                if (!mouseMarking) {
                    markBegin = cursorPos;
                }
                mouseMarking = true;
                markEnd = cursorPos;
                calculateScrollPos();
                return true;
            }
            break;
        default:
            break;
    }
    return false;
}

// 0x6b2cc0 _ZN6glitch3gui11CGUIEditBox10processKeyERKNS_6SEventE
// Control shortcuts: A selects all, C copies and X cuts to the clipboard of the operating system operator (not for a password box), V pastes,
// Home / End move to the ends (with shift they extend the marking; Control + Shift + End leaves the cursor at 0, as in the original).
bool CGUIEditBox::processKey(const SEvent& event) {
    if (!event.KeyInput.PressedDown) {
        return false;
    }
    const bool shift = event.KeyInput.Shift;
    const int key = event.KeyInput.Key;
    bool textChanged = false;
    const int textSize = static_cast<int>(text.size());

    auto clipboardCopy = [&](int begin, int end) {
        const std::wstring selection = subString(text, begin, end - begin);
        osOperator->copyToClipboard(core::stringw2stringc(selection.c_str()).c_str());  // K 0x10
    };

    if (event.KeyInput.Control) {
        switch (key) {
            case KEY_END:
                if (shift) {
                    markBegin = cursorPos;
                    markEnd = textSize;
                    cursorPos = 0;
                } else {
                    markBegin = 0;
                    markEnd = 0;
                    cursorPos = textSize;
                }
                break;
            case KEY_HOME:
                if (shift) {
                    markBegin = 0;
                    markEnd = cursorPos;
                    cursorPos = 0;
                } else {
                    cursorPos = 0;
                    markBegin = 0;
                    markEnd = 0;
                }
                break;
            case KEY_KEY_A:
                markBegin = 0;
                markEnd = textSize;
                break;
            case KEY_KEY_C:
                if (!passwordBox && osOperator != nullptr && markBegin != markEnd) {
                    clipboardCopy(std::min(markBegin, markEnd), std::max(markBegin, markEnd));
                }
                break;
            case KEY_KEY_V: {
                if (!enabled || osOperator == nullptr) {
                    break;
                }
                const int realBegin = std::min(markBegin, markEnd);
                const int realEnd = std::max(markBegin, markEnd);
                const char* clipboard = osOperator->getTextFromClipboard();  // K 0x14
                if (clipboard != nullptr) {
                    const std::wstring pasted = core::stringc2stringw(clipboard);
                    std::wstring result;
                    if (markBegin == markEnd) {
                        result = subString(text, 0, cursorPos);
                        result += pasted;
                        result += subString(text, cursorPos, textSize - cursorPos);
                        if (maxChars == 0 || maxChars >= result.size()) {
                            text = result;
                            cursorPos += static_cast<int>(pasted.size());
                        }
                    } else {
                        result = subString(text, 0, realBegin);
                        result += pasted;
                        result += subString(text, realEnd, textSize - realEnd);
                        if (maxChars == 0 || maxChars >= result.size()) {
                            text = result;
                            cursorPos = realBegin + static_cast<int>(pasted.size());
                        }
                    }
                }
                markEnd = 0;
                markBegin = 0;
                textChanged = true;
                break;
            }
            case KEY_KEY_X: {
                if (passwordBox || osOperator == nullptr || markBegin == markEnd) {
                    break;
                }
                const int realBegin = std::min(markBegin, markEnd);
                const int realEnd = std::max(markBegin, markEnd);
                clipboardCopy(realBegin, realEnd);
                if (enabled) {
                    std::wstring result = subString(text, 0, realBegin);
                    result += subString(text, realEnd, textSize - realEnd);
                    text = result;
                    markEnd = 0;
                    markBegin = 0;
                    cursorPos = realBegin;
                    textChanged = true;
                }
                break;
            }
            default:
                return false;
        }
    } else {
        switch (key) {
            case KEY_BACK:
                if (!enabled || text.empty()) {
                    break;
                }
                {
                    std::wstring result;
                    if (markBegin == markEnd) {
                        result = cursorPos <= 0 ? std::wstring() : subString(text, 0, cursorPos - 1);
                        result += subString(text, cursorPos, textSize - cursorPos);
                        text = result;
                        --cursorPos;
                    } else {
                        const int realBegin = std::min(markBegin, markEnd);
                        const int realEnd = std::max(markBegin, markEnd);
                        result = subString(text, 0, realBegin);
                        result += subString(text, realEnd, textSize - realEnd);
                        text = result;
                        cursorPos = realBegin;
                    }
                    if (cursorPos < 0) {
                        cursorPos = 0;
                    }
                    blinkStartTime = os::Timer::getTime();
                    markEnd = 0;
                    markBegin = 0;
                    textChanged = true;
                }
                break;
            case KEY_DELETE:
                if (!enabled || text.empty()) {
                    break;
                }
                {
                    std::wstring result;
                    int newCursor;
                    if (markBegin == markEnd) {
                        result = subString(text, 0, cursorPos);
                        result += subString(text, cursorPos + 1, textSize - cursorPos - 1);
                        text = result;
                        newCursor = cursorPos;
                    } else {
                        const int realBegin = std::min(markBegin, markEnd);
                        const int realEnd = std::max(markBegin, markEnd);
                        result = subString(text, 0, realBegin);
                        result += subString(text, realEnd, textSize - realEnd);
                        text = result;
                        cursorPos = realBegin;
                        newCursor = realBegin;
                    }
                    if (newCursor > static_cast<int>(text.size())) {
                        cursorPos = static_cast<int>(text.size());
                    }
                    blinkStartTime = os::Timer::getTime();
                    markEnd = 0;
                    markBegin = 0;
                    textChanged = true;
                }
                break;
            case KEY_TAB:
            case KEY_SHIFT:
            case KEY_ESCAPE:
                return false;
            case KEY_RETURN:
                if (multiLine) {
                    inputChar(L'\n');
                } else if (parent != nullptr) {
                    SEvent entered;
                    entered.EventType = EET_GUI_EVENT;
                    entered.GUIEvent.Caller = this;
                    entered.GUIEvent.Element = nullptr;
                    entered.GUIEvent.EventType = EGET_EDITBOX_ENTER;
                    parent->onEvent(entered);
                }
                break;
            case KEY_END:
            case KEY_HOME: {
                int position;
                if (key == KEY_END) {
                    position = textSize;
                    if (wordWrap || multiLine) {
                        const int line = getLineFromPos(cursorPos);
                        position = brokenTextPositions[static_cast<std::size_t>(line)] +
                                   static_cast<int>(brokenText[static_cast<std::size_t>(line)].size());
                        if (position > 0 && (text[static_cast<std::size_t>(position - 1)] == L'\r' ||
                                             text[static_cast<std::size_t>(position - 1)] == L'\n')) {
                            position -= 1;
                        }
                    }
                } else {
                    position = 0;
                    if (wordWrap || multiLine) {
                        position = brokenTextPositions[static_cast<std::size_t>(getLineFromPos(cursorPos))];
                    }
                }
                if (shift) {
                    const bool wasEmpty = markBegin == markEnd;
                    markEnd = position;
                    if (wasEmpty) {
                        markBegin = cursorPos;
                    }
                } else {
                    markEnd = 0;
                    markBegin = 0;
                }
                cursorPos = position;
                blinkStartTime = os::Timer::getTime();
                break;
            }
            case KEY_LEFT:
                if (shift) {
                    if (cursorPos > 0) {
                        if (markBegin == markEnd) {
                            markBegin = cursorPos;
                        }
                        markEnd = cursorPos - 1;
                    }
                } else {
                    markEnd = 0;
                    markBegin = 0;
                }
                if (cursorPos > 0) {
                    --cursorPos;
                }
                blinkStartTime = os::Timer::getTime();
                break;
            case KEY_RIGHT:
                if (shift) {
                    if (cursorPos < textSize) {
                        if (markBegin == markEnd) {
                            markBegin = cursorPos;
                        }
                        markEnd = cursorPos + 1;
                    }
                } else {
                    markEnd = 0;
                    markBegin = 0;
                }
                if (cursorPos < textSize) {
                    ++cursorPos;
                }
                blinkStartTime = os::Timer::getTime();
                break;
            case KEY_UP:
            case KEY_DOWN: {
                if (!multiLine && (!wordWrap || brokenText.size() <= 1)) {
                    return false;
                }
                const int line = getLineFromPos(cursorPos);
                int anchor;
                if (markBegin == markEnd) {
                    anchor = cursorPos;
                } else if (key == KEY_UP) {
                    anchor = std::max(markBegin, markEnd);
                } else {
                    anchor = std::min(markBegin, markEnd);
                }
                if (key == KEY_UP) {
                    if (line > 0) {
                        const int previousSize = static_cast<int>(brokenText[static_cast<std::size_t>(line - 1)].size());
                        const int column = cursorPos - brokenTextPositions[static_cast<std::size_t>(line)];
                        const int previousStart = brokenTextPositions[static_cast<std::size_t>(line - 1)];
                        cursorPos = column <= previousSize ? previousStart + column : previousStart + previousSize - 1;
                    }
                } else if (line < static_cast<int>(brokenText.size()) - 1) {
                    const int nextSize = static_cast<int>(brokenText[static_cast<std::size_t>(line + 1)].size());
                    const int column = cursorPos - brokenTextPositions[static_cast<std::size_t>(line)];
                    const int nextStart = brokenTextPositions[static_cast<std::size_t>(line + 1)];
                    cursorPos = column <= nextSize ? nextStart + column : nextStart + nextSize - 1;
                }
                if (shift) {
                    markBegin = anchor;
                    markEnd = cursorPos;
                } else {
                    markEnd = 0;
                    markBegin = 0;
                }
                break;
            }
            default:
                // The function keys are ignored.
                if (key >= 0x70 && key <= 0x87) {
                    return false;
                }
                inputChar(static_cast<wchar_t>(event.KeyInput.Char));
                break;
        }
    }
    if (textChanged) {
        breakText();
    }
    calculateScrollPos();
    return true;
}

// 0x6b3d70 _ZN6glitch3gui11CGUIEditBox7onEventERKNS_6SEventE
bool CGUIEditBox::onEvent(const SEvent& event) {
    if (enabled) {
        if (event.EventType == EET_MOUSE_INPUT_EVENT) {
            if (processMouse(event)) {
                return true;
            }
        } else if (event.EventType == EET_KEY_INPUT_EVENT) {
            if (processKey(event)) {
                return true;
            }
        } else if (event.EventType == EET_GUI_EVENT && event.GUIEvent.EventType == EGET_ELEMENT_FOCUS_LOST && event.GUIEvent.Caller == this) {
            markEnd = 0;
            mouseMarking = false;
            markBegin = 0;
        }
    }
    return parent != nullptr ? parent->onEvent(event) : false;
}

// 0x6b18e0 _ZN6glitch3gui11CGUIEditBox4drawEv
void CGUIEditBox::draw() {
    if (!visible) {
        return;
    }
    const bool focus = environment->hasFocus(this);  // K 0x1c
    IGUISkin* skin = environment->getSkin();         // K 0x38
    if (skin == nullptr) {
        return;
    }
    frameRect = absoluteRect;
    if (border) {
        skin->draw3DSunkenPane(this, skin->getColor(EGDC_WINDOW), false, true, frameRect, &absoluteClippingRect);  // K 0x48
        frameRect.UpperLeftCorner.X += skin->getSize(EGDS_TEXT_DISTANCE_X) + 1;
        frameRect.UpperLeftCorner.Y += skin->getSize(EGDS_TEXT_DISTANCE_Y) + 1;
        frameRect.LowerRightCorner.X -= skin->getSize(EGDS_TEXT_DISTANCE_X) + 1;
        frameRect.LowerRightCorner.Y -= skin->getSize(EGDS_TEXT_DISTANCE_Y) + 1;
    }
    core::rect<int> localClipRect = frameRect;
    detail::rectClipAgainst(localClipRect, absoluteClippingRect);

    IGUIFont* font = overrideFont != nullptr ? overrideFont : skin->getFont(EGDF_DEFAULT);
    if (font != nullptr) {
        if (lastBreakFont != font) {
            breakText();
        }
        const std::wstring* textLine = &text;
        int startPos = 0;
        const bool ml = !passwordBox && (wordWrap || multiLine);
        const int realBegin = std::min(markBegin, markEnd);
        const int realEnd = std::max(markBegin, markEnd);
        const int highlightStart = ml ? getLineFromPos(realBegin) : 0;
        const int highlightCount = ml ? getLineFromPos(realEnd) - highlightStart + 1 : 1;
        const int lineCount = ml ? static_cast<int>(brokenText.size()) : 1;
        const bool previousOverrideEnabled = overrideColorEnabled;
        const video::SColor previousOverrideColor = overrideColor;
        auto textColor = [&](EGUI_DEFAULT_COLOR fallback) { return overrideColorEnabled ? overrideColor : skin->getColor(fallback); };

        if (!text.empty()) {
            if (!enabled && !overrideColorEnabled) {
                overrideColorEnabled = true;
                overrideColor = skin->getColor(EGDC_GRAY_TEXT);
            }
            for (int i = 0; i < lineCount; ++i) {
                setTextRect(i);
                if (passwordBox) {
                    if (brokenText.size() != 1) {
                        brokenText.clear();
                        brokenText.push_back(std::wstring());
                    }
                    if (brokenText[0].size() != text.size()) {
                        brokenText[0] = text;
                        for (wchar_t& character : brokenText[0]) {
                            character = passwordChar;
                        }
                    }
                    textLine = &brokenText[0];
                    startPos = 0;
                } else if (ml) {
                    textLine = &brokenText[static_cast<std::size_t>(i)];
                    startPos = brokenTextPositions[static_cast<std::size_t>(i)];
                } else {
                    textLine = &text;
                    startPos = 0;
                }
                font->draw(textLine->c_str(), currentTextRect, textColor(EGDC_BUTTON_TEXT), false, true, &localClipRect);  // K 0x0c

                if (focus && markBegin != markEnd && i >= highlightStart && i < highlightStart + highlightCount) {
                    int markStartX = 0;
                    int markEndX;
                    int lineStartPos = 0;
                    int lineEndPos = static_cast<int>(textLine->size());
                    if (i == highlightStart) {
                        const std::wstring head = subString(*textLine, 0, realBegin - startPos);
                        markStartX = font->getDimension(head.c_str()).Width;
                        lineStartPos = realBegin - startPos;
                    }
                    if (i == highlightStart + highlightCount - 1) {
                        const std::wstring tail = subString(*textLine, 0, realEnd - startPos);
                        markEndX = font->getDimension(tail.c_str()).Width;
                        lineEndPos = static_cast<int>(tail.size());
                    } else {
                        markEndX = font->getDimension(textLine->c_str()).Width;
                    }
                    const int left = currentTextRect.UpperLeftCorner.X;
                    currentTextRect.UpperLeftCorner.X = left + markStartX;
                    currentTextRect.LowerRightCorner.X = left + markEndX;
                    skin->draw2DRectangle(this, skin->getColor(EGDC_HIGH_LIGHT), currentTextRect, &localClipRect);  // K 0x64
                    const std::wstring marked = subString(*textLine, lineStartPos, lineEndPos - lineStartPos);
                    if (!marked.empty()) {
                        font->draw(marked.c_str(), currentTextRect, textColor(EGDC_HIGH_LIGHT_TEXT), false, true, &localClipRect);
                    }
                }
            }
            overrideColorEnabled = previousOverrideEnabled;
            overrideColor = previousOverrideColor;
        }

        int cursorLine = 0;
        if (wordWrap || multiLine) {
            cursorLine = getLineFromPos(cursorPos);
            textLine = &brokenText[static_cast<std::size_t>(cursorLine)];
            startPos = brokenTextPositions[static_cast<std::size_t>(cursorLine)];
        }
        const std::wstring beforeCursor = subString(*textLine, 0, cursorPos - startPos);
        const int cursorX = font->getDimension(beforeCursor.c_str()).Width;
        if (focus && (os::Timer::getTime() - blinkStartTime) % 700 <= 349) {
            setTextRect(cursorLine);
            currentTextRect.UpperLeftCorner.X += cursorX;
            font->draw(L"_", currentTextRect, overrideColorEnabled ? overrideColor : skin->getColor(EGDC_BUTTON_TEXT), false, true, &localClipRect);
        }
    }
    IGUIElement::draw();
}

// 0x6b0d9c _ZNK6glitch3gui11CGUIEditBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// (The element attributes are written last.)
void CGUIEditBox::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    attributes->addBool("OverrideColorEnabled", overrideColorEnabled, false);  // K 0xd8
    attributes->addColor("OverrideColor", overrideColor, false);               // K 0x118
    attributes->addInt("MaxChars", static_cast<int>(maxChars), false);         // K 0x4c
    attributes->addBool("WordWrap", wordWrap, false);
    attributes->addBool("MultiLine", multiLine, false);
    attributes->addBool("AutoScroll", autoScroll, false);
    attributes->addBool("PasswordBox", passwordBox, false);
    const wchar_t passwordText[2] = {passwordChar, 0};
    attributes->addString("PasswordChar", passwordText, false);                // K 0x94
    attributes->addEnum("HTextAlign", static_cast<int>(hAlign), GUIAlignmentNames, false);  // K 0xf4
    attributes->addEnum("VTextAlign", static_cast<int>(vAlign), GUIAlignmentNames, false);
    IGUIElement::serializeAttributes(attributes, options);
}

// 0x6b08ac _ZN6glitch3gui11CGUIEditBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIEditBox::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    setOverrideColor(attributes->getColor("OverrideColor"));                       // K 0x80
    enableOverrideColor(attributes->getBool("OverrideColorEnabled"));              // K 0x84
    setMax(static_cast<std::uint32_t>(attributes->getInt("MaxChars")));            // K 0xb4
    setWordWrap(attributes->getBool("WordWrap"));                                  // K 0x90
    setMultiLine(attributes->getBool("MultiLine"));                                // K 0x98
    setAutoScroll(attributes->getBool("AutoScroll"));                              // K 0xa0
    const std::wstring character = attributes->getStringW("PasswordChar");
    setPasswordBox(attributes->getBool("PasswordBox"), character.empty() ? L'*' : character[0]);  // K 0xa8
    const int horizontal = attributes->getEnum("HTextAlign", GUIAlignmentNames);   // K 0x100
    const int vertical = attributes->getEnum("VTextAlign", GUIAlignmentNames);
    setTextAlignment(static_cast<EGUI_ALIGNMENT>(horizontal), static_cast<EGUI_ALIGNMENT>(vertical));  // K 0x8c
}

}  // namespace glitch::gui
