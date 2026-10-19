// Batch g1-game-app-rnd-8b06ae-7 (rnd, part 8 of 8): the rnd::Tile functions that the earlier rnd batches did not cover.
// The constructors and destructors, the child list (AddChild, RemoveChild), Print, the placement pair (TryPlaceTile,
// PlaceTile), the spawn and removal path (NewRoot, Spawn, TrySpawn, Unspawn, RemoveNeighbors), SetModuleMVXProperties
// and SaveAsModuleXML. Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Duplicate addresses: each C1/C2 or D1/D2 pair has one identical body, written once and listed under both addresses:
//   Tile::Tile(RandomGenerator&, Block&, Tile*, ListElem&)   0x4917f8, 0x491850
//   Tile::~Tile()                                            0x4914e8, 0x491500
//
// Tile::PlaceTile returns the result of Block::PlaceInMap, as the original does.
//
// Storage: the original allocates tiles with operator new(0x90) and frees them with CustomFree in Unspawn; the port
// uses CustomAlloc with placement new and CustomFree, as the batch -3 factories do.
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <new>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Module.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/Direction.hpp"
#include "dh2/rnd/Exit.hpp"
#include "dh2/rnd/FileText.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/ListRule.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/Tile.hpp"
#include "tinyxml.h"

namespace rnd {

// 0x4913d0 rnd::Tile::TryPlaceTile(int,int)
// The body is only "return 1" in the listing.
bool Tile::TryPlaceTile(int /*x*/, int /*y*/) {
    return true;
}

// 0x4913d8 rnd::Tile::PlaceTile(int,int,float)
// Stores z, x and y, then returns the result of Block::PlaceInMap (vtable slot 0x08, called with the generator's tile map, this, x and y).
bool Tile::PlaceTile(int x, int y, float z) {
    m_z = z;
    m_x = x;
    m_y = y;
    return m_block->PlaceInMap(m_generator->m_tiles, this, x, y);
}

// 0x491428 rnd::Tile::AddChild(rnd::Tile*)
// The original does not check the slot count. Eight slots suffice: a block has at most eight sides, and each side
// spawns at most one child.
void Tile::AddChild(Tile* child) {
    m_children[m_childCount] = child;
    m_childCount = m_childCount + 1;
}

// 0x491440 rnd::Tile::RemoveChild(rnd::Tile*)
// Searches the children in order. When the child is found, the last child moves into its slot and the count drops by one.
// Nothing changes when the child is not present.
void Tile::RemoveChild(Tile* child) {
    const int32_t count = m_childCount;
    for (int32_t i = 0; i < count; ++i) {
        if (m_children[i] == child) {
            m_childCount = count - 1;
            m_children[i] = m_children[count - 1];
            return;
        }
    }
}

// 0x4914ac rnd::Tile::Print(void)
// The release body writes nothing for the node itself. The listing has no output call: it visits the children in order.
void Tile::Print() {
    for (int32_t i = 0; i < m_childCount; ++i) {
        m_children[i]->Print();
    }
}

// 0x4914e8 rnd::Tile::~Tile() (D1)
// 0x491500 rnd::Tile::~Tile() (D2, same body)
// The only work is ListElem::~ListElem on the copy at +0x34, which the implicit member destructor performs.
Tile::~Tile() {}

// 0x491518 rnd::Tile::SetModuleMVXProperties(Module *)
// Reads "<block gameplay>/mvx/<block name>.mvx" on the device file system and parses it. When the file opens, the "GameObject" element
// of its "Module" element (when there is one) gives the module's properties scale, xrefmax, xrefobject, dae, fog_color and is_solid
// (an absent attribute passes null to SetProperty, which puts the property back to its default). The module's PropertyMap is at +4.
void Tile::SetModuleMVXProperties(Module* module) {
    const std::string mvxPath = m_block->m_gameplay + "/mvx/" + (m_block->m_name + ".mvx");
    std::string text;
    if (!ReadFileText(mvxPath.c_str(), text)) {
        return;
    }
    TiXmlDocument document;
    document.LoadFromBuffer(text.data(), static_cast<int>(text.size()), TIXML_DEFAULT_ENCODING);
    TiXmlHandle moduleHandle = TiXmlHandle(&document).Child("Module", 0);
    TiXmlHandle objectHandle = moduleHandle.Child("GameObject", 0);
    TiXmlElement* object = objectHandle.ToElement();
    if (object != nullptr) {
        PropertyMap& props = *module;
        props.SetProperty("scale", object->Attribute("scale"));
        props.SetProperty("xrefmax", object->Attribute("xrefmax"));
        props.SetProperty("xrefobject", object->Attribute("xrefobject"));
        props.SetProperty("dae", object->Attribute("dae"));
        props.SetProperty("fog_color", object->Attribute("fog_color"));
        props.SetProperty("is_solid", object->Attribute("is_solid"));
    }
}

// 0x4917f8 rnd::Tile::Tile(rnd::RandomGenerator&,rnd::Block&,rnd::Tile*,rnd::ListElem&) (C1)
// 0x491850 rnd::Tile::Tile(rnd::RandomGenerator&,rnd::Block&,rnd::Tile*,rnd::ListElem&) (C2, same body)
// Stores the generator, the parent and the block, sets the child count to zero, and takes the block's name pointer
// (the Block::m_name c_str). Then the parent gets this tile as a child, and the element is copied into the tile.
// The original sets the name pointer after the child link, which has no effect on the other fields.
Tile::Tile(RandomGenerator& generator, Block& block, Tile* parent, ListElem& elem)
    : m_blockName(block.m_name.c_str()),
      m_generator(&generator),
      m_parent(parent),
      m_childCount(0),
      m_block(&block),
      m_listElem() {
    if (m_parent != nullptr) {
        m_parent->AddChild(this);
    }
    m_listElem = elem;
}

// 0x4918a8 rnd::Tile::Unspawn(void)
// Removes the tile from its parent, then from the block's map cell, then removes its descendants, then hands the element
// back to its list (when the element has an owner). The tile is destroyed and its memory freed.
void Tile::Unspawn() {
    if (m_parent != nullptr) {
        m_parent->RemoveChild(this);
    }
    m_block->RemoveFromMap(m_generator->m_tiles, this, m_x, m_y);
    RemoveNeighbors();
    if (m_listElem.m_owner != nullptr) {
        m_listElem.m_owner->Replace(m_listElem);
    }
    this->~Tile();
    CustomFree(this);
}

// 0x491928 rnd::Tile::RemoveNeighbors(void)
// Takes the children from the last slot down. Each child first loses its own children, then is unspawned. The count is
// lowered before the child is unspawned, so the unspawn's RemoveChild does not find it again.
void Tile::RemoveNeighbors() {
    for (int32_t i = m_childCount; i > 0; i = m_childCount) {
        m_childCount = i - 1;
        Tile* child = m_children[i - 1];
        child->RemoveNeighbors();
        child->Unspawn();
    }
}

// 0x49196c rnd::Tile::NewRoot(rnd::RandomGenerator&,rnd::Block&,rnd::ListElem&)
// Creates a tile with no parent. It is not placed in the map; the caller places it.
Tile* Tile::NewRoot(RandomGenerator& generator, Block& block, ListElem& elem) {
    void* memory = CustomAlloc(static_cast<unsigned int>(sizeof(Tile)));
    return new (memory) Tile(generator, block, nullptr, elem);
}

// 0x4919b0 rnd::Tile::Spawn(rnd::Block&,int,int,float,rnd::ListElem&)
// Creates a child of this tile for the block and the element. When the element's list is not a replacement list, the
// first candidate with the same gameplay and name is erased from that list. The new tile is then placed at (x, y, z).
Tile* Tile::Spawn(Block& block, int x, int y, float z, ListElem& elem) {
    void* memory = CustomAlloc(static_cast<unsigned int>(sizeof(Tile)));
    Tile* tile = new (memory) Tile(*m_generator, block, this, elem);
    ListRule* owner = elem.m_owner;
    if (owner != nullptr && !owner->m_replacement) {
        std::vector<ListElem>& candidates = owner->m_elems;
        for (auto it = candidates.begin(); it != candidates.end(); ++it) {
            if (it->m_gameplay == elem.m_gameplay && it->m_name == elem.m_name) {
                candidates.erase(it);
                break;
            }
        }
    }
    tile->PlaceTile(x, y, z);
    return tile;
}

// 0x491ab0 rnd::Tile::TrySpawn(rnd::Exit const*,rnd::Exit const*,rnd::Exit const*,rnd::ListElem &)
// The first argument is not read. "to" is the exit of the block to place: the cell is this tile's cell plus the offset of the direction
// opposite to the exit's direction, minus the exit's own cell, plus the cell of "from" (the exit of this tile) when there is one; the height
// is this tile's height plus the height (weight) of "from", and the new tile's height is that minus the exit's weight. When the exit's block
// says the cell fits (FitsInMap, vtable slot 0x10, with the generator's tile map), the child is spawned with the exit's block and the element.
// Returns the new tile or null.
Tile* Tile::TrySpawn(const Exit* /*unused*/, const Exit* from, const Exit* to, ListElem& elem) {
    const Direction& offset = Direction::sDirections[DIRECTION_OPPOSITES[to->m_direction->id]];
    int x = offset.x + m_x - to->m_x;
    int y = offset.y + m_y - to->m_y;
    float z = m_z;
    if (from != nullptr) {
        x += from->m_x;
        y += from->m_y;
        z += from->m_weight;
    }
    const float exitWeight = to->m_weight;
    if (to->m_block->FitsInMap(m_generator->m_tiles, x, y)) {
        return Spawn(*to->m_block, x, y, z - exitWeight, elem);
    }
    return nullptr;
}

// 0x491d90 rnd::Tile::SaveAsModuleXML(TiXmlElement*,int)
// Writes this tile as a Module element under parent, then the children, and returns the index after the last one.
int Tile::SaveAsModuleXML(TiXmlElement* parent, int index) {
    // The original constructs the module with GO_IDS value 5 (the id passed in r1). The ObjectBase enum in this tree
    // names only GO_DOOR, so the value is written as a cast.
    Module module(static_cast<Module::GO_IDS>(5));
    PropertyMap& props = module;  // the PropertyMap base, at +4 of the object
    // W2 (ASan: null strcmp in PropertyMap::InitProperties for every random level): the store of "Module" right after the constructor
    // (Hex-Rays v27, sp+0x54 = module+0x20) is PropertyMap::m_className, which InitProperties keys the class tables on; it is not dead.
    props.m_className = "Module";
    props.InitProperties();
    props.LoadDefaultProperties();

    // name = "<block name>_<index>", gametype = "Module"
    const std::string name = std::string(m_blockName) + "_" + std::to_string(index);
    props.SetProperty("name", name.c_str());
    props.SetProperty("gametype", "Module");

    // position = "x,y,z". The x and y are the cell's centre in world units; y is negated (the original flips the sign
    // bit of the block's unit height). The buffer is larger than the original's 92 bytes, so ordinary values are not cut.
    const Block& block = *m_block;
    const float cellX = (static_cast<float>(m_x) + static_cast<float>(static_cast<float>(block.m_blockWidth - 1) * 0.5f)) *
                        block.m_unitWidth;
    const float cellY = (static_cast<float>(m_y) + static_cast<float>(static_cast<float>(block.m_blockHeight - 1) * 0.5f)) *
                        -block.m_unitHeight;
    char position[160];
    std::snprintf(position, sizeof(position), "%f,%f,%f", static_cast<double>(cellX), static_cast<double>(cellY),
                  static_cast<double>(m_z));
    props.SetProperty("position", position);

    SetModuleMVXProperties(&module);

    // dataPath = "data/" + block visual + "/" + the block gameplay after "data/" (or from index 4 when "data/" is absent).
    // substr throws std::out_of_range when the offset is past the end, as the original's range check does.
    const std::string& gameplay = block.m_gameplay;
    const std::size_t found = gameplay.find("data/");
    const std::size_t skip = (found == std::string::npos) ? 4 : found + 5;
    const std::string dataPath = "data/" + block.m_visual + "/" + gameplay.substr(skip);

    // mgp and mvp come from the spawning element's gameplay and visual names, when those are set.
    if (!m_listElem.m_gameplay.empty()) {
        const std::string mgp = dataPath + "/mgp/" + m_listElem.m_gameplay;
        props.SetProperty("mgp", mgp.c_str());
    }
    if (!m_listElem.m_visual.empty()) {
        const std::string mvp = dataPath + "/mvp/" + m_listElem.m_visual;
        props.SetProperty("mvp", mvp.c_str());
    }
    props.SavePropertiesToXML(parent, nullptr);

    int next = index;
    for (int32_t i = 0; i < m_childCount; ++i) {
        next = m_children[i]->SaveAsModuleXML(parent, next + 1);
    }
    return next;
}

}  // namespace rnd
