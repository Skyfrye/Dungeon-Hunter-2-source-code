// Bodies of glitch::collada::CAnimationStreamingManager, CAnimationBlock, SAnimationSegment::getData and SAnimationBlockSearchKey (canonical
// classes: collada/CColladaDatabase.hpp), reconstructed by residue pass ob. This file replaces src/collada_misc.cpp and the stand-ins of
// src/recon/slice_07.cpp for these classes.
//
// Model (libDungeonHunter2.so, ARM): the streaming manager keeps the blocks it has handed out in a vector sorted by (database present, clip
// range, segment start), looks a block up for a key (database, clip range, time) and builds a new one when there is none; a block holds a use of
// the on-demand data of its animation segment and links to the blocks of the neighbouring segments (prepareNextBlock). A cache of segment data
// (a use of each block of data, with its size and the name of the file) keeps recently used data alive up to cacheLimit bytes.
//
// A comment `// 0xADDR symbol` precedes each function.
#include <algorithm>
#include <cstdint>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/COnDemandReader.hpp"

namespace glitch::collada {

CAnimationStreamingManager* CAnimationStreamingManager::Instance = nullptr;

namespace {

// The file the segment data is read from: the file the database was loaded from, opened again through the manager's file system. The first
// constructor of the block tests the name, the others read it unconditionally; here a missing name is no file for all of them.
io::IReadFile* openSource(const SDatabaseTables& tables) {
    if (tables.sourceName == nullptr || CResFileManager::Inst == nullptr) {
        return nullptr;
    }
    return CResFileManager::Inst->device->fileSystem->createAndOpenFile(tables.sourceName);
}

// The member copy of the data holder the block constructors do: the member takes a use, gives up the old holder, and the temporary the
// segment handed back gives its use up.
void adoptData(CAnimationBlock& block, SAnimationDataHolder* loaded) {
    if (loaded != nullptr) {
        ++loaded->count;
    }
    if (block.dataHolder != nullptr) {
        block.dataHolder->drop();
    }
    block.dataHolder = loaded;
    if (loaded != nullptr) {
        loaded->drop();
    }
}

std::int32_t segmentBegin(const CAnimationBlock* block) { return block->segment != nullptr ? block->segment->begin : 0; }
std::int32_t segmentEnd(const CAnimationBlock* block) { return block->segment != nullptr ? block->segment->end : 0; }

// 0x60b530 CAnimationBlockSearchCompare over two blocks: database presence, then the clip range (an address), then the segment start.
bool blockLess(const CAnimationBlock* element, const CAnimationBlock* value) {
    const bool elementPresent = element->database.record != nullptr;
    const bool valuePresent = value->database.record != nullptr;
    if (elementPresent != valuePresent) {
        return elementPresent < valuePresent;
    }
    if (element->range != value->range) {
        return std::less<const SAnimationClip*>()(element->range, value->range);
    }
    return segmentBegin(element) < segmentBegin(value);
}

// 0x60b454 CAnimationBlockSearch over a block and a key: the same, ending with the block's segment end against the key's time.
bool blockLessThanKey(const CAnimationBlock* element, const SAnimationBlockSearchKey& key) {
    const bool elementPresent = element->database.record != nullptr;
    const bool keyPresent = key.database.record != nullptr;
    if (elementPresent != keyPresent) {
        return elementPresent < keyPresent;
    }
    if (element->range != key.clip) {
        return std::less<const SAnimationClip*>()(element->range, key.clip);
    }
    return segmentEnd(element) < key.time;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// SAnimationDataHolder / SAnimationSegment
// ---------------------------------------------------------------------------------------------------------------------

// The fix-up loop of 0x60bee4: entry i of the loaded bytes is {count, offset relative to the offset word}; the original adds the address of the
// offset word to it in place. The port keeps the words and builds the array of records with the addresses.
void SAnimationDataHolder::buildOutputs() {
    delete[] buffer;
    buffer = nullptr;
    if (data == nullptr) {
        return;
    }
    const std::int32_t* words = static_cast<const std::int32_t*>(data);
    const std::int32_t entries = words[0];
    if (entries <= 0) {
        return;
    }
    SAnimationOutput* outputs = new SAnimationOutput[static_cast<std::size_t>(entries)];
    for (std::int32_t i = 0; i < entries; ++i) {
        outputs[i].count = words[1 + 2 * i];
        outputs[i].data = reinterpret_cast<const std::uint8_t*>(&words[2 + 2 * i]) + words[2 + 2 * i];
    }
    buffer = outputs;
}

// The release of an on-demand block whose count reached zero (operator delete[] and a cleared pointer in the original).
void SAnimationDataHolder::freeData() {
    delete[] static_cast<std::uint8_t*>(data);
    data = nullptr;
    delete[] buffer;
    buffer = nullptr;
}

// 0x60bee4 _ZN6glitch7collada17SAnimationSegment7getDataERNS_3res14onDemandReaderE
// Not loaded (count 0): onDemand<SAnimationData>::get (0x60b66c) takes a use, allocates `size & ~3` bytes and reads them at `offset`; then each
// entry is fixed up; the use that get took is the caller's. Count 1: a block that lives in the file image (offset and size 0): the count becomes
// 2 and the entries are fixed up once (the size word is then set to 1 as the flag). Otherwise only a use is taken.
// Host deviation: the allocation is rounded UP to a multiple of 4 (see res::getOnDemand).
SAnimationDataHolder* SAnimationSegment::getData(res::onDemandReader& reader) {
    SAnimationDataHolder& holder = data;
    if (holder.count == 0) {
        holder.count = 1;
        if (holder.data == nullptr) {
            holder.data = new std::uint8_t[(static_cast<std::size_t>(holder.size) + 3u) & ~static_cast<std::size_t>(3u)];
            reader.read(static_cast<std::int32_t>(holder.size), static_cast<std::int32_t>(holder.offset), holder.data);
        }
        holder.buildOutputs();
        return &holder;
    }
    if (holder.count == 1) {
        holder.count = 2;
        if (holder.offset == 0 && holder.size == 0) {
            holder.buildOutputs();
            holder.size = 1;
        }
        return &holder;
    }
    ++holder.count;
    return &holder;
}

// ---------------------------------------------------------------------------------------------------------------------
// SAnimationBlockSearchKey
// ---------------------------------------------------------------------------------------------------------------------

// 0x65d6d8 _ZN6glitch7collada24SAnimationBlockSearchKeyC1ERKNS0_16CColladaDatabaseEii
SAnimationBlockSearchKey::SAnimationBlockSearchKey(const CColladaDatabase& source, std::int32_t clipIndex, std::int32_t timeMs) {
    copyDatabase(database, source);
    const SDatabaseTables& tables = source.tables();
    clip = tables.animationClipLibrary.count != 0 ? animationClipAt(tables, clipIndex) : &tables.animationRange;
    const std::int32_t start = static_cast<std::int32_t>(clip->start);
    const std::int32_t end = static_cast<std::int32_t>(clip->end);
    if (timeMs < start) {
        timeMs = start;
    }
    time = timeMs > end ? end : timeMs;
}

// ---------------------------------------------------------------------------------------------------------------------
// CAnimationBlock
// ---------------------------------------------------------------------------------------------------------------------

// 0x60c05c _ZN6glitch7collada15CAnimationBlockC1ERKNS0_16CColladaDatabaseEPKNS0_14SAnimationClipEi (C2 0x60c940: the same body)
// Host guard: a file without segments gives a block with no data (the original reads through the missing segment).
CAnimationBlock::CAnimationBlock(const CColladaDatabase& source, const SAnimationClip* rangeArg, std::int32_t time) {
    copyDatabase(database, source);
    range = rangeArg;
    const SDatabaseTables& tables = source.tables();
    segment = const_cast<SAnimationSegment*>(getAnimationSegment(tables, time));
    io::IReadFile* file = openSource(tables);
    if (segment != nullptr) {
        COnDemandReader reader(file);
        adoptData(*this, segment->getData(reader));
    }
    if (file != nullptr) {
        file->drop();
    }
    CAnimationStreamingManager::Instance->registerAnimationBlock(this);
    if (range == nullptr) {
        range = &tables.animationRange;
    }
}

// 0x60c610 _ZN6glitch7collada15CAnimationBlockC1ERKNS0_16CColladaDatabaseEPKNS0_14SAnimationClipEPNS0_17SAnimationSegmentE (C2 0x60c7a8)
// The block is registered before its data is read, and the file opened for the reader is not dropped (as in the original).
CAnimationBlock::CAnimationBlock(const CColladaDatabase& source, const SAnimationClip* rangeArg, SAnimationSegment* segmentArg) {
    copyDatabase(database, source);
    range = rangeArg;
    segment = segmentArg;
    CAnimationStreamingManager::Instance->registerAnimationBlock(this);
    const SDatabaseTables& tables = source.tables();
    io::IReadFile* file = openSource(tables);
    if (segment != nullptr) {
        COnDemandReader reader(file);
        adoptData(*this, segment->getData(reader));
    }
    if (range == nullptr) {
        range = &tables.animationRange;
    }
}

// 0x60ba2c _ZN6glitch7collada15CAnimationBlockD1Ev (D2 0x60bbd8)
// The next block loses its link back and is freed when this block holds its last use; the previous block loses its link forward; then the
// data holder is released and the database handle dropped.
CAnimationBlock::~CAnimationBlock() {
    if (next != nullptr && next != this) {
        next->previous = nullptr;
        if (next->refCount == 1) {
            next->free();
        }
    }
    if (previous != nullptr && previous != this) {
        previous->next = nullptr;
    }
    if (dataHolder != nullptr) {
        dataHolder->drop();
        dataHolder = nullptr;
    }
    dropDatabase(database);
}

// 0x60b350 _ZN6glitch7collada15CAnimationBlock8getBlockERNS0_24SAnimationBlockSearchKeyE
CAnimationBlock* CAnimationBlock::getBlock(SAnimationBlockSearchKey& key) {
    if ((key.database.record != nullptr) != (database.record != nullptr) || key.clip != range) {
        return nullptr;
    }
    CAnimationBlock* current = this;
    do {
        const SAnimationSegment* held = current->segment;
        if (held->begin <= key.time) {
            if (held->end >= key.time) {
                return current;
            }
            current = current->next;
        } else {
            current = current->previous;
        }
    } while (current != this && current != nullptr);
    return nullptr;
}

// 0x60bad0 _ZN6glitch7collada15CAnimationBlock4freeEv
void CAnimationBlock::free() {
    CAnimationStreamingManager::Instance->unregisterAnimationBlock(this);
    delete this;
}

// 0x60c31c _ZN6glitch7collada15CAnimationBlock16prepareNextBlockEv
// The next time is the end of this segment plus one, or, once the clip range ends inside this segment, the clip's start; when this segment
// already reaches back to the start there is nothing to load and the block is its own next. Host guard: a block without a range or a segment.
void CAnimationBlock::prepareNextBlock() {
    if (range == nullptr || segment == nullptr) {
        next = this;
        return;
    }
    std::int32_t nextTime;
    if (static_cast<std::int32_t>(range->end) > segment->end) {
        nextTime = segment->end + 1;
    } else {
        nextTime = static_cast<std::int32_t>(range->start);
        if (segment->begin <= nextTime) {
            next = this;
            return;
        }
    }
    SAnimationBlockSearchKey key;
    copyDatabase(key.database, database);
    key.clip = range;
    const std::int32_t start = static_cast<std::int32_t>(range->start);
    const std::int32_t end = static_cast<std::int32_t>(range->end);
    if (nextTime < start) {
        nextTime = start;
    }
    key.time = nextTime > end ? end : nextTime;
    next = CAnimationStreamingManager::Instance->getAnimationBlock(key);
    if (next != nullptr) {
        next->previous = this;
    }
    dropDatabase(key.database);
}

// 0x60c3f0 _ZN6glitch7collada15CAnimationBlock4grabEv
void CAnimationBlock::grab() {
    refCount += 1;
    if (refCount == 2 && next == nullptr) {
        prepareNextBlock();
    }
}

// 0x60bb1c _ZN6glitch7collada15CAnimationBlock4dropEv (0x60bbd4 intrusive_ptr_release is a thunk to it)
// At a count of one: no previous block, or one that holds only its own use, frees this block; otherwise it is the next block that is freed
// when it holds only its own use (the listing loads the next pointer into the register the free call takes).
void CAnimationBlock::drop() {
    refCount -= 1;
    if (refCount != 1) {
        return;
    }
    if (previous == nullptr || previous->refCount == 1) {
        free();
        return;
    }
    if (next != nullptr && next->refCount == 1) {
        next->free();
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// CAnimationStreamingManager
// ---------------------------------------------------------------------------------------------------------------------

// 0x60b3cc _ZN6glitch7collada26CAnimationStreamingManagerC2Ev
// 0x60b410 _ZN6glitch7collada26CAnimationStreamingManagerC1Ev
// Zeroes the eight words (the member initialisers) and publishes the object through the static Instance pointer.
CAnimationStreamingManager::CAnimationStreamingManager() {
    Instance = this;
}

// 0x60c59c _ZN6glitch7collada26CAnimationStreamingManager17getAnimationBlockERNS0_24SAnimationBlockSearchKeyERN5boost13intrusive_ptrINS0_15CAnimationBlockEEE
// The held block is asked for the matching neighbour first; a hit is taken (a use) and replaces the held one. Otherwise the registry is
// searched (0x60c220) and a block found there replaces the held one the same way.
void CAnimationStreamingManager::getAnimationBlock(SAnimationBlockSearchKey& key, CAnimationBlock*& block) {
    CAnimationBlock* found = block != nullptr ? block->getBlock(key) : nullptr;
    if (found == nullptr) {
        found = getAnimationBlock(key);
        if (found == nullptr) {
            return;
        }
    }
    found->grab();
    CAnimationBlock* displaced = block;
    block = found;
    if (displaced != nullptr) {
        displaced->drop();
    }
}

// 0x60c220 _ZN6glitch7collada26CAnimationStreamingManager17getAnimationBlockERNS0_24SAnimationBlockSearchKeyE
// Null when the file has no animations. The registry's lower bound is the answer when it matches the key (database presence, clip range, and
// the time inside the block's segment, or outside it while the time also lies outside the clip); otherwise a new block is built.
CAnimationBlock* CAnimationStreamingManager::getAnimationBlock(SAnimationBlockSearchKey& key) {
    if (key.database.tables().animations.empty()) {
        return nullptr;
    }
    const auto position = std::lower_bound(registry.begin(), registry.end(), key,
                                           [](const CAnimationBlock* element, const SAnimationBlockSearchKey& value) {
                                               return blockLessThanKey(element, value);
                                           });
    if (position != registry.end()) {
        CAnimationBlock* candidate = *position;
        const bool samePresence = (key.database.record != nullptr) == (candidate->database.record != nullptr);
        const bool sameRange = key.clip == candidate->range;
        const SAnimationSegment* held = candidate->segment;
        const bool outsideSegment = held->begin > key.time || key.time > held->end;
        const bool replace = outsideSegment && (key.clip == nullptr || (key.time >= static_cast<std::int32_t>(key.clip->start) &&
                                                                         key.time <= static_cast<std::int32_t>(key.clip->end)));
        if (samePresence && sameRange && !replace) {
            return candidate;
        }
    }
    return new CAnimationBlock(key.database, key.clip, key.time);
}

// 0x60c414 _ZN6glitch7collada26CAnimationStreamingManager22registerAnimationBlockEPNS0_15CAnimationBlockE
// Inserted at its lower bound; the registry takes a use. A block whose segment data is held only once (the block's own use) is cached.
void CAnimationStreamingManager::registerAnimationBlock(CAnimationBlock* block) {
    const auto position = std::lower_bound(registry.begin(), registry.end(), block, blockLess);
    registry.insert(position, block);
    block->grab();
    if (block->segment != nullptr && block->segment->data.count == 1) {
        cache(block);
    }
}

// 0x60bb64 _ZN6glitch7collada26CAnimationStreamingManager24unregisterAnimationBlockEPNS0_15CAnimationBlockE
// The entry at the lower bound is removed (as in the original, which does not check that it is this block) and the registry's use given up.
void CAnimationStreamingManager::unregisterAnimationBlock(CAnimationBlock* block) {
    const auto position = std::lower_bound(registry.begin(), registry.end(), block, blockLess);
    if (position != registry.end()) {
        registry.erase(position);
    }
    block->drop();
}

// The vector's erase (0x60b888): the entry gives up its use of the block, the following entries move down.
std::vector<CAnimationStreamingManager::SegmentCacheEntry>::iterator CAnimationStreamingManager::eraseEntry(
    std::vector<SegmentCacheEntry>::iterator position) {
    if (position->holder != nullptr) {
        position->holder->drop();
    }
    return cacheEntries.erase(position);
}

// 0x60b918 _ZN6glitch7collada26CAnimationStreamingManager7releaseEPNS0_16CColladaDatabaseE
// Removes the cached entries of the database's file (matched by the file name pointer; a database with no record matches entries with none).
void CAnimationStreamingManager::release(CColladaDatabase* database) {
    const char* name = database->record != nullptr ? database->record->fileName : nullptr;
    for (auto position = cacheEntries.begin(); position != cacheEntries.end();) {
        if (position->fileName == name) {
            cacheUsage -= static_cast<std::int32_t>(position->size);
            position = eraseEntry(position);
        } else {
            ++position;
        }
    }
}

// 0x60b990 _ZN6glitch7collada26CAnimationStreamingManager16checkMemoryUsageEv
// While the usage is above the limit, evicts the first entry that only the cache still holds; when none is left it logs and stops.
void CAnimationStreamingManager::checkMemoryUsage() {
    auto position = cacheEntries.begin();
    while (cacheLimit < cacheUsage) {
        if (position == cacheEntries.end()) {
            os::Printer::log("AnimationStreamingManager : Memory usage exceed maximum cache size", ELL_WARNING);
            return;
        }
        if (position->holder != nullptr && position->holder->count == 1) {
            cacheUsage -= static_cast<std::int32_t>(position->size);
            position = eraseEntry(position);
        } else {
            ++position;
        }
    }
}

// 0x60bc7c _ZN6glitch7collada26CAnimationStreamingManager5cacheEPNS0_15CAnimationBlockE
// With caching on (a positive limit): makes room, charges the segment data's size, makes room again, and keeps an entry holding a use of the
// data and the name of the block's file. (The listing's extra count changes on the data are the temporary handle copies.)
void CAnimationStreamingManager::cache(CAnimationBlock* block) {
    if (cacheLimit <= 0) {
        return;
    }
    checkMemoryUsage();
    SAnimationDataHolder* holder = &block->segment->data;
    const std::uint32_t size = holder->size;
    cacheUsage += static_cast<std::int32_t>(size);
    checkMemoryUsage();
    const char* fileName = block->database.record != nullptr ? block->database.record->fileName : nullptr;
    ++holder->count;
    cacheEntries.push_back({size, holder, fileName});
}

}  // namespace glitch::collada
