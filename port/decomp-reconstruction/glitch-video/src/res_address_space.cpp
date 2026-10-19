// glitch::res::AddressSpace32 (glitch-video/tb/glitch_res_AddressSpace.hpp): the registry of the blocks a BRES file is relocated in.
#include <map>
#include <mutex>

#include "glitch-video/tb/glitch_res_AddressSpace.hpp"

namespace glitch {
namespace res {

namespace {

struct Block {
    const std::uint8_t* host;
    std::size_t size;
};

struct Registry {
    std::mutex lock;
    std::map<std::uint32_t, Block> byAddress;               // virtual base -> block
    std::map<const std::uint8_t*, std::uint32_t> byHost;    // host start -> virtual base
};

// Never destroyed: static destructors of other translation units (VisualFXManager's animation dictionary, the singletons) still free .bdae blocks
// while the process exits, and a function-local static that is already gone made that lookup read freed map nodes (guard-page heap run, exit of a
// 2500 frame session).
Registry& registry() {
    static Registry* instance = new Registry;
    return *instance;
}

constexpr std::uint32_t kFirstAddress = 0x00100000u;  // addresses below it are never handed out (null stays null)
constexpr std::uint64_t kLimit = 0xFFFF0000ull;
constexpr std::uint32_t kAlign = 16u;

std::uint64_t roundUp(std::uint64_t value) { return (value + (kAlign - 1)) & ~static_cast<std::uint64_t>(kAlign - 1); }

// First-fit: the lowest gap between the registered blocks that holds `size` bytes (one alignment unit of padding follows each block).
bool findGap(const std::map<std::uint32_t, Block>& blocks, std::size_t size, std::uint32_t& result) {
    std::uint64_t cursor = kFirstAddress;
    const std::uint64_t need = roundUp(size == 0 ? 1 : size) + kAlign;
    for (const auto& entry : blocks) {
        if (entry.first >= cursor + need) {
            break;
        }
        cursor = roundUp(static_cast<std::uint64_t>(entry.first) + entry.second.size) + kAlign;
    }
    if (cursor + need > kLimit) {
        return false;
    }
    result = static_cast<std::uint32_t>(cursor);
    return true;
}

// The registered block that holds the virtual address (the end address counts as inside).
const std::map<std::uint32_t, Block>::const_iterator findByAddress(const std::map<std::uint32_t, Block>& blocks, std::uint32_t address) {
    auto it = blocks.upper_bound(address);
    if (it == blocks.begin()) {
        return blocks.end();
    }
    --it;
    return address - it->first <= it->second.size ? it : blocks.end();
}

}  // namespace

std::uint32_t AddressSpace32::map(const void* block, std::size_t size) {
    if (block == nullptr) {
        return 0;
    }
    Registry& r = registry();
    std::lock_guard<std::mutex> guard(r.lock);
    const std::uint8_t* host = static_cast<const std::uint8_t*>(block);
    auto known = r.byHost.find(host);
    if (known != r.byHost.end()) {
        Block& existing = r.byAddress[known->second];
        if (size > existing.size) {
            existing.size = size;  // callers register the full size first; this only covers a later, larger registration
        }
        return known->second;
    }
    std::uint32_t address = 0;
    if (!findGap(r.byAddress, size, address)) {
        return 0;
    }
    r.byAddress[address] = Block{host, size};
    r.byHost[host] = address;
    return address;
}

void AddressSpace32::unmap(const void* block) {
    Registry& r = registry();
    std::lock_guard<std::mutex> guard(r.lock);
    auto known = r.byHost.find(static_cast<const std::uint8_t*>(block));
    if (known == r.byHost.end()) {
        return;
    }
    r.byAddress.erase(known->second);
    r.byHost.erase(known);
}

std::uint32_t AddressSpace32::toAddress(const void* pointer) {
    if (pointer == nullptr) {
        return 0;
    }
    Registry& r = registry();
    std::lock_guard<std::mutex> guard(r.lock);
    const std::uint8_t* host = static_cast<const std::uint8_t*>(pointer);
    auto it = r.byHost.upper_bound(host);
    if (it == r.byHost.begin()) {
        return 0;
    }
    --it;
    const Block& block = r.byAddress[it->second];
    const std::size_t delta = static_cast<std::size_t>(host - it->first);
    return delta <= block.size ? it->second + static_cast<std::uint32_t>(delta) : 0;
}

std::uint8_t* AddressSpace32::toPointer(std::uint32_t address) {
    if (address == 0) {
        return nullptr;
    }
    Registry& r = registry();
    std::lock_guard<std::mutex> guard(r.lock);
    auto it = findByAddress(r.byAddress, address);
    if (it == r.byAddress.end()) {
        return nullptr;
    }
    return const_cast<std::uint8_t*>(it->second.host) + (address - it->first);
}

std::size_t AddressSpace32::bytesAfter(std::uint32_t address) {
    Registry& r = registry();
    std::lock_guard<std::mutex> guard(r.lock);
    auto it = findByAddress(r.byAddress, address);
    return it == r.byAddress.end() ? 0 : it->second.size - (address - it->first);
}

std::size_t AddressSpace32::blockCount() {
    Registry& r = registry();
    std::lock_guard<std::mutex> guard(r.lock);
    return r.byAddress.size();
}

bool AddressSpace32::lookup(std::uint32_t address, std::uint32_t& base, std::uint8_t*& host, std::size_t& size) {
    Registry& r = registry();
    std::lock_guard<std::mutex> guard(r.lock);
    auto it = findByAddress(r.byAddress, address);
    if (it == r.byAddress.end()) {
        return false;
    }
    base = it->first;
    host = const_cast<std::uint8_t*>(it->second.host);
    size = it->second.size;
    return true;
}

}  // namespace res
}  // namespace glitch
