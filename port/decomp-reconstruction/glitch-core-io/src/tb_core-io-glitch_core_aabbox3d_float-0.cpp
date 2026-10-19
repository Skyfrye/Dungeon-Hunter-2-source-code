// Batch e1-glitch-core-io-glitch_core_aabbox3d_float-0 (glitch::core::aabbox3d<float>, one function).
//
// Layout (aabbox3d<float>, 24 bytes): MinEdge +0x00 (X), +0x04 (Y), +0x08 (Z);
// MaxEdge +0x0c (X), +0x10 (Y), +0x14 (Z).
#include "glitch-core-io/deps/glitch_core.hpp"

// 0x585638 _ZNK6glitch4core8aabbox3dIfE8getEdgesEPNS0_8vector3dIfEE
// The Hex-Rays float return value is leftover register state from the last store; the
// source-level function is void, so the port returns void.
//
// Corners, from the listing (diagonal form, as in the original):
//   centre = (Min + Max) * 0.5, diag = centre - Max, Min = centre + diag, Max = centre - diag.
// Every read of the box happens before the first write to edges, as in the listing, so the
// output may alias the box without changing the result.
template <>
void glitch::core::aabbox3d<float>::getEdges(glitch::core::vector3d<float>* edges) const {
    // X axis: +0x00 / +0x0c
    const float centreX = (MaxEdge.X + MinEdge.X) * 0.5f;  // v2
    const float diagX = centreX - MaxEdge.X;               // v11
    const float minX = centreX + diagX;                    // v2 + v11
    const float maxX = centreX - diagX;                    // v2 - v11
    // Y axis: +0x04 / +0x10
    const float centreY = (MaxEdge.Y + MinEdge.Y) * 0.5f;  // v3
    const float diagY = centreY - MaxEdge.Y;               // v5
    const float minY = centreY + diagY;                    // v6
    const float maxY = centreY - diagY;                    // v8
    // Z axis: +0x08 / +0x14
    const float centreZ = (MaxEdge.Z + MinEdge.Z) * 0.5f;  // v4
    const float diagZ = centreZ - MaxEdge.Z;               // v12
    const float minZ = centreZ + diagZ;                    // v7
    const float maxZ = centreZ - diagZ;                    // v9

    // Corner order matches the original stores (edges[i] at a2 + 3 * i).
    edges[0] = {minX, minY, minZ};
    edges[1] = {minX, maxY, minZ};
    edges[2] = {minX, minY, maxZ};
    edges[3] = {minX, maxY, maxZ};
    edges[4] = {maxX, minY, minZ};
    edges[5] = {maxX, maxY, minZ};
    edges[6] = {maxX, minY, maxZ};
    edges[7] = {maxX, maxY, maxZ};
}
