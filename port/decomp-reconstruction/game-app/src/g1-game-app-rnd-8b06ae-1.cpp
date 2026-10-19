// Batch g1-game-app-rnd-8b06ae-1 (owner rnd, part 2 of 8): random-level file lists, rule and block loading,
// block and exit geometry, and the rnd destructors. Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Status: the device file system (ReadFileText), rnd::Direction (five entries, the fifth is none), the block link table
// (Block::Side::m_links, count in unk_28) and TinyXML (including the DH2 TiXmlDocument::LoadFromBuffer) are all available, so the
// file lists, the block geometry and the XML loaders of this part are reconstructed.
//
#include "dh2/rnd/RandomGenerator.hpp"

#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <new>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/obj_str.hpp"
#include "dh2/IFileStream.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/lstr.hpp"
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/Direction.hpp"
#include "dh2/rnd/Exit.hpp"
#include "dh2/rnd/FileText.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/rnd/MgxBlock.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Tile.hpp"
#include "tinyxml.h"

#if defined(_WIN32)
#define DH2_STRCASECMP _stricmp
#else
#include <strings.h>
#define DH2_STRCASECMP strcasecmp
#endif

// Global assert level (also declared by core-platform/memory.hpp, not included here).
extern int gAssertLevel;

namespace rnd {

namespace {

// Case-insensitive equality through the platform's strcasecmp, as the original's LC_API_STRCASECMP does.
bool IgnoreCaseEquals(const char* lhs, const char* rhs) {
    return DH2_STRCASECMP(lhs, rhs) == 0;
}

constexpr const char kRndAppCppPath[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndApp.cpp";

// The original's ASSERT(false) in rndApp.cpp. Level 2 stores through null to crash (abort here), level 1 prints the line.
void ReportRuleFileAssert(int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false", kRndAppCppPath, line);
    }
}

}  // namespace

// Opens `path` on the device file system (openFile, vtable +0x88), reads size() bytes (vtable +0x08 and +0x18), puts a NUL after them and
// closes the stream (vtable +0x78). The text is the C string in the buffer.
bool ReadFileText(const char* path, std::string& text) {
    text.clear();
    IFileStream* stream = SavefileFileSystem().openFile(path, false, false);
    if (stream == nullptr) {
        return false;
    }
    const std::uint32_t size = stream->size();
    std::vector<char> buffer(static_cast<std::size_t>(size) + 1, '\0');
    stream->read(buffer.data(), size);
    text = buffer.data();
    SavefileFileSystem().closeFile(stream);
    return true;
}

// Splits a list file into lines at each '\n'. For each newline at index pos, the original takes text[0, pos - 1) as the
// line, so the character before the newline is dropped as well (list files carry CRLF line ends and the '\r' goes).
// When the newline is the first character, pos - 1 wraps to the largest size and substr returns the whole rest, as the
// original's 0xFFFFFFFF length does. The remainder after the newline becomes the next input. Text after the last
// newline is not added.
void SplitFileListText(std::string text, std::vector<std::string>& files) {
    std::size_t pos = text.find('\n');
    while (pos != std::string::npos) {
        files.push_back(text.substr(0, pos - 1));
        text = text.substr(pos + 1);
        pos = text.find('\n');
    }
}

// 0x489aa4 rnd::TryIsZero(char const*)
// True when the text is "0" or empty (case-insensitive compare, as the original). Declared in dh2/rnd/Exit.hpp.
bool TryIsZero(const char* text) {
    return IgnoreCaseEquals(text, "0") || IgnoreCaseEquals(text, "");
}

// 0x488904 rnd::RandomGenerator::GetFiles(char const*, std::vector<std::string, std::allocator<std::string>>&)
// Reads the whole list file through the device file system (openFile, size, read, close) and splits its text at each newline, dropping the
// character before the newline as well (list files carry CRLF line ends). A missing file crashes the original (it dereferences the null
// stream); here it gives no names. The original returns a garbage register value, which the header keeps as void.
void RandomGenerator::GetFiles(const char* directory, std::vector<std::string>& files) {
    std::string text;
    ReadFileText(directory, text);
    SplitFileListText(text, files);
}

// 0x488b84 rnd::RandomGenerator::SaveModularLevelToStream(StreamBuffer&)
// Builds a TinyXML document: the declaration ("1.0", "utf-8", ""), three comments (the generator banner, the software version and
// " Source file: <rule file name> "), and a "Level" element that takes the level config's properties (the PropertyMap at LevelConfig +0x04,
// SavePropertiesToXML with no name) and, when a root tile exists, the module tree (Tile::SaveAsModuleXML (level, 0)). The document is
// printed by a TiXmlPrinter whose line break is "\r\n" and the text is written to the end of the stream (expand, then write). The original
// formats the source line into a 128-byte buffer (sprintf); here the line has no limit.
void RandomGenerator::SaveModularLevelToStream(StreamBuffer& stream) {
    TiXmlDocument document;
    document.LinkEndChild(new TiXmlDeclaration("1.0", "utf-8", ""));
    TiXmlComment* banner = new TiXmlComment(" This file was generated by the Dungeon Hunter random generator ");
    TiXmlComment* version = new TiXmlComment(" Software version 0.01 ");
    const std::string sourceLine = " Source file: " + m_ruleFileName + " ";
    TiXmlComment* source = new TiXmlComment(sourceLine.c_str());
    document.LinkEndChild(banner);
    document.LinkEndChild(version);
    document.LinkEndChild(source);
    TiXmlElement* level = new TiXmlElement("Level");
    document.LinkEndChild(level);
    m_levelConfig->SavePropertiesToXML(level, nullptr);
    if (m_rootTile != nullptr) {
        m_rootTile->SaveAsModuleXML(level, 0);
    }
    TiXmlPrinter printer;
    printer.SetLineBreak("\r\n");
    document.Accept(&printer);
    stream.expand(static_cast<std::uint64_t>(printer.Size()));
    stream.write(printer.CStr(), static_cast<std::uint64_t>(printer.Size()));
}

// 0x488e50 rnd::RandomGenerator::SaveModularLevelXml(void)
// Writes the level to a file named after the rule file: the text of SaveModularLevelToStream goes into a stream; the path is m_sceneDir +
// m_ruleFileName, and the first ".xml" in it is replaced (four characters) by "_<seed>.mlx", where <seed> is m_seed as an unsigned
// number; a path without ".xml" is kept. The file is opened as a writable savefile (openSavefile, vtable +0x94) and, when it opens, the
// stream's first block (size() bytes) is written to it and the file is closed. The result is the name after the last '/' of the path.
std::string RandomGenerator::SaveModularLevelXml() {
    StreamBuffer stream;
    SaveModularLevelToStream(stream);
    std::string path = m_sceneDir + m_ruleFileName;
    const std::size_t extension = path.find(".xml");
    if (extension != std::string::npos) {
        path.replace(extension, 4, "_" + std::to_string(static_cast<std::uint32_t>(m_seed)) + ".mlx");
    }
    FileSystemWin32& fileSystem = SavefileFileSystem();                  // device +0x34
    IFileStream* file = fileSystem.openSavefile(path.c_str(), true);     // vtable +0x94
    if (file != nullptr) {
        file->write(stream.buffer_.FirstBlock(), static_cast<std::uint64_t>(stream.size()));  // vtable +0x1c
        fileSystem.closeFile(file);                                      // vtable +0x78
    }
    return path.substr(path.rfind('/') + 1);
}

// 0x4892ec rnd::RandomGenerator::LoadBlocks(void)
// The block list is read from "<unk_144>/mgx/mgxlist.txt" through GetFiles; each name that contains ".mgx" is loaded with
// MgxBlock::FromFilename(folder, target, name) and inserted under the block's name (insert_unique, so a name that is
// already present keeps its first block), then every block links to the others. Always true.
bool RandomGenerator::LoadBlocks() {
    const std::string listPath = unk_144 + "/mgx/mgxlist.txt";
    std::vector<std::string> names;
    GetFiles(listPath.c_str(), names);
    for (const std::string& name : names) {
        if (name.find(".mgx") == std::string::npos) {
            continue;
        }
        MgxBlock* block = MgxBlock::FromFilename(unk_144.c_str(), unk_12c.c_str(), name.c_str());
        if (block != nullptr) {
            m_blocks.insert(std::make_pair(block->m_name.c_str(), static_cast<Block*>(block)));
        }
    }
    for (auto& entry : m_blocks) {
        entry.second->LinkToOtherBlocks(m_blocks);
    }
    return true;
}

// 0x489508 rnd::RandomGenerator::LoadRuleFile(char const*)
// The path is kept in m_ruleFileName (+0x174). When it holds a '/' the part up to and including the last one becomes m_sceneDir (+0x15c)
// and the file name after it becomes m_ruleFileName; otherwise the file is opened as "data/scene/<path>". The file is read whole
// into a malloc'd buffer (+0x128) and parsed with LoadFromBuffer into a new TiXmlDocument (+0x124). The "rules" element must exist
// (false otherwise). Its overrides go to the level config's PropertyMap, its "target" and "folder" attributes (empty when absent) are
// unk_12c and unk_144; then LoadBlocks, LoadListRules, LoadRoomPools, the "RootRule" child and the room pool sizes, and the result is
// the AND of the four loaders. A pool whose ComputeSizeOfRules is 0 raises ASSERT(false) at rndApp.cpp:166.
bool RandomGenerator::LoadRuleFile(const char* path) {
    m_ruleFileName = path;
    FileSystemWin32& fileSystem = SavefileFileSystem();                  // device +0x34
    const std::size_t separator = m_ruleFileName.rfind('/');
    char scenePath[512];
    const char* openPath = path;
    if (separator == std::string::npos) {
        std::snprintf(scenePath, sizeof(scenePath), "data/scene/%s", path);
        openPath = scenePath;
    } else {
        m_sceneDir = m_ruleFileName.substr(0, separator + 1);
        m_ruleFileName = m_ruleFileName.substr(separator + 1);
    }
    IFileStream* stream = fileSystem.openFile(openPath, false, false);   // vtable +0x88
    if (stream == nullptr) {
        return false;
    }
    const int size = static_cast<int>(stream->size());
    m_xmlBuffer = static_cast<char*>(std::malloc(static_cast<std::size_t>(size)));
    stream->read(m_xmlBuffer, static_cast<std::uint64_t>(size));
    fileSystem.closeFile(stream);                                        // vtable +0x78
    m_xmlDocument = new TiXmlDocument();
    m_xmlDocument->LoadFromBuffer(m_xmlBuffer, size, TIXML_DEFAULT_ENCODING);
    TiXmlHandle rules = TiXmlHandle(m_xmlDocument).Child("rules", 0);
    TiXmlElement* element = rules.ToElement();
    if (element == nullptr) {
        return false;
    }
    if (m_levelConfig != nullptr) {
        m_levelConfig->LoadOverridesFromXML(element);                    // PropertyMap at LevelConfig +0x04
    }
    const char* target = element->Attribute("target");
    unk_12c = target != nullptr ? target : "";
    const char* folder = element->Attribute("folder");
    unk_144 = folder != nullptr ? folder : "";
    bool ok = LoadBlocks();
    ok = (LoadListRules(rules.ToNode()) != 0) && ok;
    ok = (LoadRoomPools(rules.ToNode()) & 1) != 0 && ok;
    TiXmlHandle rootRule = rules.Child("RootRule", 0);
    ok = m_rootRule.LoadFromXml(rootRule.ToNode()) && ok;
    for (std::size_t i = 0; i < m_roomPools.size(); ++i) {
        if (!m_roomPools[i]->ComputeSizeOfRules()) {
            ReportRuleFileAssert(166);
        }
    }
    return ok;
}

// 0x489988 rnd::Block::IsStraight(void)
// True when the block has two sides and the direction of side 0 is the opposite of the direction of side 1.
bool Block::IsStraight() const {
    return m_sideCount == 2 &&
           m_sides[0].m_direction->id == Direction::sDirections[DIRECTION_OPPOSITES[m_sides[1].m_direction->id]].id;
}

// 0x4899e4 rnd::Block::GetFlag(void)
// ORs 1 << (direction id) over the first m_sideCount sides.
int Block::GetFlag() const {
    int flags = 0;
    for (int i = 0; i < m_sideCount; ++i) {
        flags |= 1 << m_sides[i].m_direction->id;
    }
    return flags;
}

// 0x489aec rnd::Block::LinkToOtherBlocks(std::map<char const*, rnd::Block*, lstr> const&)
// For every block of the map, every side of this block and every side of that block, and every pair of names (Side::m_names, strings
// compared by content; empty names of this side are skipped): when the names match and the direction of this side is the opposite
// of the direction of the other side, the other side's record is appended to this side's link table (count at +0x28, pointers at
// +0x2c). A pair of sides can be linked more than once when several name pairs match.
void Block::LinkToOtherBlocks(const std::map<const char*, Block*, lstr>& blocks) {
    for (const auto& entry : blocks) {
        Block* other = entry.second;
        for (int i = 0; i < m_sideCount; ++i) {
            Side& side = m_sides[i];
            for (int j = 0; j < other->m_sideCount; ++j) {
                Side& otherSide = other->m_sides[j];
                for (std::size_t k = 0; k < side.m_names.size(); ++k) {
                    for (std::size_t l = 0; l < otherSide.m_names.size(); ++l) {
                        const std::string& name = side.m_names[k];
                        if (name.empty()) {
                            continue;
                        }
                        if (name.size() == otherSide.m_names[l].size() && std::memcmp(name.data(), otherSide.m_names[l].data(), name.size()) == 0 &&
                            side.m_direction->id == Direction::sDirections[DIRECTION_OPPOSITES[otherSide.m_direction->id]].id) {
                            side.m_links[side.unk_28] = &otherSide;
                            ++side.unk_28;
                        }
                    }
                }
            }
        }
    }
}

// 0x489ddc rnd::Exit::GetBlockUnitPosition(Point3D<float>&, rnd::Block*)
// Converts a position in block units to the grid cell it sits on. The unit width and height are m_unitWidth and
// m_unitHeight (+0x4c, +0x50; MgxBlock::LoadFromXml "unit_width" and "unit_height"); m_blockWidth (+0x54) and
// m_blockHeight (+0x58) are the block size in units. The cell is the ceiling of the offset from the block's near edge,
// minus one, and never negative. The original's return value is the new m_y, which the header keeps as void.
void Exit::GetBlockUnitPosition(Point3D<float>& position, Block* block) {
    const float unitWidth = block->m_unitWidth;    // +0x4c
    const float unitHeight = block->m_unitHeight;  // +0x50
    const float halfWidth = (static_cast<float>(-block->m_blockWidth) * unitWidth) * 0.5f;   // +0x54
    const float cellX = std::ceil((position.X - halfWidth) / unitWidth) - 1.0f;
    const int x = static_cast<int>(cellX);
    m_x = x < 0 ? 0 : x;                                                                      // +0x08

    const float halfHeight = (static_cast<float>(block->m_blockHeight) * unitHeight) * 0.5f;  // +0x58
    const float cellY = std::ceil((halfHeight - position.Y) / unitHeight) - 1.0f;
    const int y = static_cast<int>(cellY);
    m_y = y < 0 ? 0 : y;                                                                      // +0x0c
}

// 0x48a380 / 0x48a3d4 rnd::Exit::Exit(rnd::Direction const&, rnd::Block*, int, int, float, int, std::vector<std::string>&)
// C1 and C2 are one definition. The name pointer is the owning block's name: the original copies the word at block
// +0x18, which is the character pointer of Block::m_name (+0x04). The names vector is copied. unk_28 (+0x28) is zeroed;
// in a block side record that word is the link count.
Exit::Exit(const Direction& direction, Block* block, int x, int y, float weight, int flags,
           std::vector<std::string>& names)
    : m_blockName(block->m_name.c_str()),
      m_block(block),
      m_x(x),
      m_y(y),
      m_weight(weight),
      m_direction(&direction),
      m_flags(flags),
      m_names(names),
      unk_28(0) {}

// 0x48a5d0 rnd::Exit::LoadFromXml(TiXmlHandle, rnd::Block*, int)
// `this` is a block side record. The "linktype" attribute is the list of names the exit accepts: the string is copied, a space that
// follows the first space is squeezed out by shifting the characters that follow it left (the length does not change, so the tail repeats),
// and the text is split at each comma into the names vector (the rest after the last comma is the last name). The exit is skipped when
// there is no "direction" attribute or when the last name is "0" or empty. Otherwise the direction is the sDirections entry whose name
// matches the attribute without regard to case (the fifth entry, none, when no name matches), "position" gives a point that
// GetBlockUnitPosition turns into the cell, and the exit is built in place with the point's third value as its weight and the index as its flags.
bool Exit::LoadFromXml(TiXmlHandle handle, Block* block, int index) {
    TiXmlElement* element = handle.ToElement();
    const char* linkType = element->Attribute("linktype");
    std::string work;
    std::vector<std::string> names;
    if (linkType != nullptr) {
        work.assign(linkType);
        char* first = static_cast<char*>(std::memchr(&work[0], ' ', work.size()));
        if (first != nullptr && first != &work[0] + work.size() && first != &work[0] + work.size() - 1) {
            char* last = &work[0] + work.size() - 1;
            char* scan = first;
            do {
                const char c = *++scan;
                if (c != ' ') {
                    *first++ = c;
                }
            } while (scan != last);
        }
        std::size_t comma = work.find(',');
        while (comma != std::string::npos) {
            names.push_back(work.substr(0, comma));
            work = work.substr(comma + 1);
            comma = work.find(',');
        }
        names.push_back(work);
    }
    const char* directionText = element->Attribute("direction");
    if (directionText == nullptr || TryIsZero(work.c_str())) {
        return false;
    }
    int directionIndex = 0;
    while (true) {
        if (!DH2_STRCASECMP(directionText, Direction::sDirections[directionIndex].name)) {
            break;
        }
        if (++directionIndex == 4) {
            break;                                                       // the fifth entry, none
        }
    }
    Point3D<float> position{0.0f, 0.0f, 0.0f};
    const char* positionText = element->Attribute("position");
    if (positionText != nullptr) {                                       // the original passes the null text on
        StrToObj(positionText, position);
    }
    GetBlockUnitPosition(position, block);
    new (this) Exit(Direction::sDirections[directionIndex], block, m_x, m_y, position.Z, index, names);
    return true;
}

// 0x489f58 / 0x489fd8 rnd::Block::~Block()
// C1 and C2 are one definition. The original sets the Block vtable, destroys the names vector (std::vector<std::string>,
// side +0x1c) of each of the eight side records from m_sides[7] down to m_sides[0], then releases m_visual (+0x34),
// m_gameplay (+0x1c) and m_name (+0x04). The members are declared in that order, so the implicit member destructors
// (the vtable store is implicit too; array elements are destroyed from the last down, members in reverse declaration
// order) do the same work. The deleting variant at 0x489fbc is skipped (see the ledger).
Block::~Block() = default;

// 0x48a03c rnd::MgxBlock::~MgxBlock()
// The parsed document (+0x9c4) is deleted when there is one, the file buffer (+0x9c0) is freed, and Block::~Block runs after the body.
// C1 and C2 (0x48a0b4) are one definition; the deleting variant at 0x48a098 is generated by the compiler.
MgxBlock::~MgxBlock() {
    delete m_document;
    std::free(m_fileBuffer);
}

// 0x48a90c rnd::MgxBlock::LoadFromXml(TiXmlHandle&)
// Without an element the answer is false. "unit_width" and "unit_height" (doubles) set the unit size, "block_width" and "block_height"
// the block size when present. Every child element whose "gametype" is "link" (without regard to case) is loaded as the next side
// record (Exit::LoadFromXml); a side that loads takes the next index and is counted.
bool MgxBlock::LoadFromXml(TiXmlHandle& handle) {
    TiXmlElement* element = handle.ToElement();
    if (element == nullptr) {
        return false;
    }
    double value = 0.0;
    if (element->QueryDoubleAttribute("unit_width", &value) == TIXML_SUCCESS) {
        m_unitWidth = static_cast<float>(value);                         // +0x4c
    }
    if (element->QueryDoubleAttribute("unit_height", &value) == TIXML_SUCCESS) {
        m_unitHeight = static_cast<float>(value);                        // +0x50
    }
    element->QueryIntAttribute("block_width", &m_blockWidth);            // +0x54
    element->QueryIntAttribute("block_height", &m_blockHeight);          // +0x58
    TiXmlHandle child = handle.FirstChild();
    if (child.ToNode() != nullptr) {
        int index = 0;
        while (true) {
            TiXmlElement* childElement = child.ToElement();
            const char* gameType = childElement != nullptr ? childElement->Attribute("gametype") : nullptr;
            if (gameType != nullptr && !DH2_STRCASECMP(gameType, "link") && m_sideCount < 8) {
                TiXmlHandle linkHandle(child);
                if (reinterpret_cast<Exit*>(&m_sides[m_sideCount])->LoadFromXml(linkHandle, this, index)) {
                    ++index;
                    ++m_sideCount;
                }
            }
            if (child.ToNode()->NextSibling() == nullptr) {
                break;
            }
            child = TiXmlHandle(child.ToNode()->NextSibling());
        }
    }
    return true;
}

}  // namespace rnd
