// Bodies of glitch::gui::IGUITTFont, CGUITTFont, CGUITTFace, CGUITTLibrary and CGUITTGlyph (canonical classes: gui/CGUITTFont.hpp). This file
// replaces their bodies in gui_simple_accessors.cpp and recon/slice_04.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUITTFont.hpp"

#include <cstdio>
#include <cstring>
#include <string>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

CGUITTLibrary* CGUITTFace::library = nullptr;

namespace {

// The smallest power of two that is > `value` (the glyph texture sizes of the anti-aliased glyph) ...
std::uint32_t powerOfTwoAbove(std::uint32_t value) {
    std::uint32_t result = 1;
    if (value != 0) {
        do {
            result *= 2;
        } while (value >= result);
    }
    return result;
}

// ... and the smallest power of two >= `value` (the monochrome glyph).
std::uint32_t powerOfTwoAtLeast(std::uint32_t value) {
    std::uint32_t result = 1;
    while (result < value) {
        result *= 2;
    }
    return result;
}


// The render target scope of the drawInTexture functions: a render target over the texture is pushed, the 2D scene begins (a driver without
// the capability bit 0x800 clears the buffers and draws the texture itself first); the end of the scope ends the scene and pops the target.
class RenderToTexture {
public:
    RenderToTexture(video::IVideoDriver* driverValue, const boost::intrusive_ptr<video::ITexture>& texture) : driver(driverValue) {
        target = driver->createRenderTarget(texture, 0);  // +0x84
        driver->pushRenderTarget(target);                 // +0x8c
        driver->beginScene2D();                           // +0x14
        if ((driver->m_capabilities & 0x800u) == 0) {
            driver->clearBuffers(1);  // +0xa8
            core::position2d<int> origin;
            origin.X = 0;
            origin.Y = 0;
            video::C2DDriver::draw2DImage(driver, texture, origin);
        }
    }
    ~RenderToTexture() {
        driver->endScene2D();                    // +0x18
        previous = driver->popRenderTarget();    // +0x90
    }

private:
    video::IVideoDriver* driver;
    boost::intrusive_ptr<video::IRenderTarget> target;
    boost::intrusive_ptr<video::IRenderTarget> previous;
};

}  // namespace

// 0x55c518 _ZN6glitch3gui13CGUITTLibraryC1Ev (C2 0x55c69c)
CGUITTLibrary::CGUITTLibrary() {
    referenceCounter = 0;
    const ft::Error error = ft::FT_Init_FreeType(&library);
    loaded = error == 0;
}

// 0x55c48c _ZN6glitch3gui13CGUITTLibraryD1Ev (0x55c4c4 and 0x55c4e0 are the other forms)
CGUITTLibrary::~CGUITTLibrary() {
    ft::FT_Done_FreeType(library);
}

// 0x55c564 _ZN6glitch3gui10CGUITTFaceC1Ev (C2 0x55c600)
CGUITTFace::CGUITTFace() {
    if (library != nullptr) {
        ++library->referenceCounter;
    } else {
        library = new CGUITTLibrary();
        ++library->referenceCounter;
        if (!library->loaded) {
            library->drop();
            library = nullptr;
        }
    }
}

// 0x55c2f8 _ZN6glitch3gui10CGUITTFaceD1Ev (0x55c354 and 0x55c370 are the other forms)
CGUITTFace::~CGUITTFace() {
    ft::FT_Done_Face(face);
    face = nullptr;
    if (library->drop()) {
        library = nullptr;
    }
}

// 0x55c3cc _ZN6glitch3gui10CGUITTFace4loadEPNS_2io9IReadFileE
bool CGUITTFace::load(io::IReadFile* file) {
    const void* buffer = file->getBuffer(nullptr);  // +0x30
    const long size = file->getSize();               // +0x20
    return ft::FT_New_Memory_Face(library->library, static_cast<const ft::Byte*>(buffer), size, 0, &face) == 0;
}

// 0x55c450 _ZN6glitch3gui10CGUITTFace4loadEPKc
bool CGUITTFace::load(const char* filename) {
    return ft::FT_New_Face(library->library, filename, 0, &face) == 0;
}

// 0x55ba34 _ZN6glitch3gui11CGUITTGlyphC1Ev (C2 0x55bab0)
CGUITTGlyph::CGUITTGlyph() = default;

CGUITTGlyph::CGUITTGlyph(const CGUITTGlyph& other) : IReferenceCounted(other) {
    *this = other;
}

