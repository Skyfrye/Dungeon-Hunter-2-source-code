// The step that decodes a relocated .bdae image into the host-width records (collada/BdaeDecode.hpp). Owner B3.
//
// Every function reads one record type at its 32-bit file layout (offsets in the comments are the file offsets) and fills the host record of
// collada/CColladaDatabase.hpp. Words that are addresses are 32-bit addresses of the address space glitch::res::File::Init() relocated the image
// in (glitch-video/tb/glitch_res_AddressSpace.hpp); they are turned into host pointers here, never cast. Plain data that holds no address (floats,
// ints, strings, the vertex bytes) is not copied: the host record points at it inside the image.
#include "glitch-scene-collada-gui/collada/BdaeDecode.hpp"

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <stdexcept>
#include <type_traits>
#include <vector>

#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/ResString.hpp"
#include "glitch-scene-collada-gui/collada/SMesh.hpp"
#include "glitch-video/tb/glitch_res_AddressSpace.hpp"

namespace glitch::collada {

namespace {

using res::AddressSpace32;

struct DecodeError : std::runtime_error {
    explicit DecodeError(const std::string& what) : std::runtime_error(what) {}
};

[[noreturn]] void fail(const char* what, std::uint32_t address) {
    char text[96];
    std::snprintf(text, sizeof text, "%s at 0x%08x", what, address);
    throw DecodeError(text);
}

// The host records of one file and the storage they are made in.
struct HostModel {
    SColladaFileData data;
    SDatabaseTables tables;
    std::vector<std::shared_ptr<void>> held;

    template <typename T>
    T* one() {
        auto record = std::make_shared<T>();
        held.push_back(record);
        return record.get();
    }
    template <typename T>
    T* many(std::size_t count) {
        if (count == 0) {
            return nullptr;
        }
        std::shared_ptr<T> records(new T[count](), std::default_delete<T[]>());
        held.push_back(records);
        return records.get();
    }
};

// A bounds-checked reader over the relocated image. Reads that fall in the block of the last read are served without a lookup.
class View {
public:
    const std::uint8_t* at(std::uint32_t address, std::size_t bytes) {
        if (address < base_ || address - base_ > size_ || bytes > size_ - (address - base_)) {
            std::uint32_t base = 0;
            std::uint8_t* host = nullptr;
            std::size_t size = 0;
            if (!AddressSpace32::lookup(address, base, host, size)) {
                fail("address outside the image", address);
            }
            base_ = base;
            host_ = host;
            size_ = size;
            if (bytes > size_ - (address - base_)) {
                fail("read past the end of its block", address);
            }
        }
        return host_ + (address - base_);
    }
    std::size_t bytesAfter(std::uint32_t address) const { return AddressSpace32::bytesAfter(address); }

    std::uint32_t u32(std::uint32_t address) {
        std::uint32_t value;
        std::memcpy(&value, at(address, 4), 4);
        return value;
    }
    std::int32_t i32(std::uint32_t address) { return static_cast<std::int32_t>(u32(address)); }
    float f32(std::uint32_t address) {
        float value;
        std::memcpy(&value, at(address, 4), 4);
        return value;
    }
    std::uint8_t u8(std::uint32_t address) { return *at(address, 1); }
    std::int8_t i8(std::uint32_t address) { return static_cast<std::int8_t>(*at(address, 1)); }
    std::uint16_t u16(std::uint32_t address) {
        std::uint16_t value;
        std::memcpy(&value, at(address, 2), 2);
        return value;
    }
    // A pointer to `bytes` bytes of plain data inside the image (null for the address 0).
    const std::uint8_t* raw(std::uint32_t address, std::size_t bytes) { return address == 0 ? nullptr : at(address, bytes); }
    // The text at an address (null for 0); the text must end inside its block.
    const char* str(std::uint32_t address) {
        if (address == 0) {
            return nullptr;
        }
        const std::uint8_t* p = at(address, 1);
        const std::size_t room = size_ - (address - base_);
        if (std::memchr(p, 0, room) == nullptr) {
            fail("text without end", address);
        }
        return reinterpret_cast<const char*>(p);
    }

private:
    std::uint32_t base_ = 0;
    std::uint8_t* host_ = nullptr;
    std::size_t size_ = 0;
};

// A table of `count` records of `stride` bytes at `base` must lie inside one block.
void checkTable(View& v, std::int32_t count, std::uint32_t base, std::uint32_t stride, const char* what) {
    if (count < 0) {
        fail(what, base);
    }
    if (count == 0) {
        return;
    }
    if (base == 0 || static_cast<std::uint64_t>(count) * stride > v.bytesAfter(base)) {
        fail(what, base);
    }
}

class Decoder {
public:
    Decoder(View& view, HostModel& model) : v(view), m(model) {}

    void run(std::uint32_t header);

private:
    View& v;
    HostModel& m;
    bool demandData = false;  // the file keeps its mesh and skin data in on-demand blocks (SDatabaseTables::skinCount > 0)

    // --- leaf records -------------------------------------------------------------------------------------------------------------
    res::SOnDemandBlock* demandBlock(std::uint32_t a);
    void decodeImage(std::uint32_t a, SImage& out);
    void decodeNewParam(std::uint32_t a, SNewParam& out);
    void decodeMaterialParam(std::uint32_t a, SParam& out);
    const void* decodeParamValues(std::int32_t type, std::uint32_t countAddress, std::uint32_t valuesAddress);
    SNewParam* decodeNewParams(std::int32_t count, std::uint32_t base);
    SPassBinding* decodeBindings(std::int32_t count, std::uint32_t base, bool programmable);
    void decodeNullPass(std::uint32_t a, SPass<SRenderStatesGLES>& out);
    void decodeProgrammablePass(std::uint32_t a, SPass<SRenderStatesProgrammable>& out);
    void decodeEffect(std::uint32_t a, SEffect& out);
    void decodeMaterial(std::uint32_t a, SMaterial& out);

    // --- animation ----------------------------------------------------------------------------------------------------------------
    void decodeAnimation(std::uint32_t a, SAnimation& out);
    void decodeSegments(std::uint32_t recordAddress);
    const SEventKeyTable* decodeEventKeyTable(std::uint32_t a);

    // --- geometry -----------------------------------------------------------------------------------------------------------------
    SMesh* decodeMesh(std::uint32_t a);
    void decodeGeometry(std::uint32_t a, SGeometry& out);
    SSkin* decodeSkin(std::uint32_t a);
    SMorph* decodeMorph(std::uint32_t a);
    void decodeController(std::uint32_t a, SController& out);

    // --- scene --------------------------------------------------------------------------------------------------------------------
    SInstanceMaterial* decodeBindings(std::int32_t count, std::uint32_t base);
    void decodeVertexInput(std::uint32_t a, SVertexInputGroup& out);
    void decodeInstanceCommon(std::uint32_t a, std::int32_t& count, SInstanceMaterial*& bindings, std::int32_t& layer);
    void* decodeInstance(std::uint32_t kind, std::uint32_t a);
    void decodeNode(std::uint32_t a, SNode& out);
    void decodeVisualScene(std::uint32_t a, SVisualScene& out);
    void decodeLight(std::uint32_t a, SLight& out);
    void decodeCamera(std::uint32_t a, SCamera& out);
    void decodeForce(std::uint32_t a, SForce& out);
    void decodeCoronas(std::uint32_t a, SCoronas& out);
    void decodeGNPSEmitter(std::uint32_t a, SGNPSEmitter& out);
    void decodeEmitter(std::uint32_t a, SEmitter& out);

