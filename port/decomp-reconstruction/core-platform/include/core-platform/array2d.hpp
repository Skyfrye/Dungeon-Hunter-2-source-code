// Array2d<T>: a grid that grows in any direction. Rows are held in a deque of
// deques: rows_[y - minY_][x - minX_]. New cells are value-initialised. The original
// instantiates this for rnd::Tile*; the template is declared generically here.
// The grid starts empty with origin (0, 0) and width 0, as the original constructor
// leaves it.
#pragma once

#include <cstddef>
#include <deque>

template <typename T>
class Array2d {
public:
    // 0x487dd8 _ZN7Array2dIPN3rnd4TileEEC1Ev: an empty grid. The original also
    // pre-allocates an 8-slot deque map with one node; that libstdc++ allocation is not
    // reproduced, and std::deque's default state is used instead.
    Array2d() = default;

    // 0x48b7fc: grows the grid to include (x, y) and returns that cell.
    T& operator()(int x, int y);

    // 0x487bb0 _ZN7Array2dIPN3rnd4TileEE5ClearEv
    // Erases every row and resets the origin and width, so the grid is empty again
    // (the original's deque erase calls and the final zeroing of minX, minY and width).
    void Clear();

    // 0x48b578 _ZN7Array2dIPN3rnd4TileEE14EnsurePositionEii
    // Grows the grid so that (x, y) is inside it. Growth to the left or top adds
    // cells at the front, growth to the right or bottom adds them at the back.
    // New rows take the current width.
    void EnsurePosition(int x, int y);

private:
    int minX_ = 0;               // +0x0, x of the first column
    int minY_ = 0;               // +0x4, y of the first row
    int width_ = 0;              // +0x8, number of columns
    std::deque<std::deque<T>> rows_;  // +0xc, one deque per row (height = rows_.size())
};

template <typename T>
T& Array2d<T>::operator()(int x, int y) {
    EnsurePosition(x, y);
    return rows_[static_cast<std::size_t>(y - minY_)][static_cast<std::size_t>(x - minX_)];
}

template <typename T>
void Array2d<T>::Clear() {
    rows_.clear();
    minX_ = 0;
    minY_ = 0;
    width_ = 0;
}

template <typename T>
void Array2d<T>::EnsurePosition(int x, int y) {
    if (x < minX_) {
        const int add = minX_ - x;
        for (auto& row : rows_) {
            row.insert(row.begin(), static_cast<std::size_t>(add), T());
        }
        width_ += add;
        minX_ = x;
    } else if (x >= minX_ + width_) {
        const int add = x - (minX_ + width_) + 1;
        for (auto& row : rows_) {
            row.insert(row.end(), static_cast<std::size_t>(add), T());
        }
        width_ += add;
    }

    if (y < minY_) {
        for (int i = minY_ - y; i > 0; --i) {
            rows_.emplace_front(static_cast<std::size_t>(width_), T());
        }
        minY_ = y;
    } else {
        const int rowsNeeded = y - minY_ + 1;
        while (static_cast<int>(rows_.size()) < rowsNeeded) {
            rows_.emplace_back(static_cast<std::size_t>(width_), T());
        }
    }
}
