// Test for the rnd batch g1-game-app-rnd-8b06ae-1. It links with the batch's own source and defines the few symbols that
// source refers to but this batch does not rebuild (the block constructor and the MgxBlock map hooks, which only exist
// so a test Block can be made and the MgxBlock vtable can link). Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <utility>
#include <string>
#include <vector>

#include "dh2/Point3D.hpp"
#include "dh2/lstr.hpp"
#include "core-platform/obj_str.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/Direction.hpp"
#include "dh2/rnd/Exit.hpp"
#include "dh2/rnd/MgxBlock.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Tile.hpp"
#include "tinyxml.h"

// Declared in the batch source (not in a header yet). TryIsZero is declared in dh2/rnd/Exit.hpp.
namespace rnd {
void SplitFileListText(std::string text, std::vector<std::string>& files);
}  // namespace rnd

// Symbols outside this batch that the batch source's vtables and constructors refer to.
bool lstr::operator()(const char* lhs, const char* rhs) const { return std::strcmp(lhs, rhs) < 0; }

// Collaborators of other batches or of the engine that this link does not build. None of them is reached by the tests below.
int gAssertLevel = 0;
FileSystemWin32& SavefileFileSystem() { std::abort(); }
void StrToObj(const char* text, Point3D<float>& value) {
    std::sscanf(text, "%f,%f,%f", &value.X, &value.Y, &value.Z);
}
void PropertyMap::LoadOverridesFromXML(TiXmlElement*) {}
void PropertyMap::SavePropertiesToXML(TiXmlElement*, const char*) {}
namespace rnd {
int RandomGenerator::LoadListRules(TiXmlNode*) { return 1; }
int RandomGenerator::LoadRoomPools(TiXmlNode*) { return 1; }
int RoomPool::ComputeSizeOfRules() { return 1; }
bool RootRule::LoadFromXml(TiXmlNode*) { return true; }
int Tile::SaveAsModuleXML(TiXmlElement*, int index) { return index; }
}  // namespace rnd

namespace rnd {
Block::Block() {}
MgxBlock* MgxBlock::FromFilename(const char*, const char*, const char*) { return nullptr; }
bool MgxBlock::PlaceInMap(Array2d<Tile*>&, Tile*, int, int) { return true; }
bool MgxBlock::RemoveFromMap(Array2d<Tile*>&, Tile*, int, int) { return true; }
bool MgxBlock::FitsInMap(Array2d<Tile*>&, int, int) { return true; }
}  // namespace rnd

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// A concrete block for the tests. Block itself is abstract.
class TestBlock : public rnd::Block {
public:
    bool PlaceInMap(Array2d<rnd::Tile*>& map, rnd::Tile* tile, int x, int y) override {
        (void)map;
        (void)tile;
        (void)x;
        (void)y;
        return true;
    }
    bool RemoveFromMap(Array2d<rnd::Tile*>& map, rnd::Tile* tile, int x, int y) override {
        (void)map;
        (void)tile;
        (void)x;
        (void)y;
        return true;
    }
    bool FitsInMap(Array2d<rnd::Tile*>& map, int x, int y) override {
        (void)map;
        (void)x;
        (void)y;
        return true;
    }
};

// The Exit constructor only keeps the address of its Direction, so a reference to an object of that type is enough here.
const rnd::Direction& TestDirection() {
    static const int anchor = 0;
    return *static_cast<const rnd::Direction*>(static_cast<const void*>(&anchor));
}

void TestTryIsZero() {
    EXPECT(rnd::TryIsZero("0"));
    EXPECT(rnd::TryIsZero(""));
    EXPECT(!rnd::TryIsZero("00"));
    EXPECT(!rnd::TryIsZero("a"));
    EXPECT(!rnd::TryIsZero("0 "));
}

