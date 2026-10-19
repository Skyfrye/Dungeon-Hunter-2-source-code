// Deep copies of the sound-loader records: the event copy owns its custom strings and list,
// so destroying the source does not free the copy's data (the binary's shallow copy did).
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

}  // namespace

int main() {
    // Copy constructor: the copy keeps the values after the source is gone.
    vox::EventXMLDef copy;
    {
        vox::EventXMLDef source;
        source.uid_ = 3;
        source.name_ = "Attack";
        source.used_.push_back(9);
        source.sound_uids_ = {1, 2};
        source.mode_ = 1;
        source.max_used_ = 4;
        source.no_sound_percent_ = 25;
        source.sequence_count_ = 2;
        source.custom_count_ = 2;
        source.custom_ = {"x", "y"};
        vox::EventXMLDef copied(source);
        copy = copied;  // copy assignment from a copy
        CHECK(copied.custom_.size() == 2);
    }
    CHECK(copy.uid_ == 3 && copy.name_ == "Attack");
    CHECK(copy.used_.size() == 1 && copy.used_.front() == 9);
    CHECK(copy.sound_uids_.size() == 2 && copy.sound_uids_[1] == 2);
    CHECK(copy.mode_ == 1 && copy.max_used_ == 4 && copy.no_sound_percent_ == 25);
    CHECK(copy.sequence_count_ == 2 && copy.custom_count_ == 2);
    CHECK(copy.custom_.size() == 2 && copy.custom_[1] == "y");

    // Self assignment keeps the record.
    copy = copy;
    CHECK(copy.name_ == "Attack" && copy.custom_.size() == 2);

    // Sound record: the copy owns its strings and custom array too.
    vox::SoundXMLDef sound_copy;
    {
        vox::SoundXMLDef source;
        source.label_ = "Hit";
        source.data_name_ = "Hit.wav";
        source.custom_count_ = 1;
        source.custom_ = {"alpha"};
        source.values_[8] = 1.5f;
        sound_copy = source;
    }
    CHECK(sound_copy.label_ == "Hit" && sound_copy.data_name_ == "Hit.wav");
    CHECK(sound_copy.custom_.size() == 1 && sound_copy.custom_[0] == "alpha");
    CHECK(sound_copy.values_[8] == 1.5f && sound_copy.format_ == -1);

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("w10_xml_record_copy_test: all checks passed\n");
    return 0;
}
