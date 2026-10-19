// Bodies of glitch::gui::IGUIFont, IGUIFontBitmap and CGUIFont (canonical classes: gui/IGUIFont.hpp, gui/CGUIFont.hpp). This file replaces the
// font bodies of gui_elements.cpp, gui_simple_accessors.cpp and recon/slice_*.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIFont.hpp"

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

// 0x53dbcc _ZNK6glitch3gui8IGUIFont7getTypeEv
EGUI_FONT_TYPE IGUIFont::getType() const {
    return EGFT_CUSTOM;
}

// 0x53dc20 _ZN6glitch3gui8IGUIFontD1Ev (D0 0x53eb20 skipped)
IGUIFont::~IGUIFont() = default;

// 0x53dbd4 _ZNK6glitch3gui14IGUIFontBitmap7getTypeEv
EGUI_FONT_TYPE IGUIFontBitmap::getType() const {
    return EGFT_BITMAP;
}

// 0x53dc24 _ZN6glitch3gui14IGUIFontBitmapD1Ev (D0 0x53eb0c skipped)
IGUIFontBitmap::~IGUIFontBitmap() = default;

// 0x53dc28 _ZN6glitch3gui8CGUIFontC1EPNS0_14IGUIEnvironmentEPKc (C2 0x53dd04)
CGUIFont::CGUIFont(IGUIEnvironment* env, const char* filename) : environment(env) {
    if (env != nullptr) {
        driver = boost::intrusive_ptr<video::IVideoDriver>(env->getVideoDriver(), true);       // K 0x20
        spriteBank = boost::intrusive_ptr<IGUISpriteBank>(env->addEmptySpriteBank(filename), true);  // K 0x70
    }
}

// 0x53e988 _ZN6glitch3gui8CGUIFontD1Ev (D2 0x53ea1c, D0 0x53eaf0 skipped)
// The driver and the sprite bank are released, then the character map and the area list.
CGUIFont::~CGUIFont() = default;

// 0x53dde0 _ZN6glitch3gui8CGUIFont12setMaxHeightEv
void CGUIFont::setMaxHeight() {
    maxHeight = 0;
    const std::vector<core::rect<int>>& rectangles = spriteBank->getPositions();  // K 0x0c
    for (const core::rect<int>& rectangle : rectangles) {
        const int height = rectangle.LowerRightCorner.Y - rectangle.UpperLeftCorner.Y;
        if (maxHeight < height) {
            maxHeight = height;
        }
    }
}

// 0x53de64 _ZNK6glitch3gui8CGUIFont17getAreaFromCharacterEw
int CGUIFont::getAreaFromCharacter(wchar_t character) const {
    const auto found = characterMap.find(character);
    if (found == characterMap.end()) {
        return static_cast<int>(wrongCharacter);
    }
    return found->second;
}

// 0x53dee4 _ZNK6glitch3gui8CGUIFont19getSpriteNoFromCharEPKw
std::uint32_t CGUIFont::getSpriteNoFromChar(const wchar_t* character) const {
    return areas[getAreaFromCharacter(*character)].spriteno;
}

// 0x53df04 _ZNK6glitch3gui8CGUIFont15getKerningWidthEPKwS3_
int CGUIFont::getKerningWidth(const wchar_t* thisLetter, const wchar_t* previousLetter) const {
    int kerning = globalKerningWidth;
    if (thisLetter != nullptr) {
        kerning += areas[getAreaFromCharacter(*thisLetter)].overhang;
        if (previousLetter != nullptr) {
            kerning += areas[getAreaFromCharacter(*previousLetter)].underhang;
        }
    }
    return kerning;
}

// 0x53de5c _ZNK6glitch3gui8CGUIFont16getKerningHeightEv
int CGUIFont::getKerningHeight() const {
    return globalKerningHeight;
}

// 0x53de4c _ZN6glitch3gui8CGUIFont15setKerningWidthEi
void CGUIFont::setKerningWidth(int kerning) {
    globalKerningWidth = kerning;
}

// 0x53de54 _ZN6glitch3gui8CGUIFont16setKerningHeightEi
void CGUIFont::setKerningHeight(int kerning) {
    globalKerningHeight = kerning;
}