// 0x55c6e8 _ZN6glitch3gui11CGUITTGlyphD1Ev (0x55c738 and 0x55c754 are the other forms)
CGUITTGlyph::~CGUITTGlyph() = default;

// 0x55c7ec _ZN6glitch3gui11CGUITTGlyphaSERKS1_
CGUITTGlyph& CGUITTGlyph::operator=(const CGUITTGlyph& other) {
    referenceCounter = other.referenceCounter;
    cached = other.cached;
    size = other.size;
    top = other.top;
    left = other.left;
    imgWidth = other.imgWidth;
    imgHeight = other.imgHeight;
    texWidth = other.texWidth;
    texHeight = other.texHeight;
    top16 = other.top16;
    left16 = other.left16;
    imgWidth16 = other.imgWidth16;
    imgHeight16 = other.imgHeight16;
    texWidth16 = other.texWidth16;
    texHeight16 = other.texHeight16;
    offset = other.offset;
    texture = other.texture;
    texture16 = other.texture16;
    image = other.image;
    borderSize = other.borderSize;
    borderColor = other.borderColor;
    return *this;
}

// 0x55c7a4 _ZN6glitch3gui11CGUITTGlyph4FreeEPNS_5video12IVideoDriverE
void CGUITTGlyph::Free(video::IVideoDriver* driver) {
    delete[] image;
    cached = false;
    image = nullptr;
    video::CTextureManager* textureManager = driver->m_textureManager;
    textureManager->removeTexture(texture);
    textureManager->removeTexture(texture16);
}

// 0x55cbfc _ZN6glitch3gui11CGUITTGlyph5cacheEjPNS0_10CGUITTFaceEPNS_5video12IVideoDriverEb
void CGUITTGlyph::cache(std::uint32_t glyphIndex, CGUITTFace* ttFace, video::IVideoDriver* driver, bool embolden) {
    ft::Face freetypeFace = ttFace->face;
    ft::FT_Set_Pixel_Sizes(freetypeFace, 0, size);
    video::CTextureManager* textureManager = driver->m_textureManager;
    char name[128];

    if (ft::FT_Load_Glyph(freetypeFace, glyphIndex, 10) == 0) {
        ft::GlyphSlot slot = freetypeFace->glyph;
        if (slot->format == ft::kGlyphFormatOutline && ft::FT_Render_Glyph(slot, 0) == 0) {
            if (embolden) {
                ft::FT_GlyphSlot_Own_Bitmap(slot);
                ft::FT_Bitmap_Embolden(CGUITTFace::library->library, &slot->bitmap, static_cast<ft::Pos>(borderSize), static_cast<ft::Pos>(borderSize));
            }
            const ft::Bitmap& bitmap = slot->bitmap;
            const std::uint32_t width = static_cast<std::uint32_t>(bitmap.width);
            const std::uint32_t rows = static_cast<std::uint32_t>(bitmap.rows);
            const unsigned char* coverage = bitmap.buffer;
            delete[] image;
            image = new std::uint8_t[width * rows];
            std::memcpy(image, coverage, width * rows);
            top = slot->bitmap_top;
            left = slot->bitmap_left;
            imgWidth = width;
            imgHeight = rows;
            texWidth = powerOfTwoAbove(width);
            texHeight = powerOfTwoAbove(rows);
            if (texWidth > texHeight) {
                texHeight = texWidth;
            } else {
                texWidth = texHeight;
            }
            std::uint32_t* pixels = new std::uint32_t[texWidth * texHeight]();
            offset = static_cast<int>(size) - static_cast<int>(rows);
            const bool driverType128 = static_cast<int>(driver->getDriverType()) == 128;  // +0x5c
            // The bitmap rows are read densely (width bytes per row, as in the original, which ignores the pitch).
            const unsigned char* source = coverage;
            for (std::uint32_t y = 0; y < rows; ++y) {
                std::uint32_t* row = pixels + static_cast<std::size_t>(y) * texWidth;
                for (std::uint32_t x = 0; x < width; ++x) {
                    const std::uint32_t value = source[x];
                    if (value != 0) {
                        row[x] = driverType128 ? value * 0x01010101u : (0x00FFFFFFu | (value << 24));
                    } else {
                        row[x] = 0;
                    }
                }
                source += width;
            }
            std::snprintf(name, sizeof(name), "TTFontGlyph%d", static_cast<int>(glyphIndex));
            core::dimension2d<int> textureSize;
            textureSize.Width = static_cast<int>(texWidth);
            textureSize.Height = static_cast<int>(texHeight);
            boost::intrusive_ptr<video::CImage> glyphImage = textureManager->createImageFromData(12, textureSize, pixels, false, true);
            texture = textureManager->addTexture(name, glyphImage, false, 0);
            delete[] pixels;
            cached = true;
        }
    }

    // The monochrome pass (only entered when this FT_Load_Glyph fails, as in the original).
    if (ft::FT_Load_Glyph(freetypeFace, glyphIndex, 0x100E) != 0) {
        ft::GlyphSlot slot = freetypeFace->glyph;
        if (embolden) {
            ft::FT_GlyphSlot_Own_Bitmap(slot);
            ft::FT_Bitmap_Embolden(CGUITTFace::library->library, &slot->bitmap, 8, 8);
        }
        const ft::Bitmap& bitmap = slot->bitmap;
        const std::uint32_t width = static_cast<std::uint32_t>(bitmap.width);
        const std::uint32_t rows = static_cast<std::uint32_t>(bitmap.rows);
        const int pitch = bitmap.pitch;
        const unsigned char* bits = bitmap.buffer;
        top16 = slot->bitmap_top;
        left16 = slot->bitmap_left;
        imgWidth16 = width;
        imgHeight16 = rows;
        texWidth16 = width > 1 ? powerOfTwoAtLeast(width) : 1;
        texHeight16 = powerOfTwoAtLeast(rows);
        if (texWidth16 > texHeight16) {
            texHeight16 = texWidth16;
        } else {
            texWidth16 = texHeight16;
        }
        std::uint16_t* pixels = new std::uint16_t[texWidth16 * texHeight16]();
        offset = static_cast<int>(size) - static_cast<int>(rows);
        for (std::uint32_t y = 0; y < rows; ++y) {
            std::uint16_t* row = pixels + static_cast<std::size_t>(y) * texWidth16;
            for (std::uint32_t x = 0; x < width; ++x) {
                const unsigned int bit = bits[static_cast<std::size_t>(y) * static_cast<std::size_t>(pitch) + (x >> 3)] & (128u >> (x & 7));
                if (bit != 0) {
                    row[x] = 0xFFFF;
                }
            }
        }
        std::snprintf(name, sizeof(name), "TTFontGlyph%d_16", static_cast<int>(glyphIndex));
        core::dimension2d<int> textureSize;
        textureSize.Width = static_cast<int>(texWidth16);
        textureSize.Height = static_cast<int>(texHeight16);
        boost::intrusive_ptr<video::CImage> glyphImage = textureManager->createImageFromData(8, textureSize, pixels, false, true);
        texture16 = textureManager->addTexture(name, glyphImage, false, 0);
        video::SColor key;
        key.color = 0;
        textureManager->makeColorKeyTexture(texture16, key);
        delete[] pixels;
    }
}

