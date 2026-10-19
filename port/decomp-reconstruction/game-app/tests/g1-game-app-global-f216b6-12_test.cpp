// Test for batch g1-game-app-global-f216b6-12. Covers BubbleSortByTitle, the title sort of NativeGetQuestIDsInRange:
// ascending order by strcmp, stable order for equal titles, and the empty, single and already sorted cases. Exit status 0
// means every check passed.
#include <cstdio>
#include <string>
#include <vector>

#include "dh2/global/native_gameswf_menus.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Stand-in for a quest record: only the title and an id are needed to check the order. It is not a dh2 class.
struct TitledItem {
    std::string title;
    int id;
};

const char* TitleOf(const TitledItem& item) {
    return item.title.c_str();
}

std::vector<std::string> Titles(const std::vector<TitledItem>& items) {
    std::vector<std::string> out;
    for (const TitledItem& item : items) {
        out.push_back(item.title);
    }
    return out;
}

void TestEmptyAndSingle() {
    std::vector<TitledItem> empty;
    BubbleSortByTitle(empty, TitleOf);
    Check(empty.empty(), "empty vector stays empty");

    std::vector<TitledItem> one{{"only", 7}};
    BubbleSortByTitle(one, TitleOf);
    Check(one.size() == 1 && one[0].id == 7, "single element is unchanged");
}

void TestAscendingByTitle() {
    std::vector<TitledItem> items{{"gamma", 1}, {"alpha", 2}, {"delta", 3}, {"beta", 4}};
    BubbleSortByTitle(items, TitleOf);
    const std::vector<std::string> titles = Titles(items);
    const std::vector<std::string> expected{"alpha", "beta", "delta", "gamma"};
    Check(titles == expected, "titles are sorted ascending");
}

void TestReverseInput() {
    std::vector<TitledItem> items{{"d", 1}, {"c", 2}, {"b", 3}, {"a", 4}};
    BubbleSortByTitle(items, TitleOf);
    const std::vector<std::string> expected{"a", "b", "c", "d"};
    Check(Titles(items) == expected, "reverse input is sorted");
}

void TestByteOrderLikeStrcmp() {
    // strcmp compares bytes, so an uppercase letter sorts before a lowercase one.
    std::vector<TitledItem> items{{"b", 1}, {"B", 2}, {"a", 3}, {"A", 4}};
    BubbleSortByTitle(items, TitleOf);
    const std::vector<std::string> expected{"A", "B", "a", "b"};
    Check(Titles(items) == expected, "order follows strcmp byte order");
}

void TestEqualTitlesKeepOrder() {
    std::vector<TitledItem> items{{"a", 1}, {"b", 2}, {"a", 3}, {"b", 4}, {"a", 5}};
    BubbleSortByTitle(items, TitleOf);
    const std::vector<int> ids{items[0].id, items[1].id, items[2].id, items[3].id, items[4].id};
    const std::vector<int> expected{1, 3, 5, 2, 4};
    Check(ids == expected, "equal titles keep their input order");
}

void TestAlreadySorted() {
    std::vector<TitledItem> items{{"x", 1}, {"y", 2}, {"z", 3}};
    BubbleSortByTitle(items, TitleOf);
    const std::vector<int> ids{items[0].id, items[1].id, items[2].id};
    const std::vector<int> expected{1, 2, 3};
    Check(ids == expected, "sorted input is unchanged");
}

}  // namespace

int main() {
    TestEmptyAndSingle();
    TestAscendingByTitle();
    TestReverseInput();
    TestByteOrderLikeStrcmp();
    TestEqualTitlesKeepOrder();
    TestAlreadySorted();
    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-12 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
