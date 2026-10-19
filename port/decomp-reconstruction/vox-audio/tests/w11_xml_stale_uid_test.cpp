// LoadXML sound loop: an element without a uid writes into the record of the last uid read
// (the binary's uid stack slot), and a leading run of elements without a uid is skipped.
#include <cstdio>
#include <string>

#include "vox-audio/vox/sound_pack_xml.hpp"

namespace {

int g_failures = 0;
#define CHECK(cond)                                                        \
    do {                                                                   \
        if (!(cond)) {                                                     \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,    \
                         __LINE__, #cond);                                 \
            ++g_failures;                                                  \
        }                                                                  \
    } while (0)

const char* kStale =
    "<?xml version=\"1.0\"?>\n"
    "<soundpack>\n"
    "  <sounds size=\"2\">\n"
    "    <sound uid=\"0\" label=\"First\" priority=\"3\"/>\n"
    "    <sound label=\"Second\" priority=\"9\"/>\n"
    "  </sounds>\n"
    "</soundpack>\n";

const char* kLeading =
    "<?xml version=\"1.0\"?>\n"
    "<soundpack>\n"
    "  <sounds size=\"2\">\n"
    "    <sound label=\"Orphan\" priority=\"4\"/>\n"
    "    <sound uid=\"1\" label=\"Kept\" priority=\"6\"/>\n"
    "  </sounds>\n"
    "</soundpack>\n";

bool WriteFile(const char* path, const char* text) {
    std::FILE* f = std::fopen(path, "wb");
    if (f == nullptr) return false;
    std::fwrite(text, 1, std::char_traits<char>::length(text), f);
    std::fclose(f);
    return true;
}

}  // namespace

int main() {
    const char* stale_path = "w11_xml_stale_uid_pack.xml";
    const char* leading_path = "w11_xml_leading_uid_pack.xml";

    CHECK(WriteFile(stale_path, kStale));
    {
        vox::VoxSoundPackXML pack;
        CHECK(pack.LoadXML(stale_path) == 1);
        // The second element has no uid, so it writes into record 0 and replaces the first
        // sound's priority and label mapping.
        vox::EmitterInfoXML emitter{};
        CHECK(pack.GetEmitterInfo(0, emitter) == 1);
        CHECK(emitter.emitter_uid == 9);
        CHECK(pack.GetSoundUid("Second") == 0);
        CHECK(pack.GetSoundUid("First") == 0);
        // Record 1 was never written, so its uid does not match its index.
        vox::DataSourceInfoXML data{};
        CHECK(pack.GetDataSourceInfo(1, data) == 0);
    }

    CHECK(WriteFile(leading_path, kLeading));
    {
        vox::VoxSoundPackXML pack;
        CHECK(pack.LoadXML(leading_path) == 1);
        // The leading element has no uid and nothing was read before it, so it is skipped.
        CHECK(pack.GetSoundUid("Orphan") == -1);
        CHECK(pack.GetSoundUid("Kept") == 1);
        vox::EmitterInfoXML emitter{};
        CHECK(pack.GetEmitterInfo(1, emitter) == 1);
        CHECK(emitter.emitter_uid == 6);
    }

    std::remove(stale_path);
    std::remove(leading_path);
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("w11_xml_stale_uid_test: all checks passed\n");
    return 0;
}