// 0x55ba30 _ZN6glitch3gui10IGUITTFont11clearGlyphsEv
void IGUITTFont::clearGlyphs() {}

// 0x55bb2c _ZN6glitch3gui10IGUITTFontD1Ev (D0 0x55c2e4 skipped)
IGUITTFont::~IGUITTFont() = default;

// 0x55bb30 _ZN6glitch3gui10CGUITTFontC1EPNS_5video12IVideoDriverE (C2 0x55bbb4)
CGUITTFont::CGUITTFont(video::IVideoDriver* driverValue) : driver(driverValue) {
    if (driver != nullptr) {
        ++driver->referenceCounter;
    }
}

// 0x55cae0 _ZN6glitch3gui10CGUITTFontD1Ev (0x55cb60 and 0x55cb7c are the other forms)
CGUITTFont::~CGUITTFont() {
    if (face != nullptr) {
        face->drop();
        face = nullptr;
    }
    clearGlyphs();
    if (driver != nullptr) {
        driver->drop();
        driver = nullptr;
    }
}

// 0x55c97c _ZN6glitch3gui10CGUITTFont11clearGlyphsEv
void CGUITTFont::clearGlyphs() {
    for (std::vector<CGUITTGlyph>* list : {&glyphs, &borderGlyphs, &spareGlyphs}) {
        for (CGUITTGlyph& glyph : *list) {
            glyph.Free(driver);
        }
        list->clear();
    }
}

