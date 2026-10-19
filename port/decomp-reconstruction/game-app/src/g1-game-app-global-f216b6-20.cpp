// Batch g1-game-app-global-f216b6-20 (<global>, part 21 of 22): the scene-node queries and projections
// (0x50e568..0x50f89c), the orientation, display, music, native-resource and accelerometer glue
// (0x530a6c..0x532f14) and the PVRTC colour and twiddle helpers (0x69f570..0x69f768).
// Declarations: dh2/global/scene_nodes.hpp, dh2/global/platform_app.hpp and dh2/global/pvrtc_decompress.hpp.

#include "dh2/global/pvrtc_decompress.hpp"
#include "dh2/global/platform_app.hpp"
#include "dh2/global/scene_nodes.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <thread>
#include <vector>

#include <jni.h>
#include "core-platform/touch_screen_base.hpp"
#include "dh2/Application.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/video_driver.hpp"
#include "vox-audio/vox/sound_manager.hpp"

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"

// The JNI state of the Android glue (defined in core-platform/src/p1-core-platform-global-f216b6-*.cpp, declared in tb/android_jni_platform.hpp,
// whose sound natives clash with vox-audio's declarations in one translation unit).
extern JNIEnv* mEnv;
extern jclass mClassGLResLoader;
extern jmethodID getResFullID;
extern jmethodID getResBytesID;
extern jmethodID getResLengthID;

namespace {

// ARM register-specified shifts: an amount of 32 or more gives zero. The original shifts by registers.
std::uint32_t ArmLogicalShiftRight(std::uint32_t value, int amount) {
    return amount >= 32 ? 0u : value >> amount;
}

std::uint32_t ArmLogicalShiftLeft(std::uint32_t value, int amount) {
    return amount >= 32 ? 0u : value << amount;
}

// The touch screen's orientation word (TouchScreenBase +0x1a8) is protected and has no setter; SetFinalOrientation stores to it directly.
struct TouchOrientationAccess : TouchScreenBase {
    static void Set(TouchScreenBase& screen, int orientation) { screen.*(&TouchOrientationAccess::orientation_) = orientation; }
};

}  // namespace

// 0x50e568 GetNodePolyCount(glitch::scene::ISceneNode*, bool)
// For a mesh node (IsNodeMesh) with a mesh (IMeshSceneNode::getMesh, vptr+0xf8): the sum over the mesh buffers (getMeshBufferCount, vptr+0x10;
// getMeshBuffer, vptr+0x14) of the buffer's element count (the primitive stream's count, buffer +0x20) divided by three. With includeChildren
// set, the same count of every child on the child list is added.
int GetNodePolyCount(glitch::scene::ISceneNode* node, bool includeChildren) {
    int total = 0;
    if (IsNodeMesh(node)) {
        boost::intrusive_ptr<glitch::scene::IMesh> mesh = static_cast<glitch::scene::IMeshSceneNode*>(node)->getMesh();
        if (mesh) {
            const std::uint32_t bufferCount = mesh->getMeshBufferCount();
            for (std::uint32_t i = 0; i < bufferCount; ++i) {
                boost::intrusive_ptr<glitch::scene::CMeshBuffer> buffer = mesh->getMeshBuffer(i);
                total += static_cast<int>(buffer->primitiveStream.m_count / 3u);
            }
        }
    }
    if (includeChildren) {
        for (glitch::scene::ISceneNode* child : node->getChildren()) {
            total += GetNodePolyCount(child, true);
        }
    }
    return total;
}

// 0x50e674 IsNodeVisible(glitch::scene::ISceneNode*)
// The original body is a single "return 1" (asm: MOV R0,#1; BX LR).
int IsNodeVisible(glitch::scene::ISceneNode* node) {
    (void)node;
    return 1;
}

// 0x50e67c IsVisibleMeshNode(glitch::scene::ISceneNode*)
int IsVisibleMeshNode(glitch::scene::ISceneNode* node) {
    int result = IsNodeVisible(node);
    if (result) {
        return IsNodeMesh(node);
    }
    return result;
}

