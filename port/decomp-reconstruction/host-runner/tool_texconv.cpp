// dh2_texconv: decode the game's texture containers to plain 32-bit TGA (host tool for the texture upscale pipeline,
// tools/trackb/textures.py). Not part of the game.
//
//   dh2_texconv decode <in.tga> <out.tga>
//
// The game's "data/3d/textures/*.tga" files are "BTEXpvr\0" + a 52-byte PVR v2 header + PVRTC data (format 0x18 = 2 bpp,
// 0x19 = 4 bpp, no mipmaps in the shipped data); a few are real 32-bit TGAs, which are copied through. The decode is the
// game's own PVRTCDecompress (game-app, the function the Android build runs at load), so the PNGs handed to the upscaler show
// exactly what the GPU shows.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/global/pvrtc_decompress.hpp"

namespace {

bool ReadAll(const char* path, std::vector<std::uint8_t>& out) {
    std::FILE* f = std::fopen(path, "rb");
    if (f == nullptr) {
        return false;
    }
    std::fseek(f, 0, SEEK_END);
    const long n = std::ftell(f);
    std::fseek(f, 0, SEEK_SET);
    out.resize(n > 0 ? static_cast<size_t>(n) : 0);
    const bool ok = n >= 0 && std::fread(out.data(), 1, out.size(), f) == out.size();
    std::fclose(f);
    return ok;
}

std::uint32_t U32(const std::uint8_t* p) {
    return static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8) | (static_cast<std::uint32_t>(p[2]) << 16) |
           (static_cast<std::uint32_t>(p[3]) << 24);
}

// Uncompressed 32-bit TGA, top-left origin, BGRA on disk.
bool WriteTga(const char* path, int w, int h, const std::uint8_t* rgba) {
    std::FILE* f = std::fopen(path, "wb");
    if (f == nullptr) {
        return false;
    }
    std::uint8_t hdr[18] = {};
    hdr[2] = 2;
    hdr[12] = static_cast<std::uint8_t>(w & 0xff);
    hdr[13] = static_cast<std::uint8_t>(w >> 8);
    hdr[14] = static_cast<std::uint8_t>(h & 0xff);
    hdr[15] = static_cast<std::uint8_t>(h >> 8);
    hdr[16] = 32;
    hdr[17] = 0x28;  // 8 alpha bits, top-left origin
    std::fwrite(hdr, 1, sizeof hdr, f);
    std::vector<std::uint8_t> row(static_cast<size_t>(w) * 4);
    for (int y = 0; y < h; ++y) {
        const std::uint8_t* s = rgba + static_cast<size_t>(y) * w * 4;
        for (int x = 0; x < w; ++x) {
            row[x * 4 + 0] = s[x * 4 + 2];
            row[x * 4 + 1] = s[x * 4 + 1];
            row[x * 4 + 2] = s[x * 4 + 0];
            row[x * 4 + 3] = s[x * 4 + 3];
        }
        std::fwrite(row.data(), 1, row.size(), f);
    }
    static const char footer[26] = {0, 0, 0, 0, 0, 0, 0, 0, 'T', 'R', 'U', 'E', 'V', 'I', 'S', 'I', 'O', 'N', '-', 'X', 'F', 'I', 'L', 'E', '.', 0};
    std::fwrite(footer, 1, sizeof footer, f);
    std::fclose(f);
    return true;
}

int Decode(const char* in, const char* out) {
    std::vector<std::uint8_t> file;
    if (!ReadAll(in, file)) {
        std::fprintf(stderr, "cannot read %s\n", in);
        return 2;
    }
    if (file.size() > 60 && std::memcmp(file.data(), "BTEX", 4) == 0) {
        const std::uint8_t* h = file.data() + 8;
        const std::uint32_t headerSize = U32(h), height = U32(h + 4), width = U32(h + 8), mips = U32(h + 12), flags = U32(h + 16),
                            dataSize = U32(h + 20);
        const std::uint32_t fmt = flags & 0xff;
        if (headerSize != 52 || std::memcmp(h + 44, "PVR!", 4) != 0) {
            std::fprintf(stderr, "%s: not a PVR v2 container\n", in);
            return 3;
        }
        const std::uint8_t* data = file.data() + 8 + 52;
        std::vector<std::uint8_t> rgba(static_cast<size_t>(width) * height * 4);
        if (fmt == 0x18 || fmt == 0x19) {
            PVRTCDecompress(data, fmt == 0x18 ? 1 : 0, static_cast<int>(width), static_cast<int>(height), rgba.data());
        } else if (fmt == 0x12) {  // RGBA8888
            std::memcpy(rgba.data(), data, rgba.size());
        } else if (fmt == 0x10) {  // RGB565
            for (size_t i = 0; i < static_cast<size_t>(width) * height; ++i) {
                const std::uint16_t v = static_cast<std::uint16_t>(data[i * 2] | (data[i * 2 + 1] << 8));
                rgba[i * 4 + 0] = static_cast<std::uint8_t>(((v >> 11) & 31) * 255 / 31);
                rgba[i * 4 + 1] = static_cast<std::uint8_t>(((v >> 5) & 63) * 255 / 63);
                rgba[i * 4 + 2] = static_cast<std::uint8_t>((v & 31) * 255 / 31);
                rgba[i * 4 + 3] = 255;
            }
        } else if (fmt == 0x11) {  // RGBA4444
            for (size_t i = 0; i < static_cast<size_t>(width) * height; ++i) {
                const std::uint16_t v = static_cast<std::uint16_t>(data[i * 2] | (data[i * 2 + 1] << 8));
                rgba[i * 4 + 0] = static_cast<std::uint8_t>(((v >> 12) & 15) * 17);
                rgba[i * 4 + 1] = static_cast<std::uint8_t>(((v >> 8) & 15) * 17);
                rgba[i * 4 + 2] = static_cast<std::uint8_t>(((v >> 4) & 15) * 17);
                rgba[i * 4 + 3] = static_cast<std::uint8_t>((v & 15) * 17);
            }
        } else {
            std::fprintf(stderr, "%s: unsupported PVR format 0x%02x\n", in, fmt);
            return 4;
        }
        std::printf("pvr fmt=0x%02x %ux%u mips=%u data=%u\n", fmt, width, height, mips, dataSize);
        return WriteTga(out, static_cast<int>(width), static_cast<int>(height), rgba.data()) ? 0 : 5;
    }
    // A real TGA: copy through.
    std::FILE* f = std::fopen(out, "wb");
    if (f == nullptr) {
        return 5;
    }
    std::fwrite(file.data(), 1, file.size(), f);
    std::fclose(f);
    std::printf("tga copied\n");
    return 0;
}

}  // namespace

int main(int argc, char** argv) {
    if (argc == 4 && std::strcmp(argv[1], "decode") == 0) {
        return Decode(argv[2], argv[3]);
    }
    std::fprintf(stderr, "usage: dh2_texconv decode <in.tga> <out.tga>\n");
    return 1;
}