// 0x55bc38 _ZN6glitch3gui10CGUITTFont9setBorderEjNS_5video6SColorE
void CGUITTFont::setBorder(std::uint32_t border, video::SColor color) {
    if (face == nullptr || borderGlyphs.empty()) {
        return;
    }
    const std::uint32_t borderPixels = borderGlyphs[0].size * border;
    const long count = face->face->num_glyphs;
    for (long i = 0; i < count && i < static_cast<long>(borderGlyphs.size()); ++i) {
        borderGlyphs[static_cast<std::size_t>(i)].borderSize = borderPixels;
        borderGlyphs[static_cast<std::size_t>(i)].borderColor = color;
    }
}

// 0x55bcd4 _ZN6glitch3gui10CGUITTFont15setKerningWidthEi
void CGUITTFont::setKerningWidth(int) {}

// 0x55bcd8 _ZN6glitch3gui10CGUITTFont16setKerningHeightEi
void CGUITTFont::setKerningHeight(int) {}

// 0x55bcdc _ZNK6glitch3gui10CGUITTFont15getKerningWidthEPKwS3_
int CGUITTFont::getKerningWidth(const wchar_t*, const wchar_t*) const {
    return 0;
}

// 0x55bce4 _ZNK6glitch3gui10CGUITTFont16getKerningHeightEv
int CGUITTFont::getKerningHeight() const {
    return 0;
}

// 0x55bcec _ZN6glitch3gui10CGUITTFont11setTrackingEi
void CGUITTFont::setTracking(int value) {
    tracking = value >= 0 ? value : 0;
}

// 0x55bd00 _ZNK6glitch3gui10CGUITTFont11getTrackingEv
int CGUITTFont::getTracking() const {
    return tracking;
}

// 0x55bd08 _ZN6glitch3gui10CGUITTFont12setAntiAliasEb
void CGUITTFont::setAntiAlias(bool value) {
    antiAlias = value;
}

// 0x55bd10 _ZNK6glitch3gui10CGUITTFont12getAntiAliasEv
bool CGUITTFont::getAntiAlias() const {
    return antiAlias;
}

// 0x55bd18 _ZN6glitch3gui10CGUITTFont15setTransparencyEb
void CGUITTFont::setTransparency(bool value) {
    transparency = value;
}

// 0x55bd20 _ZNK6glitch3gui10CGUITTFont15getTransparencyEv
bool CGUITTFont::getTransparency() const {
    return transparency;
}

// 0x55bd28 _ZN6glitch3gui10CGUITTFont13setSpaceWidthEi
void CGUITTFont::setSpaceWidth(int width) {
    spaceWidth = width;
}

// 0x55bd30 _ZN6glitch3gui10CGUITTFont13getSpaceWidthEv
int CGUITTFont::getSpaceWidth() {
    return spaceWidth;
}

// 0x55e9f0 _ZN6glitch3gui10CGUITTFont6attachEPNS0_10CGUITTFaceEjjNS_5video6SColorE
bool CGUITTFont::attach(CGUITTFace* newFace, std::uint32_t size, std::uint32_t border, video::SColor borderColor) {
    if (driver == nullptr || newFace == nullptr) {
        return false;
    }
    if (face != nullptr) {
        face->drop();
    }
    face = newFace;
    ++newFace->referenceCounter;
    clearGlyphs();  // K 0x60
    const std::size_t count = static_cast<std::size_t>(face->face->num_glyphs);
    CGUITTGlyph blank;
    glyphs.resize(count, blank);
    borderGlyphs.resize(count, blank);
    for (std::size_t i = 0; i < count; ++i) {
        glyphs[i].cached = false;
        glyphs[i].size = size;
        borderGlyphs[i].cached = false;
        borderGlyphs[i].borderColor = borderColor;
        borderGlyphs[i].size = size;
        borderGlyphs[i].borderSize = border;
    }
    return true;
}

