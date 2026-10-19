#include "core-platform/obj_str.hpp"

#include "core-platform/debug_out.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

namespace {
// Splits text on commas the way the original's strtok(",") loop does: empty
// tokens are skipped. The original copies into a 256-byte CustomAlloc buffer;
// here the whole string is copied, so long input is not truncated or overrun.
std::vector<std::string> SplitCommas(const char* text) {
    std::vector<char> buf(text, text + std::strlen(text) + 1);
    std::vector<std::string> tokens;
    for (char* tok = std::strtok(buf.data(), ","); tok != nullptr; tok = std::strtok(nullptr, ",")) {
        tokens.emplace_back(tok);
    }
    return tokens;
}
}  // namespace

// 0x30eea0 _Z8ObjToStrPcRi
void ObjToStr(char* out, int& value) {
    std::sprintf(out, "%d", value);
}

// 0x30eeb4 _Z8ObjToStrPcRb
void ObjToStr(char* out, bool& value) {
    std::sprintf(out, "%d", static_cast<unsigned>(value));
}

// 0x30eec8 _Z8ObjToStrPcRf
void ObjToStr(char* out, float& value) {
    std::sprintf(out, "%f", static_cast<double>(value));
}

// 0x30ee84 _Z8ObjToStrPcR7Point2DIiE
void ObjToStr(char* out, Point2D<int>& value) {
    std::sprintf(out, "%d,%d", value.X, value.Y);
}

// 0x30efb0 _Z8ObjToStrPcR7Point3DIfE
void ObjToStr(char* out, Point3D<float>& value) {
    std::sprintf(out, "%f,%f,%f", static_cast<double>(value.X), static_cast<double>(value.Y),
                 static_cast<double>(value.Z));
}

// 0x30eefc _Z8ObjToStrPcRN6glitch4core11dimension2dIfEE
void ObjToStr(char* out, glitch::core::dimension2d<float>& value) {
    std::sprintf(out, "%f,%f", static_cast<double>(value.Width), static_cast<double>(value.Height));
}

// 0x30ef50 _Z8ObjToStrPcRN6glitch4core8vector3dIfEE
void ObjToStr(char* out, glitch::core::vector3d<float>& value) {
    std::sprintf(out, "%f,%f,%f", value.X, value.Y, value.Z);
}

// 0x30ee60 _Z8ObjToStrPcRSt6vectorI7Point3DIfESaIS2_EE
// The original body is empty: a vector of points is not serialised.
void ObjToStr(char*, std::vector<Point3D<float>>&) {}

// 0x30f03c _Z8StrToObjPKcRi
void StrToObj(const char* text, int& value) {
    value = std::atoi(text);
}

// 0x30f020 _Z8StrToObjPKcRb
void StrToObj(const char* text, bool& value) {
    value = std::atoi(text) != 0;
}

// 0x30f288 _Z8StrToObjPKcRf
void StrToObj(const char* text, float& value) {
    value = static_cast<float>(std::strtod(text, nullptr));
}

// 0x30f050 _Z8StrToObjPKcR7Point2DIiE
void StrToObj(const char* text, Point2D<int>& value) {
    const auto tokens = SplitCommas(text);
    if (tokens.size() > 0) {
        value.X = std::atoi(tokens[0].c_str());
    }
    if (tokens.size() > 1) {
        value.Y = std::atoi(tokens[1].c_str());
    }
}

// 0x30f0c8 _Z8StrToObjPKcRN6glitch4core11dimension2dIiEE
// Width is the first comma field (stored at +0) and Height the second (+4), as
// Hex-Rays and the IDA listing both show. A missing field leaves its member
// unchanged; the original stores whatever its uninitialised register holds.
void StrToObj(const char* text, glitch::core::dimension2d<int>& value) {
    const auto tokens = SplitCommas(text);
    if (tokens.size() > 0) {
        value.Width = std::atoi(tokens[0].c_str());
    }
    if (tokens.size() > 1) {
        value.Height = std::atoi(tokens[1].c_str());
    }
}

// 0x30f140 _Z8StrToObjPKcR7Point3DIiE
// The first component is read with strtod and truncated toward zero.
void StrToObj(const char* text, Point3D<int>& value) {
    const auto tokens = SplitCommas(text);
    if (tokens.size() > 0) {
        value.X = static_cast<int>(std::strtod(tokens[0].c_str(), nullptr));
    }
    if (tokens.size() > 1) {
        value.Y = std::atoi(tokens[1].c_str());
    }
    if (tokens.size() > 2) {
        value.Z = std::atoi(tokens[2].c_str());
    }
}

// 0x30f1dc _Z8StrToObjPKcR7Point3DIfE
void StrToObj(const char* text, Point3D<float>& value) {
    const auto tokens = SplitCommas(text);
    if (tokens.size() > 0) {
        value.X = static_cast<float>(std::strtod(tokens[0].c_str(), nullptr));
    }
    if (tokens.size() > 1) {
        value.Y = static_cast<float>(std::strtod(tokens[1].c_str(), nullptr));
    }
    if (tokens.size() > 2) {
        value.Z = static_cast<float>(std::strtod(tokens[2].c_str(), nullptr));
    }
}

// 0x30f2a4 _Z8StrToObjPKcRN6glitch4core11dimension2dIfEE
// Same shape as the integer variant: Width at +0, Height at +4, parsed with
// strtod. A missing field leaves its member unchanged (see the integer variant).
void StrToObj(const char* text, glitch::core::dimension2d<float>& value) {
    const auto tokens = SplitCommas(text);
    if (tokens.size() > 0) {
        value.Width = static_cast<float>(std::strtod(tokens[0].c_str(), nullptr));
    }
    if (tokens.size() > 1) {
        value.Height = static_cast<float>(std::strtod(tokens[1].c_str(), nullptr));
    }
}

// 0x30f334 _Z8StrToObjPKcRN6glitch4core8vector3dIfEE
void StrToObj(const char* text, glitch::core::vector3d<float>& value) {
    const auto tokens = SplitCommas(text);
    if (tokens.size() > 0) {
        value.X = static_cast<float>(std::strtod(tokens[0].c_str(), nullptr));
    }
    if (tokens.size() > 1) {
        value.Y = static_cast<float>(std::strtod(tokens[1].c_str(), nullptr));
    }
    if (tokens.size() > 2) {
        value.Z = static_cast<float>(std::strtod(tokens[2].c_str(), nullptr));
    }
}

// 0x30f010 _Z8StrToObjPKcRSt6vectorI7Point3DIfESaIS3_EE
// The whole body is one _DEBUG_OUT call (Hex-Rays); the vector is left untouched.
// The debug sink is the _DEBUG_OUT stand-in in debug_out.cpp.
void StrToObj(const char*, std::vector<Point3D<float>>&) {
    _DEBUG_OUT("NEED TO CHECK Venkat Vikram ********** ********** ************");
}