// 0x50e830 GetScreenPosFromWorldPos(glitch::core::vector3d<float> const&, glitch::core::position2d<int>&)
// Reconstructed from the listing. The scene manager is the device's +0x1c member
// (Singleton<Application>::s_inst.m_device, declared in glitch-core-io/os/device.hpp); the world point goes to its
// collision manager (+0x2c, CSceneManager::collisionManager), whose virtual slot +0x18 is
// ISceneCollisionManager::getScreenCoordinatesFrom3DPosition(position, camera), called with a null camera (the
// active one). The original's position2d result is written through a hidden pointer and then copied to the out
// parameter, and r0 on return is that hidden pointer (the address of the callee's temporary); every caller in the
// tree drops it, so the port returns the first word it wrote.
int GetScreenPosFromWorldPos(const glitch::core::vector3d<float>& worldPos,
                             glitch::core::position2d<int>& screenPos) {
    glitch::scene::CSceneManager* scene =
        reinterpret_cast<glitch::scene::CSceneManager*>(ApplicationGetInstance().m_device->sceneManager);
    const glitch::core::position2d<std::int32_t> projected =
        scene->collisionManager->getScreenCoordinatesFrom3DPosition(worldPos, nullptr);
    screenPos = projected;
    return projected.X;
}

// 0x50ed8c GetWorldPosFromScreenPos(Point2D<float> const&, Point3D<float>&, float)
// Reconstructed from the listing. The screen point is truncated to ints and the collision manager of the scene
// manager (device +0x1c, scene +0x2c) gives the world ray through it: virtual slot +0x14,
// ISceneCollisionManager::getRayFromScreenCoordinates(position, camera) with a null camera. dir = end - start is
// normalised in place, t = start.Z / dir.Z, world = start - t * dir, and the result is world.Z. The third argument
// is never read by the original.
float GetWorldPosFromScreenPos(const Point2D<float>& screenPos, Point3D<float>& worldPos, float unusedArg) {
    (void)unusedArg;
    glitch::scene::CSceneManager* scene =
        reinterpret_cast<glitch::scene::CSceneManager*>(ApplicationGetInstance().m_device->sceneManager);
    const glitch::core::position2d<std::int32_t> position{static_cast<std::int32_t>(screenPos.X),
                                                          static_cast<std::int32_t>(screenPos.Y)};
    const glitch::core::line3d<float> ray = scene->collisionManager->getRayFromScreenCoordinates(position, nullptr);
    glitch::core::vector3d<float> dir{ray.end.X - ray.start.X, ray.end.Y - ray.start.Y, ray.end.Z - ray.start.Z};
    dir.normalize();
    const float t = ray.start.Z / dir.Z;
    worldPos.X = ray.start.X - t * dir.X;
    worldPos.Y = ray.start.Y - t * dir.Y;
    worldPos.Z = ray.start.Z - t * dir.Z;
    return worldPos.Z;
}

// 0x50f1d4 IsVisibleAndNotCulled(glitch::scene::ISceneNode*)
// Reconstructed from the listing: IsNodeVisible (always 1) first, then the inverted CSceneManager::isCulled of the
// device's +0x1c scene manager (asm: BL isCulled, EOR R0,R0,#1).
int IsVisibleAndNotCulled(glitch::scene::ISceneNode* node) {
    const int visible = IsNodeVisible(node);
    if (visible) {
        glitch::scene::CSceneManager* scene =
            reinterpret_cast<glitch::scene::CSceneManager*>(ApplicationGetInstance().m_device->sceneManager);
        return static_cast<int>(scene->isCulled(node)) ^ 1;
    }
    return visible;
}

// 0x50f780 findSceneNodeRef(glitch::scene::ISceneNode*, char const*)
// The original takes the node's name through its virtual at vtable +0x24 (ISceneNode::getName, slot 0x24 in the engine
// header). When strcmp(name, the argument) is zero the node itself is returned. Otherwise it walks the child list (the
// sentinel at node +0xf4, which is ISceneNode::children; a child is its sibling link minus 4) and returns the first
// non-null recursive result, or null when no child matches. The children are read through the member, not through
// getChildren(), so this translation unit needs no out-of-line engine symbol.
glitch::scene::ISceneNode* findSceneNodeRef(glitch::scene::ISceneNode* root, const char* name) {
    if (std::strcmp(root->getName(), name) == 0) {
        return root;
    }
    for (auto it = root->children.begin(); it != root->children.end(); ++it) {
        glitch::scene::ISceneNode* found = findSceneNodeRef(*it, name);
        if (found != nullptr) {
            return found;
        }
    }
    return nullptr;
}

