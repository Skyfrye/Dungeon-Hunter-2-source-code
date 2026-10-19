// std::sort as STLport 5 (the library the binary links) does it: introsort on partitions longer than 16 elements, then a final insertion
// sort. The libstdc++ std::sort is a different algorithm, and with a comparator that has ties (the inventory sorts) the order of equal
// elements depends on the algorithm, so the natives that sort lists for the menus use this one. The structure is read from the
// instantiations in the binary (e.g. NativeMerchantGetItemsListForSlot 0x444168: __introsort_loop with depth 2 * floor(log2 n), then
// __linear_insert for the first 16 elements and an unguarded insertion for the rest).
#pragma once

#include <algorithm>
#include <cstddef>
#include <iterator>
#include <utility>

namespace stlport {

constexpr std::ptrdiff_t kSortThreshold = 16;

template <class T, class Compare>
const T& MedianOfThree(const T& a, const T& b, const T& c, Compare comp) {
    if (comp(a, b)) {
        if (comp(b, c)) {
            return b;
        }
        return comp(a, c) ? c : a;
    }
    if (comp(a, c)) {
        return a;
    }
    return comp(b, c) ? c : b;
}

template <class It, class T, class Compare>
It UnguardedPartition(It first, It last, T pivot, Compare comp) {
    for (;;) {
        while (comp(*first, pivot)) {
            ++first;
        }
        --last;
        while (comp(pivot, *last)) {
            --last;
        }
        if (!(first < last)) {
            return first;
        }
        std::iter_swap(first, last);
        ++first;
    }
}

template <class It, class T, class Compare>
void UnguardedLinearInsert(It last, T value, Compare comp) {
    It next = last;
    --next;
    while (comp(value, *next)) {
        *last = *next;
        last = next;
        --next;
    }
    *last = value;
}

template <class It, class T, class Compare>
void LinearInsert(It first, It last, T value, Compare comp) {
    if (comp(value, *first)) {
        std::copy_backward(first, last, last + 1);
        *first = value;
    } else {
        UnguardedLinearInsert(last, value, comp);
    }
}

template <class It, class Compare>
void InsertionSort(It first, It last, Compare comp) {
    if (first == last) {
        return;
    }
    for (It i = first + 1; i != last; ++i) {
        LinearInsert(first, i, typename std::iterator_traits<It>::value_type(*i), comp);
    }
}

template <class It, class Compare>
void UnguardedInsertionSort(It first, It last, Compare comp) {
    for (It i = first; i != last; ++i) {
        UnguardedLinearInsert(i, typename std::iterator_traits<It>::value_type(*i), comp);
    }
}

template <class It, class Compare>
void FinalInsertionSort(It first, It last, Compare comp) {
    if (last - first > kSortThreshold) {
        InsertionSort(first, first + kSortThreshold, comp);
        UnguardedInsertionSort(first + kSortThreshold, last, comp);
    } else {
        InsertionSort(first, last, comp);
    }
}

template <class It, class Compare>
void IntroSortLoop(It first, It last, int depthLimit, Compare comp) {
    typedef typename std::iterator_traits<It>::value_type Value;
    while (last - first > kSortThreshold) {
        if (depthLimit == 0) {
            std::partial_sort(first, last, last, comp);  // STLport's heap fallback (reached only on degenerate input)
            return;
        }
        --depthLimit;
        It cut = UnguardedPartition(first, last, Value(MedianOfThree(*first, *(first + (last - first) / 2), *(last - 1), comp)), comp);
        IntroSortLoop(cut, last, depthLimit, comp);
        last = cut;
    }
}

// floor(log2(n)) for n >= 1.
inline int Log2Floor(std::size_t n) {
    int log = 0;
    while (n > 1) {
        n >>= 1;
        ++log;
    }
    return log;
}

template <class It, class Compare>
void Sort(It first, It last, Compare comp) {
    if (first != last) {
        IntroSortLoop(first, last, Log2Floor(static_cast<std::size_t>(last - first)) * 2, comp);
        FinalInsertionSort(first, last, comp);
    }
}

}  // namespace stlport
