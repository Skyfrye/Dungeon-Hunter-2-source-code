// VoxSoundPackXML accessors over tables filled directly (the XML loader is not ported).
#include <cstdint>
#include <cstdio>
#include <string>

#include "vox-audio/vox/sound_pack_xml.hpp"

namespace vox {
struct VoxSoundPackXMLTestAccess {
    static std::vector<SoundRecordXML>& Sounds(VoxSoundPackXML& p) { return p.sounds_; }
    static std::vector<GroupRecordXML>& Groups(VoxSoundPackXML& p) { return p.groups_; }
    static std::vector<BankRecordXML>& Banks(VoxSoundPackXML& p) { return p.banks_; }
    static std::vector<EventRecordXML>& Events(VoxSoundPackXML& p) { return p.events_; }
    static std::map<const char*, std::int32_t, c8stringcomp>& SoundUids(VoxSoundPackXML& p) {
        return p.sound_uids_;
    }
};
}  // namespace vox

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

const char* const kCustomSound[] = {"alpha", "beta"};
const char* const kCustomEvent[] = {"x"};

// Two groups, two banks, two sounds (the second names a missing group), two events.
void BuildPack(vox::VoxSoundPackXML& pack) {
    auto& groups = vox::VoxSoundPackXMLTestAccess::Groups(pack);
    vox::GroupRecordXML g0;
    g0.uid = 0;
    g0.name_ptr = "Sfx";
    g0.name = "Sfx";
    g0.field_30 = 9;
    g0.type = 4;
    vox::GroupRecordXML g1;
    g1.uid = 1;
    g1.name_ptr = "Music";
    g1.name = "Music";
    g1.field_30 = 8;
    g1.type = 2;
    groups = {g0, g1};

    auto& banks = vox::VoxSoundPackXMLTestAccess::Banks(pack);
    vox::BankRecordXML b0;
    b0.uid = 0;
    b0.behavior = 3;
    b0.field_08 = 22;
    b0.field_0c = 11;
    b0.field_24 = 33;
    b0.name = "Ambient";
    vox::BankRecordXML b1;
    b1.uid = 1;
    b1.name = "Combat";
    banks = {b0, b1};

    auto& sounds = vox::VoxSoundPackXMLTestAccess::Sounds(pack);
    vox::SoundRecordXML s0;
    s0.uid = 0;
    s0.emitter_uid = 7;
    s0.data_name = "wav0";
    s0.format = 3;
    s0.field_15 = 0;
    s0.field_16 = 1;
    s0.field_10 = 5;
    s0.emitter_flag = 1;
    s0.emitter_values_[0] = 100;
    s0.emitter_values_[8] = 108;
    s0.custom_count = 2;
    s0.custom_values = kCustomSound;
    vox::SoundRecordXML s1;
    s1.uid = 1;
    s1.emitter_uid = 8;
    s1.data_name = "wav1";
    s1.field_16 = 2;  // no such group
    sounds = {s0, s1};
    auto& uids = vox::VoxSoundPackXMLTestAccess::SoundUids(pack);
    uids["Explosion"] = 0;
    uids["Jump"] = 1;

    auto& events = vox::VoxSoundPackXMLTestAccess::Events(pack);
    vox::EventRecordXML e0;
    e0.uid = 0;
    e0.name = "Attack";
    e0.sound_uids = {0, 1};
    e0.field_1c = -2;
    e0.field_1e = 5;
    e0.field_20 = 6;
    e0.custom_count = 1;
    e0.custom_values = kCustomEvent;
    vox::EventRecordXML e1;
    e1.uid = 1;
    e1.name = "Stop";
    events = {e0, e1};
}

void TestEvents(vox::VoxSoundPackXML& pack) {
    CHECK(pack.GetEventUid("attack") == 0);  // case-insensitive
    CHECK(pack.GetEventUid("Stop") == 1);
    CHECK(pack.GetEventUid("missing") == -1);

    int index = 0;
    CHECK(pack.GetEventSize(index) == 2);
    index = 5;
    CHECK(pack.GetEventSize(index) == -1);
    CHECK(pack.GetEventSize("Stop") == 0);

    vox::EventInfoXML info;
    index = 0;
    CHECK(pack.GetEventInfo(index, info) == 1);
    CHECK(info.uid == 0);
    CHECK(info.name != nullptr && std::string(info.name) == "Attack");
    CHECK(info.sound_uids != nullptr && info.sound_uids->size() == 2);
    CHECK(info.field_1c == -2 && info.field_1e == 5 && info.field_20 == 6);
    CHECK(info.custom_count == 1);

    const char* value = nullptr;
    CHECK(pack.GetEventCustomParam(index, 0, value) && std::string(value) == "x");
    value = nullptr;
    CHECK(!pack.GetEventCustomParam(index, 1, value) && value == nullptr);
    CHECK(pack.GetEventCustomParam("ATTACK", 0, value) && std::string(value) == "x");

    CHECK(pack.GetEventInfo("Missing", info) == 0);
}