// 0x50f89c CopyMeshSceneNode(glitch::scene::IMeshSceneNode*)
// Reconstructed from the listing. The node's mesh (IMeshSceneNode vtable +0xf8, getMesh) is copied with
// glitch::scene::createMeshCopy(mesh, driver, 0xffffffff, 0), where the driver is the device's +0x10 videoDriver
// (the earlier note's "three-argument overload" and "IDevice declares no +0x10" are both stale:
// scene/mesh_functions.hpp declares createMeshCopy(mesh, driver, mask, extra) and glitch-core-io/os/device.hpp
// declares videoDriver). The three node properties are read through their virtuals (getPosition +0xa0,
// getRotation +0x98, getScale +0x90), a 320-byte CMeshSceneNode is constructed from (copy, -1, position, rotation,
// scale), and its setName (+0x28) receives the parent's getName (+0x24, getParent is non-virtual). The original's
// explicit intrusive_ptr grabs and drops around the constructor are reproduced by the port's intrusive_ptr locals,
// which hold the same references; the new node is returned (the caller casts it to CMeshSceneNode*).
void* CopyMeshSceneNode(glitch::scene::IMeshSceneNode* node) {
    const boost::intrusive_ptr<glitch::scene::IMesh> mesh = node->getMesh();  // vtable +0xf8
    const boost::intrusive_ptr<glitch::scene::IMesh> copy =
        glitch::scene::createMeshCopy(mesh, ApplicationGetInstance().m_device->videoDriver, 0xffffffffu, 0);
    glitch::scene::CMeshSceneNode* newNode = new glitch::scene::CMeshSceneNode(
        copy, -1, node->getPosition(), node->getRotation(), node->getScale());
    newNode->setName(node->getParent()->getName());  // +0x28 with the parent's +0x24
    return newNode;
}

// 0x530a6c SetFinalOrientation(int)
// With the saved "auto orientation" option set (SavegameManager::getAutoReorientation, Application +0x4c, == 1): orientation 1 (not while the menu
// 9 is open) stores 0 in the touch screen's orientation word (TouchScreenBase +0x1a8, Application +0x20), turns the video driver (IDevice +0x10)
// to orientation 0 and sets isScreenOriented; orientation -1 (same menu test) stores 2, turns the driver to 2 and clears isScreenOriented. The
// result is the option value; the original returns the value IVideoDriver::setOrientation leaves in r0 when it changes the orientation (the
// driver's result, or the driver itself when nothing changed), which no caller reads and which setOrientation (void here) does not give.
extern "C" int SetFinalOrientation(int orientation) {
    Application& app = ApplicationGetInstance();
    const int result = app.m_savegameManager->getAutoReorientation();
    if (result == 1) {
        if (orientation == 1) {
            if (lastOpenMenuID != 9) {
                TouchOrientationAccess::Set(*app.m_touchScreen, 0);
                app.m_device->videoDriver->setOrientation(0);
                isScreenOriented = true;
            }
        } else if (orientation == -1 && lastOpenMenuID != 9) {
            TouchOrientationAccess::Set(*app.m_touchScreen, 2);
            app.m_device->videoDriver->setOrientation(2);
            isScreenOriented = false;
        }
    }
    return result;
}

// 0x530b5c SetDisplayString(char*)
// VoxSoundManager::ShowPlayingMusicTitle(VoxSoundManager::s_instance, title).
extern "C" void SetDisplayString(char* title) {
    VoxSoundManager::s_instance->ShowPlayingMusicTitle(title);
}

// 0x530b80 GetGameMusicVolume()
// Asm: loads the address of Singleton<Application>::s_inst and the string "VolumeMusic", then calls
// Application::GetSavedOption on it. ApplicationGetInstance() is that address (dh2/global/ctrl_camera.hpp; its
// definition belongs to the integrator). GetSavedOption is declared in dh2/Application.hpp.
extern "C" int GetGameMusicVolume() {
    // Port-only guard (the original has none and relies on the activity flow never calling this before nativeInit built the Application):
    // a stale task or a double onResume can reach it first; answer 0 (music off) instead of dereferencing a null savegame manager.
    if (ApplicationGetInstance().m_savegameManager == nullptr) return 0;
    return ApplicationGetInstance().GetSavedOption("VolumeMusic");
}

