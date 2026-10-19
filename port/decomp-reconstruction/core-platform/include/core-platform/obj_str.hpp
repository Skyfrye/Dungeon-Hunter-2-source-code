// ObjToStr / StrToObj: text (de)serialisation helpers used by the original
// property and config code. Reconstructed from libDungeonHunter2.so pseudocode.
#pragma once

#include "core-platform/deps/game_types.hpp"
#include "glitch-shared/glitch_core.hpp"

#include <vector>

void ObjToStr(char* out, int& value);
void ObjToStr(char* out, bool& value);
void ObjToStr(char* out, float& value);
void ObjToStr(char* out, Point2D<int>& value);
void ObjToStr(char* out, Point3D<float>& value);
void ObjToStr(char* out, glitch::core::dimension2d<float>& value);
void ObjToStr(char* out, glitch::core::vector3d<float>& value);
void ObjToStr(char* out, std::vector<Point3D<float>>& value);
void StrToObj(const char* text, int& value);
void StrToObj(const char* text, bool& value);
void StrToObj(const char* text, float& value);
void StrToObj(const char* text, Point2D<int>& value);
void StrToObj(const char* text, glitch::core::dimension2d<int>& value);
void StrToObj(const char* text, glitch::core::dimension2d<float>& value);
void StrToObj(const char* text, Point3D<int>& value);
void StrToObj(const char* text, Point3D<float>& value);
void StrToObj(const char* text, glitch::core::vector3d<float>& value);
void StrToObj(const char* text, std::vector<Point3D<float>>& value);