// 0x55bfec _ZN6glitch3gui10CGUITTFont9drawGlyphEPKNS0_11CGUITTGlyphENS_4core10position2dIiEEPKNS5_4rectIiEENS_5video6SColorE
void CGUITTFont::drawGlyph(const CGUITTGlyph* glyph, core::position2d<int> position, const core::rect<int>* clip, video::SColor color) {
    if (!transparency) {
        color.color |= 0xFF000000u;
    }
    if (glyph->texture16) {
        core::position2d<int> destination;
        destination.X = position.X + glyph->left16;
        destination.Y = position.Y - glyph->top16 + static_cast<int>(glyph->size);
        const core::rect<int> source = detail::makeRect(0, 0, static_cast<int>(glyph->texWidth16) - 1, static_cast<int>(glyph->texHeight16) - 1);
        video::C2DDriver::draw2DImage(driver, glyph->texture16, destination, source, clip, color, true);
    } else if (glyph->texture) {
        core::position2d<int> destination;
        destination.X = position.X + glyph->left;
        destination.Y = position.Y - glyph->top + static_cast<int>(glyph->size);
        const core::rect<int> source = detail::makeRect(0, 0, static_cast<int>(glyph->texWidth) - 1, static_cast<int>(glyph->texHeight) - 1);
        video::C2DDriver::draw2DImage(driver, glyph->texture, destination, source, clip, color, true);
    }
}

// 0x55c110 _ZN6glitch3gui10CGUITTFont17drawGlyphInTextureEPKNS0_11CGUITTGlyphERKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core10position2dIiEEPKNSB_4rectIiEENS7_6SColorE
void CGUITTFont::drawGlyphInTexture(const CGUITTGlyph* glyph, const boost::intrusive_ptr<video::ITexture>& texture,
                                    core::position2d<int> position, const core::rect<int>* clip, video::SColor color) {
    if (!texture) {
        return;
    }
    RenderToTexture scope(driver, texture);
    drawGlyph(glyph, position, clip, color);
}

// 0x55c240 _ZN6glitch3gui10CGUITTFont20getVertBearingFactorEv
float CGUITTFont::getVertBearingFactor() {
    ft::Face freetypeFace = face->face;
    const ft::UInt index = ft::FT_Get_Char_Index(freetypeFace, 97);
    if (ft::FT_Load_Glyph(freetypeFace, index, 10) != 0) {
        return 0.0f;
    }
    if ((freetypeFace->face_flags & 0x20) != 0) {
        return 0.7f;
    }
    const float vertBearingY = static_cast<float>(freetypeFace->glyph->metrics.vertBearingY);
    const float vertBearingX = static_cast<float>(freetypeFace->glyph->metrics.vertBearingX);
    return (vertBearingY * -0.5f) / (vertBearingY - vertBearingX) + 1.0f;
}

// 0x55d218 _ZNK6glitch3gui10CGUITTFont15getGlyphByValueEj
std::uint32_t CGUITTFont::getGlyphByValue(std::uint32_t character) const {
    const std::uint32_t index = ft::FT_Get_Char_Index(face->face, character);
    if (index != 0) {
        CGUITTGlyph& glyph = glyphs[index - 1];
        if (!glyph.cached) {
            glyph.cache(index, face, driver, glyph.cached);
        }
        CGUITTGlyph& border = borderGlyphs[index - 1];
        if (border.borderSize != 0 && !border.cached) {
            border.cache(index, face, driver, true);
        }
    }
    return index;
}

// 0x55dbd8 _ZNK6glitch3gui10CGUITTFont14getGlyphByCharEw
std::uint32_t CGUITTFont::getGlyphByChar(wchar_t character) const {
    const std::uint32_t index = ft::FT_Get_Char_Index(face->face, static_cast<ft::ULong>(character));
    if (index != 0) {
        CGUITTGlyph& glyph = glyphs[index - 1];
        if (!glyph.cached) {
            glyph.cache(index, face, driver, glyph.cached);
        }
        CGUITTGlyph& border = borderGlyphs[index - 1];
        if (border.borderSize != 0 && !border.cached) {
            border.cache(index, face, driver, true);
        }
    }
    return index;
}

// 0x55d2b0 _ZNK6glitch3gui10CGUITTFont21getWidthFromCharacterEj
int CGUITTFont::getWidthFromCharacter(std::uint32_t character) const {
    const std::uint32_t index = getGlyphByValue(character);
    const int size = glyphs.empty() ? 0 : static_cast<int>(glyphs[0].size);
    if (index != 0) {
        const CGUITTGlyph& glyph = glyphs[index - 1];
        const int width = glyph.left + static_cast<int>(glyph.imgWidth);
        if (width > 0) {
            return width + tracking;
        }
    }
    if (character >= 0x2000) {
        return tracking + size;
    }
    if (character <= 0x1F) {
        return 0;
    }
    if (spaceWidth <= 0) {
        return tracking + (size >> 1);
    }
    return spaceWidth;
}