// 0x531228 GetNativeSoundRaw()
// The original is a bare return (ELF size 4, BX LR).
extern "C" void GetNativeSoundRaw() {}

// 0x53122c GetNativeResourceSoundRawLength()
// The original is a bare return (ELF size 4, BX LR).
extern "C" void GetNativeResourceSoundRawLength() {}

// 0x53226c GetNativeResourceFull(int, int)
// Android JNI glue on the GLResLoader class: NewStringUTF(name), the static byte[] method getResFullID of mClassGLResLoader called with the
// string, GetArrayLength, GetByteArrayRegion (0, length) into the caller's buffer, then DeleteLocalRef of the array and of the string. The
// return value is the leftover of the last DeleteLocalRef, so the function is void.
extern "C" void GetNativeResourceFull(const char* name, void* out) {
    jstring jname = mEnv->NewStringUTF(name);
    jbyteArray array = static_cast<jbyteArray>(mEnv->CallStaticObjectMethod(mClassGLResLoader, getResFullID, jname));
    const jsize length = mEnv->GetArrayLength(array);
    mEnv->GetByteArrayRegion(array, 0, length, static_cast<jbyte*>(out));
    mEnv->DeleteLocalRef(array);
    mEnv->DeleteLocalRef(jname);
}

// 0x532350 GetNativeResourceLength(int)
// NewStringUTF(name), the static int method getResLengthID of mClassGLResLoader called with it, DeleteLocalRef of the string; returns the int.
extern "C" int GetNativeResourceLength(const char* name) {
    jstring jname = mEnv->NewStringUTF(name);
    const jint length = mEnv->CallStaticIntMethod(mClassGLResLoader, getResLengthID, jname);
    mEnv->DeleteLocalRef(jname);
    return length;
}

// 0x5323d8 GetNativeResourceBytes(int, int, size_t)
// NewStringUTF(name), the static byte[] method getResBytesID of mClassGLResLoader called with (string, argument, length), malloc(length), the
// array copied into it with GetByteArrayRegion (0, length), DeleteLocalRef of the array and the string; returns the buffer. The meaning of the
// Java method's second argument is not visible in the native code; it is passed on unchanged.
extern "C" void* GetNativeResourceBytes(const char* name, int argument, std::size_t length) {
    jstring jname = mEnv->NewStringUTF(name);
    jbyteArray array = static_cast<jbyteArray>(
        mEnv->CallStaticObjectMethod(mClassGLResLoader, getResBytesID, jname, static_cast<jint>(argument), static_cast<jint>(length)));
    void* buffer = std::malloc(length);
    mEnv->GetByteArrayRegion(array, 0, static_cast<jsize>(length), static_cast<jbyte*>(buffer));
    mEnv->DeleteLocalRef(array);
    mEnv->DeleteLocalRef(jname);
    return buffer;
}

// 0x532f14 GetAccelerometerParams(int*, int*, int*)
// The original copies mAccelerometerX (ELF 0xa354f4) into the first destination, mAccelerometerY (0xa354f8) into the
// second and mAccelerometerZ (0xa354f0) into the third, then returns mAccelerometerY (Hex-Rays: result = mAccelerometerY,
// returned after the copies). The globals are 32-bit unsigned words (Globals.hpp, from the accesses); the destinations
// are the signed words this header declares, and the conversions keep the bits.
extern "C" int GetAccelerometerParams(std::int32_t* x, std::int32_t* y, std::int32_t* z) {
    *x = static_cast<std::int32_t>(mAccelerometerX);
    const std::int32_t yWord = static_cast<std::int32_t>(mAccelerometerY);
    *y = yWord;
    *z = static_cast<std::int32_t>(mAccelerometerZ);
    return yWord;
}

