#include "core-platform/stream_ops.hpp"

// 0x30fdd0 _ZlsRSoRKN6glitch4core8vector3dIfEE
// X, Y and Z are written as doubles with a ',' after X and after Y. The listing
// calls std::ostream::_M_put_nowiden with no visible string argument, because the
// compiler used the constant-propagated clone _ZNSo14_M_put_nowidenEPKc.clone.1
// (0x30fc18), which writes the literal "," at asc_8BE3C8.
std::ostream& operator<<(std::ostream& os, const glitch::core::vector3d<float>& v) {
    os << static_cast<double>(v.X) << ',';
    os << static_cast<double>(v.Y) << ',';
    os << static_cast<double>(v.Z);
    return os;
}

// 0x30ff48 _ZlsRSoRKN6glitch4core8vector3dIiEE
// Same as the float overload, with the components written as long (the 32-bit
// int). The separator is the ',' of the same constant clone.
std::ostream& operator<<(std::ostream& os, const glitch::core::vector3d<int>& v) {
    os << v.X << ',' << v.Y << ',' << v.Z;
    return os;
}

// 0x310178 _ZlsRSoRKN6glitch5video6SColorE
// The three channels are written as raw characters (std::ostream::_M_put_char),
// with the same ',' clone between them: bytes 0 ',' 1 ',' 2. Nothing precedes byte 0 or
// follows byte 2. Byte i is SColor::component(i) (canonical, glitch-shared/glitch_core.hpp).
std::ostream& operator<<(std::ostream& os, const glitch::video::SColor& c) {
    os.put(static_cast<char>(c.component(0)));
    os << ',';
    os.put(static_cast<char>(c.component(1)));
    os << ',';
    os.put(static_cast<char>(c.component(2)));
    return os;
}

// 0x3133e0 _ZlsRSoRKSt6vectorI7Point3DIfESaIS2_EE
// Elements are separated by the ";" literal (at 0x8be4a0, written with
// _M_put_nowiden). Each element is written as in the Point3D<float> writer
// (0x313360, operator<< <float>): X ',' Y ',' Z, inlined below. The writer runs
// over the elements in order and writes nothing for an empty vector.
std::ostream& operator<<(std::ostream& os, const std::vector<Point3D<float>>& v) {
    for (std::size_t i = 0; i < v.size(); ++i) {
        if (i != 0) {
            os << ";";
        }
        os << static_cast<double>(v[i].X) << ',' << static_cast<double>(v[i].Y) << ','
           << static_cast<double>(v[i].Z);
    }
    return os;
}

// 0x31026c _ZrsRSiRN6glitch4core11dimension2dIiEE
// Reads Width, skips one separator character, then reads Height.
std::istream& operator>>(std::istream& is, glitch::core::dimension2d<int>& d) {
    int width = 0;
    int height = 0;
    char sep = 0;
    is >> width;
    is >> sep;
    is >> height;
    d.Width = width;
    d.Height = height;
    return is;
}

// 0x3102b4 _ZrsRSiRN6glitch5video6SColorE
// Reads three integers, each followed by a separator character, and stores the
// low byte of each. The alpha channel is set to zero.
std::istream& operator>>(std::istream& is, glitch::video::SColor& c) {
    int r = 0;
    int g = 0;
    int b = 0;
    char sep = 0;
    is >> r;
    is >> sep;
    is >> g;
    is >> sep;
    is >> b;
    c.setComponent(3, 0);
    c.setComponent(0, static_cast<std::uint8_t>(r));
    c.setComponent(1, static_cast<std::uint8_t>(g));
    c.setComponent(2, static_cast<std::uint8_t>(b));
    return is;
}

// 0x31032c _ZrsRSiRN6glitch4core8vector3dIiEE
// Reads X, skips a separator, reads Y, skips a separator, reads Z.
std::istream& operator>>(std::istream& is, glitch::core::vector3d<int>& v) {
    char sep = 0;
    is >> v.X;
    is >> sep;
    is >> v.Y;
    is >> sep;
    is >> v.Z;
    return is;
}

// 0x310380 _ZrsRSiRN6glitch4core8vector3dIfEE
// Same reading pattern as the integer overload, with float components.
std::istream& operator>>(std::istream& is, glitch::core::vector3d<float>& v) {
    char sep = 0;
    is >> v.X;
    is >> sep;
    is >> v.Y;
    is >> sep;
    is >> v.Z;
    return is;
}
