// LoadXML: a sound pack file parsed into the record tables and read back through the accessors,
// plus the missing-file and malformed-file results.
#include <cstdio>
#include <string>
#include <cstring>

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

const char* kPack =
    "<?xml version=\"1.0\"?>\n"
    "<soundpack>\n"
    "  <sounds size=\"2\">\n"
    "    <sound uid=\"0\" bank=\"1\" group=\"0\" priority=\"5\" loop=\"y\" label=\"Hit\" format=\"pcm\"\n"
    "           loadingflags=\"load to ram\" refdistance=\"2.5\" customparam=\"a;b\" customparamqty=\"2\"/>\n"
    "    <sound uid=\"1\" label=\"Boom\" format=\"ogg\" filename=\"boom.ogg\"/>\n"
    "  </sounds>\n"
    "  <groups size=\"1\"><group uid=\"0\" pos3d=\"r\" bus=\"main\" name=\"Sfx\"/></groups>\n"
    "  <groupmasks><groupmask label=\"Sfx\" mask=\"7\"/></groupmasks>\n"
    "  <banks size=\"1\"><bank uid=\"0\" maxplaybacks=\"3\" threshold=\"4\" name=\"Ambient\"\n"
    "        behaviour=\"steal lowest priority\"/></banks>\n"
    "  <events size=\"1\">\n"
    "    <event uid=\"0\" label=\"Attack\" type=\"random\" value=\"0, 1\" params=\"1;50\"\n"
    "           customparam=\"x;y\" customparamqty=\"2\"/>\n"
    "  </events>\n"
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
    const char* path = "w10_xml_load_pack.xml";
    CHECK(WriteFile(path, kPack));

    {
        vox::VoxSoundPackXML pack;
        CHECK(pack.LoadXML(path) == 1);

        // Sounds: priority, bank, group, loop, format, flags, custom parameters, data name.
        vox::SoundRecordXML sound0{};
        vox::DataSourceInfoXML data{};
        CHECK(pack.GetDataSourceInfo(0, data) == 1);
        CHECK(data.uid == 0 && data.format == 1);
        CHECK(data.data_name != nullptr && std::string(data.data_name) == "Hit.wav");
        CHECK(data.field_15 == 1 && data.field_16 == 0);  // bank 1, group 0 from the sample
        CHECK(data.field_10 == 1);
        CHECK(data.custom_count == 2 && data.custom_values[1] != nullptr &&
              std::string(data.custom_values[1]) == "b");
        vox::EmitterInfoXML emitter{};
        CHECK(pack.GetEmitterInfo(0, emitter) == 1);
        CHECK(emitter.flag && emitter.emitter_uid == 5);
        CHECK(emitter.values_[0] == 2.5f);
        CHECK(emitter.group == 0);
        CHECK(emitter.type == 2);
        CHECK(emitter.name != nullptr && std::string(emitter.name) == "Sfx");

        CHECK(pack.GetDataSourceInfo(1, data) == 1);
        CHECK(data.format == 2 && data.data_name != nullptr &&
              std::string(data.data_name) == "boom.ogg");
        CHECK(pack.GetSoundUid("Boom") == 1);
        CHECK(pack.GetSoundUid("Hit") == 0);
        CHECK(pack.GetSoundUid("Missing") == -1);
        (void)sound0;

        // Groups, masks, banks.
        vox::GroupInfoXML group{};
        CHECK(pack.GetGroupInfo(0, group) == 1);
        CHECK(group.name != nullptr && std::string(group.name) == "Sfx");
        CHECK(group.type == 2);
        int mask = 0;
        pack.GetGroupMask("Sfx", mask);
        CHECK(mask == 7);
        vox::BankInfoXML bank{};
        CHECK(pack.GetBankInfo(0, bank) == 1);
        CHECK(bank.behavior == 1 && bank.field_08 == 3 && bank.field_0c == 4);

        // Events: uid, sound list, mode, the two parameters and the custom values.
        CHECK(pack.GetEventUid("Attack") == 0);
        CHECK(pack.GetEventSize(0) == 2);
        vox::EventInfoXML event{};
        CHECK(pack.GetEventInfo(0, event) == 1);
        CHECK(event.sound_uids != nullptr && event.sound_uids->size() == 2);
        CHECK(event.field_1c == 0);
        CHECK(event.field_1e == 1 && event.field_20 == 50);
        CHECK(event.custom_count == 2);
        const char* custom = nullptr;
        CHECK(pack.GetEventCustomParam(0, 1, custom) && custom != nullptr &&
              std::string(custom) == "y");
    }

    // A missing file loads nothing and reports 0.
    {
        vox::VoxSoundPackXML pack;
        CHECK(pack.LoadXML("w10_xml_no_such_file.xml") == 0);
        CHECK(pack.GetEventSize(0) == -1);
    }

    // A malformed file reports the read as done and leaves the tables empty.
    {
        const char* bad = "w10_xml_bad_pack.xml";
        CHECK(WriteFile(bad, "<soundpack><sounds size=\"1\"></soundpack>"));
        vox::VoxSoundPackXML pack;
        CHECK(pack.LoadXML(bad) == 1);
        vox::DataSourceInfoXML data{};
        CHECK(pack.GetDataSourceInfo(0, data) == 0);
        std::remove(bad);
    }

    std::remove(path);
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("w10_xml_load_test: all checks passed\n");
    return 0;
}
