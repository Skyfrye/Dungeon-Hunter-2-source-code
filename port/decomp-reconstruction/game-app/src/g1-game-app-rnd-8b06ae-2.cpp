// Batch g1-game-app-rnd-8b06ae-2 (rnd, part 3 of 8): MgxBlock, Block, RPElem, RoomPool, Rule, RootRule, Path and EndPath.
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Duplicate addresses: the Block constructors 0x48ab34 and 0x48ac24, and the MgxBlock constructors 0x48ad14 and 0x48b108,
// have identical bodies (the C1 and C2 variants). Each pair is one C++ definition, listed under both addresses.
//
// The block constructors and the MgxBlock constructors are the C1 and C2 variants of one body each.
//
// Assert behaviour (PlaceInMap, RemoveFromMap): gAssertLevel 2 stores through null in the original (abort here), level 1
// prints the ASSERT line for rndBlock.cpp (298 or 320), and level 0 is silent. The cell loop goes on after a level 0 or 1
// failure, as in the original.
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <string>
#include <utility>
#include <vector>

#include "dh2/IFileStream.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/rnd/Direction.hpp"
#include "dh2/rnd/EndPath.hpp"
#include "tinyxml.h"
#include <cstdint>
#include "dh2/rnd/MgxBlock.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RPElem.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"

// Global assert level. core-platform/memory.hpp declares it too; it is not included here, as in the other game-app sources.
extern int gAssertLevel;

namespace {

// Source path printed by the original's ASSERT in rndBlock.cpp.
constexpr const char kRndBlockCppPath[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndBlock.cpp";

// The original's ASSERT(false) on a cell that is not in the expected state. Level 2 stores through null to crash, which is
// reproduced as abort(). Level 1 prints the line. Level 0 does nothing.
void ReportBlockCellAssert(int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false", kRndBlockCppPath, line);
    }
}

// The original searches the name from its end for ".mgx" and removes the last match with a four-character replace (a
// std::search over reverse iterators, then a replace with ""). That is rfind followed by erase.
void StripMgxExtension(std::string& name) {
    const std::size_t pos = name.rfind(".mgx");
    if (pos != std::string::npos) {
        name.erase(pos, 4);
    }
}

}  // namespace