void TestSplitFileListText() {
    std::vector<std::string> files;
    rnd::SplitFileListText("alpha.mgx\r\nbeta.mgx\r\n", files);
    EXPECT(files.size() == 2);
    if (files.size() == 2) {
        EXPECT(files[0] == "alpha.mgx");
        EXPECT(files[1] == "beta.mgx");
    }

    // Without the '\r' the original still drops the character before the newline.
    files.clear();
    rnd::SplitFileListText("one\n", files);
    EXPECT(files.size() == 1);
    if (files.size() == 1) {
        EXPECT(files[0] == "on");
    }

    // Text after the last newline is not a line.
    files.clear();
    rnd::SplitFileListText("a\r\nb", files);
    EXPECT(files.size() == 1);
    if (files.size() == 1) {
        EXPECT(files[0] == "a");
    }

    files.clear();
    rnd::SplitFileListText("", files);
    EXPECT(files.empty());
}

void TestGetBlockUnitPosition() {
    TestBlock block;
    block.m_blockWidth = 2;     // +0x54
    block.m_blockHeight = 3;    // +0x58
    block.m_unitWidth = 10.0f;  // unit width, +0x4c
    block.m_unitHeight = 10.0f; // unit height, +0x50

    std::vector<std::string> names;
    rnd::Exit exit(TestDirection(), &block, 0, 0, 0.0f, 0, names);

    struct Case {
        float x;
        float y;
        int expectX;
        int expectY;
    };
    const Case cases[] = {
        {0.0f, 0.0f, 0, 1},
        {5.0f, 12.0f, 1, 0},
        {-100.0f, 100.0f, 0, 0},
        {25.0f, -20.0f, 3, 3},
    };
    for (const Case& c : cases) {
        Point3D<float> position;
        position.X = c.x;
        position.Y = c.y;
        exit.GetBlockUnitPosition(position, &block);
        EXPECT(exit.m_x == c.expectX);
        EXPECT(exit.m_y == c.expectY);
    }
}

void TestExitConstructor() {
    TestBlock block;
    block.m_name = "blk";
    std::vector<std::string> names = {"north", "south"};
    rnd::Exit exit(TestDirection(), &block, 3, 4, 1.5f, 7, names);

    EXPECT(exit.m_block == &block);
    EXPECT(exit.m_x == 3);
    EXPECT(exit.m_y == 4);
    EXPECT(exit.m_weight == 1.5f);
    EXPECT(exit.m_direction == &TestDirection());
    EXPECT(exit.m_flags == 7);
    EXPECT(exit.unk_28 == 0);
    EXPECT(exit.m_names == names);
    EXPECT(exit.m_blockName != nullptr && std::strcmp(exit.m_blockName, "blk") == 0);
}

void TestExitLoadFromXml() {
    TestBlock block;
    block.m_name = "blk";
    block.m_unitWidth = 10.0f;
    block.m_unitHeight = 10.0f;
    block.m_blockWidth = 1;
    block.m_blockHeight = 1;

    // The link names lose the spaces after the first one by shifting the tail left (the length stays, so the last character repeats),
    // and are split at the commas. The direction name is matched without regard to case. The position's third value is the weight and the
    // index becomes the flags.
    {
        TiXmlDocument document;
        const char* text = "<Link linktype=\"a, b,c\" direction=\"East\" position=\"5,10,3\"/>";
        document.LoadFromBuffer(text, static_cast<int>(std::strlen(text)), TIXML_DEFAULT_ENCODING);
        rnd::Block::Side side = {};
        rnd::Exit* exit = reinterpret_cast<rnd::Exit*>(&side);
        EXPECT(exit->LoadFromXml(TiXmlHandle(document.FirstChild("Link")), &block, 3));
        EXPECT(side.m_direction == &rnd::Direction::sDirections[1]);
        EXPECT(side.m_names.size() == 3);
        EXPECT(side.m_names.size() == 3 && side.m_names[0] == "a" && side.m_names[1] == "b" && side.m_names[2] == "cc");
        EXPECT(side.m_weight == 3.0f);
        EXPECT(side.m_flags == 3);
        EXPECT(side.m_block == &block);
    }
    // A direction name that matches none of the four gives the fifth entry (none).
    {
        TiXmlDocument document;
        const char* text = "<Link linktype=\"a\" direction=\"up\" position=\"0,0,0\"/>";
        document.LoadFromBuffer(text, static_cast<int>(std::strlen(text)), TIXML_DEFAULT_ENCODING);
        rnd::Block::Side side = {};
        rnd::Exit* exit = reinterpret_cast<rnd::Exit*>(&side);
        EXPECT(exit->LoadFromXml(TiXmlHandle(document.FirstChild("Link")), &block, 0));
        EXPECT(side.m_direction == &rnd::Direction::sDirections[4]);
    }
    // No direction, or a last link name of "0", skips the exit.
    {
        TiXmlDocument document;
        const char* text = "<Link linktype=\"a\" position=\"0,0,0\"/>";
        document.LoadFromBuffer(text, static_cast<int>(std::strlen(text)), TIXML_DEFAULT_ENCODING);
        rnd::Block::Side side = {};
        EXPECT(!reinterpret_cast<rnd::Exit*>(&side)->LoadFromXml(TiXmlHandle(document.FirstChild("Link")), &block, 0));
        TiXmlDocument second;
        const char* zero = "<Link linktype=\"a,0\" direction=\"north\" position=\"0,0,0\"/>";
        second.LoadFromBuffer(zero, static_cast<int>(std::strlen(zero)), TIXML_DEFAULT_ENCODING);
        EXPECT(!reinterpret_cast<rnd::Exit*>(&side)->LoadFromXml(TiXmlHandle(second.FirstChild("Link")), &block, 0));
    }
}