// 0x55d340 _ZNK6glitch3gui10CGUITTFont20getCharacterFromPosEPKci
int CGUITTFont::getCharacterFromPos(const char* text, int pixelX) const {
    if (*text == 0) {
        return -1;
    }
    int index = 0;
    int width = 0;
    const char* position = text;
    while (true) {
        const std::uint32_t character = static_cast<std::uint32_t>(core::iterateUTF8String(position));
        width += getWidthFromCharacter(character);
        if (width >= pixelX) {
            break;
        }
        ++index;
        if (*position == 0) {
            return -1;
        }
    }
    return index;
}

// 0x55d3b8 _ZNK6glitch3gui10CGUITTFont20getCharacterFromPosEPKwi
int CGUITTFont::getCharacterFromPos(const wchar_t* text, int pixelX) const {
    std::uint32_t character = static_cast<std::uint32_t>(*text);
    if (character == 0) {
        return -1;
    }
    int index = 0;
    int width = 0;
    while (true) {
        width += getWidthFromCharacter(character);
        if (width >= pixelX) {
            break;
        }
        character = static_cast<std::uint32_t>(text[++index]);
        if (character == 0) {
            return -1;
        }
    }
    return index;
}

// 0x55d418 _ZNK6glitch3gui10CGUITTFont12getDimensionEPKc
core::dimension2d<int> CGUITTFont::getDimension(const char* text) const {
    core::dimension2d<int> result;
    result.Width = 0;
    result.Height = glyphs.empty() ? 0 : static_cast<int>(glyphs[0].size);
    const char* position = text;
    if (*position != 0) {
        do {
            const std::uint32_t character = static_cast<std::uint32_t>(core::iterateUTF8String(position));
            result.Width += getWidthFromCharacter(character);
        } while (*position != 0);
    }
    return result;
}

// 0x55d488 _ZNK6glitch3gui10CGUITTFont12getDimensionEPKw
core::dimension2d<int> CGUITTFont::getDimension(const wchar_t* text) const {
    core::dimension2d<int> result;
    result.Width = 0;
    result.Height = glyphs.empty() ? 0 : static_cast<int>(glyphs[0].size);
    if (text != nullptr) {
        for (const wchar_t* c = text; *c != 0; ++c) {
            result.Width += getWidthFromCharacter(static_cast<std::uint32_t>(*c));
        }
    }
    return result;
}

// 0x55dab8 _ZNK6glitch3gui10CGUITTFont9getHeightEPKc
int CGUITTFont::getHeight(const char* text) const {
    int height = 0;
    const char* position = text;
    while (*position != 0) {
        const std::uint32_t character = static_cast<std::uint32_t>(core::iterateUTF8String(position));
        const std::uint32_t index = getGlyphByValue(character);
        int value;
        if (index != 0) {
            value = static_cast<int>(glyphs[index - 1].imgHeight);
        } else {
            if (character <= 0x1F) {
                continue;
            }
            value = glyphs.empty() ? 0 : static_cast<int>(glyphs[0].size);
        }
        if (height < value) {
            height = value;
        }
    }
    return height;
}

// 0x55db50 _ZNK6glitch3gui10CGUITTFont9getHeightEPKw
int CGUITTFont::getHeight(const wchar_t* text) const {
    int height = 0;
    for (const wchar_t* c = text; *c != 0; ++c) {
        const std::uint32_t character = static_cast<std::uint32_t>(*c);
        const std::uint32_t index = getGlyphByValue(character);
        int value;
        if (index != 0) {
            value = static_cast<int>(glyphs[index - 1].imgHeight);
        } else {
            value = character > 0x1F && !glyphs.empty() ? static_cast<int>(glyphs[0].size) : 0;
        }
        if (height < value) {
            height = value;
        }
    }
    return height;
}

