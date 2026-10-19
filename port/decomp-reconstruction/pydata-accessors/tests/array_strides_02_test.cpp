// Element tables of the Arrays::X reads declared in w7_arrays_02.hpp (27 tables: the Sounds/Dict/Trophy family, the
// AI, design, stat and animation tables). This is a separate executable from array_strides_test because
// w7_arrays_02.hpp and w7_arrays_00.hpp declare some of the same Arrays::X structs and cannot share a translation
// unit. See array_strides_test.cpp for what each row proves.
#include "table_test_support.hpp"

#include "pydata-accessors/array_strides.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

#define ROW_MEMBER_FINALIZE(T, E, STRIDE)                                                                     \
    do {                                                                                                      \
        CHECK(Arrays::ListingStride::T == (STRIDE));                                                          \
        for (std::uint32_t n : {3u, 0u}) {                                                                    \
            CHECK((TableMatchesStandaloneDecode<E>(#T, Arrays::T::members, Arrays::T::size, (STRIDE), n,      \
                                                   [](IStreamBase* s) { Arrays::T::read(s); },                \
                                                   [] { Arrays::T::finalize(); })));                          \
        }                                                                                                     \
    } while (0)

static void CharSoundsTableUsedByTheGame() {
    // game-character reads Arrays::CharSoundsTable::size as a range check; the original returns
    // members + 40 * id (listing stride 40). The host table is addressed through the typed element instead.
    BufferStream s;
    s.u32(2);
    for (int e = 0; e < 2; ++e) {
        // CharSounds: four count + int32-word tables, then two bools
        for (int t = 0; t < 4; ++t) {
            s.u32(e + 1);
            for (int k = 0; k <= e; ++k) s.i32(100 * (e + 1) + 10 * t + k);
        }
        s.u8(e & 1).u8(1);
    }
    Arrays::CharSoundsTable::read(&s);
    CHECK(s.pos == s.bytes.size());
    CHECK(Arrays::CharSoundsTable::size == 2);
    CHECK(Arrays::ListingStride::CharSoundsTable == 40);
    std::uint8_t* members = Arrays::CharSoundsTable::members;
    CHECK(members != nullptr);
    if (members == nullptr) return;
    CHECK(pydata::ElementTableListingStride(members) == 40);
    const auto* c = reinterpret_cast<const Structs::CharSounds*>(members);
    if (sizeof(void*) == 8) CHECK(sizeof(Structs::CharSounds) > Arrays::ListingStride::CharSoundsTable);
    CHECK(c[0].DieSize == 1 && c[1].DieSize == 2);
    CHECK(c[1].Die != nullptr && static_cast<const std::int32_t*>(c[1].Die)[1] == 201);
    CHECK(c[1].ImpactVsMetal != nullptr && static_cast<const std::int32_t*>(c[1].ImpactVsMetal)[1] == 231);
    CHECK(c[0].IsFlesh == false && c[1].IsFlesh == true);
    Arrays::CharSoundsTable::finalize();
}

int main() {
    CharSoundsTableUsedByTheGame();

    ROW_MEMBER_FINALIZE(CharAnimTable, Structs::CharAnim, 160);
    ROW_MEMBER_FINALIZE(CamAnimSetTable, Structs::CamAnimSet, 28);
    ROW_MEMBER_FINALIZE(AnimTable, Structs::AnimTpl, 20);
    ROW_MEMBER_FINALIZE(AIFactionTable, Structs::AIFactions, 12);
    ROW_MEMBER_FINALIZE(AITable, Structs::AIProps, 68);
    ROW_MEMBER_FINALIZE(GameDifficulties, Structs::GameDifficulty, 24);
    ROW_MEMBER_FINALIZE(DesignSettingsTable, Structs::DesignSettings, 176);
    ROW_MEMBER_FINALIZE(RectTable, Structs::Rect, 20);
    ROW_MEMBER_FINALIZE(StatListTable, Structs::StatListList, 12);
    ROW_MEMBER_FINALIZE(StatAutoAssignSchemeTable, Structs::StatAutoAssignTargetList, 12);
    ROW_MEMBER_FINALIZE(StrID_Languages, Structs::LangSheetList, 12);
    ROW_MEMBER_FINALIZE(GameObjectDict, Structs::ColladaFile, 12);
    ROW_MEMBER_FINALIZE(Sounds, Structs::SoundAutoGen, 12);
    ROW_MEMBER_FINALIZE(ProjectileDict, Structs::ColladaFile, 12);
    ROW_MEMBER_FINALIZE(EffectDict, Structs::ColladaFile, 12);
    ROW_MEMBER_FINALIZE(AnimDict, Structs::ColladaFile, 12);
    ROW_MEMBER_FINALIZE(WorldMapLockers, Structs::WorldMapLocker, 12);
    ROW_MEMBER_FINALIZE(WorldMap, Structs::WldMapLocation, 20);
    ROW_MEMBER_FINALIZE(v2Events, Structs::v2Event, 24);
    ROW_MEMBER_FINALIZE(v2Conditions, Structs::v2CondAnd, 16);
    ROW_MEMBER_FINALIZE(TrophyTable, Structs::Trophy, 32);
    ROW_MEMBER_FINALIZE(SpawnGroups, Structs::SpawnGroup, 20);
    ROW_MEMBER_FINALIZE(Sounds_bak, Structs::Sound, 44);
    ROW_MEMBER_FINALIZE(SoundGroupsRouting, Structs::SoundGroup, 16);
    ROW_MEMBER_FINALIZE(SoundBankPlayback, Structs::SoundBank, 12);
    ROW_MEMBER_FINALIZE(Listeners, Structs::Listener, 28);
    ROW_MEMBER_FINALIZE(CharSoundsTable, Structs::CharSounds, 40);

    if (failures == 0) std::printf("array_strides_02_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