void TestBlockSideQueries() {
    // IsStraight: two sides facing opposite ways. GetFlag: one bit per side direction.
    TestBlock straight;
    straight.m_sideCount = 2;
    straight.m_sides[0].m_direction = &rnd::Direction::sDirections[0];  // north
    straight.m_sides[1].m_direction = &rnd::Direction::sDirections[2];  // south
    EXPECT(straight.IsStraight());
    EXPECT(straight.GetFlag() == ((1 << 0) | (1 << 2)));
    straight.m_sides[1].m_direction = &rnd::Direction::sDirections[1];  // east
    EXPECT(!straight.IsStraight());
    straight.m_sideCount = 3;
    straight.m_sides[2].m_direction = &rnd::Direction::sDirections[3];
    EXPECT(!straight.IsStraight());
    EXPECT(straight.GetFlag() == ((1 << 0) | (1 << 1) | (1 << 3)));
}

void TestLinkToOtherBlocks() {
    // A link needs a shared name (strings compared by content) and opposite directions.
    TestBlock a;
    TestBlock b;
    a.m_sideCount = 1;
    b.m_sideCount = 1;
    a.m_sides[0].unk_28 = 0;
    b.m_sides[0].unk_28 = 0;
    a.m_sides[0].m_direction = &rnd::Direction::sDirections[1];  // east
    b.m_sides[0].m_direction = &rnd::Direction::sDirections[3];  // west
    a.m_sides[0].m_names = {"door", "wide"};
    b.m_sides[0].m_names = {"narrow", "door"};
    std::map<const char*, rnd::Block*, lstr> blocks;
    blocks.insert(std::make_pair("b", static_cast<rnd::Block*>(&b)));
    a.LinkToOtherBlocks(blocks);
    EXPECT(a.m_sides[0].unk_28 == 1);
    EXPECT(a.m_sides[0].unk_28 == 1 && a.m_sides[0].m_links[0] == &b.m_sides[0]);

    // The same direction does not link.
    TestBlock c;
    c.m_sideCount = 1;
    c.m_sides[0].unk_28 = 0;
    c.m_sides[0].m_direction = &rnd::Direction::sDirections[3];  // west, like b
    c.m_sides[0].m_names = {"door"};
    c.LinkToOtherBlocks(blocks);
    EXPECT(c.m_sides[0].unk_28 == 0);
    // An empty name never links.
    TestBlock d;
    d.m_sideCount = 1;
    d.m_sides[0].unk_28 = 0;
    d.m_sides[0].m_direction = &rnd::Direction::sDirections[1];
    d.m_sides[0].m_names = {""};
    b.m_sides[0].m_names = {""};
    d.LinkToOtherBlocks(blocks);
    EXPECT(d.m_sides[0].unk_28 == 0);
}

}  // namespace

int main() {
    TestTryIsZero();
    TestSplitFileListText();
    TestGetBlockUnitPosition();
    TestExitConstructor();
    TestExitLoadFromXml();
    TestBlockSideQueries();
    TestLinkToOtherBlocks();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-rnd-8b06ae-1 tests passed\n");
    return 0;
}