// 0x55e020 _ZN6glitch3gui10CGUITTFont4drawEPKwRKNS_4core4rectIiEENS_5video6SColorEbbPS6_
void CGUITTFont::draw(const wchar_t* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
                      const core::rect<int>* clip) {
    if (driver == nullptr) {
        return;
    }
    const core::dimension2d<int> dimension = getDimension(text);  // K 0x1c
    const std::wstring string(text);
    int x = position.UpperLeftCorner.X;
    int y = position.UpperLeftCorner.Y;
    if (!borderGlyphs.empty() && borderGlyphs[0].borderSize != 0) {
        if (hcenter) {
            x += (position.LowerRightCorner.X - position.UpperLeftCorner.X - dimension.Width) / 2;
        }
        if (vcenter) {
            y += (position.LowerRightCorner.Y - position.UpperLeftCorner.Y - dimension.Height) / 2;
        }
        for (const wchar_t c : string) {
            const std::uint32_t index = getGlyphByChar(c);
            if (index != 0) {
                const CGUITTGlyph& border = borderGlyphs[index - 1];
                const CGUITTGlyph& glyph = glyphs[index - 1];
                core::position2d<int> at;
                at.X = x - static_cast<int>((border.imgWidth - glyph.imgWidth) >> 1);
                at.Y = y - (static_cast<int>(border.imgHeight - glyph.imgHeight) >> 1);
                drawGlyph(&border, at, clip, border.borderColor);
            }
            x += getWidthFromCharacter(static_cast<std::uint32_t>(c));
        }
    }
    x = position.UpperLeftCorner.X;
    y = position.UpperLeftCorner.Y;
    if (hcenter) {
        x += (position.LowerRightCorner.X - x - dimension.Width) / 2;
    }
    if (vcenter) {
        y += (position.LowerRightCorner.Y - y - dimension.Height) / 2;
    }
    for (const wchar_t c : string) {
        const std::uint32_t index = getGlyphByChar(c);
        if (index != 0) {
            core::position2d<int> at;
            at.X = x;
            at.Y = y;
            drawGlyph(&glyphs[index - 1], at, clip, color);
        }
        x += getWidthFromCharacter(static_cast<std::uint32_t>(c));
    }
}

// 0x55d854 _ZN6glitch3gui10CGUITTFont4drawEPKcRKNS_4core4rectIiEENS_5video6SColorEbbPS6_
// (After the border pass the text cursor is at the end of the text, so the main pass of the original runs over nothing when a border is set; the
// pass below reproduces that.)
void CGUITTFont::draw(const char* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
                      const core::rect<int>* clip) {
    if (driver == nullptr) {
        return;
    }
    const core::dimension2d<int> dimension = getDimension(text);  // K 0x20
    const char* cursor = text;
    int x = position.UpperLeftCorner.X;
    int y = position.UpperLeftCorner.Y;
    bool more;
    if (!borderGlyphs.empty() && borderGlyphs[0].borderSize != 0) {
        if (hcenter) {
            x += (position.LowerRightCorner.X - position.UpperLeftCorner.X - dimension.Width) / 2;
        }
        if (vcenter) {
            y += (position.LowerRightCorner.Y - position.UpperLeftCorner.Y - dimension.Height) / 2;
        }
        while (*cursor != 0) {
            const std::uint32_t character = static_cast<std::uint32_t>(core::iterateUTF8String(cursor));
            const std::uint32_t index = getGlyphByValue(character);
            if (index != 0) {
                const CGUITTGlyph& border = borderGlyphs[index - 1];
                const CGUITTGlyph& glyph = glyphs[index - 1];
                core::position2d<int> at;
                at.X = x - static_cast<int>((border.imgWidth - glyph.imgWidth) >> 1);
                at.Y = y - (static_cast<int>(border.imgHeight - glyph.imgHeight) >> 1);
                drawGlyph(&border, at, clip, border.borderColor);
            }
            x += getWidthFromCharacter(character);
        }
        more = false;
    } else {
        more = *cursor != 0;
    }
    x = position.UpperLeftCorner.X;
    y = position.UpperLeftCorner.Y;
    if (hcenter) {
        x += (position.LowerRightCorner.X - x - dimension.Width) / 2;
    }
    if (vcenter) {
        y += (position.LowerRightCorner.Y - y - dimension.Height) / 2;
    }
    if (more) {
        do {
            const std::uint32_t character = static_cast<std::uint32_t>(core::iterateUTF8String(cursor));
            const std::uint32_t index = getGlyphByValue(character);
            if (index != 0) {
                core::position2d<int> at;
                at.X = x;
                at.Y = y;
                drawGlyph(&glyphs[index - 1], at, clip, color);
            }
            x += getWidthFromCharacter(character);
        } while (*cursor != 0);
    }
}

