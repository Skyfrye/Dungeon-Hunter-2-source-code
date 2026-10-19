// Test for the merchant price arithmetic shared by NativeMerchantSellItem and NativeMerchantBuyItem
// (dh2/global/native_stats_inventory_merchant.hpp, MerchantTradePrice). The natives themselves need the engine and the
// gameswf API, so only the arithmetic runs here. Returns non-zero on failure.
#include <cstdio>

#include "dh2/global/native_stats_inventory_merchant.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // Exact percentages.
    Check(MerchantTradePrice(100, 50) == 50, "100 at 50 percent is 50");
    Check(MerchantTradePrice(100, 100) == 100, "100 at 100 percent is 100");
    Check(MerchantTradePrice(1000, 150) == 1500, "1000 at 150 percent is 1500");
    Check(MerchantTradePrice(20, 25) == 5, "20 at 25 percent is 5");

    // Truncation toward zero: 7 * 0.5 = 3.5 gives 3.
    Check(MerchantTradePrice(7, 50) == 3, "3.5 truncates to 3");

    // The minimum price is 1: 3 * 0.1 = 0.3 truncates to 0, which is raised to 1.
    Check(MerchantTradePrice(3, 10) == 1, "0.3 is raised to the minimum of 1");
    Check(MerchantTradePrice(1, 1) == 1, "0.01 is raised to the minimum of 1");
    Check(MerchantTradePrice(100, 0) == 1, "zero percent is raised to the minimum of 1");

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-11 merchant price: all checks passed\n");
        return 0;
    }
    return 1;
}
