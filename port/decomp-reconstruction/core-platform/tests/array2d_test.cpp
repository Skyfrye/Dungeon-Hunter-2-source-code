#include "core-platform/array2d.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    Array2d<int> grid;

    // Cells start value-initialised, and a write sticks.
    grid(3, -2) = 7;
    CHECK(grid(3, -2) == 7);
    CHECK(grid(0, 0) == 0);

    // Growing left, up and right keeps earlier values.
    grid(0, 0) = 1;
    grid(-4, 5) = 9;
    grid(6, -6) = 11;
    CHECK(grid(0, 0) == 1);
    CHECK(grid(3, -2) == 7);
    CHECK(grid(-4, 5) == 9);
    CHECK(grid(6, -6) == 11);
    CHECK(grid(-4, -6) == 0);  // a new cell inside the grown area

    // EnsurePosition on a cell that is already inside changes nothing.
    grid.EnsurePosition(0, 0);
    CHECK(grid(0, 0) == 1);

    // Clear keeps the shape and resets every cell.
    grid.Clear();
    CHECK(grid(3, -2) == 0 && grid(0, 0) == 0 && grid(-4, 5) == 0);

    std::printf("%s\n", failures ? "array2d: FAILED" : "array2d: ok");
    return failures != 0;
}