// 0x69f570 InterpolateColours(int const*, int const*, int const*, int const*, int, int, int, int*)
// Internal linkage in the original. The four colour words of each input (a1 to a4) are copied into a 16-word
// scratch array: corner[k] = a4[k], corner[4+k] = a3[k], corner[8+k] = a2[k], corner[12+k] = a1[k]. The horizontal
// weight v14 and the result scale come from a5 (8 steps when set, 4 otherwise) and a6; the vertical weight s7 comes
// from a7. Each a8[k] is the blend of its corners. Then a8[0..3] are shifted down (by 2, 2, 2, 1 for 8 steps, and by
// 1, 1, 1 for 4 steps, leaving a8[3] alone), and each a8[k] gets its own value shifted by 5 (by 4 for a8[3]) added
// back. The return is the new a8[0] for 8 steps and 4 for 4 steps.
int InterpolateColours(const int* a1, const int* a2, const int* a3, const int* a4, int a5, int a6, int a7,
                       int* a8) {
    int corner[16];
    for (int i = 0; i != 4; ++i) {
        corner[i] = a4[i];
        corner[4 + i] = a3[i];
        corner[8 + i] = a2[i];
        corner[12 + i] = a1[i];
    }

    int result = 0;
    int v14 = 0;
    if (a5) {
        result = 8;
        v14 = ((a6 & 7) | (2 * (~a6 & 4))) - 4;
    } else {
        result = 4;
        v14 = ((a6 & 3) | (2 * (~a6 & 2))) - 2;
    }
    const int s7 = ((a7 & 3) | (2 * (~a7 & 2))) - 2;

    for (int j = 0; j != 4; ++j) {
        const int v16 = corner[12 + j] * result + (corner[8 + j] - corner[12 + j]) * v14;
        a8[j] = s7 * (corner[4 + j] * result + (corner[j] - corner[4 + j]) * v14 - v16) + 4 * v16;
    }

    if (a5) {
        const int v20 = a8[1] >> 2;
        result = a8[0] >> 2;
        const int v21 = a8[2] >> 2;
        const int v22 = a8[3] >> 1;
        a8[0] = result;
        a8[1] = v20;
        a8[2] = v21;
        a8[3] = v22;
    } else {
        const int v17 = a8[1] >> 1;
        const int v18 = a8[2] >> 1;
        a8[0] >>= 1;
        a8[1] = v17;
        a8[2] = v18;
    }

    for (int k = 0; k != 3; ++k) {
        a8[k] += a8[k] >> 5;
    }
    a8[3] += a8[3] >> 4;
    return result;
}

// 0x69f6f4 TwiddleUV(unsigned long, unsigned long, unsigned long, unsigned long)
// Internal linkage in the original. If a1 < a2 the second value becomes a4 (a1 keeps its value); otherwise the first
// value takes the second. When the original a1 >= a2 held, the second value then becomes a3. With a1 > 1 the bits of
// a3 (x) and a4 (y) are interleaved into a Morton index, two bits per step, and the step count shifts the second value
// ((a2 >> steps) << 2 * steps) into the index. For a1 <= 1 the index is 0 and the result is the second value.
std::uint32_t TwiddleUV(std::uint32_t a1, std::uint32_t a2, std::uint32_t a3, std::uint32_t a4) {
    const bool noBorrow = a1 >= a2;
    if (a1 < a2) {
        a2 = a4;
    } else {
        a1 = a2;
    }
    if (noBorrow) {
        a2 = a3;
    }

    std::uint32_t bits = 0;
    int steps = 0;
    int spread = 0;
    if (a1 > 1) {
        std::uint32_t weight = 1;
        std::uint32_t mask = 1;
        for (;;) {
            if ((mask & a3) != 0) {
                bits |= weight;
            }
            const bool yClear = (mask & a4) == 0;
            mask *= 2;
            if (!yClear) {
                bits |= 2 * weight;
            }
            ++steps;
            if (a1 <= mask) {
                break;
            }
            weight *= 4;
        }
        spread = 2 * steps;
    } else {
        spread = 0;
        bits = 0;
        steps = 0;
    }
    return bits | ArmLogicalShiftLeft(ArmLogicalShiftRight(a2, steps), spread);
}