// 0x53dbf0 _ZN6glitch3gui8CGUIFont9setBorderEjNS_5video6SColorE (empty)
void CGUIFont::setBorder(std::uint32_t, video::SColor) {}

// 0x53dc14 _ZN6glitch3gui8CGUIFont11setTrackingEi (empty)
void CGUIFont::setTracking(int) {}

// 0x53dc18 _ZNK6glitch3gui8CGUIFont11getTrackingEv
int CGUIFont::getTracking() const {
    return 0;
}

// 0x53dc0c _ZNK6glitch3gui8CGUIFont7getTypeEv
EGUI_FONT_TYPE CGUIFont::getType() const {
    return EGFT_BITMAP;
}

// 0x53e26c _ZNK6glitch3gui8CGUIFont13getSpriteBankEv
IGUISpriteBank* CGUIFont::getSpriteBank() const {
    return spriteBank.get();
}

// 0x53dbdc _ZN6glitch3gui8CGUIFont4drawEPKcRKNS_4core4rectIiEENS_5video6SColorEbbPS6_ (empty)
void CGUIFont::draw(const char*, const core::rect<int>&, video::SColor, bool, bool, const core::rect<int>*) {}

// 0x53dbe8 and 0x53dbec _ZN6glitch3gui8CGUIFont13drawInTextureE... (empty)
void CGUIFont::drawInTexture(const wchar_t*, const boost::intrusive_ptr<video::ITexture>&, core::rect<int>, video::SColor, bool, bool) {}
void CGUIFont::drawInTexture(const char*, const boost::intrusive_ptr<video::ITexture>&, core::rect<int>, video::SColor, bool, bool) {}

// 0x53dbfc _ZNK6glitch3gui8CGUIFont12getDimensionEPKc
core::dimension2d<int> CGUIFont::getDimension(const char*) const {
    return core::dimension2d<int>{0, 0};
}

// 0x53df5c _ZNK6glitch3gui8CGUIFont12getDimensionEPKw
core::dimension2d<int> CGUIFont::getDimension(const wchar_t* text) const {
    core::dimension2d<int> dimension{0, 0};
    int lineWidth = 0;
    const int lineHeight = maxHeight;
    for (const wchar_t* p = text; *p != 0; ++p) {
        bool lineBreak = false;
        if (*p == L'\r') {
            lineBreak = true;
            if (p[1] == L'\n') {
                ++p;
            }
        } else if (*p == L'\n') {
            lineBreak = true;
        }
        if (lineBreak) {
            dimension.Height += lineHeight;
            if (lineWidth > dimension.Width) {
                dimension.Width = lineWidth;
            }
            lineWidth = 0;
            continue;
        }
        const SFontArea& area = areas[getAreaFromCharacter(*p)];
        lineWidth += area.underhang;
        lineWidth += area.width + area.overhang + globalKerningWidth;
    }
    dimension.Height += lineHeight;
    if (lineWidth > dimension.Width) {
        dimension.Width = lineWidth;
    }
    return dimension;
}