void TestSounds(vox::VoxSoundPackXML& pack) {
    CHECK(pack.GetSoundUid("Jump") == 1);
    CHECK(pack.GetSoundUid("Explosion") == 0);
    CHECK(pack.GetSoundUid("nope") == -1);

    const char* name = nullptr;
    vox::FormatTypes format{};
    int f16 = -1;
    int f15 = -1;
    vox::VoxSourceLoadingFlags flags{};
    CHECK(pack.GetDataSourceInfo(0, name, format, f16, f15, flags) == 1);
    CHECK(std::string(name) == "wav0");
    CHECK(static_cast<int>(format) == 3);
    CHECK(f16 == 1 && f15 == 0);
    CHECK(static_cast<int>(flags) == 5);

    vox::DataSourceInfoXML data;
    CHECK(pack.GetDataSourceInfo(0, data) == 1);
    CHECK(data.format == 3 && data.field_10 == 5 && data.custom_count == 2);
    CHECK(data.custom_values[1] == kCustomSound[1]);
    CHECK(pack.GetDataSourceInfo(9, data) == 0);

    bool found = pack.GetSoundCustomParam(0, 1, name);
    CHECK(found && std::string(name) == "beta");
    found = pack.GetSoundCustomParam(0, 2, name);
    CHECK(!found && name == nullptr);
    CHECK(pack.GetSoundCustomParam("Explosion", 0, name) && std::string(name) == "alpha");

    // The emitter of sound 0 uses group 1 ("Music"); sound 1 names group 2, which does not exist.
    int emitter_uid = -1;
    int group = -1;
    bool flag = false;
    vox::Vox3DSoundType type{};
    const char* group_name = nullptr;
    CHECK(pack.GetEmitterInfo(0, emitter_uid, group, flag, type, group_name) == 1);
    CHECK(emitter_uid == 7 && group == 1 && flag);
    CHECK(static_cast<int>(type) == 2);
    CHECK(std::string(group_name) == "Music");

    emitter_uid = -1;
    group = -1;
    CHECK(pack.GetEmitterInfo(1, emitter_uid, group, flag, type, group_name) == 0);
    CHECK(group == 2);  // the group index is stored before the failed lookup
    CHECK(emitter_uid == -1);

    vox::EmitterInfoXML emitter;
    CHECK(pack.GetEmitterInfo("Explosion", emitter) == 1);
    CHECK(emitter.uid == 0 && emitter.emitter_uid == 7 && emitter.group == 1);
    CHECK(emitter.flag && emitter.type == 2);
    CHECK(emitter.values_[0] == 100 && emitter.values_[8] == 108);
    CHECK(emitter.custom_count == 2 && emitter.custom_values == kCustomSound);
    CHECK(pack.GetEmitterInfo(1, emitter) == 0);

    int sound_uid = -1;
    emitter_uid = -1;
    group = -1;
    CHECK(pack.GetEmitterInfo("Jump", sound_uid, emitter_uid, group, flag, type, group_name) == 0);
    CHECK(sound_uid == 1 && group == 2);
}

void TestGroupsAndBanks(vox::VoxSoundPackXML& pack) {
    CHECK(pack.GetGroupUid("Music") == 1);
    CHECK(pack.GetGroupUid("Ambient") == -1);
    vox::GroupInfoXML group;
    CHECK(pack.GetGroupInfo("Sfx", group) == 1);
    CHECK(group.uid == 0 && group.field_30 == 9 && group.type == 4);
    CHECK(std::string(group.name) == "Sfx");

    const char* name = nullptr;
    vox::Vox3DSoundType type{};
    int index = 1;
    CHECK(pack.GetGroupInfo(index, name, type) == 1);
    CHECK(std::string(name) == "Music" && static_cast<int>(type) == 2);
    index = 2;
    CHECK(pack.GetGroupInfo(index, name, type) == 0);

    CHECK(pack.GetBankUid("Combat") == 1);
    vox::BankInfoXML bank;
    index = 0;
    CHECK(pack.GetBankInfo(index, bank) == 1);
    CHECK(bank.uid == 0 && bank.behavior == 3 && bank.field_08 == 22);
    CHECK(bank.field_0c == 11 && bank.field_24 == 33);

    int bank_uid = -1;
    int a = -1;
    int b = -1;
    vox::PriorityBankBehavior behavior{};
    CHECK(pack.GetBankInfo("Ambient", bank_uid, a, b, behavior) == 1);
    CHECK(bank_uid == 0 && a == 11 && b == 22 && static_cast<int>(behavior) == 3);

    // A bank whose own uid does not match its index is rejected.
    vox::VoxSoundPackXMLTestAccess::Banks(pack)[1].uid = 5;
    index = 1;
    CHECK(pack.GetBankInfo(index, a, b, behavior) == 0);
    CHECK(pack.GetBankInfo("Combat", bank) == 0);
}

}  // namespace

int main() {
    vox::VoxSoundPackXML pack;
    BuildPack(pack);
    TestEvents(pack);
    TestSounds(pack);
    TestGroupsAndBanks(pack);
    if (g_failures != 0) {
        std::fprintf(stderr, "sound_pack_xml_test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("sound_pack_xml_test: all checks passed\n");
    return 0;
}