namespace rnd {

// 0x48aa84 rnd::MgxBlock::LoadFromXmlStream(IFileStream*)
// Reads the whole stream into a malloc'd buffer (+0x9c0), parses it into a new TiXmlDocument (+0x9c4) with LoadFromBuffer, takes the
// document's "Module" child (index 0) and returns LoadFromXml of it.
bool MgxBlock::LoadFromXmlStream(IFileStream* stream) {
    const int size = static_cast<int>(stream->size());                   // IFileStream vtable +0x08
    m_fileBuffer = std::malloc(static_cast<std::size_t>(size));          // +0x9c0
    stream->read(m_fileBuffer, static_cast<std::uint64_t>(size));        // vtable +0x18
    m_document = new TiXmlDocument();                                    // +0x9c4
    m_document->LoadFromBuffer(m_fileBuffer, size, TIXML_DEFAULT_ENCODING);
    TiXmlHandle module = TiXmlHandle(m_document).Child("Module", 0);
    return LoadFromXml(module);
}

// 0x48ab34 rnd::Block::Block(void)
// 0x48ac24 rnd::Block::Block(void)  (same body; one definition serves both)
// The names are empty, the unit size is 2960 by 2960, the block size 1 by 1, no side is in use, and every side points at the default
// direction (the fifth sDirections entry, none) with its link table empty. The name vector (+0x1c .. +0x27) is empty by the default
// constructor of Side, as the original zeroes it.
Block::Block() {
    m_unitWidth = 2960.0f;   // +0x4c
    m_unitHeight = 2960.0f;  // +0x50
    m_blockWidth = 1;        // +0x54
    m_blockHeight = 1;       // +0x58
    m_sideCount = 0;         // +0x5c
    for (Side& side : m_sides) {
        side.m_direction = &Direction::sDirections[4];  // +0x14 unk_956B24
        side.unk_28 = 0;
    }
}

// 0x48ad14 rnd::MgxBlock::MgxBlock(void)
// 0x48b108 rnd::MgxBlock::MgxBlock(void)  (same body; one definition serves both)
MgxBlock::MgxBlock() {
    m_fileBuffer = nullptr;  // +0x9c0
    m_document = nullptr;    // +0x9c4
}

// 0x48ad54 rnd::MgxBlock::FromFilename(char const*,char const*,char const*)
// Opens "<gameplay>/mgx/<filename>" (a 512-byte buffer) on the device file system. When it opens: a new MgxBlock takes the file name as
// its name with the last ".mgx" removed, the gameplay folder and the visual name, and loads its XML from the stream; a block whose
// XML does not load is deleted. The stream is closed in every case where it was opened.
MgxBlock* MgxBlock::FromFilename(const char* gameplay, const char* visual, const char* filename) {
    FileSystemWin32& fileSystem = SavefileFileSystem();                  // device +0x34
    char path[512];
    std::snprintf(path, sizeof(path), "%s/mgx/%s", gameplay, filename);
    IFileStream* stream = fileSystem.openFile(path, false, false);       // vtable +0x88
    MgxBlock* block = nullptr;
    if (stream != nullptr) {
        block = new MgxBlock();
        block->m_name = filename;
        StripMgxExtension(block->m_name);
        block->m_gameplay = gameplay;
        block->m_visual = visual;
        if (!block->LoadFromXmlStream(stream)) {
            delete block;
            block = nullptr;
        }
        fileSystem.closeFile(stream);                                    // vtable +0x78
    }
    return block;
}

// 0x48b85c rnd::MgxBlock::FitsInMap(Array2d<rnd::Tile*>&,int,int)
// True when every cell of the m_blockWidth by m_blockHeight footprint at (x, y) is empty. Array2d grows to cover the cells.
bool MgxBlock::FitsInMap(Array2d<Tile*>& map, int x, int y) {
    for (int dx = 0; dx < m_blockWidth; ++dx) {
        for (int dy = 0; dy < m_blockHeight; ++dy) {
            if (map(x + dx, y + dy) != nullptr) {
                return false;
            }
        }
    }
    return true;
}

// 0x48b8f0 rnd::MgxBlock::RemoveFromMap(Array2d<rnd::Tile*>&,rnd::Tile*,int,int)
// Clears each footprint cell that holds `tile`. A cell that holds something else is an assert (see the file header).
// Returns 1 in the original.
bool MgxBlock::RemoveFromMap(Array2d<Tile*>& map, Tile* tile, int x, int y) {
    for (int dy = 0; dy < m_blockHeight; ++dy) {
        for (int dx = 0; dx < m_blockWidth; ++dx) {
            Tile*& cell = map(x + dx, y + dy);
            if (cell == tile) {
                cell = nullptr;
            } else {
                ReportBlockCellAssert(320);
            }
        }
    }
    return true;
}

// 0x48ba58 rnd::MgxBlock::PlaceInMap(Array2d<rnd::Tile*>&,rnd::Tile*,int,int)
// Stores `tile` in each empty footprint cell. An occupied cell is an assert (see the file header). Returns 1 in the original.
bool MgxBlock::PlaceInMap(Array2d<Tile*>& map, Tile* tile, int x, int y) {
    for (int dy = 0; dy < m_blockHeight; ++dy) {
        for (int dx = 0; dx < m_blockWidth; ++dx) {
            Tile*& cell = map(x + dx, y + dy);
            if (cell == nullptr) {
                cell = tile;
            } else {
                ReportBlockCellAssert(298);
            }
        }
    }
    return true;
}

// 0x48bbec rnd::Rule::Impl::GetRootRule(void)
RootRule* Rule::Impl::GetRootRule() {
    return m_rule->m_root;
}

// 0x48bbf8 rnd::Rule::GetRootRule(void)
RootRule* Rule::GetRootRule() {
    return m_root;
}

// 0x48bc00 rnd::RPElem::FillSizes(int,int)
// Stores the first size at +0x0c and +0x14, and max(a, b) at +0x10. Does nothing when either size is negative.
void RPElem::FillSizes(int a, int b) {
    if ((a | b) >= 0) {
        unk_10 = (b < a) ? a : b;
        unk_14 = a;
        unk_0c = a;
    }
}

// 0x48bc20 rnd::RoomPool::Find(unsigned long)
// The first element whose key (+0x04) equals `key`, or null. Elements are checked in order, as in the original.
RPElem* RoomPool::Find(unsigned long key) {
    for (RPElem& elem : m_elems) {
        if (elem.m_id == key) {
            return &elem;
        }
    }
    return nullptr;
}

// 0x48bc94 rnd::Rule::Unload(void)
// Deletes the child rules from the last slot back to the first, each through its virtual destructor, then clears the 16
// child slots. m_childCount is the child count. Only the first m_childCount slots are read; the original reads them the same way.
void Rule::Unload() {
    while (m_childCount > 0) {
        --m_childCount;
        Rule* child = m_children[m_childCount];
        if (child != nullptr) {
            delete child;
        }
    }
    for (Rule*& slot : m_children) {
        slot = nullptr;
    }
}

// 0x48bcf4 rnd::Rule::GetApp(void) const
RandomGenerator* Rule::GetApp() const {
    return m_root->m_generator;
}

// 0x48bd00 rnd::RootRule::Unload(void)
// Empty in the original (a single BX LR). The root rule owns nothing that Rule::Unload would release.
void RootRule::Unload() {}

// 0x48bd04 rnd::RootRule::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>>&,rnd::ListRule*&)
// Empty in the original (a single BX LR). The arguments are not used.
void RootRule::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& /*candidates*/, ListRule*& /*list*/) {}

// 0x48bd08 rnd::RootRule::Impl::WriteDebuggingInfo(void)
// Empty in the original (a single BX LR).
void RootRule::Impl::WriteDebuggingInfo() {}

// 0x48bd0c rnd::Path::Impl::IsDeadEnd(void) const
// A dead end when Impl m_depth + 1 equals m_limit and the source rule has no children (Rule::m_childCount == 0).
bool Path::Impl::IsDeadEnd() const {
    return m_depth + 1 == m_limit && m_rule->m_childCount == 0;
}

// 0x48bd38 rnd::EndPath::Impl::OneStep(rnd::Tile*,rnd::Exit const*,rnd::Exit const*)
// Returns 1: an end path places nothing and ends the path.
int EndPath::Impl::OneStep(Tile* /*tile*/, const Exit* /*from*/, const Exit* /*to*/) {
    return 1;
}

}  // namespace rnd
