// Point2D<T>: a two-component point or vector, X and Y. The game uses it for touch and screen positions
// (Point2D<short>, Point2D<int>) and for planar world positions (Point2D<float>, the physics body position).
// Original 32-bit size 0x8 for Point2D<float> and Point2D<int>, 0x4 for Point2D<short>.
// Reconstructed from libDungeonHunter2.so pseudocode (normalize 0x412258, lineIntersection 0x312848 and 0x312b40).
// Only the Point2D<float> instantiation has methods in the queues.
#pragma once

template <typename T>
struct Point2D {
    Point2D& normalize();                                                   // 0x412258 Point2D<float>::normalize, divides by the length

    // Segment intersection, static. The 5-argument overload forwards to the 7-argument one, which writes the
    // intersection point to out and the segment parameters to t (along p) and u (along q). The return value is
    // 2 to 5 for the four t/u range cases, and 0 or 1 when the segments are parallel (the original's codes).
    static int lineIntersection(const Point2D& p0, const Point2D& p1, const Point2D& q0, const Point2D& q1,
                                Point2D& out);                              // 0x312b40
    static int lineIntersection(const Point2D& p0, const Point2D& p1, const Point2D& q0, const Point2D& q1,
                                Point2D& out, float& t, float& u);          // 0x312848

    T X;                                                                    // +0x00
    T Y;                                                                    // +0x04
};

// Point2D<float> members. The bodies are in game-world/src/g1-game-world-pack3-ce4c1f-0.cpp as explicit
// specializations; these declarations make every translation unit call them instead of an implicit instantiation.
template <> Point2D<float>& Point2D<float>::normalize();
template <> int Point2D<float>::lineIntersection(const Point2D<float>& p0, const Point2D<float>& p1,
                                                 const Point2D<float>& q0, const Point2D<float>& q1,
                                                 Point2D<float>& out);
template <> int Point2D<float>::lineIntersection(const Point2D<float>& p0, const Point2D<float>& p1,
                                                 const Point2D<float>& q0, const Point2D<float>& q1,
                                                 Point2D<float>& out, float& t, float& u);