namespace {

// Decodes the pixel rows [yBegin, yEnd) of the image (the body of the original's row loop). The grid scratch (values, modes, colours) is a pure
// function of the four blocks around a pixel and every cell read is rewritten with them, so a band starts from an empty cache and gives the same
// bytes as one pass over all rows. The four block addresses (four TwiddleUV calls) are only recomputed when the block row or the left block
// column changes (it is a function of those two), which the original did for every pixel.
void PVRTCDecompressRows(const char* data, int do2bitMode, int xDim, int yDim, std::uint8_t* result, int blockWidth, int blocksPerRow,
                         int blockRows, int yBegin, int yEnd) {
    static const int kRepVals[8] = {0, 3, 5, 8, 0, 4, 4, 8};  // GetModulationValue's RepVals0 (ELF 0x8eaf00) and RepVals1 (0x8eaf10)
    const bool twoBit = do2bitMode != 0;
    const char* previousBlocks[4] = {nullptr, nullptr, nullptr, nullptr};
    int values[144] = {};  // the modulation values, 16 per grid row (eight rows); neighbour reads run past a row as in the original
    int modes[144] = {};   // the modulation modes, same layout
    int colours[32] = {};  // eight colours of four components: block (row r, column c) colour A at 16 * r + 8 * c, colour B 4 further

    int rowOffset = yBegin * xDim;
    int cachedTop = -1;
    int cachedLeft = -1;
    const char* blocks[4] = {nullptr, nullptr, nullptr, nullptr};
    for (int y = yBegin; y != yEnd; ++y, rowOffset += xDim) {
        if (xDim <= 0) {
            continue;
        }
        const int gridRow = (y & 3) | (2 * (~y & 2));
        const int topBlockRow = ((y - 2) & (yDim - 1)) / 4;
        const int bottomBlockRow = (topBlockRow + 1) & (blockRows - 1);
        const int rowAbove = 16 * (gridRow - 1);
        const int rowBelow = 16 * (gridRow + 1);
        const int rowBase = 16 * gridRow;
        for (int x = 0; x != xDim; ++x) {
            const int leftColumn = ((xDim - 1) & (x - (blockWidth >> 1))) / blockWidth;
            if (topBlockRow != cachedTop || leftColumn != cachedLeft) {
                const int rightColumn = (leftColumn + 1) & (blocksPerRow - 1);
                blocks[0] = data + 8 * TwiddleUV(blockRows, blocksPerRow, topBlockRow, leftColumn);
                blocks[1] = data + 8 * TwiddleUV(blockRows, blocksPerRow, topBlockRow, rightColumn);
                blocks[2] = data + 8 * TwiddleUV(blockRows, blocksPerRow, bottomBlockRow, leftColumn);
                blocks[3] = data + 8 * TwiddleUV(blockRows, blocksPerRow, bottomBlockRow, rightColumn);
                cachedTop = topBlockRow;
                cachedLeft = leftColumn;
            }
            if (std::memcmp(previousBlocks, blocks, sizeof(blocks)) != 0) {
                for (int blockRow = 0; blockRow != 2; ++blockRow) {
                    int columnOffset = 0;  // the block's first column in the grid
                    for (int column = 0; column != 2; ++column) {
                        const char* block = blocks[2 * blockRow + column];
                        std::uint32_t modulation = 0;
                        std::uint32_t colourWord = 0;
                        std::memcpy(&modulation, block, 4);
                        std::memcpy(&colourWord, block + 4, 4);
                        int* pair = &colours[16 * blockRow + 8 * column];
                        const std::uint32_t words[2] = {colourWord & 0xFFFEu, colourWord >> 16};
                        for (int c = 0; c != 2; ++c) {
                            const std::uint32_t colour = words[c];
                            int* out = pair + 4 * c;
                            if ((colour & 0x8000u) == 0) {  // 3 bits of alpha, 4 of red and green, 3 or 4 of blue
                                out[0] = static_cast<int>((colour >> 7) & 0x1E) | static_cast<int>(((colour >> 7) & 0x1E) >> 4);
                                out[1] = static_cast<int>((colour >> 3) & 0x1E) | static_cast<int>(((colour >> 3) & 0x1E) >> 4);
                                out[2] = static_cast<int>(2 * (colour & 0xF));
                                // The original widens the blue of the pair's first colour (pair[2]) here for both colours, so colour B's own
                                // blue stays at its raw 4-bit value and colour A's is widened twice.
                                const int firstBlue = pair[2];
                                pair[2] = (c != 0) ? (firstBlue | (firstBlue >> 4)) : (firstBlue | (firstBlue >> 3));
                                out[3] = static_cast<int>((colour >> 11) & 0xE);
                            } else {  // opaque: 5 bits per channel
                                out[0] = static_cast<int>((colour >> 10) & 0x1F);
                                out[1] = static_cast<int>((colour >> 5) & 0x1F);
                                int blue = static_cast<int>(colour & 0x1F);
                                if (c == 0) {
                                    blue |= blue >> 4;
                                }
                                out[2] = blue;
                                out[3] = 15;
                            }
                        }
                        const int modeFlag = static_cast<int>(colourWord & 1u);
                        const int gridBase = 64 * blockRow;  // four grid rows of 16 per block row
                        if (twoBit && modeFlag != 0) {
                            // Checkerboard: only the pixels whose column and row parity agree carry a value (2 bits each).
                            for (int j = 0; j != 4; ++j) {
                                for (int i = 0; i != 8; ++i) {
                                    const int index = gridBase + 16 * j + columnOffset + i;
                                    modes[index] = 1;
                                    if (((i ^ j) & 1) == 0) {
                                        values[index] = static_cast<int>(modulation & 3u);
                                        modulation >>= 2;
                                    }
                                }
                            }
                        } else if (twoBit) {
                            // One bit per pixel: 0 or 3.
                            for (int j = 0; j != 4; ++j) {
                                for (int i = 0; i != 8; ++i) {
                                    const int index = gridBase + 16 * j + columnOffset + i;
                                    modes[index] = modeFlag;
                                    values[index] = (modulation & 1u) != 0 ? 3 : 0;
                                    modulation >>= 1;
                                }
                            }
                        } else {
                            // Two bits per pixel.
                            for (int j = 0; j != 4; ++j) {
                                for (int i = 0; i != 4; ++i) {
                                    const int index = gridBase + 16 * j + columnOffset + i;
                                    modes[index] = modeFlag;
                                    values[index] = static_cast<int>(modulation & 3u);
                                    modulation >>= 2;
                                }
                            }
                        }
                        columnOffset += blockWidth;
                    }
                }
                std::memcpy(previousBlocks, blocks, sizeof(blocks));
            }

            int colourA[4];
            int colourB[4];
            InterpolateColours(&colours[0], &colours[8], &colours[16], &colours[24], do2bitMode, x, y, colourA);
            InterpolateColours(&colours[4], &colours[12], &colours[20], &colours[28], do2bitMode, x, y, colourB);

            int column;
            if (twoBit) {
                column = (x & 7) | (2 * (~x & 4));
            } else {
                column = (x & 3) | (2 * (~x & 2));
            }
            int mode = modes[rowBase + column];
            int factor;
            if (mode != 0) {
                if (twoBit) {
                    if (((column ^ gridRow) & 1) != 0) {
                        if (mode == 1) {
                            factor = (kRepVals[values[rowAbove + column]] + kRepVals[values[rowBelow + column]] + 2 +
                                      kRepVals[values[rowBase + column - 1]] + kRepVals[values[rowBase + column + 1]]) / 4;
                        } else if (mode == 2) {
                            factor = (kRepVals[values[rowBase + column - 1]] + kRepVals[values[rowBase + column + 1]] + 1) / 2;
                        } else {
                            factor = (kRepVals[values[rowAbove + column]] + kRepVals[values[rowBelow + column]] + 1) / 2;
                        }
                    } else {
                        factor = kRepVals[values[rowBase + column]];
                    }
                    mode = 0;
                } else {
                    const int value = values[rowBase + column];
                    factor = kRepVals[value + 4];  // RepVals1
                    mode = value == 2 ? 1 : 0;
                }
            } else {
                factor = kRepVals[values[rowBase + column]];
            }

            int pixel[4];
            for (int i = 0; i != 4; ++i) {
                pixel[i] = (8 * colourA[i] + (colourB[i] - colourA[i]) * factor) >> 3;
            }
            std::uint8_t* destination = &result[4 * rowOffset + 4 * x];
            destination[0] = static_cast<std::uint8_t>(pixel[0]);
            destination[1] = static_cast<std::uint8_t>(pixel[1]);
            destination[2] = static_cast<std::uint8_t>(pixel[2]);
            destination[3] = mode == 0 ? static_cast<std::uint8_t>(pixel[3]) : static_cast<std::uint8_t>(0);
        }
    }
}

}  // namespace