// 0x53e038 _ZN6glitch3gui8CGUIFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS6_
void CGUIFont::draw(const wchar_t* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
                    const core::rect<int>* clip) {
    if (!driver) {
        return;
    }
    core::position2d<int> offset = position.UpperLeftCorner;
    core::dimension2d<int> textDimension{0, 0};
    if (hcenter || vcenter || clip != nullptr) {
        textDimension = getDimension(text);  // K 0x1c
    }
    if (hcenter) {
        offset.X += (position.LowerRightCorner.X - position.UpperLeftCorner.X - textDimension.Width) >> 1;
    }
    if (vcenter) {
        offset.Y += (position.LowerRightCorner.Y - position.UpperLeftCorner.Y - textDimension.Height) >> 1;
    }
    if (clip != nullptr) {
        // The rectangle of the text clipped against the clip rectangle (and repaired when the clipping inverts it): it is valid whenever the
        // arithmetic below is, so the draw is never skipped (the original evaluates the same chain on the vertical extent).
        core::rect<int> clipped;
        clipped.UpperLeftCorner = offset;
        clipped.LowerRightCorner = {offset.X + textDimension.Width, offset.Y + textDimension.Height};
        if (clip->LowerRightCorner.X < clipped.LowerRightCorner.X) {
            clipped.LowerRightCorner.X = clip->LowerRightCorner.X;
        }
        if (clip->LowerRightCorner.Y < clipped.LowerRightCorner.Y) {
            clipped.LowerRightCorner.Y = clip->LowerRightCorner.Y;
        }
        if (clip->UpperLeftCorner.X > clipped.UpperLeftCorner.X) {
            clipped.UpperLeftCorner.X = clip->UpperLeftCorner.X;
        }
        if (clip->UpperLeftCorner.Y > clipped.UpperLeftCorner.Y) {
            clipped.UpperLeftCorner.Y = clip->UpperLeftCorner.Y;
        }
        if (clipped.UpperLeftCorner.Y > clipped.LowerRightCorner.Y) {
            clipped.UpperLeftCorner.Y = clipped.LowerRightCorner.Y;
        }
        if (clipped.UpperLeftCorner.X > clipped.LowerRightCorner.X) {
            clipped.UpperLeftCorner.X = clipped.LowerRightCorner.X;
        }
        if (clipped.LowerRightCorner.X < clipped.UpperLeftCorner.X || clipped.LowerRightCorner.Y < clipped.UpperLeftCorner.Y) {
            return;
        }
    }
    for (; *text != 0; ++text) {
        const SFontArea& area = areas[getAreaFromCharacter(*text)];
        offset.X += area.underhang;
        spriteBank->draw2DSprite(area.spriteno, offset, clip, color, 0, 0, true, false);  // K 0x24
        offset.X += area.width + area.overhang + globalKerningWidth;
    }
}

// 0x53e1f0 _ZNK6glitch3gui8CGUIFont20getCharacterFromPosEPKwi
// The kerning is not added here (the original sums overhang, width and underhang only).
int CGUIFont::getCharacterFromPos(const wchar_t* text, int pixelX) const {
    int x = 0;
    for (int index = 0; text[index] != 0; ++index) {
        const SFontArea& area = areas[getAreaFromCharacter(text[index])];
        x += area.overhang + area.width + area.underhang;
        if (x >= pixelX) {
            return index;
        }
    }
    return -1;
}

namespace {

// The glyph rectangle, sprite, area and character-map entry the marker scan adds for the glyph whose bottom-right marker was found at (x, y).
// Returns false (and sets the count to zero) when there are more bottom-right markers than top-left ones.
bool addGlyph(CGUIFont& font, int x, int y, int& lowerRightPositions) {
    std::vector<core::rect<int>>& positions = font.spriteBank->getPositions();
    if (static_cast<std::uint32_t>(lowerRightPositions) >= positions.size()) {
        lowerRightPositions = 0;
        return false;
    }
    core::rect<int>& rectangle = positions[lowerRightPositions];
    rectangle.LowerRightCorner.X = x;
    rectangle.LowerRightCorner.Y = y;
    SGUISprite sprite;
    sprite.Frames.push_back(SGUISpriteFrame{0, static_cast<std::uint32_t>(lowerRightPositions)});
    font.spriteBank->getSprites().push_back(sprite);
    CGUIFont::SFontArea area;
    area.underhang = 0;
    area.overhang = 0;
    area.width = rectangle.LowerRightCorner.X - rectangle.UpperLeftCorner.X;
    area.spriteno = static_cast<std::uint32_t>(lowerRightPositions);
    font.areas.push_back(area);
    font.characterMap[static_cast<wchar_t>(lowerRightPositions + 32)] = lowerRightPositions;
    ++lowerRightPositions;
    return true;
}

}  // namespace