    // --- generic tables -----------------------------------------------------------------------------------------------------------
    // A table of `count` records at `base` (stride `stride`): the host records are made in one array and listed in `list`.
    template <typename T, typename Fn>
    void table(std::vector<T*>& list, std::int32_t count, std::uint32_t base, std::uint32_t stride, const char* what, Fn decode) {
        checkTable(v, count, base, stride, what);
        T* records = m.many<T>(static_cast<std::size_t>(count));
        list.reserve(static_cast<std::size_t>(count));
        for (std::int32_t i = 0; i < count; ++i) {
            decode(base + stride * static_cast<std::uint32_t>(i), records[i]);
            list.push_back(&records[i]);
        }
    }
    // An array of `count` file words that are addresses of text.
    const char* const* textArray(std::int32_t count, std::uint32_t base) {
        checkTable(v, count, base, 4, "text array");
        const char** texts = m.many<const char*>(static_cast<std::size_t>(count));
        for (std::int32_t i = 0; i < count; ++i) {
            texts[i] = v.str(v.u32(base + 4u * static_cast<std::uint32_t>(i)));
        }
        return texts;
    }
};

// ---------------------------------------------------------------------------------------------------------------------------------------
// Leaf records
// ---------------------------------------------------------------------------------------------------------------------------------------

// An on-demand block (16 bytes): +0x00 use count, +0x04 byte offset in the file, +0x08 byte size, +0x0c the loaded data (0 in a file).
res::SOnDemandBlock* Decoder::demandBlock(std::uint32_t a) {
    if (a == 0) {
        return nullptr;
    }
    res::SOnDemandBlock* block = m.one<res::SOnDemandBlock>();
    block->count = v.i32(a);
    block->offset = v.u32(a + 4);
    block->size = v.u32(a + 8);
    const std::uint32_t loaded = v.u32(a + 12);
    block->data = loaded != 0 ? AddressSpace32::toPointer(loaded) : nullptr;
    return block;
}

// SImage (0x14): +0x00 name, +0x04 (not read), +0x08 path, +0x0c external flag, +0x10 the loaded image (runtime, 0).
void Decoder::decodeImage(std::uint32_t a, SImage& out) {
    out.name = v.str(v.u32(a));
    out.reserved04 = v.u32(a + 4);
    out.path = v.str(v.u32(a + 8));
    out.external = v.u32(a + 12);
    out.imageData = nullptr;
}

// The value array of a parameter of the given SParam::E_TYPE. The numbers (int .. color) stay in the image. A sampler's value is an array of
// pointers to cells that hold the index of an image record (SParamSampler). A light or url parameter is an array of pointers to text. A
// technique parameter points at a record whose second word is the technique's name (SParamTechnique).
const void* Decoder::decodeParamValues(std::int32_t type, std::uint32_t countAddress, std::uint32_t valuesAddress) {
    if (valuesAddress == 0) {
        return nullptr;
    }
    const std::int32_t elements = countAddress != 0 ? v.i32(countAddress) : 0;
    if (type >= SParam::ET_SAMPLER2D && type <= SParam::ET_SAMPLERRECT) {
        const std::int32_t n = elements < 1 ? 1 : elements;
        checkTable(v, n, valuesAddress, 4, "sampler array");
        SParamSampler** cells = m.many<SParamSampler*>(static_cast<std::size_t>(n));
        for (std::int32_t i = 0; i < n; ++i) {
            const std::uint32_t cellAddress = v.u32(valuesAddress + 4u * static_cast<std::uint32_t>(i));
            SParamSampler* cell = m.one<SParamSampler>();
            cell->index = cellAddress != 0 ? v.i32(cellAddress) : -1;
            cells[i] = cell;
        }
        return cells;
    }
    if (type == SParam::ET_LIGHT || type == SParam::ET_URL) {
        const std::int32_t n = elements < 1 ? 1 : elements;
        return textArray(n, valuesAddress);
    }
    if (type == SParam::ET_TECHNIQUE) {
        SParamTechnique* technique = m.one<SParamTechnique>();
        technique->reserved00 = v.u32(valuesAddress);
        technique->name = v.str(v.u32(valuesAddress + 4));
        return technique;
    }
    // Plain numbers: the bytes stay where they are. The extent is not known from the type alone, so only the first byte is checked.
    return v.raw(valuesAddress, 1);
}

// SNewParam (0x18): +0x00 name, +0x04 type, +0x08 semantic, +0x0c dimensions, +0x10 -> the element count, +0x14 -> the values.
void Decoder::decodeNewParam(std::uint32_t a, SNewParam& out) {
    out.name = v.str(v.u32(a));
    out.type = v.i32(a + 4);
    out.semantic = v.i32(a + 8);
    out.dimensions = v.i32(a + 12);
    const std::uint32_t countAddress = v.u32(a + 16);
    out.elementCount = reinterpret_cast<const std::uint32_t*>(v.raw(countAddress, 4));
    out.values = decodeParamValues(out.type, countAddress, v.u32(a + 20));
}

// SParam (0x18, the value of a material's parameter): +0x00 name, +0x04 (not read), +0x08 type, +0x0c (not read), +0x10 -> the element count,
// +0x14 -> the values.
void Decoder::decodeMaterialParam(std::uint32_t a, SParam& out) {
    out.name = v.str(v.u32(a));
    out.reserved04 = v.u32(a + 4);
    out.type = v.i32(a + 8);
    out.reserved0c = v.u32(a + 12);
    const std::uint32_t countAddress = v.u32(a + 16);
    out.elementCount = reinterpret_cast<const std::uint32_t*>(v.raw(countAddress, 4));
    out.values = decodeParamValues(out.type, countAddress, v.u32(a + 20));
}

SNewParam* Decoder::decodeNewParams(std::int32_t count, std::uint32_t base) {
    checkTable(v, count, base, 0x18, "new-param table");
    SNewParam* params = m.many<SNewParam>(static_cast<std::size_t>(count));
    for (std::int32_t i = 0; i < count; ++i) {
        decodeNewParam(base + 0x18u * static_cast<std::uint32_t>(i), params[i]);
    }
    return params;
}

// The bindings of a pass (12 bytes each). Programmable profile: +0x00 name, +0x04 global flag byte, +0x05 stage byte, +0x08 index or global name.
// Fixed-function profile: +0x00 symbol (16 bits), +0x02 global flag byte, +0x03 stage byte, +0x08 index or global name.
SPassBinding* Decoder::decodeBindings(std::int32_t count, std::uint32_t base, bool programmable) {
    checkTable(v, count, base, 12, "pass bindings");
    SPassBinding* bindings = m.many<SPassBinding>(static_cast<std::size_t>(count));
    for (std::int32_t i = 0; i < count; ++i) {
        const std::uint32_t a = base + 12u * static_cast<std::uint32_t>(i);
        SPassBinding& out = bindings[i];
        if (programmable) {
            out.name = v.str(v.u32(a));
            out.global = v.u8(a + 4);
            out.stage = v.u8(a + 5);
        } else {
            out.symbol = v.u16(a);
            out.global = v.u8(a + 2);
            out.stage = v.u8(a + 3);
        }
        if (out.global == 1) {
            out.globalName = v.str(v.u32(a + 8));
        } else {
            out.index = v.u32(a + 8);
        }
    }
    return bindings;
}

// A pass of the fixed-function profile (0xa0 bytes): +0x00 the fixed-function words, +0x4c the render state (0x4c bytes), +0x98 binding count,
// +0x9c bindings. (The original steps its passes by 0xe0 and reads the render state at +0x8c and the bindings at +0xd8: with one pass per
// technique, as in every sample file, the record is the one decoded here; see BDAE-LOADER.md.)
void Decoder::decodeNullPass(std::uint32_t a, SPass<SRenderStatesGLES>& out) {
    std::memcpy(out.states.fixedFunction, v.at(a, sizeof out.states.fixedFunction), sizeof out.states.fixedFunction);
    static_assert(sizeof(glitch::video::SRenderState) == 0x4c, "the render state is 0x4c bytes");
    std::memcpy(&out.states.renderState, v.at(a + 0x4c, 0x4c), 0x4c);
    out.bindingCount = v.i32(a + 0x98);
    out.bindings = decodeBindings(out.bindingCount, v.u32(a + 0x9c), false);
}

// A pass of the programmable profile (0x74 bytes): +0x00 .., +0x04 .. +0x18 the shader strings, +0x1c the render state, +0x68 a word, +0x6c
// binding count, +0x70 bindings.
void Decoder::decodeProgrammablePass(std::uint32_t a, SPass<SRenderStatesProgrammable>& out) {
    SRenderStatesProgrammable& s = out.states;
    s.unk_0x00 = v.u32(a);
    s.vertexFile = v.str(v.u32(a + 4));
    s.vertexEntry = v.str(v.u32(a + 8));
    s.vertexDefines = v.str(v.u32(a + 12));
    s.fragmentFile = v.str(v.u32(a + 16));
    s.fragmentEntry = v.str(v.u32(a + 20));
    s.fragmentDefines = v.str(v.u32(a + 24));
    std::memcpy(&s.renderState, v.at(a + 0x1c, 0x4c), 0x4c);
    s.unk_0x68 = v.u32(a + 0x68);
    out.bindingCount = v.i32(a + 0x6c);
    out.bindings = decodeBindings(out.bindingCount, v.u32(a + 0x70), true);
}

// SEffect (0x74): +0x00 name, +0x04 id, then four sections starting at +0x08, +0x20, +0x3c, +0x58, each {technique count, techniques,
// new-param count, new-params, count, array} (section 0 is 0x18 bytes, the others 0x1c).
void Decoder::decodeEffect(std::uint32_t a, SEffect& out) {
    out.name = v.str(v.u32(a));
    out.displayName = v.str(v.u32(a + 4));
    static const std::uint32_t kSection[4] = {0x08, 0x20, 0x3c, 0x58};
    for (int s = 0; s < 4; ++s) {
        const std::uint32_t o = a + kSection[s];
        out.techniqueCount[s] = v.i32(o);
        const std::uint32_t techniques = v.u32(o + 4);
        out.paramCount[s] = v.i32(o + 8);
        out.params[s] = decodeNewParams(out.paramCount[s], v.u32(o + 12));
        out.extraCount[s] = v.i32(o + 16);
        out.extra[s] = reinterpret_cast<const std::uint32_t*>(v.raw(v.u32(o + 20), 1));
        if (s > 1) {
            continue;  // sections 2 and 3: the techniques are not mapped
        }
        const std::int32_t count = out.techniqueCount[s];
        checkTable(v, count, techniques, 12, "technique table");
        if (s == 0) {
            out.nullTechniques = m.many<STechnique<SPass<SRenderStatesGLES>>>(static_cast<std::size_t>(count));
        } else {
            out.gles2Techniques = m.many<STechnique<SPass<SRenderStatesProgrammable>>>(static_cast<std::size_t>(count));
        }
        for (std::int32_t t = 0; t < count; ++t) {
            const std::uint32_t ta = techniques + 12u * static_cast<std::uint32_t>(t);
            const std::int32_t passCount = v.i32(ta + 4);
            const std::uint32_t passes = v.u32(ta + 8);
            if (s == 0) {
                auto& tech = out.nullTechniques[t];
                tech.name = v.str(v.u32(ta));
                tech.passCount = passCount;
                checkTable(v, passCount, passes, 0xa0, "pass table");
                tech.passes = m.many<SPass<SRenderStatesGLES>>(static_cast<std::size_t>(passCount));
                for (std::int32_t p = 0; p < passCount; ++p) {
                    decodeNullPass(passes + 0xa0u * static_cast<std::uint32_t>(p), tech.passes[p]);
                }
            } else {
                auto& tech = out.gles2Techniques[t];
                tech.name = v.str(v.u32(ta));
                tech.passCount = passCount;
                checkTable(v, passCount, passes, 0x74, "pass table");
                tech.passes = m.many<SPass<SRenderStatesProgrammable>>(static_cast<std::size_t>(passCount));
                for (std::int32_t p = 0; p < passCount; ++p) {
                    decodeProgrammablePass(passes + 0x74u * static_cast<std::uint32_t>(p), tech.passes[p]);
                }
            }
        }
    }
}

// SMaterial (0x24): +0x00 name, +0x04 (not read), +0x08 file, +0x0c effect url, +0x10 parameter count, +0x14 parameters (0x18 each), +0x18 the
// effect's index (-1: an effect of another file).
void Decoder::decodeMaterial(std::uint32_t a, SMaterial& out) {
    out.name = v.str(v.u32(a));
    out.reserved04 = v.u32(a + 4);
    out.fileName = v.str(v.u32(a + 8));
    out.effectUrl = v.str(v.u32(a + 12));
    out.paramCount = v.i32(a + 16);
    const std::uint32_t params = v.u32(a + 20);
    checkTable(v, out.paramCount, params, 0x18, "material parameters");
    SParam* list = m.many<SParam>(static_cast<std::size_t>(out.paramCount));
    for (std::int32_t i = 0; i < out.paramCount; ++i) {
        decodeMaterialParam(params + 0x18u * static_cast<std::uint32_t>(i), list[i]);
    }
    out.params = list;
    out.effectIndex = v.i32(a + 24);
    out.effect = nullptr;
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// Animation
// ---------------------------------------------------------------------------------------------------------------------------------------

// SAnimation (0x20): +0x00 name, +0x04 (not read), +0x08 the keyframe table (28-byte records: the file layout is the host layout), +0x0c the
// channel count, +0x10 the channels (16 bytes each: +0x00 (not read), +0x04 name, +0x08 type, +0x0c flag byte or text), +0x14 the track
// (runtime), +0x18 the default value {+0x00, +0x04, +0x08 -> value}, +0x1c the offset/scale {+0x00 type, +0x04 -> scales, +0x08 -> offsets}.
void Decoder::decodeAnimation(std::uint32_t a, SAnimation& out) {
    static_assert(sizeof(SAnimationKeyframe) == 28, "the keyframe record is 28 bytes");
    out.name = v.str(v.u32(a));
    out.unk_04 = v.u32(a + 4);
    out.keyframes = reinterpret_cast<const SAnimationKeyframe*>(v.raw(v.u32(a + 8), 28));
    out.channelCount = v.i32(a + 12);
    const std::uint32_t channels = v.u32(a + 16);
    checkTable(v, out.channelCount, channels, 16, "channel table");
    SChannel* list = m.many<SChannel>(static_cast<std::size_t>(out.channelCount));
    for (std::int32_t i = 0; i < out.channelCount; ++i) {
        const std::uint32_t c = channels + 16u * static_cast<std::uint32_t>(i);
        list[i].unk_00 = v.u32(c);
        list[i].name = v.str(v.u32(c + 4));
        list[i].type = v.u32(c + 8);
        // Channel types 86..91 (0x56..0x5B, the material parameter channels) keep a text at +0x0c (CAnimationSet::addAnimation compares it; forceBind
        // passes it to getParameterID), the others a flag byte. First boot: only 86 was read as text, so 87..91 left a flag byte in the pointer slot.
        if (list[i].type >= 86 && list[i].type <= 91) {
            list[i].extra = v.str(v.u32(c + 12));
        } else {
            list[i].extra = nullptr;
            list[i].flag = v.u8(c + 12);
        }
    }
    out.channels = list;
    out.trackEx = nullptr;
    const std::uint32_t defaultValue = v.u32(a + 24);
    if (defaultValue != 0) {
        SAnimationDefaultValue* record = m.one<SAnimationDefaultValue>();
        record->unk_00 = v.u32(defaultValue);
        record->unk_04 = v.u32(defaultValue + 4);
        record->value = v.raw(v.u32(defaultValue + 8), 1);
        out.defaultValue = record;
    }
    const std::uint32_t offsetScale = v.u32(a + 28);
    if (offsetScale != 0) {
        SAnimationOffsetScale* record = m.one<SAnimationOffsetScale>();
        record->type = v.i32(offsetScale);
        record->scales = reinterpret_cast<const float*>(v.raw(v.u32(offsetScale + 4), 4));
        record->offsets = reinterpret_cast<const float*>(v.raw(v.u32(offsetScale + 8), 4));
        out.offsetScale = record;
    }
}

// The segment record (SDatabaseTables +0x30 points at it): +0x00 count, +0x04 -> the segments (0x18 each: +0x00 begin, +0x04 end, +0x08 the
// on-demand block of the key data).
void Decoder::decodeSegments(std::uint32_t recordAddress) {
    if (recordAddress == 0) {
        return;
    }
    const std::int32_t count = v.i32(recordAddress);
    const std::uint32_t base = v.u32(recordAddress + 4);
    checkTable(v, count, base, 0x18, "segment table");
    m.tables.segments.resize(static_cast<std::size_t>(count));
    for (std::int32_t i = 0; i < count; ++i) {
        const std::uint32_t s = base + 0x18u * static_cast<std::uint32_t>(i);
        SAnimationSegment& segment = m.tables.segments[static_cast<std::size_t>(i)];
        segment.begin = v.i32(s);
        segment.end = v.i32(s + 4);
        segment.data.count = v.i32(s + 8);
        segment.data.offset = v.u32(s + 12);
        segment.data.size = v.u32(s + 16);
        const std::uint32_t loaded = v.u32(s + 20);
        segment.data.data = loaded != 0 ? AddressSpace32::toPointer(loaded) : nullptr;
    }
}

// The events table (SDatabaseTables +0x2c): +0x00 key kind, +0x04 (not read), +0x08 key count, +0x0c -> the keys (u8, u16 or i32 by the kind),
// +0x10 entry count, +0x14 -> the entries (8 bytes: +0x00 name count, +0x04 -> the names).
const SEventKeyTable* Decoder::decodeEventKeyTable(std::uint32_t a) {
    if (a == 0) {
        return nullptr;
    }
    SEventKeyTable* table = m.one<SEventKeyTable>();
    table->keyKind = v.i32(a);
    table->reserved04 = v.i32(a + 4);
    table->keyCount = v.i32(a + 8);
    const std::uint32_t width = table->keyKind == 1 ? 1u : table->keyKind == 3 ? 2u : 4u;
    checkTable(v, table->keyCount, v.u32(a + 12), width, "event keys");
    table->keys = v.raw(v.u32(a + 12), 1);
    table->entryCount = v.i32(a + 16);
    const std::uint32_t entries = v.u32(a + 20);
    checkTable(v, table->entryCount, entries, 8, "event entries");
    SEventEntry* list = m.many<SEventEntry>(static_cast<std::size_t>(table->entryCount));
    for (std::int32_t i = 0; i < table->entryCount; ++i) {
        const std::uint32_t e = entries + 8u * static_cast<std::uint32_t>(i);
        list[i].nameCount = v.i32(e);
        list[i].names = textArray(list[i].nameCount, v.u32(e + 4));
    }
    table->entries = list;
    return table;
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// Geometry
// ---------------------------------------------------------------------------------------------------------------------------------------

// SMesh: +0x00 interleaved flag, +0x04 vertex count (interleaved) or stream count, +0x08 the vertex data, +0x0c mesh buffer count, +0x10 the
// mesh buffers (0x38 each), +0x14 the bounding box (six floats).
SMesh* Decoder::decodeMesh(std::uint32_t a) {
    if (a == 0) {
        return nullptr;
    }
    SMesh* mesh = m.one<SMesh>();
    mesh->interleaved = v.i32(a);
    mesh->count = v.i32(a + 4);
    const std::uint32_t vertexData = v.u32(a + 8);
    if (mesh->interleaved != 0) {
        // SInterleavedVertexData: +0x00 stride, then {count, array} pairs at +0x04 (byte offsets), +0x0c (value types), +0x14 (component
        // counts), +0x1c (ranges: pointers to six floats, null for none), then +0x24 the vertex bytes (an on-demand block when the file keeps
        // its data on demand).
        SInterleavedVertexData* data = m.one<SInterleavedVertexData>();
        const std::int32_t streams = v.i32(vertexData + 4);
        checkTable(v, streams, v.u32(vertexData + 8), 4, "stream offsets");
        data->stride = v.u32(vertexData);
        data->offsets = reinterpret_cast<const std::uint32_t*>(v.raw(v.u32(vertexData + 8), 4));
        data->valueTypes = reinterpret_cast<const std::uint32_t*>(v.raw(v.u32(vertexData + 16), 4));
        data->componentCounts = reinterpret_cast<const std::uint32_t*>(v.raw(v.u32(vertexData + 24), 4));
        const std::uint32_t rangeList = v.u32(vertexData + 32);
        if (rangeList != 0) {
            checkTable(v, streams, rangeList, 4, "stream ranges");
            const SStreamRange** ranges = m.many<const SStreamRange*>(static_cast<std::size_t>(streams));
            for (std::int32_t i = 0; i < streams; ++i) {
                const std::uint32_t r = v.u32(rangeList + 4u * static_cast<std::uint32_t>(i));
                ranges[i] = reinterpret_cast<const SStreamRange*>(v.raw(r, sizeof(SStreamRange)));
            }
            data->ranges = ranges;
        }
        const std::uint32_t bytes = v.u32(vertexData + 36);
        if (demandData) {
            data->dataBlock = demandBlock(bytes);
        } else {
            data->data = v.raw(bytes, 1);
        }
        mesh->interleavedData = data;
    } else {
        // The stream descriptors (0x14 each): +0x00 value type, +0x04 components, +0x08 value count, +0x0c the data.
        checkTable(v, mesh->count, vertexData, 0x14, "stream descriptors");
        SVertexStreamDesc* streams = m.many<SVertexStreamDesc>(static_cast<std::size_t>(mesh->count));
        for (std::int32_t i = 0; i < mesh->count; ++i) {
            const std::uint32_t d = vertexData + 0x14u * static_cast<std::uint32_t>(i);
            streams[i].valueType = v.i32(d);
            streams[i].componentCount = v.i32(d + 4);
            streams[i].valueCount = v.i32(d + 8);
            streams[i].data = const_cast<std::uint8_t*>(v.raw(v.u32(d + 12), 1));
        }
        mesh->streams = streams;
    }
    mesh->bufferCount = v.i32(a + 12);
    const std::uint32_t buffers = v.u32(a + 16);
    checkTable(v, mesh->bufferCount, buffers, 0x38, "mesh buffers");
    SMeshBuffer* list = m.many<SMeshBuffer>(static_cast<std::size_t>(mesh->bufferCount));
    for (std::int32_t i = 0; i < mesh->bufferCount; ++i) {
        // SMeshBuffer (0x38): +0x00 primitive type, +0x0c position stream, +0x0d normal, +0x0e / +0x0f colours, +0x10 four texture-coordinate
        // streams, +0x14 four binormal, +0x18 four tangent, +0x1c two more (signed bytes: the stream's index, -1 none), +0x20 first vertex,
        // +0x24 last vertex, +0x28 index count, +0x2c the index data (an on-demand block, or the indices).
        const std::uint32_t b = buffers + 0x38u * static_cast<std::uint32_t>(i);
        SMeshBuffer& out = list[i];
        out.primitiveType = v.i32(b);
        out.positionStream = v.i8(b + 0x0c);
        out.normalStream = v.i8(b + 0x0d);
        out.colorStream[0] = v.i8(b + 0x0e);
        out.colorStream[1] = v.i8(b + 0x0f);
        for (int k = 0; k < 4; ++k) {
            out.texCoordStreams[k] = v.i8(b + 0x10 + static_cast<std::uint32_t>(k));
            out.binormalStreams[k] = v.i8(b + 0x14 + static_cast<std::uint32_t>(k));
            out.tangentStreams[k] = v.i8(b + 0x18 + static_cast<std::uint32_t>(k));
        }
        out.extraStreams[0] = v.i8(b + 0x1c);
        out.extraStreams[1] = v.i8(b + 0x1d);
        out.firstVertex = v.i32(b + 0x20);
        out.lastVertex = v.i32(b + 0x24);
        out.indexCount = v.i32(b + 0x28);
        const std::uint32_t indices = v.u32(b + 0x2c);
        if (demandData) {
            out.indexBlock = demandBlock(indices);
        } else {
            out.indexData = v.raw(indices, 1);
        }
    }
    mesh->buffers = list;
    for (int k = 0; k < 6; ++k) {
        mesh->boundingBox[k] = v.f32(a + 0x14 + 4u * static_cast<std::uint32_t>(k));
    }
    return mesh;
}

// SGeometry (0x10): +0x00 name, +0x04 (not read), +0x08 not-instantiated flag, +0x0c the mesh (not decoded when the flag is set).
void Decoder::decodeGeometry(std::uint32_t a, SGeometry& out) {
    out.name = v.str(v.u32(a));
    out.reserved04 = v.u32(a + 4);
    out.notInstantiated = v.u32(a + 8);
    // A geometry that is not instantiated (a spline) has a record of another kind in the mesh word, which the loader leaves alone.
    out.mesh = out.notInstantiated != 0 ? nullptr : decodeMesh(v.u32(a + 12));
}

// SSkin: +0x04 the inverse bind matrices, +0x10 the bind shape matrix (16 floats), +0x70 the source url, +0x74 joint count, +0x78 the joint
// scope ids, +0x80 the skin data (an on-demand block when the file keeps its data on demand, else the weights), +0x84 skin data record count,
// +0x88 the records (8 bytes: a word and an on-demand block or the data), +0x8c box count, +0x90 the joint boxes (six floats each), +0x94 the
// proxy buffer (runtime), +0x98 the weights per vertex (a byte).
SSkin* Decoder::decodeSkin(std::uint32_t a) {
    if (a == 0) {
        return nullptr;
    }
    SSkin* skin = m.one<SSkin>();
    skin->bindMatrices = reinterpret_cast<const float*>(v.raw(v.u32(a + 4), 4));
    for (int k = 0; k < 16; ++k) {
        skin->bindShapeMatrix[k] = v.f32(a + 0x10 + 4u * static_cast<std::uint32_t>(k));
    }
    skin->sourceUrl = v.str(v.u32(a + 0x70));
    skin->jointCount = v.i32(a + 0x74);
    skin->jointScopeIds = textArray(skin->jointCount, v.u32(a + 0x78));
    const std::uint32_t skinData = v.u32(a + 0x80);
    skin->skinDataCount = v.i32(a + 0x84);
    const std::uint32_t entries = v.u32(a + 0x88);
    if (demandData) {
        skin->skinData = demandBlock(skinData);
        checkTable(v, skin->skinDataCount, entries, 8, "skin data records");
        SSkinDataRecord* records = m.many<SSkinDataRecord>(static_cast<std::size_t>(skin->skinDataCount));
        for (std::int32_t i = 0; i < skin->skinDataCount; ++i) {
            const std::uint32_t e = entries + 8u * static_cast<std::uint32_t>(i);
            records[i].first = v.u32(e);
            records[i].block = demandBlock(v.u32(e + 4));
        }
        skin->skinDataEntries = records;
    } else {
        // Not on demand: the word holds the weights themselves (IColladaSkinTechnique hands it to the buffer as the data).
        skin->skinData = const_cast<res::SOnDemandBlock*>(reinterpret_cast<const res::SOnDemandBlock*>(v.raw(skinData, 1)));
    }
    skin->boxCount = v.i32(a + 0x8c);
    skin->jointBoxes = reinterpret_cast<const float*>(v.raw(v.u32(a + 0x90), 4));
    skin->weightsPerVertex = v.u8(a + 0x98);
    return skin;
}

// SMorph: +0x00 the base url, +0x04 relative flag, +0x10 target count, +0x14 -> the targets' geometry indices, +0x18 weight count, +0x1c -> the
// weights.
SMorph* Decoder::decodeMorph(std::uint32_t a) {
    if (a == 0) {
        return nullptr;
    }
    SMorph* morph = m.one<SMorph>();
    morph->baseUrl = v.str(v.u32(a));
    morph->relative = v.u32(a + 4);
    morph->reserved08[0] = v.u32(a + 8);
    morph->reserved08[1] = v.u32(a + 12);
    morph->targetCount = v.i32(a + 16);
    const std::uint32_t targets = v.u32(a + 20);
    checkTable(v, morph->targetCount, targets, 4, "morph targets");
    morph->targetNames = m.many<const char*>(static_cast<std::size_t>(morph->targetCount));  // filled by postLoadProcess
    for (std::int32_t i = 0; i < morph->targetCount; ++i) {
        morph->targetIndices.push_back(v.i32(targets + 4u * static_cast<std::uint32_t>(i)));
    }
    morph->weightCount = v.i32(a + 24);
    checkTable(v, morph->weightCount, v.u32(a + 28), 4, "morph weights");
    morph->weights = reinterpret_cast<const float*>(v.raw(v.u32(a + 28), 4));
    return morph;
}

// SController (0x0c): +0x00 kind (0 skin, 1 morph), +0x04 name, +0x08 the skin or morph record.
void Decoder::decodeController(std::uint32_t a, SController& out) {
    out.reserved = v.u32(a);
    out.name = v.str(v.u32(a + 4));
    const std::uint32_t record = v.u32(a + 8);
    out.morph = out.reserved == 1 ? static_cast<const void*>(decodeMorph(record)) : static_cast<const void*>(decodeSkin(record));
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// Scene
// ---------------------------------------------------------------------------------------------------------------------------------------

// A group of vertex-input bindings: +0x00 technique count, +0x04 -> the techniques (0x0c each: +0x00 name, +0x04 binding count, +0x08 -> the
// bindings, 0x0c each: +0x00 (not read), +0x04 pair count, +0x08 -> the pairs).
void Decoder::decodeVertexInput(std::uint32_t a, SVertexInputGroup& out) {
    out.techniqueCount = v.i32(a);
    const std::uint32_t techniques = v.u32(a + 4);
    checkTable(v, out.techniqueCount, techniques, 12, "vertex input techniques");
    SVertexInputTechnique* list = m.many<SVertexInputTechnique>(static_cast<std::size_t>(out.techniqueCount));
    for (std::int32_t i = 0; i < out.techniqueCount; ++i) {
        const std::uint32_t t = techniques + 12u * static_cast<std::uint32_t>(i);
        list[i].name = v.str(v.u32(t));
        list[i].bindingCount = v.i32(t + 4);
        const std::uint32_t bindings = v.u32(t + 8);
        checkTable(v, list[i].bindingCount, bindings, 12, "vertex input bindings");
        SVertexInputBinding* records = m.many<SVertexInputBinding>(static_cast<std::size_t>(list[i].bindingCount));
        for (std::int32_t k = 0; k < list[i].bindingCount; ++k) {
            const std::uint32_t b = bindings + 12u * static_cast<std::uint32_t>(k);
            records[k].reserved00 = v.u32(b);
            records[k].count = v.u32(b + 4);
            records[k].pairs = v.raw(v.u32(b + 8), 1);
        }
        list[i].bindings = records;
    }
    out.techniques = list;
}

// The material bindings of an instance (0x3c each): +0x00 file, +0x04 url, +0x08 material index, +0x0c / +0x10 (not read), +0x14 / +0x1c / +0x24 /
// +0x2c four groups of vertex-input bindings, +0x34 the vertex-attribute map (runtime), +0x38 the list link (runtime).
SInstanceMaterial* Decoder::decodeBindings(std::int32_t count, std::uint32_t base) {
    checkTable(v, count, base, 0x3c, "material bindings");
    SInstanceMaterial* list = m.many<SInstanceMaterial>(static_cast<std::size_t>(count));
    for (std::int32_t i = 0; i < count; ++i) {
        const std::uint32_t b = base + 0x3cu * static_cast<std::uint32_t>(i);
        list[i].file = v.str(v.u32(b));
        list[i].url = v.str(v.u32(b + 4));
        list[i].materialIndex = v.i32(b + 8);
        list[i].reserved0c[0] = v.u32(b + 12);
        list[i].reserved0c[1] = v.u32(b + 16);
        for (int g = 0; g < 4; ++g) {
            decodeVertexInput(b + 0x14 + 8u * static_cast<std::uint32_t>(g), list[i].vertexInput[g]);
        }
    }
    return list;
}

// The words every geometry-like instance shares: +0x0c binding count, +0x10 the bindings, +0x14 the rendering layer.
void Decoder::decodeInstanceCommon(std::uint32_t a, std::int32_t& count, SInstanceMaterial*& bindings, std::int32_t& layer) {
    count = v.i32(a + 12);
    bindings = decodeBindings(count, v.u32(a + 16));
    layer = v.i32(a + 20);
}

// An instance record of the given kind (see EInstanceKind); a kind without a record of its own gives null.
void* Decoder::decodeInstance(std::uint32_t kind, std::uint32_t a) {
    if (a == 0) {
        return nullptr;
    }
    switch (kind) {
        case EIK_CAMERA: {
            SInstanceCamera* r = m.one<SInstanceCamera>();
            r->reserved00 = v.u32(a);
            r->url = v.str(v.u32(a + 4));
            return r;
        }
        case EIK_LIGHT: {
            SInstanceLight* r = m.one<SInstanceLight>();
            r->reserved00 = v.u32(a);
            r->url = v.str(v.u32(a + 4));
            return r;
        }
        case EIK_VISUAL_SCENE: {
            SInstanceVisualScene* r = m.one<SInstanceVisualScene>();
            r->reserved00 = v.u32(a);
            r->url = v.str(v.u32(a + 4));
            return r;
        }
        case EIK_FORCE: {
            SInstanceForce* r = m.one<SInstanceForce>();
            r->reserved00 = v.u32(a);
            r->url = v.str(v.u32(a + 4));
            return r;
        }
        case EIK_CONTROLLER: {
            SInstanceController* r = m.one<SInstanceController>();
            r->reserved00 = v.u32(a);
            r->name = v.str(v.u32(a + 4));
            r->reserved08 = v.u32(a + 8);
            decodeInstanceCommon(a, r->bindingCount, r->bindings, r->renderingLayer);
            return r;
        }
        case EIK_GEOMETRY: {
            SInstanceGeometry* r = m.one<SInstanceGeometry>();
            r->file = v.str(v.u32(a));
            r->url = v.str(v.u32(a + 4));
            r->reserved08 = v.u32(a + 8);
            decodeInstanceCommon(a, r->bindingCount, r->bindings, r->renderingLayer);
            return r;
        }
        case EIK_CORONAS: {
            SInstanceCoronas* r = m.one<SInstanceCoronas>();
            r->reserved00 = v.u32(a);
            r->url = v.str(v.u32(a + 4));
            r->reserved08 = v.u32(a + 8);
            decodeInstanceCommon(a, r->bindingCount, r->bindings, r->renderingLayer);
            return r;
        }
        case EIK_EMITTER:
        case EIK_GNPS_EMITTER: {
            // Both carry the same words; +0x18 is the res::vector of the force nodes' urls ({count, array of text}).
            const std::int32_t forceCount = v.i32(a + 24);
            const std::uint32_t forces = v.u32(a + 28);
            checkTable(v, forceCount, forces, 4, "emitter forces");
            res::String* strings = m.many<res::String>(static_cast<std::size_t>(forceCount));
            for (std::int32_t i = 0; i < forceCount; ++i) {
                strings[i] = res::String(v.str(v.u32(forces + 4u * static_cast<std::uint32_t>(i))));
            }
            if (kind == EIK_EMITTER) {
                SInstanceEmitter* r = m.one<SInstanceEmitter>();
                r->reserved00 = v.u32(a);
                r->url = v.str(v.u32(a + 4));
                r->reserved08 = v.u32(a + 8);
                decodeInstanceCommon(a, r->bindingCount, r->bindings, r->renderingLayer);
                r->materials.count = forceCount;
                r->materials.data = strings;
                return r;
            }
            SInstanceGNPSEmitter* r = m.one<SInstanceGNPSEmitter>();
            r->reserved00 = v.u32(a);
            r->url = v.str(v.u32(a + 4));
            r->reserved08 = v.u32(a + 8);
            decodeInstanceCommon(a, r->bindingCount, r->bindings, r->renderingLayer);
            r->materials.count = forceCount;
            r->materials.data = strings;
            return r;
        }
        case EIK_MODULAR_SKIN: {
            // +0x00 category count, +0x04 -> the categories (0x10 each: +0x00 name, +0x04 default module, +0x08 module count, +0x0c -> the
            // modules, 8 bytes each: +0x00 (not read), +0x04 -> the instance controller), +0x08 extra slot count, +0x14 rendering layer.
            SInstanceModularSkin* r = m.one<SInstanceModularSkin>();
            r->categoryCount = v.i32(a);
            const std::uint32_t categories = v.u32(a + 4);
            checkTable(v, r->categoryCount, categories, 0x10, "modular categories");
            SModularCategory* list = m.many<SModularCategory>(static_cast<std::size_t>(r->categoryCount));
            for (std::int32_t i = 0; i < r->categoryCount; ++i) {
                const std::uint32_t c = categories + 0x10u * static_cast<std::uint32_t>(i);
                list[i].name = v.str(v.u32(c));
                list[i].defaultModule = v.str(v.u32(c + 4));
                list[i].moduleCount = v.i32(c + 8);
                const std::uint32_t modules = v.u32(c + 12);
                checkTable(v, list[i].moduleCount, modules, 8, "modular modules");
                SModularModule* records = m.many<SModularModule>(static_cast<std::size_t>(list[i].moduleCount));
                for (std::int32_t k = 0; k < list[i].moduleCount; ++k) {
                    const std::uint32_t mod = modules + 8u * static_cast<std::uint32_t>(k);
                    records[k].reserved00 = v.u32(mod);
                    records[k].controller = static_cast<SInstanceController*>(decodeInstance(EIK_CONTROLLER, v.u32(mod + 4)));
                }
                list[i].modules = records;
            }
            r->categories = list;
            r->extraSlotCount = v.i32(a + 8);
            r->reserved0c[0] = v.u32(a + 12);
            r->reserved0c[1] = v.u32(a + 16);
            r->renderingLayer = v.i32(a + 20);
            return r;
        }
        default:
            return nullptr;
    }
}

// SNode (0x50): +0x00 id, +0x04 name, +0x08 scope id, +0x0c translation, +0x18 rotation, +0x28 scale, +0x34 flag word, +0x38 child count, +0x3c the
// children (0x50 each), +0x40 instance count, +0x44 the instances (8 bytes: kind and record), +0x48 the user property (its first word is the
// text), +0x4c the billboard record.
void Decoder::decodeNode(std::uint32_t a, SNode& out) {
    out.id = v.str(v.u32(a));
    out.name = v.str(v.u32(a + 4));
    out.scopeId = v.str(v.u32(a + 8));
    for (int k = 0; k < 3; ++k) {
        out.translation[k] = v.f32(a + 0x0c + 4u * static_cast<std::uint32_t>(k));
        out.scale[k] = v.f32(a + 0x28 + 4u * static_cast<std::uint32_t>(k));
    }
    for (int k = 0; k < 4; ++k) {
        out.rotation[k] = v.f32(a + 0x18 + 4u * static_cast<std::uint32_t>(k));
    }
    out.unk_34 = v.u32(a + 0x34);
    out.childCount = v.u32(a + 0x38);
    const std::uint32_t children = v.u32(a + 0x3c);
    checkTable(v, static_cast<std::int32_t>(out.childCount), children, 0x50, "node children");
    SNode* childList = m.many<SNode>(out.childCount);
    for (std::uint32_t i = 0; i < out.childCount; ++i) {
        decodeNode(children + 0x50u * i, childList[i]);
    }
    out.children = childList;
    out.instanceCount = v.u32(a + 0x40);
    const std::uint32_t instances = v.u32(a + 0x44);
    checkTable(v, static_cast<std::int32_t>(out.instanceCount), instances, 8, "node instances");
    SInstanceRef* refs = m.many<SInstanceRef>(out.instanceCount);
    for (std::uint32_t i = 0; i < out.instanceCount; ++i) {
        const std::uint32_t r = instances + 8u * i;
        refs[i].kind = v.u32(r);
        refs[i].instance = decodeInstance(refs[i].kind, v.u32(r + 4));
    }
    out.instances = refs;
    const std::uint32_t property = v.u32(a + 0x48);
    if (property != 0) {
        scene::SUserProperty* record = m.one<scene::SUserProperty>();
        record->text = v.str(v.u32(property));
        out.userProperty = record;
    }
    const std::uint32_t billboard = v.u32(a + 0x4c);
    if (billboard != 0) {
        SBillboardInfo* info = m.one<SBillboardInfo>();
        info->mode[0] = v.u32(billboard);
        info->mode[1] = v.u32(billboard + 4);
        for (int k = 0; k < 3; ++k) {
            info->axisA[k] = v.f32(billboard + 8 + 4u * static_cast<std::uint32_t>(k));
            info->axisB[k] = v.f32(billboard + 0x14 + 4u * static_cast<std::uint32_t>(k));
        }
        out.billboard = info;
    }
}

// SVisualScene (0x10): +0x00 id, +0x04 name, +0x08 node count, +0x0c the nodes (0x50 each).
void Decoder::decodeVisualScene(std::uint32_t a, SVisualScene& out) {
    out.name = v.str(v.u32(a));
    out.displayName = v.str(v.u32(a + 4));
    out.nodeCount = v.u32(a + 8);
    const std::uint32_t nodes = v.u32(a + 12);
    checkTable(v, static_cast<std::int32_t>(out.nodeCount), nodes, 0x50, "scene nodes");
    SNode* list = m.many<SNode>(out.nodeCount);
    for (std::uint32_t i = 0; i < out.nodeCount; ++i) {
        decodeNode(nodes + 0x50u * i, list[i]);
    }
    out.nodes = list;
}

// SLight (0x18): +0x00 name, +0x04 (not read), +0x08 kind, +0x0c the colour bytes, +0x10 intensity, +0x14 -> the parameters.
void Decoder::decodeLight(std::uint32_t a, SLight& out) {
    out.name = v.str(v.u32(a));
    out.reserved04 = v.u32(a + 4);
    out.kind = v.u32(a + 8);
    for (int k = 0; k < 4; ++k) {
        out.color[k] = v.u8(a + 0x0c + static_cast<std::uint32_t>(k));
    }
    out.intensity = v.f32(a + 0x10);
    out.parameters = reinterpret_cast<const float*>(v.raw(v.u32(a + 0x14), 4));
}

// SCamera (0x1c): +0x00 name, +0x04 orthographic flag, +0x08 field of view, +0x0c aspect, +0x10 near, +0x14 far, +0x18 target url.
void Decoder::decodeCamera(std::uint32_t a, SCamera& out) {
    out.name = v.str(v.u32(a));
    out.orthographic = v.u32(a + 4);
    out.fieldOfView = v.f32(a + 8);
    out.aspectRatio = v.f32(a + 12);
    out.nearValue = v.f32(a + 16);
    out.farValue = v.f32(a + 20);
    out.targetUrl = v.str(v.u32(a + 24));
}

// SForce (0x10): +0x00 name, +0x04 (not read), +0x08 kind, +0x0c -> the values.
void Decoder::decodeForce(std::uint32_t a, SForce& out) {
    out.name = v.str(v.u32(a));
    out.reserved04 = v.u32(a + 4);
    out.kind = v.u32(a + 8);
    out.values = reinterpret_cast<const float*>(v.raw(v.u32(a + 12), 4));
}

// SCoronas (0x24): +0x00 id, +0x04 name, +0x08 width, +0x0c height, +0x10 .. +0x1c four floats, +0x20 flag byte.
void Decoder::decodeCoronas(std::uint32_t a, SCoronas& out) {
    out.name = v.str(v.u32(a));
    out.displayName = v.str(v.u32(a + 4));
    out.width = v.f32(a + 8);
    out.height = v.f32(a + 12);
    out.rotationScale = v.f32(a + 0x10);
    out.rotationOffset = v.f32(a + 0x14);
    out.unk_18 = v.f32(a + 0x18);
    out.unk_1c = v.f32(a + 0x1c);
    out.flag = v.u8(a + 0x20);
}

// SGNPSEmitter (0xe8): the host record has pointers at +0x00 (name), +0x0c (shape) and +0x2c (billboard) where the file has 32-bit words, and
// every other member is a plain number or byte at the same relative place, so the runs between the pointers are copied whole.
void Decoder::decodeGNPSEmitter(std::uint32_t a, SGNPSEmitter& out) {
    static_assert(offsetof(SGNPSEmitter, reservedC7) + sizeof out.reservedC7 - offsetof(SGNPSEmitter, targetSize) == 0xe8 - 0x30,
                  "the numbers after the billboard pointer are contiguous");
    static_assert(offsetof(SGNPSEmitter, reserved29) + sizeof out.reserved29 - offsetof(SGNPSEmitter, birthRate) == 0x2c - 0x10,
                  "the numbers between the shape and the billboard are contiguous");
    out.name = v.str(v.u32(a));
    std::memcpy(&out.reserved04, v.at(a + 4, 8), 8);  // +0x04 reserved, +0x08 shape type
    out.shape = reinterpret_cast<const float*>(v.raw(v.u32(a + 0x0c), 4));
    std::memcpy(&out.birthRate, v.at(a + 0x10, 0x1c), 0x1c);  // +0x10 .. +0x2b
    const std::uint32_t billboard = v.u32(a + 0x2c);
    if (billboard != 0) {
        static_assert(sizeof(SGNPSBillboard) == 0x20, "the billboard record is 0x20 bytes");
        SGNPSBillboard* record = m.one<SGNPSBillboard>();
        std::memcpy(record, v.at(billboard, 0x20), 0x20);
        out.billboard = record;
    }
    std::memcpy(&out.targetSize, v.at(a + 0x30, 0xe8 - 0x30), 0xe8 - 0x30);  // +0x30 .. +0xe7
}

// SEmitter (0x90): pointers at +0x00 (name), +0x0c (shape), +0x4c (direction), +0x54 (mesh), +0x8c (spin axis); the runs between them are numbers.
void Decoder::decodeEmitter(std::uint32_t a, SEmitter& out) {
    static_assert(offsetof(SEmitter, directionType) + sizeof out.directionType - offsetof(SEmitter, reserved10) == 0x4c - 0x10,
                  "the numbers between the shape and the direction pointer are contiguous");
    out.name = v.str(v.u32(a));
    std::memcpy(&out.reserved04, v.at(a + 4, 8), 8);  // +0x04, +0x08
    out.shape = reinterpret_cast<const float*>(v.raw(v.u32(a + 0x0c), 4));
    std::memcpy(&out.reserved10, v.at(a + 0x10, 0x4c - 0x10), 0x4c - 0x10);  // +0x10 .. +0x4b
    out.direction = reinterpret_cast<const float*>(v.raw(v.u32(a + 0x4c), 4));
    out.meshType = v.i32(a + 0x50);
    const std::uint32_t mesh = v.u32(a + 0x54);
    if (mesh != 0) {
        SEmitterMesh* record = m.one<SEmitterMesh>();
        if (out.meshType == 2) {
            record->nodeUrl = v.str(v.u32(mesh));  // the first word is a url, the second is filled in by postLoadProcess
        } else {
            record->kind = v.u32(mesh);
            record->billboardFlags = v.u32(mesh + 4);
        }
        record->axisMode = v.u32(mesh + 8);
        for (int k = 0; k < 3; ++k) {
            record->axisA[k] = v.f32(mesh + 0x0c + 4u * static_cast<std::uint32_t>(k));
            record->axisB[k] = v.f32(mesh + 0x18 + 4u * static_cast<std::uint32_t>(k));
        }
        out.mesh = record;
    }
    static_assert(offsetof(SEmitter, spinAxisType) + sizeof out.spinAxisType - offsetof(SEmitter, reserved58) == 0x8c - 0x58,
                  "the numbers between the mesh pointer and the spin axis pointer are contiguous");
    std::memcpy(&out.reserved58, v.at(a + 0x58, 0x8c - 0x58), 0x8c - 0x58);  // +0x58 .. +0x8b
    out.spinAxis = reinterpret_cast<const float*>(v.raw(v.u32(a + 0x8c), 4));
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// The file
// ---------------------------------------------------------------------------------------------------------------------------------------

// The table holder (SDatabaseTables), offsets in the file image:
//   +0x00 version text   +0x08 instance-material list (runtime)   +0x0c up axis   +0x10 external-resources flag   +0x14 animation flag
//   +0x18 .. +0x20 the whole animation range {name, start, end}   +0x24 / +0x28 animations (count, 0x20 each)   +0x2c events table
//   +0x30 -> the segment record   +0x34 / +0x38 clip library (count, 0x0c each)   +0x3c / +0x40 cameras (0x1c)   +0x44 / +0x48 lights (0x18)
//   +0x4c / +0x50 images (0x14)   +0x54 / +0x58 effects (0x74)   +0x5c / +0x60 materials (0x24)   +0x64 skin count   +0x68 / +0x6c geometries (0x10)
//   +0x70 / +0x74 controllers (0x0c)   +0x78 / +0x7c emitters (0x90)   +0x80 / +0x84 new particle emitters (0xe8)   +0x88 / +0x8c forces (0x10)
//   +0x90 / +0x94 coronas (0x24)   +0x98 / +0x9c visual scenes (0x10)   +0xb8 / +0xbc the scene (count, 8 bytes each: kind and instance)
void Decoder::run(std::uint32_t header) {
    if (v.u32(header) != 0x53455242u) {  // "BRES"
        fail("not a BRES image", header);
    }
    SColladaFileData& data = m.data;
    data.headerSize = v.u32(header + 0x08);
    data.offsetEntries = v.u32(header + 0x10);
    data.externalFlags = v.i32(header + 0x14);
    const std::uint32_t tablesAddress = v.u32(header + 0x20);
    if (tablesAddress == 0) {
        fail("no table holder", header);
    }
    data.tables = &m.tables;
    SDatabaseTables& t = m.tables;
    const std::uint32_t h = tablesAddress;

    t.versionText = v.str(v.u32(h));
    if (t.versionText != nullptr) {
        // "0,0,0,777": the number is the last field.
        const char* last = std::strrchr(t.versionText, ',');
        t.version = static_cast<std::uint32_t>(std::strtoul(last != nullptr ? last + 1 : t.versionText, nullptr, 10));
    }
    t.upAxis = v.u32(h + 0x0c);
    t.externalResourcesDone = v.u32(h + 0x10);
    t.animationFlag = v.u32(h + 0x14);
    t.animationRange.name = nullptr;
    t.animationRange.start = v.u32(h + 0x1c);
    t.animationRange.end = v.u32(h + 0x20);
    t.skinCount = v.i32(h + 0x64);
    demandData = t.skinCount > 0;

    table(t.animations, v.i32(h + 0x24), v.u32(h + 0x28), 0x20, "animations", [&](std::uint32_t a, SAnimation& r) { decodeAnimation(a, r); });
    t.eventKeyTable = decodeEventKeyTable(v.u32(h + 0x2c));
    decodeSegments(v.u32(h + 0x30));
    {
        const std::int32_t count = v.i32(h + 0x34);
        const std::uint32_t base = v.u32(h + 0x38);
        checkTable(v, count, base, 0x0c, "animation clips");
        SAnimationClip* clips = m.many<SAnimationClip>(static_cast<std::size_t>(count));
        for (std::int32_t i = 0; i < count; ++i) {
            const std::uint32_t c = base + 0x0cu * static_cast<std::uint32_t>(i);
            clips[i].name = v.str(v.u32(c));
            clips[i].start = v.u32(c + 4);
            clips[i].end = v.u32(c + 8);
        }
        t.animationClipLibrary.count = count;
        t.animationClipLibrary.clips = clips;
    }
    table(t.cameras, v.i32(h + 0x3c), v.u32(h + 0x40), 0x1c, "cameras", [&](std::uint32_t a, SCamera& r) { decodeCamera(a, r); });
    table(t.lights, v.i32(h + 0x44), v.u32(h + 0x48), 0x18, "lights", [&](std::uint32_t a, SLight& r) { decodeLight(a, r); });
    table(t.images, v.i32(h + 0x4c), v.u32(h + 0x50), 0x14, "images", [&](std::uint32_t a, SImage& r) { decodeImage(a, r); });
    table(t.effects, v.i32(h + 0x54), v.u32(h + 0x58), 0x74, "effects", [&](std::uint32_t a, SEffect& r) { decodeEffect(a, r); });
    table(t.materials, v.i32(h + 0x5c), v.u32(h + 0x60), 0x24, "materials", [&](std::uint32_t a, SMaterial& r) { decodeMaterial(a, r); });
    table(t.geometries, v.i32(h + 0x68), v.u32(h + 0x6c), 0x10, "geometries", [&](std::uint32_t a, SGeometry& r) { decodeGeometry(a, r); });
    table(t.controllers, v.i32(h + 0x70), v.u32(h + 0x74), 0x0c, "controllers", [&](std::uint32_t a, SController& r) { decodeController(a, r); });
    table(t.emitters, v.i32(h + 0x78), v.u32(h + 0x7c), 0x90, "emitters", [&](std::uint32_t a, SEmitter& r) { decodeEmitter(a, r); });
    table(t.gnpsEmitters, v.i32(h + 0x80), v.u32(h + 0x84), 0xe8, "new particle emitters", [&](std::uint32_t a, SGNPSEmitter& r) { decodeGNPSEmitter(a, r); });
    table(t.forces, v.i32(h + 0x88), v.u32(h + 0x8c), 0x10, "forces", [&](std::uint32_t a, SForce& r) { decodeForce(a, r); });
    table(t.coronas, v.i32(h + 0x90), v.u32(h + 0x94), 0x24, "coronas", [&](std::uint32_t a, SCoronas& r) { decodeCoronas(a, r); });
    table(t.visualScenes, v.i32(h + 0x98), v.u32(h + 0x9c), 0x10, "visual scenes", [&](std::uint32_t a, SVisualScene& r) { decodeVisualScene(a, r); });
    {
        const std::int32_t count = v.i32(h + 0xb8);
        const std::uint32_t base = v.u32(h + 0xbc);
        checkTable(v, count, base, 8, "scene");
        for (std::int32_t i = 0; i < count; ++i) {
            const std::uint32_t e = base + 8u * static_cast<std::uint32_t>(i);
            SInstanceRef ref;
            ref.kind = v.u32(e);
            ref.instance = decodeInstance(ref.kind, v.u32(e + 4));
            t.scene.push_back(ref);
        }
    }
}

}  // namespace

std::shared_ptr<void> decodeBdae(const std::uint8_t* header, SColladaFileData*& data, std::string* error) {
    data = nullptr;
    const std::uint32_t address = AddressSpace32::toAddress(header);
    if (address == 0) {
        if (error != nullptr) {
            *error = "the image is not in the address space";
        }
        return nullptr;
    }
    auto model = std::make_shared<HostModel>();
    try {
        View view;
        Decoder decoder(view, *model);
        decoder.run(address);
    } catch (const DecodeError& failure) {
        if (error != nullptr) {
            *error = failure.what();
        }
        return nullptr;
    }
    data = &model->data;
    return model;
}

}  // namespace glitch::collada
