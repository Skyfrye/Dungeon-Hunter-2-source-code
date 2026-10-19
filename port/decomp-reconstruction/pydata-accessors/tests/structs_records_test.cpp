// Checks the generated Structs record classes: read decodes little-endian words at the
// original offsets (base read first), finalize and the deleting destructor free the stored pointers.
#include "pydata-accessors/structs_records.hpp"
#include "read_bytes_stream.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Hands out a fixed byte sequence to StreamReader::readAs.
class ByteStream : public ReadBytesStream {
public:
    ByteStream(const unsigned char* data, std::size_t n) : data_(data), n_(n) {}
    bool ReadBytes(void* dst, std::size_t n) override {
        if (pos_ + n > n_) return false;
        std::memcpy(dst, data_ + pos_, n);
        pos_ += n;
        return true;
    }

private:
    const unsigned char* data_;
    std::size_t n_;
    std::size_t pos_ = 0;
};

int main() {
    // SimpleAnim::read: two int16 words at +0x4 and +0x6.
    const unsigned char sa[] = {0x34, 0x12, 0xFE, 0xFF};
    Structs::SimpleAnim simple;
    ByteStream in1(sa, sizeof sa);
    simple.read(&in1);
    CHECK(simple.AnimID == 0x1234);
    CHECK(simple.ResID == -2);

    // Anim::read calls SimpleAnim::read first, then two int16 words at +0x8 and +0xa.
    const unsigned char an[] = {0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00};
    Structs::Anim anim;
    ByteStream in2(an, sizeof an);
    anim.read(&in2);
    CHECK(anim.AnimID == 1);
    CHECK(anim.ResID == 2);
    CHECK(anim.OffsetX == 3);
    CHECK(anim.OffsetY == 4);

    // A short stream stops the reads; the fields already read keep their values.
    const unsigned char shortbuf[] = {0x05, 0x00};
    Structs::SimpleAnim partial;
    ByteStream in3(shortbuf, sizeof shortbuf);
    partial.read(&in3);
    CHECK(partial.AnimID == 5);
    CHECK(partial.ResID == 0);

    // AnimStep::finalize (Hex-Rays 0x4db590): frees the pointer at +0x24 and clears it with its count at +0x20,
    // so the destructor that runs next finds nothing to free.
    Structs::AnimStep step;
    step.RandomCamSize = 4;
    step.RandomCam = std::malloc(16);
    CHECK(step.RandomCam != nullptr);
    step.finalize();
    CHECK(step.RandomCam == nullptr && step.RandomCamSize == 0);

    // Deleting destructor: runs ~AIFaction, then frees the block (placement new over malloc).
    void* mem = std::malloc(sizeof(Structs::AIFaction));
    CHECK(mem != nullptr);
    if (mem) {
        Structs::AIFaction* faction = new (mem) Structs::AIFaction();
        Structs::DeletingDestructor(faction);
    }

    // ItemPowerEntry::read (Hex-Rays): int32 at +0x4, then one signed byte at +0x8 (readAs<signed char>).
    {
        const unsigned char ipe[] = {0x07, 0x00, 0x00, 0x00, 0xFF};
        Structs::ItemPowerEntry entry;
        ByteStream in(ipe, sizeof ipe);
        entry.read(&in);
        CHECK(entry.Power == 7);
        CHECK(entry.Prob == -1);
    }

    // RepeatableSprite::read (Hex-Rays): int16 at +0x4, bool at +0x6, int16 at +0x8, bool at +0xa, and so on.
    {
        // int16 -2 | bool 1 | int16 0x1234 | bool 0 | int16 5 | int16 0 | bool 0 | int16 0 | bool 1 | int16 0
        const unsigned char rs[] = {0xFE, 0xFF, 0x01, 0x34, 0x12, 0x00, 0x05, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x01, 0x00, 0x00};
        Structs::RepeatableSprite sprite;
        ByteStream in(rs, sizeof rs);
        sprite.read(&in);
        CHECK(sprite.AnimID == -2);
        CHECK(sprite.Clip == true);
        CHECK(sprite.Height == 0x1234);
        CHECK(sprite.LeftAlign == false);
        CHECK(sprite.PosX == 5);
    }

    std::printf("%s\n", failures ? "structs_records: FAILED" : "structs_records: ok");
    return failures != 0;
}