// 0x53ef08 _ZN6glitch3gui8CGUIFont17readPositions16bitERKN5boost13intrusive_ptrINS_5video6CImageEEERi
// The first three pixels hold the top-left marker, the bottom-right marker and the background colour; the first is stored back with its alpha
// bit set and the second replaced by the background. Every marker pixel found is cleared to transparent: a top-left marker starts a rectangle,
// a bottom-right marker ends the next unfinished one (and makes the glyph), a background pixel is cleared.
void CGUIFont::readPositions16bit(const boost::intrusive_ptr<video::CImage>& image, int& lowerRightPositions) {
    std::uint16_t* pixels = reinterpret_cast<std::uint16_t*>(image->m_data);
    if (pixels == nullptr) {
        os::Printer::log("Could not lock texture while preparing texture for a font.", os::ELL_ERROR);
        return;
    }
    const int height = static_cast<int>(image->m_height);
    const int width = static_cast<int>(image->m_width);
    const std::int16_t background = static_cast<std::int16_t>(pixels[2]);
    const std::int16_t topLeft = static_cast<std::int16_t>(pixels[0] | 1);
    const std::int16_t lowerRight = static_cast<std::int16_t>(pixels[1]);
    pixels[0] = static_cast<std::uint16_t>(topLeft);
    pixels[1] = static_cast<std::uint16_t>(background);
    std::vector<core::rect<int>>& positions = spriteBank->getPositions();
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            std::uint16_t& pixel = pixels[y * width + x];
            const std::int16_t value = static_cast<std::int16_t>(pixel);
            if (value == topLeft) {
                pixel = 0;
                core::rect<int> rectangle;
                rectangle.UpperLeftCorner = {x, y};
                rectangle.LowerRightCorner = {x, y};
                positions.push_back(rectangle);
            } else if (value == lowerRight) {
                if (!addGlyph(*this, x, y, lowerRightPositions)) {
                    return;
                }
                pixel = 0;
            } else if (value == background) {
                pixel = 0;
            }
        }
    }
}

// 0x53f354 _ZN6glitch3gui8CGUIFont17readPositions32bitERKN5boost13intrusive_ptrINS_5video6CImageEEERi
// As the 16-bit scan, for 32-bit pixels; only the second pixel is replaced by the background colour.
void CGUIFont::readPositions32bit(const boost::intrusive_ptr<video::CImage>& image, int& lowerRightPositions) {
    std::uint32_t* pixels = reinterpret_cast<std::uint32_t*>(image->m_data);
    if (pixels == nullptr) {
        os::Printer::log("Could not lock texture while preparing texture for a font.", os::ELL_ERROR);
        return;
    }
    const int height = static_cast<int>(image->m_height);
    const int width = static_cast<int>(image->m_width);
    const std::uint32_t topLeft = pixels[0];
    const std::uint32_t lowerRight = pixels[1];
    const std::uint32_t background = pixels[2];
    pixels[1] = background;
    std::vector<core::rect<int>>& positions = spriteBank->getPositions();
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            std::uint32_t& pixel = pixels[y * width + x];
            const std::uint32_t value = pixel;
            if (value == topLeft) {
                pixel = 0;
                core::rect<int> rectangle;
                rectangle.UpperLeftCorner = {x, y};
                rectangle.LowerRightCorner = {x, y};
                positions.push_back(rectangle);
            } else if (value == lowerRight) {
                if (!addGlyph(*this, x, y, lowerRightPositions)) {
                    return;
                }
                pixel = 0;
            } else if (value == background) {
                pixel = 0;
            }
        }
    }
}

namespace {

// The texture states the font textures get: nearest filtering (the minification bits 12..14 and the magnification bits 15..17 are cleared and
// marked dirty).
void useNearestFiltering(const boost::intrusive_ptr<video::ITexture>& texture) {
    if (!texture) {
        return;
    }
    if ((texture->m_flags38 & 0x7000u) != 0) {
        texture->m_flags38 &= 0xFFFF8FFFu;
        texture->m_dirtyFlags40 |= video::ITexture::kDirtyMinFilter;
    }
    if ((texture->m_flags38 & 0x38000u) != 0) {
        texture->m_flags38 &= 0xFFFC7FFFu;
        texture->m_dirtyFlags40 |= video::ITexture::kDirtyMagFilter;
    }
}

}  // namespace

