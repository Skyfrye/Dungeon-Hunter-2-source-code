#include "glitch-core-io/core/shared_string_table.hpp"

#include <cstdint>
#include <cstring>
#include <new>

#include "core-platform/memory.hpp"
#include "core-platform/stlport_alloc.hpp"

namespace glitch::core::detail {

// 0x6a4cb8 _ZNK6glitch4core6detail22SSharedStringHeapEntry6commitEv
void SSharedStringHeapEntry::commit() const {
    const char* text = *static_cast<const char* const*>(data);
    std::size_t size = std::strlen(text) + 5;
    if (size < 8) size = 8;
    char* block = new char[size];
    data = block;
    const std::uint32_t zero = 0;
    std::memcpy(block, &zero, 4);
    std::strcpy(block + 4, text);
}

}  // namespace glitch::core::detail

namespace boost::unordered_detail {

namespace {
// boost::unordered_detail::prime_list_template<unsigned>::value (0x8eafc0): the 40 bucket counts.
constexpr unsigned kPrimes[40] = {5u,        11u,        17u,         29u,         37u,         53u,         67u,
                                  79u,       97u,        131u,        193u,        257u,        389u,        521u,
                                  769u,      1031u,      1543u,       2053u,       3079u,       6151u,       12289u,
                                  24593u,    49157u,     98317u,      196613u,     393241u,     786433u,     1572869u,
                                  3145739u,  6291469u,   12582917u,   25165843u,   50331653u,   100663319u,  201326611u,
                                  402653189u, 805306457u, 1610612741u, 3221225473u, 4294967291u};
}  // namespace

// 0x6a4f84 _ZN5boost16unordered_detail27hash_table_data_unique_keysIN6glitch4core10SAllocatorINS3_6detail22SSharedStringHeapEntryELNS2_6memory13E_MEMORY_HINTE0EEEE14create_bucketsEv
template <>
void SSharedStringHeapBucketData::create_buckets() {
    void** array = static_cast<void**>(GlitchAlloc(static_cast<unsigned>(sizeof(void*) * (bucketCount + 1)), glitch::memory::EMH_UNRECOVERED));
    for (unsigned i = 0; i <= bucketCount; ++i) array[i] = nullptr;
    void** sentinel = array + bucketCount;
    cachedBegin = sentinel;
    *sentinel = sentinel;
    buckets = array;
}

// 0x6a4f18 _ZN5boost16unordered_detail27hash_table_data_unique_keysIN6glitch4core10SAllocatorINS3_6detail22SSharedStringHeapEntryELNS2_6memory13E_MEMORY_HINTE0EEEE14delete_bucketsEv
template <>
void SSharedStringHeapBucketData::delete_buckets() {
    if (buckets == nullptr) return;
    void** end = buckets + bucketCount;
    if (cachedBegin != end) {
        for (void** slot = cachedBegin; slot != end; ++slot) {
            void** node = static_cast<void**>(*slot);
            *slot = nullptr;
            while (node != nullptr) {
                void** record = node - 1;
                node = static_cast<void**>(*node);
                GlitchFree(record);
            }
        }
    }
    GlitchFree(buckets);
}

// 0x6a4fd8 _ZN5boost16unordered_detail27hash_table_data_unique_keysIN6glitch4core10SAllocatorINS3_6detail22SSharedStringHeapEntryELNS2_6memory13E_MEMORY_HINTE0EEEEC1ERKSA_j
template <>
SSharedStringHeapBucketData::hash_table_data_unique_keys(const SSharedStringHeapBucketData&, unsigned minimumBuckets) {
    buckets = nullptr;
    // lower_bound over the 40 primes; past the end the last prime is used.
    int length = 40;
    const unsigned* first = kPrimes;
    while (length > 0) {
        const int half = length >> 1;
        if (first[half] < minimumBuckets) {
            first += half + 1;
            length -= half + 1;
        } else {
            length = half;
        }
    }
    if (first == kPrimes + 40) first = kPrimes + 39;
    bucketCount = *first;
    size = 0;
    cachedBegin = nullptr;
    create_buckets();
}

}  // namespace boost::unordered_detail