// 0x55dc70 _ZN6glitch3gui10CGUITTFont13drawInTextureEPKwRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb
void CGUITTFont::drawInTexture(const wchar_t* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                               video::SColor color, bool hcenter, bool vcenter) {
    if (driver == nullptr || !texture) {
        return;
    }
    const core::dimension2d<int> dimension = getDimension(text);  // K 0x1c
    const std::wstring string(text);
    int x = position.UpperLeftCorner.X;
    int y = position.UpperLeftCorner.Y;
    RenderToTexture scope(driver, texture);
    if (!borderGlyphs.empty() && borderGlyphs[0].borderSize != 0) {
        if (hcenter) {
            x += (position.LowerRightCorner.X - position.UpperLeftCorner.X - dimension.Width) / 2;
        }
        if (vcenter) {
            y += (position.LowerRightCorner.Y - position.UpperLeftCorner.Y - dimension.Height) / 2;
        }
        for (const wchar_t c : string) {
            const std::uint32_t index = getGlyphByChar(c);
            if (index != 0) {
                const CGUITTGlyph& border = borderGlyphs[index - 1];
                const CGUITTGlyph& glyph = glyphs[index - 1];
                core::position2d<int> at;
                at.X = x - static_cast<int>((border.imgWidth - glyph.imgWidth) >> 1);
                at.Y = y - (static_cast<int>(border.imgHeight - glyph.imgHeight) >> 1);
                drawGlyphInTexture(&border, texture, at, nullptr, border.borderColor);
            }
            x += getWidthFromCharacter(static_cast<std::uint32_t>(c));
        }
    }
    x = position.UpperLeftCorner.X;
    y = position.UpperLeftCorner.Y;
    if (hcenter) {
        x += (position.LowerRightCorner.X - x - dimension.Width) / 2;
    }
    if (vcenter) {
        y += (position.LowerRightCorner.Y - y - dimension.Height) / 2;
    }
    for (const wchar_t c : string) {
        const std::uint32_t index = getGlyphByChar(c);
        if (index != 0) {
            core::position2d<int> at;
            at.X = x;
            at.Y = y;
            drawGlyph(&glyphs[index - 1], at, nullptr, color);
        }
        x += getWidthFromCharacter(static_cast<std::uint32_t>(c));
    }
}

// 0x55d4e0 _ZN6glitch3gui10CGUITTFont13drawInTextureEPKcRKN5boost13intrusive_ptrINS_5video8ITextureEEENS_4core4rectIiEENS6_6SColorEbb
void CGUITTFont::drawInTexture(const char* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                               video::SColor color, bool hcenter, bool vcenter) {
    if (driver == nullptr || !texture) {
        return;
    }
    const core::dimension2d<int> dimension = getDimension(text);  // K 0x20
    const char* cursor = text;
    int x = position.UpperLeftCorner.X;
    int y = position.UpperLeftCorner.Y;
    RenderToTexture scope(driver, texture);
    bool more;
    if (!borderGlyphs.empty() && borderGlyphs[0].borderSize != 0) {
        if (hcenter) {
            x += (position.LowerRightCorner.X - position.UpperLeftCorner.X - dimension.Width) / 2;
        }
        if (vcenter) {
            y += (position.LowerRightCorner.Y - position.UpperLeftCorner.Y - dimension.Height) / 2;
        }
        while (*cursor != 0) {
            const std::uint32_t character = static_cast<std::uint32_t>(core::iterateUTF8String(cursor));
            const std::uint32_t index = getGlyphByValue(character);
            if (index != 0) {
                const CGUITTGlyph& border = borderGlyphs[index - 1];
                const CGUITTGlyph& glyph = glyphs[index - 1];
                core::position2d<int> at;
                at.X = x - static_cast<int>((border.imgWidth - glyph.imgWidth) >> 1);
                at.Y = y - (static_cast<int>(border.imgHeight - glyph.imgHeight) >> 1);
                drawGlyphInTexture(&border, texture, at, nullptr, border.borderColor);
            }
            x += getWidthFromCharacter(character);
        }
        more = false;
    } else {
        more = *cursor != 0;
    }
    x = position.UpperLeftCorner.X;
    y = position.UpperLeftCorner.Y;
    if (hcenter) {
        x += (position.LowerRightCorner.X - x - dimension.Width) / 2;
    }
    if (vcenter) {
        y += (position.LowerRightCorner.Y - y - dimension.Height) / 2;
    }
    if (more) {
        do {
            const std::uint32_t character = static_cast<std::uint32_t>(core::iterateUTF8String(cursor));
            const std::uint32_t index = getGlyphByValue(character);
            if (index != 0) {
                core::position2d<int> at;
                at.X = x;
                at.Y = y;
                drawGlyph(&glyphs[index - 1], at, nullptr, color);
            }
            x += getWidthFromCharacter(character);
        } while (*cursor != 0);
    }
}

}  // namespace glitch::gui