// 0x53f7c0 _ZN6glitch3gui8CGUIFont11loadTextureERKN5boost13intrusive_ptrINS_5video6CImageEEEPKc
// Verified against Hex-Rays 0x53f7c0: null image -> false; work = image; switch on the image format - 5 and 8 are converted
// with CImage(9, image) (0x601d38, reconstructed in glitch-video/src/image.cpp), 10 with CImage(12, image), then
// readPositions16bit (9 and the converted 5/8) or readPositions32bit (10 and 12/13/14), and wrongCharacter (+0x38 in the
// original) is getAreaFromCharacter(L' '); an unknown format logs and returns false. The marker/upper-corner check logs the
// two messages; an empty sprite bank or no lower-right positions sets the result false but still calls setMaxHeight() (the
// listing runs it in both arms), which the body now does. Otherwise the driver's mipmap option (+0x88 bit 0x10) is turned
// off, CTextureManager::addTexture(textureManager = driver+0xe0, name, image, 1, 0) is called, the option is restored, the
// minification (0x7000) and magnification (0x38000) filter bits are cleared with the dirty flags 4 and 8 set, the sprite
// bank takes the texture (vtable +0x1c) and setMaxHeight() runs. The earlier partial note (CImage conversion ctor declared
// but not reconstructed) is STALE; that ctor is reconstructed now, and the early-return arm now calls setMaxHeight() as
// the listing does.
bool CGUIFont::loadTexture(const boost::intrusive_ptr<video::CImage>& image, const char* name) {
    if (!image) {
        return false;
    }
    int lowerRightPositions = 0;
    boost::intrusive_ptr<video::CImage> work = image;
    switch (image->m_format) {
        case 5:
        case 8:
            work = boost::intrusive_ptr<video::CImage>(new video::CImage(9, image), true);
            readPositions16bit(work, lowerRightPositions);
            wrongCharacter = static_cast<std::uint32_t>(getAreaFromCharacter(L' '));
            break;
        case 9:
            readPositions16bit(work, lowerRightPositions);
            wrongCharacter = static_cast<std::uint32_t>(getAreaFromCharacter(L' '));
            break;
        case 10:
            work = boost::intrusive_ptr<video::CImage>(new video::CImage(12, image), true);
            readPositions32bit(work, lowerRightPositions);
            wrongCharacter = static_cast<std::uint32_t>(getAreaFromCharacter(L' '));
            break;
        case 12:
        case 13:
        case 14:
            readPositions32bit(work, lowerRightPositions);
            wrongCharacter = static_cast<std::uint32_t>(getAreaFromCharacter(L' '));
            break;
        default:
            os::Printer::log("CGUIFont::loadTexture : unsupported image type", os::ELL_ERROR);
            return false;
    }
    if (lowerRightPositions != 0 && !spriteBank->getSprites().empty()) {
        if (static_cast<std::size_t>(lowerRightPositions) != spriteBank->getPositions().size()) {
            os::Printer::log("The amount of upper corner pixels and the lower corner pixels is not equal, font file may be corrupted.",
                             os::ELL_ERROR);
        }
    } else {
        os::Printer::log("Either no upper or lower corner pixels in the font file. If this font was made using the newly font tool, please "
                         "load the XML file instead. If not, the font may be corrupted.",
                         os::ELL_ERROR);
    }
    if (spriteBank->getSprites().empty() || lowerRightPositions == 0) {
        // The listing runs setMaxHeight() in both arms of this test (the false arm is v7 = 0 followed by the
        // call), so it is called here too before returning false.
        setMaxHeight();
        return false;
    }
    const bool mipmapsWereOn = (driver->m_options & 0x10u) != 0;
    driver->setOption(16, false);
    boost::intrusive_ptr<video::ITexture> texture = driver->m_textureManager->addTexture(name, work, true, 0);
    if (mipmapsWereOn) {
        driver->setOption(16, true);
    }
    useNearestFiltering(texture);
    spriteBank->addTexture(texture);  // K 0x1c
    setMaxHeight();
    return true;
}

// 0x53fafc _ZN6glitch3gui8CGUIFont4loadEPKc
bool CGUIFont::load(const char* filename) {
    if (!driver) {
        return false;
    }
    boost::intrusive_ptr<video::CImage> image = driver->m_textureManager->createImageFromFile(filename);
    return loadTexture(image, filename);
}

// 0x53fb60 _ZN6glitch3gui8CGUIFont4loadEPNS_2io9IReadFileE
bool CGUIFont::load(io::IReadFile* file) {
    if (!driver) {
        return false;
    }
    boost::intrusive_ptr<video::CImage> image = driver->m_textureManager->createImageFromFile(file);
    return loadTexture(image, file->getFileName());  // file K 0x28
}

