#include "glitch-core-io/core/vertex_transform.hpp"

namespace glitch::core {

namespace {
// 0x3C010204 (about 1/127): the normalisation of a signed byte normal. 0x38000100 (about 1/32767): that of a short normal.
constexpr float kByteNormal = 0x1.020408p-7f;
constexpr float kShortNormal = 0x1.0002p-15f;

template <class P>
inline P* advance(P* pointer, unsigned bytes) {
    return reinterpret_cast<P*>(reinterpret_cast<unsigned char*>(pointer) + bytes);
}
template <class P>
inline const P* advanceConst(const P* pointer, unsigned bytes) {
    return reinterpret_cast<const P*>(reinterpret_cast<const unsigned char*>(pointer) + bytes);
}

// The offset of the position after `count` elements, as the listings compute it: (count - 1) steps and one more.
inline unsigned endOffset(unsigned stride, unsigned short count) {
    return stride + static_cast<unsigned short>(count - 1) * stride;
}

// The 3x3 product of the normal forms (no translation).
template <class V>
inline void normalMatrix(V* out, float x, float y, float z, const float* m) {
    out->X = ((x * m[0]) + (y * m[4])) + (z * m[8]);
    out->Y = ((x * m[1]) + (y * m[5])) + (z * m[9]);
    out->Z = ((x * m[2]) + (y * m[6])) + (z * m[10]);
}

struct SignedByte3 {
    signed char X, Y, Z;
};

// The byte and short normal forms share one shape: the constant normalisation under the identity flag, else the matrix.
template <class S>
vector3d<float>* normalConvert(vector3d<float>* destination, unsigned destinationStride, const S* source, unsigned sourceStride,
                               unsigned short count, const STransformNormalComponent& component, float normalisation) {
    if (component.flag) {
        if (count != 0) {
            vector3d<float>* out = destination;
            unsigned remaining = count;
            while (true) {
                const float y = static_cast<float>(source->Y);
                const float z = static_cast<float>(source->Z);
                out->X = static_cast<float>(source->X) * normalisation;
                out->Y = y * normalisation;
                remaining = static_cast<unsigned short>(remaining - 1);
                out->Z = z * normalisation;
                out = advance(out, destinationStride);
                if (remaining == 0) break;
                source = advanceConst(source, sourceStride);
            }
            return advance(destination, endOffset(destinationStride, count));
        }
    } else if (count != 0) {
        vector3d<float>* out = destination;
        unsigned remaining = count;
        while (true) {
            const float x = static_cast<float>(source->X);
            const float y = static_cast<float>(source->Y);
            const float z = static_cast<float>(source->Z);
            normalMatrix(out, x, y, z, component.M);
            remaining = static_cast<unsigned short>(remaining - 1);
            out = advance(out, destinationStride);
            if (remaining == 0) break;
            source = advanceConst(source, sourceStride);
        }
        return advance(destination, endOffset(destinationStride, count));
    }
    return destination;
}
}  // namespace

// 0x608874 _ZN6glitch4core27STransformTexCoordComponent14setConvertTypeEPv
void STransformTexCoordComponent::setConvertType(void*) {
    if (!flag) {
        const vector3d<float>* shift = offset;
        const float y = shift->Y;
        const float newTranslationY = ((shift->X * M[1]) + (y * M[5])) + M[9];
        const float x = shift->X * M[0];
        const vector3d<float>* factor = scale;
        M[8] = M[8] + (x + (y * M[4]));
        M[9] = newTranslationY;
        flag = false;
        const float sx = factor->X;
        const float sy = factor->Y;
        M[0] = M[0] * sx;
        M[1] = M[1] * sx;
        M[4] = M[4] * sy;
        M[5] = M[5] * sy;
    }
}

// 0x608960 _ZN6glitch4core27STransformPositionComponent14setConvertTypeEPv
void STransformPositionComponent::setConvertType(void*) {
    if (!flag) {
        const vector3d<float>* shift = offset;
        const float x = shift->X;
        const float y = shift->Y;
        const float z = shift->Z;
        const float tx = (((x * M[0]) + (y * M[4])) + (z * M[8])) + M[12];
        const float ty = (((x * M[1]) + (y * M[5])) + (z * M[9])) + M[13];
        const float tz = (((x * M[2]) + (y * M[6])) + (z * M[10])) + M[14];
        flag = false;
        M[14] = tz;
        M[12] = tx;
        M[13] = ty;
        postScale(*scale);
    }
}

// 0x608a94 _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS2_IsEENS0_27STransformPositionComponentEEEPT_S7_jPKT0_jtRKT1_
// Short positions to float. With the identity flag: the stream's scale and offset when either pointer is set (the scale read again for
// every vertex, as the listing does), else the plain conversion; without it: the matrix, translation included.
template <>
vector3d<float>* copyComponent<vector3d<float>, vector3d<short>, STransformPositionComponent>(
    vector3d<float>* destination, unsigned destinationStride, const vector3d<short>* source, unsigned sourceStride,
    unsigned short count, const STransformPositionComponent& component) {
    vector3d<float>* out = destination;
    if (component.flag) {
        const vector3d<float>* scale = component.scale;
        if (scale != nullptr || component.offset != nullptr) {
            if (count != 0) {
                unsigned remaining = count;
                while (true) {
                    const vector3d<float>* offset = component.offset;
                    const float y = (static_cast<float>(source->Y) * scale->Y) + offset->Y;
                    const float z = (static_cast<float>(source->Z) * scale->Z) + offset->Z;
                    out->X = (static_cast<float>(source->X) * scale->X) + offset->X;
                    out->Z = z;
                    out->Y = y;
                    remaining = static_cast<unsigned short>(remaining - 1);
                    out = advance(out, destinationStride);
                    if (remaining == 0) break;
                    scale = component.scale;
                    source = advanceConst(source, sourceStride);
                }
                return advance(destination, endOffset(destinationStride, count));
            }
        } else if (count != 0) {
            unsigned remaining = count;
            while (true) {
                const float y = static_cast<float>(source->Y);
                const float z = static_cast<float>(source->Z);
                remaining = static_cast<unsigned short>(remaining - 1);
                out->X = static_cast<float>(source->X);
                out->Y = y;
                out->Z = z;
                out = advance(out, destinationStride);
                if (remaining == 0) break;
                source = advanceConst(source, sourceStride);
            }
            return advance(destination, endOffset(destinationStride, count));
        }
    } else if (count != 0) {
        unsigned remaining = count;
        const float* m = component.M;
        while (true) {
            const float x = static_cast<float>(source->X);
            const float y = static_cast<float>(source->Y);
            const float z = static_cast<float>(source->Z);
            out->X = (((x * m[0]) + (y * m[4])) + (z * m[8])) + m[12];
            out->Y = (((x * m[1]) + (y * m[5])) + (z * m[9])) + m[13];
            out->Z = (((x * m[2]) + (y * m[6])) + (z * m[10])) + m[14];
            remaining = static_cast<unsigned short>(remaining - 1);
            out = advance(out, destinationStride);
            if (remaining == 0) break;
            source = advanceConst(source, sourceStride);
        }
        return advance(destination, endOffset(destinationStride, count));
    }
    return destination;
}

// 0x608dbc _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS0_27STransformPositionComponentEEEPT_S6_jPKS5_jtRKT0_
template <>
vector3d<float>* copyComponent<vector3d<float>, STransformPositionComponent>(
    vector3d<float>* destination, unsigned destinationStride, const vector3d<float>* source, unsigned sourceStride,
    unsigned short count, const STransformPositionComponent& component) {
    if (component.flag) {
        if (count != 0) {
            vector3d<float>* out = destination;
            unsigned remaining = count;
            do {
                --remaining;
                *out = *source;
                source = advanceConst(source, sourceStride);
                out = advance(out, destinationStride);
            } while (remaining != 0);
            return advance(destination, count * destinationStride);
        }
    } else if (count != 0) {
        vector3d<float>* out = destination;
        unsigned remaining = count;
        const float* m = component.M;
        do {
            out->X = (((source->X * m[0]) + (source->Y * m[4])) + (source->Z * m[8])) + m[12];
            out->Y = (((source->X * m[1]) + (source->Y * m[5])) + (source->Z * m[9])) + m[13];
            remaining = static_cast<unsigned short>(remaining - 1);
            out->Z = (((source->X * m[2]) + (source->Y * m[6])) + (source->Z * m[10])) + m[14];
            source = advanceConst(source, sourceStride);
            out = advance(out, destinationStride);
        } while (remaining != 0);
        return advance(destination, endOffset(destinationStride, count));
    }
    return destination;
}

// 0x608f6c _ZN6glitch4core15copyComponentSFINS0_8vector3dIfEENS0_27STransformPositionComponentEEEPT_S6_jPKhjNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEtRT0_
template <>
vector3d<float>* copyComponentSF<vector3d<float>, STransformPositionComponent>(
    vector3d<float>* destination, unsigned destinationStride, const unsigned char* source, unsigned sourceStride,
    glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE type, unsigned short count, STransformPositionComponent& component) {
    if (type == glitch::video::EVAVT_SHORT) {
        component.setConvertType(nullptr);
        return copyComponent<vector3d<float>, vector3d<short>, STransformPositionComponent>(
            destination, destinationStride, reinterpret_cast<const vector3d<short>*>(source), sourceStride, count, component);
    }
    if (type == glitch::video::EVAVT_FLOAT) {
        return copyComponent<vector3d<float>, STransformPositionComponent>(
            destination, destinationStride, reinterpret_cast<const vector3d<float>*>(source), sourceStride, count, component);
    }
    return destination;
}

// 0x608fdc _ZN6glitch4core13copyComponentINS0_8vector2dIfEENS2_IsEENS0_27STransformTexCoordComponentEEEPT_S7_jPKT0_jtRKT1_
template <>
vector2d<float>* copyComponent<vector2d<float>, vector2d<short>, STransformTexCoordComponent>(
    vector2d<float>* destination, unsigned destinationStride, const vector2d<short>* source, unsigned sourceStride,
    unsigned short count, const STransformTexCoordComponent& component) {
    if (component.flag) {
        if (count != 0) {
            vector2d<float>* out = destination;
            unsigned remaining = count;
            do {
                remaining = static_cast<unsigned short>(remaining - 1);
                out->X = (static_cast<float>(source->X) * component.scale->X) + component.offset->X;
                const float y = static_cast<float>(source->Y);
                source = advanceConst(source, sourceStride);
                out->Y = (y * component.scale->Y) + component.offset->Y;
                out = advance(out, destinationStride);
            } while (remaining != 0);
            return advance(destination, endOffset(destinationStride, count));
        }
    } else if (count != 0) {
        vector2d<float>* out = destination;
        unsigned remaining = count;
        const float* m = component.M;
        while (true) {
            const float x = static_cast<float>(source->X);
            const float y = static_cast<float>(source->Y);
            out->X = ((x * m[0]) + (y * m[4])) + m[8];
            remaining = static_cast<unsigned short>(remaining - 1);
            out->Y = ((x * m[1]) + (y * m[5])) + m[9];
            out = advance(out, destinationStride);
            if (remaining == 0) break;
            source = advanceConst(source, sourceStride);
        }
        return advance(destination, endOffset(destinationStride, count));
    }
    return destination;
}

// 0x60917c _ZN6glitch4core15copyComponentSFINS0_8vector2dIfEENS0_27STransformTexCoordComponentEEEPT_S6_jPKhjNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEtRT0_
// Short: the quantization is folded into the component and converted. Float: copied under the identity flag, else run through the
// matrix (x = x*M0 + y*M4 + M8, y = x*M1 + y*M5 + M9); the copies return the position after the last element.
template <>
vector2d<float>* copyComponentSF<vector2d<float>, STransformTexCoordComponent>(
    vector2d<float>* destination, unsigned destinationStride, const unsigned char* source, unsigned sourceStride,
    glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE type, unsigned short count, STransformTexCoordComponent& component) {
    if (type == glitch::video::EVAVT_SHORT) {
        component.setConvertType(nullptr);
        return copyComponent<vector2d<float>, vector2d<short>, STransformTexCoordComponent>(
            destination, destinationStride, reinterpret_cast<const vector2d<short>*>(source), sourceStride, count, component);
    }
    if (type == glitch::video::EVAVT_FLOAT) {
        const vector2d<float>* in = reinterpret_cast<const vector2d<float>*>(source);
        if (component.flag) {
            if (count != 0) {
                vector2d<float>* out = destination;
                unsigned remaining = count;
                do {
                    --remaining;
                    *out = *in;
                    in = advanceConst(in, sourceStride);
                    out = advance(out, destinationStride);
                } while (remaining != 0);
                return advance(destination, count * destinationStride);
            }
        } else if (count != 0) {
            vector2d<float>* out = destination;
            unsigned remaining = count;
            const float* m = component.M;
            do {
                out->X = ((in->X * m[0]) + (in->Y * m[4])) + m[8];
                remaining = static_cast<unsigned short>(remaining - 1);
                out->Y = ((in->X * m[1]) + (in->Y * m[5])) + m[9];
                in = advanceConst(in, sourceStride);
                out = advance(out, destinationStride);
            } while (remaining != 0);
            return advance(destination, endOffset(destinationStride, count));
        }
    }
    return destination;
}

// 0x6092e8 _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS2_IcEENS0_25STransformNormalComponentEEEPT_S7_jPKT0_jtRKT1_
// Signed byte normals (the loads are LDRSB); 0x3C010204 (about 1/127) under the identity flag.
template <>
vector3d<float>* copyComponent<vector3d<float>, vector3d<char>, STransformNormalComponent>(
    vector3d<float>* destination, unsigned destinationStride, const vector3d<char>* source, unsigned sourceStride,
    unsigned short count, const STransformNormalComponent& component) {
    return normalConvert(destination, destinationStride, reinterpret_cast<const SignedByte3*>(source), sourceStride, count, component,
                         kByteNormal);
}

// 0x609530 _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS2_IsEENS0_25STransformNormalComponentEEEPT_S7_jPKT0_jtRKT1_
// Short normals; 0x38000100 (about 1/32767) under the identity flag.
template <>
vector3d<float>* copyComponent<vector3d<float>, vector3d<short>, STransformNormalComponent>(
    vector3d<float>* destination, unsigned destinationStride, const vector3d<short>* source, unsigned sourceStride,
    unsigned short count, const STransformNormalComponent& component) {
    return normalConvert(destination, destinationStride, source, sourceStride, count, component, kShortNormal);
}

// 0x609778 _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS0_25STransformNormalComponentEEEPT_S6_jPKS5_jtRKT0_
template <>
vector3d<float>* copyComponent<vector3d<float>, STransformNormalComponent>(
    vector3d<float>* destination, unsigned destinationStride, const vector3d<float>* source, unsigned sourceStride,
    unsigned short count, const STransformNormalComponent& component) {
    if (component.flag) {
        if (count != 0) {
            vector3d<float>* out = destination;
            unsigned remaining = count;
            do {
                --remaining;
                *out = *source;
                source = advanceConst(source, sourceStride);
                out = advance(out, destinationStride);
            } while (remaining != 0);
            return advance(destination, count * destinationStride);
        }
    } else if (count != 0) {
        vector3d<float>* out = destination;
        unsigned remaining = count;
        do {
            normalMatrix(out, source->X, source->Y, source->Z, component.M);
            remaining = static_cast<unsigned short>(remaining - 1);
            source = advanceConst(source, sourceStride);
            out = advance(out, destinationStride);
        } while (remaining != 0);
        return advance(destination, endOffset(destinationStride, count));
    }
    return destination;
}

// 0x609910 _ZN6glitch4core16copyComponentBSFINS0_8vector3dIfEENS0_25STransformNormalComponentEEEPT_S6_jPKhjNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEtRT0_
// Short (2) and byte (0) normals first scale the component's matrix by the normalisation constant (postScale), then convert; float (6)
// normals are copied or transformed as they are. Other stored types leave the destination untouched.
template <>
vector3d<float>* copyComponentBSF<vector3d<float>, STransformNormalComponent>(
    vector3d<float>* destination, unsigned destinationStride, const unsigned char* source, unsigned sourceStride,
    glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE type, unsigned short count, STransformNormalComponent& component) {
    switch (type) {
        case glitch::video::EVAVT_SHORT: {
            vector3d<float> scale;
            scale.X = scale.Y = scale.Z = kShortNormal;
            component.postScale(scale);
            return copyComponent<vector3d<float>, vector3d<short>, STransformNormalComponent>(
                destination, destinationStride, reinterpret_cast<const vector3d<short>*>(source), sourceStride, count, component);
        }
        case glitch::video::EVAVT_FLOAT:
            return copyComponent<vector3d<float>, STransformNormalComponent>(
                destination, destinationStride, reinterpret_cast<const vector3d<float>*>(source), sourceStride, count, component);
        case glitch::video::EVAVT_BYTE: {
            vector3d<float> scale;
            scale.X = scale.Y = scale.Z = kByteNormal;
            component.postScale(scale);
            return copyComponent<vector3d<float>, vector3d<char>, STransformNormalComponent>(
                destination, destinationStride, reinterpret_cast<const vector3d<char>*>(source), sourceStride, count, component);
        }
        default:
            return destination;
    }
}

}  // namespace glitch::core