// 0x69f768 PVRTCDecompress(void const*, int, int, int, unsigned char*)
// Decodes a PVRTC image of xDim by yDim pixels (2 bits per pixel when do2bitMode, else 4) into RGBA bytes. Blocks are 8 bytes: word 0 the
// modulation data, word 1 the two colours (bits 0..15 colour A, with bit 0 the modulation mode flag, and bits 16..31 colour B). The block
// width is 8 or 4 pixels, the block row count yDim / 4 (2 when yDim is below 8), the blocks per row xDim / blockWidth (at least 2); a row
// count of zero returns the blocks per row. For each pixel row y: the top block row is ((y - 2) & (yDim - 1)) / 4 and the bottom one the next
// (wrapping); for each pixel x the left block column is ((xDim - 1) & (x - blockWidth / 2)) / blockWidth and the right one the next. The four
// blocks (found with TwiddleUV) are decoded into the colour pairs, the modulation values and the modulation modes of an 8-row, 16-column scratch
// grid, unless the same four blocks were decoded for the previous pixel. The colours are interpolated bilinearly (InterpolateColours) and the
// modulation factor comes from the row and column of the pixel in the grid: a pixel whose parity requires it (2 bits per pixel, modes 1 to 3)
// averages its neighbours' factors (RepVals0 = 0, 3, 5, 8); 4 bits per pixel with the flag set uses RepVals1 = 0, 4, 4, 8, and a value 2 there
// is the punch-through (alpha 0). Each pixel is (8 * A + (B - A) * factor) >> 3. The return value is yDim.
// Track B: the rows are independent (see PVRTCDecompressRows), so a large image is decoded in horizontal bands on up to four threads (the calling
// thread decodes the last one); the bytes are identical to the single pass. The Galaxy Z Fold 7 spent up to 114 ms of a frame on two textures here.
int PVRTCDecompress(const void* compressed, int do2bitMode, int xDim, int yDim, std::uint8_t* result) {
    const char* data = static_cast<const char*>(compressed);
    const int blockWidth = do2bitMode ? 8 : 4;
    int blocksPerRow = xDim / blockWidth;
    if (blocksPerRow < 2) {
        blocksPerRow = 2;
    }
    int blockRows;
    if (yDim > 7) {
        blockRows = yDim >> 2;
    } else if (yDim > 0) {
        blockRows = 2;
    } else {
        return blocksPerRow;
    }

    int bands = 1;
    if (xDim > 0 && static_cast<long long>(xDim) * yDim >= 256 * 256 && yDim >= 64) {
        const unsigned hw = std::thread::hardware_concurrency();
        bands = static_cast<int>(hw == 0 ? 2u : (hw < 4u ? hw : 4u));
        if (bands > yDim / 32) {
            bands = yDim / 32;
        }
        if (bands < 1) {
            bands = 1;
        }
    }
    if (bands == 1) {
        PVRTCDecompressRows(data, do2bitMode, xDim, yDim, result, blockWidth, blocksPerRow, blockRows, 0, yDim);
        return yDim;
    }
    std::vector<std::thread> workers;
    workers.reserve(static_cast<size_t>(bands - 1));
    for (int b = 0; b < bands - 1; ++b) {
        const int begin = static_cast<int>(static_cast<long long>(yDim) * b / bands);
        const int end = static_cast<int>(static_cast<long long>(yDim) * (b + 1) / bands);
        try {
            workers.emplace_back([=] { PVRTCDecompressRows(data, do2bitMode, xDim, yDim, result, blockWidth, blocksPerRow, blockRows, begin, end); });
        } catch (...) {  // no thread available: decode the band here
            PVRTCDecompressRows(data, do2bitMode, xDim, yDim, result, blockWidth, blocksPerRow, blockRows, begin, end);
        }
    }
    PVRTCDecompressRows(data, do2bitMode, xDim, yDim, result, blockWidth, blocksPerRow, blockRows,
                        static_cast<int>(static_cast<long long>(yDim) * (bands - 1) / bands), yDim);
    for (std::thread& w : workers) {
        w.join();
    }
    return yDim;
}