namespace {

// The next integer of "x1,y1,x2,y2": the digits at the cursor (zero when there are none), then the separators (spaces and commas) skipped.
int parseNumber(const char*& cursor) {
    int value = 0;
    while (*cursor >= '0' && *cursor <= '9') {
        value = value * 10 + (*cursor - '0');
        ++cursor;
    }
    while (*cursor == ' ' || *cursor == ',') {
        ++cursor;
    }
    return value;
}

}  // namespace

// 0x53fbd4 _ZN6glitch3gui8CGUIFont4loadEPNS_2io10IIrrXMLReaderIwNS_17IReferenceCountedEEE
// A <T f="file" i="index" h="hasAlpha"> element loads texture `index` of the sprite bank (without mipmaps, nearest filtering, a colour key
// from the top-left pixel when h is "false"); a <c c="char" u="underhang" o="overhang" i="texture" r="x1,y1,x2,y2"> element adds a glyph.
bool CGUIFont::load(io::IIrrXMLReader<wchar_t, IReferenceCounted>* xml) {
    if (!spriteBank) {
        return false;
    }
    while (xml->read()) {  // K 0x0c
        if (xml->getNodeType() != 1) {  // K 0x14, EXN_ELEMENT
            continue;
        }
        const std::wstring nodeName(xml->getNodeName());  // K 0x3c
        if (nodeName == L"T") {
            const std::string fileName = core::stringw2stringc(xml->getAttributeValue(L"f"));   // K 0x24
            const int index = xml->getAttributeValueAsInt(L"i");                                // K 0x2c
            const std::wstring hasAlpha(xml->getAttributeValue(L"h"));
            while (static_cast<int>(spriteBank->getTextureCount()) < index + 1) {
                spriteBank->addTexture(boost::intrusive_ptr<video::ITexture>());
            }
            const std::uint32_t savedOptions = driver->m_options;
            driver->setOption(16, false);
            boost::intrusive_ptr<video::ITexture> texture = driver->m_textureManager->getTexture(fileName.c_str(), nullptr);
            useNearestFiltering(texture);
            spriteBank->setTexture(static_cast<std::uint32_t>(index), texture);  // K 0x20
            driver->setOption(16, ((savedOptions >> 4) & 1u) != 0);
            if (!spriteBank->getTexture(static_cast<std::uint32_t>(index))) {  // K 0x18
                os::Printer::log("Unable to load all textures in the font, aborting", os::ELL_ERROR);
                return false;
            }
            if (hasAlpha == L"false") {
                driver->m_textureManager->makeColorKeyTexture(spriteBank->getTexture(static_cast<std::uint32_t>(index)),
                                                              core::position2d<int>{0, 0});
            }
        } else if (nodeName == L"c") {
            SFontArea area;
            area.underhang = xml->getAttributeValueAsInt(L"u");
            area.overhang = xml->getAttributeValueAsInt(L"o");
            area.spriteno = static_cast<std::uint32_t>(spriteBank->getPositions().size());
            const int textureNumber = xml->getAttributeValueAsInt(L"i");
            const std::string rectangleText = core::stringw2stringc(xml->getAttributeValue(L"r"));
            const wchar_t character = *xml->getAttributeValue(L"c");
            const char* cursor = rectangleText.c_str();
            core::rect<int> rectangle;
            rectangle.UpperLeftCorner.X = parseNumber(cursor);
            rectangle.UpperLeftCorner.Y = parseNumber(cursor);
            rectangle.LowerRightCorner.X = parseNumber(cursor);
            rectangle.LowerRightCorner.Y = parseNumber(cursor);
            characterMap.insert(std::make_pair(character, static_cast<int>(areas.size())));
            SGUISprite sprite;
            sprite.Frames.push_back(SGUISpriteFrame{static_cast<std::uint32_t>(textureNumber),
                                                    static_cast<std::uint32_t>(spriteBank->getPositions().size())});
            sprite.frameTime = 0;
            spriteBank->getPositions().push_back(rectangle);
            area.width = rectangle.LowerRightCorner.X - rectangle.UpperLeftCorner.X;
            spriteBank->getSprites().push_back(sprite);
            areas.push_back(area);
        }
    }
    wrongCharacter = static_cast<std::uint32_t>(getAreaFromCharacter(L' '));
    setMaxHeight();
    return true;
}

}  // namespace glitch::gui
