// Scene-node and debug free functions of the <global> code (owner K3, 2026-10-16): the scene hierarchy helpers
// (HideAllIrrlicheNodeExcept, AddToSceneMgr, findSceneNode, OptimizeHierarchy, the underlay-node warm-up
// TabarnakDeNodeHierarchy...), the debug traces of the glitch managers and of the scene graph, and the PolyStat helpers the poly
// statistics need. Each body is transcribed from the Hex-Rays listing named in its header comment and checked against the ARM
// listing. The trace functions had their output removed from the shipped binary (the listings keep only the traversal and the
// reference counting around it); they are reproduced as that traversal.

#include <pthread.h>

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/debug_out.hpp"
#include "core-platform/lc_api.hpp"
#include "core-platform/memory.hpp"
#include "core-platform/ok3_scene_debug.hpp"
#include "core-platform/stlport_alloc.hpp"
#include "core-platform/w7_global_00.hpp"
#include "dh2/Application.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/PolyStat.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/SceneNodeHelpers.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/debug_trace.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "dh2/global/underlay_scene_node.hpp"
#include "glitch-core-io/core/matrix4_base.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/glx_player_leaderboard.hpp"
#include "net-transport/data_packet.hpp"
#include "net-transport/sync.hpp"
#include "vendor-gameswf/as_value.hpp"

using glitch::scene::ISceneNode;

namespace {

// The scene root as the original reaches it: dword_99F73C (Application::m_device) +0x1C scene manager, +0x04 its root node.
ISceneNode* DeviceSceneRoot() {
    return DeviceSceneManager()->rootNode;
}

// The device's video driver: dword_99F73C + 0x10.
glitch::video::IVideoDriver* DeviceVideoDriver() {
    return ApplicationGetInstance().m_device->videoDriver;
}

// The file-scope vector of DBG_TraceSceneNodePolyStats (ELF _ZL18s_dbg_statDataHack, .bss, 12 bytes at 0x9f6240).
std::vector<PolyStat> s_dbg_statDataHack;

}  // namespace

// ---- PolyStat (host helpers, no ELF symbol of their own: the string construction and copies are inlined in the listing) ----

PolyStat::PolyStat(const char* name, int polyCount) : unk_00(nullptr), unk_14(nullptr), m_polyCount(polyCount) {
    const std::size_t length = name != nullptr ? std::strlen(name) : 0;
    const std::size_t capacity = length + 1 > 0x81 ? length + 1 : 0x81;  // the destructor sends blocks above 0x80 bytes to CustomFree
    char* block = static_cast<char*>(CustomAlloc(static_cast<unsigned>(capacity)));
    std::memcpy(block, name != nullptr ? name : "", length);
    block[length] = '\0';
    unk_14 = block;
    unk_00 = block + capacity;
}

PolyStat::PolyStat(const PolyStat& other)
    : PolyStat(static_cast<const char*>(other.unk_14), other.m_polyCount) {}

PolyStat& PolyStat::operator=(const PolyStat& other) {
    if (this != &other) {
        PolyStat copy(other);
        std::swap(unk_00, copy.unk_00);
        std::swap(unk_14, copy.unk_14);
        m_polyCount = copy.m_polyCount;
    }
    return *this;
}

// 0x3301f0 HideAllIrrlicheNodeExcept(glitch::scene::ISceneNode*)
// Hides (setVisible K 0x48) every child of the scene root that is visible (ESNF_VISIBLE, flags +0x11C bit 0) and is not the node given.
void HideAllIrrlicheNodeExcept(ISceneNode* except) {
    for (ISceneNode* node : DeviceSceneRoot()->children) {  // the child list sentinel at +0xF4
        if ((node->flags & glitch::scene::ESNF_VISIBLE) != 0 && node != except) {
            node->setVisible(false);
        }
    }
}

// 0x381a10 TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(glitch::scene::ISceneNode*)
// For a collada mesh node ('daem'): takes its mesh (getMesh, K 0xF8), reads the mesh buffer count (IMesh K 0x10), drops the mesh and
// draws buffers 1 .. count (render, K 0x1C, with the 1-based buffer index as the argument). Then recurses over the children.
void TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(ISceneNode* node) {
    if (node->getType() == glitch::scene::ESNT_DAE_MESH) {
        int count;
        {
            boost::intrusive_ptr<glitch::scene::IMesh> mesh = static_cast<glitch::scene::IMeshSceneNode*>(node)->getMesh();
            count = static_cast<int>(mesh->getMeshBufferCount());
        }
        if (count > 0) {
            for (int i = 0; i != count;) {
                ++i;
                node->render(reinterpret_cast<void*>(static_cast<std::intptr_t>(i)));
            }
        }
    }
    for (ISceneNode* child : node->children) {
        TabarnakDeNodeHierarchyAvecDesEmptyNodeDuCalisse(child);
    }
}

// 0x50e228 DBG_TraceAllLoadedResfileInformation(void)
// Walks the loaded collada files in name order; the trace output is gone from the binary, only the traversal is left.
void DBG_TraceAllLoadedResfileInformation() {
    glitch::collada::CResFileManager* manager = glitch::collada::CResFileManager::Inst;
    for (auto it = manager->files.begin(); it != manager->files.end(); ++it) {
    }
}

// 0x50e2b8 DBG_TraceAllLoadedTextureInformation(void)
// For every texture of the driver's texture manager (driver +0xE0), in name order: takes the entry's texture by id (the shared
// invalid entry when the id is out of range), holds it and drops it again; the trace output is gone.
void DBG_TraceAllLoadedTextureInformation() {
    glitch::video::CTextureManager* textures = DeviceVideoDriver()->m_textureManager;
    for (auto it = textures->idBegin(); it != textures->idEnd(); ++it) {
        boost::intrusive_ptr<glitch::video::ITexture> texture = textures->get(it->second.id)->value;
    }
}

// 0x50e6a0 DBG_DrawGlitchNodeBoundingBox(glitch::scene::ISceneNode*)
// A node with an automatic culling mode (ISceneNode +0x118) gets its transformed box (K 0x34) drawn through the driver's draw3DBox
// (K 0x28): the colour is 0x7FFFFF00 when the box lies outside the active camera's frustum box (SViewFrustum +0x6C), 0x7F00FFFF
// when it overlaps it.
void DBG_DrawGlitchNodeBoundingBox(ISceneNode* node) {
    glitch::video::IVideoDriver* driver = DeviceVideoDriver();
    glitch::scene::CSceneManager* scene = DeviceSceneManager();
    if (node->automaticCulling != 0) {
        const glitch::core::aabbox3d<float>& box = node->getTransformedBoundingBox();
        const glitch::core::aabbox3d<float>& view = scene->activeCamera->getViewFrustum()->box;  // active camera +0xE4, K 0x144
        std::uint8_t first;
        std::uint8_t third;
        if (box.MinEdge.X > view.MaxEdge.X || box.MinEdge.Y > view.MaxEdge.Y || box.MinEdge.Z > view.MaxEdge.Z ||
            box.MaxEdge.X < view.MinEdge.X || box.MaxEdge.Y < view.MinEdge.Y || box.MaxEdge.Z < view.MinEdge.Z) {
            first = 0;
            third = 0xFF;
        } else {
            first = 0xFF;
            third = 0;
        }
        glitch::video::SColor color;
        color.color = static_cast<std::uint32_t>(first) | (0xFFu << 8) | (static_cast<std::uint32_t>(third) << 16) | (127u << 24);
        driver->draw3DBox(box, color);
    }
}

// 0x50e7c4 DBG_TraceSceneNode(glitch::scene::ISceneNode*, int, bool (*)(glitch::scene::ISceneNode*))
// A non-null node that passes the filter (when there is one) has its polygon count computed (GetNodePolyCount, the trace output is
// gone), then the children are traced one level deeper.
void DBG_TraceSceneNode(ISceneNode* node, int depth, bool (*filter)(ISceneNode*)) {
    if (node == nullptr) {
        return;
    }
    if (filter == nullptr || filter(node)) {
        GetNodePolyCount(node, true);
        for (ISceneNode* child : node->children) {
            DBG_TraceSceneNode(child, depth + 1, filter);
        }
    }
}

// 0x50e8a4 TraceEveryGlitchRefCountingShitKnownToManKind(char const*)
// Walks the loaded collada files, then the driver's texture manager (+0xE0), material renderer manager (+0xDC) and shader manager
// (+0xD8), taking each entry by id (the invalid entry when out of range) and releasing it again; the trace output is gone.
void TraceEveryGlitchRefCountingShitKnownToManKind(const char*) {
    glitch::collada::CResFileManager* resources = glitch::collada::CResFileManager::Inst;
    glitch::video::IVideoDriver* driver = DeviceVideoDriver();
    for (auto it = resources->files.begin(); it != resources->files.end(); ++it) {
    }
    glitch::video::CTextureManager* textures = driver->m_textureManager;
    for (auto it = textures->idBegin(); it != textures->idEnd(); ++it) {
        boost::intrusive_ptr<glitch::video::ITexture> texture = textures->get(it->second.id)->value;
    }
    glitch::video::CMaterialRendererManager* renderers = driver->m_materialRendererManager;
    for (auto it = renderers->idBegin(); it != renderers->idEnd(); ++it) {
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = renderers->get(it->second.id)->value;
    }
    glitch::video::IShaderManager* shaders = driver->m_shaderManager;
    for (auto it = shaders->m_shaders.idBegin(); it != shaders->m_shaders.idEnd(); ++it) {
        boost::intrusive_ptr<glitch::video::IShader> shader = shaders->m_shaders.get(it->second.id)->value;
    }
}

// 0x50f2d0 AddToSceneMgr(glitch::scene::ISceneNode*, glitch::scene::ISceneNode*)
// Flattens a hierarchy into `target`: the children first (the next link is read before each recursive call), then, for a mesh node
// ('mesh'): its absolute position is refreshed (updateAbsolutePosition(false), K 0xB8) and stored as its position (K 0xA4), its
// rotation is set from the absolute matrix (quaternion::operator=(CMatrix4 const&), setRotation K 0x9C), the animate flag (0x200) is
// cleared, the node is added to the target (addChild, K 0x5C) and its remaining children are removed (removeAll, K 0x64).
void AddToSceneMgr(ISceneNode* node, ISceneNode* target) {
    const glitch::scene::SListLink* link = node->children.sentinel.next;
    while (link != &node->children.sentinel) {
        ISceneNode* child = static_cast<ISceneNode*>(const_cast<glitch::scene::SListLink*>(link));
        link = link->next;
        AddToSceneMgr(child, target);
    }
    if (node->getType() == glitch::scene::ESNT_MESH) {
        node->updateAbsolutePosition(false);
        node->setPosition(node->getAbsolutePosition());
        glitch::core::quaternion rotation;
        rotation = node->getAbsoluteTransformation();
        node->setRotation(rotation);
        node->flags &= ~static_cast<std::uint32_t>(glitch::scene::ESNF_ANIMATE);
        target->addChild(node);
        node->removeAll();
    }
}

// 0x50f3d4 PrintNodeProperties(glitch::scene::ISceneNode*, bool, int)
// Prints one line for the node (indented by 2 * depth): "Name: <uid> | " when it has one (the listing prints getUID, K 0x54, under
// the "Name:" label), "ID: <id> | ", "Type: "<four characters>" | ", "<name::(null)> (x,y,z)" and a newline, then one line per
// clip of the first animator's timeline ("<*>Anim i : <clip>"); with `children` set the subtree follows. Returns the number of
// nodes printed. HOST-PORT: the second %s of the position line is the argument the listing passes as 0; it is the string "(null)"
// here, which is what bionic's printf prints for it (printf of a null %s is undefined elsewhere).
int PrintNodeProperties(ISceneNode* node, bool children, int depth) {
    if (node == nullptr) {
        return 1;
    }
    const int indent = 2 * depth;
    std::printf("%*s", indent, "");
    if (node->getUID() != nullptr) {
        std::printf("Name: %s | ", node->getUID());
    }
    std::printf("ID: %i | ", node->getID());
    const std::uint32_t type = static_cast<std::uint32_t>(node->getType());
    std::printf("Type: \"%c%c%c%c\" | ", static_cast<int>(type & 0xFF), static_cast<int>((type >> 8) & 0xFF),
                static_cast<int>((type >> 16) & 0xFF), static_cast<int>(type >> 24));
    const char* name = node->getName();
    const double x = node->getAbsolutePosition().X;
    const double y = node->getAbsolutePosition().Y;
    const double z = node->getAbsolutePosition().Z;
    std::printf("<%s::%s> (%+6.2f,%+6.2f,%+6.2f)", name, "(null)", x, y, z);
    std::putchar(10);
    const glitch::scene::SNodeList<glitch::scene::ISceneNodeAnimator*>& animators = node->getAnimators();
    if (!animators.empty()) {
        glitch::scene::ISceneNodeAnimator* animator = *animators.begin();
        if (animator != nullptr) {
            glitch::scene::ITimelineController* timeline = animator->getTimelineCtrl();  // K 0x40
            if (timeline != nullptr) {
                const int clips = timeline->getClipCount();  // K 0x1C
                for (int i = 0; i < clips; ++i) {
                    std::printf("%*sAnim %i : %s\n", indent, "*", i, timeline->getClipName(i));  // K 0x3C
                }
            }
        }
    }
    if (!children) {
        return 1;
    }
    if (node->children.empty()) {
        return 1;
    }
    int printed = 1;
    for (ISceneNode* child : node->children) {
        printed += PrintNodeProperties(child, true, depth + 1);
    }
    return printed;
}

// 0x50f7fc findSceneNode(glitch::scene::ISceneNode*, char const*)
// The first node of the subtree (this node first, then each child's subtree in order) whose name (getName, K 0x24) equals `name`.
// The listing walks the matching node's animator list once with no effect after a hit; kept as the empty loop.
ISceneNode* findSceneNode(ISceneNode* node, const char* name) {
    if (LC_API_STRCMP(node->getName(), name) == 0) {
        return node;
    }
    for (ISceneNode* child : node->children) {
        ISceneNode* found = findSceneNode(child, name);
        if (found != nullptr) {
            for (auto it = node->getAnimators().begin(); it != node->getAnimators().end(); ++it) {
            }
            return found;
        }
    }
    return nullptr;
}

// 0x50fbd0 OptimizeHierarchy(glitch::scene::ISceneNode*, bool)
// Post-order clean-up of a loaded hierarchy; returns the number of nodes removed. An unnamed collada node ('daen') is dissolved: its
// children get its relative transformation multiplied in (CMatrix4Base::multEq) and move to its parent, then the node is removed
// (remove, K 0x68). A named 'daen' node without children whose name contains "_PIVOT" is removed. A collada mesh ('daem') whose
// UID starts with "Box" is removed (asserting it has no children, irrutils.cpp:492). A light ('thgl') whose light type is 3 is removed.
// DEVIATION (host-necessitated): the loop that moves the children reads the next link before addChild; the listing reads it after,
// from the child's link that addChild has just re-linked into the parent's list, which walks off the node's own list.
int OptimizeHierarchy(ISceneNode* node, bool flag) {
    if (node == nullptr) {
        return 0;
    }
    int removed = 0;
    const glitch::scene::SListLink* link = node->children.sentinel.next;
    while (link != &node->children.sentinel) {
        ISceneNode* child = static_cast<ISceneNode*>(const_cast<glitch::scene::SListLink*>(link));
        link = link->next;
        removed += OptimizeHierarchy(child, flag);
    }
    bool remove = false;
    if (node->getType() == glitch::scene::ESNT_DAEN) {
        const char* name = node->getName();
        if (name == nullptr || *name == '\0') {
            glitch::core::CMatrix4<float> parentMatrix(node->getRelativeTransformation());  // K 0x40
            const glitch::scene::SListLink* childLink = node->children.sentinel.next;
            while (childLink != &node->children.sentinel) {
                ISceneNode* child = static_cast<ISceneNode*>(const_cast<glitch::scene::SListLink*>(childLink));
                childLink = childLink->next;
                glitch::core::CMatrix4<float> childMatrix(child->getRelativeTransformation());
                glitch::core::detail::multEq(childMatrix, parentMatrix);
                child->setRelativeTransformation(childMatrix);  // K 0x44
                node->getParent()->addChild(child);              // K 0x5C
            }
            remove = true;
        } else if (node->children.size() != 1 && node->children.size() == 0 && LC_API_STRSTR(name, "_PIVOT") != nullptr) {
            remove = true;
        }
    } else if (node->getType() == glitch::scene::ESNT_DAE_MESH) {
        const char* uid = node->getUID();  // K 0x54
        if (uid != nullptr && LC_API_STRNCMP(uid, "Box", 3) == 0) {
            if (node->children.size() != 0) {
                if (gAssertLevel == 2) {
                    std::abort();  // the original writes to address 0
                } else if (gAssertLevel == 1) {
                    std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "node->getChildren().size() == 0",
                                 "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Collada\\irrutils.cpp", 492);
                }
            }
            remove = true;
        }
    } else if (node->getType() == glitch::scene::ESNT_LIGHT) {
        if (static_cast<glitch::scene::CLightSceneNode*>(node)->light->m_type == 3) {  // +0x134 light, CLight +0x58
            remove = true;
        }
    }
    if (remove) {
        node->remove();  // K 0x68
        ++removed;
    }
    return removed;
}

// 0x51049c DBG_GetDetailedNodeName(glitch::scene::ISceneNode*)
// "Node Info : " and, for a node: "File: <base name of the node's UID>\n", then for its first child "Object: <name>\n", and for that
// child's first child "Textures: " when it has materials (the texture names are gone with the trace output).
std::string DBG_GetDetailedNodeName(ISceneNode* node) {
    std::string result = "Node Info : ";
    if (node != nullptr) {
        const glitch::core::stringc path(node->getUID());  // K 0x54
        glitch::io::IFileSystem* fileSystem = ApplicationGetInstance().m_device->fileSystem;
        ++fileSystem->referenceCounter;  // the listing takes a use (++*(fs + 4)) and drops it at the end
        const glitch::core::stringc baseName = fileSystem->getFileBasename(path, true);  // K 0x3C
        result += "File: ";
        result += baseName.c_str();
        result += "\n";
        if (node->children.size() != 0) {
            ISceneNode* object = *node->children.begin();
            result += "Object: ";
            result += object->getName();  // K 0x24
            result += "\n";
            if (object->children.size() != 0) {
                ISceneNode* meshNode = *object->children.begin();
                const int materials = static_cast<int>(meshNode->getMaterialCount());  // K 0x88
                if (materials > 0) {
                    result += "Textures: ";
                    for (int i = 0; i != materials; ++i) {
                        boost::intrusive_ptr<glitch::video::CMaterial> material = meshNode->getMaterial(i);  // K 0x84
                    }
                }
            }
        }
        fileSystem->drop();
    }
    return result;
}

// 0x51073c DBG_TraceSceneNodePolyStats(glitch::scene::ISceneNode*, int, bool (*)(glitch::scene::ISceneNode*))
// Collects, for the mesh nodes of the subtree that pass the filter, the name of the node's parent and the node's polygon count (not
// counting the children) into the file-scope vector, clearing it at the top level (depth 0); at the end of the top-level call the
// entries are copied one by one (the trace output of each copy is gone).
void DBG_TraceSceneNodePolyStats(ISceneNode* node, int depth, bool (*filter)(ISceneNode*)) {
    if (depth == 0 && !s_dbg_statDataHack.empty()) {
        s_dbg_statDataHack.clear();
    }
    if ((filter == nullptr || filter(node)) && IsNodeMesh(node)) {
        const int polyCount = GetNodePolyCount(node, false);
        const char* parentName = node->getParent()->getName();  // K 0x24
        s_dbg_statDataHack.push_back(PolyStat(parentName, polyCount));
    }
    for (ISceneNode* child : node->children) {
        DBG_TraceSceneNodePolyStats(child, depth + 1, filter);
    }
    if (depth == 0) {
        for (const PolyStat& entry : s_dbg_statDataHack) {
            PolyStat copy(entry);
        }
    }
}

// 0x441dcc fillLeaderBoard(void)
// Pushes the online leaderboard into the "Multiplayer_Leaderboard" movie, one addLeaderboardEntry(rank, position, name, country, score,
// isCurrentPlayer) call per row (RenderFX::InvokeASCallback, six values: the 1-based rank as a number, then the position, name, country
// and score as strings, then a boolean that is true for the row of the current player). With no rows (getLeaderboardSize <= 0) ten
// blank rows (rank 1..10, four empty strings, false) are pushed instead. Starts with the debug line the listing prints.
void fillLeaderBoard() {
    GLXPlayerLeaderboard* leaderboard = static_cast<CMatchingGLLive*>(CMatching::Get())->Leaderboard();  // CMatching +0x671c
    _DEBUG_OUT("XSocket::Run(): Connecting... \n");
    const int size = leaderboard->getLeaderboardSize();
    if (size <= 0) {
        RenderFX* root = MenuManager::GetInstance()->GetRoot();
        for (int row = 1; row <= 10; ++row) {
            gameswf::as_value args[6];
            args[0].set_double(static_cast<double>(row));
            args[1].set_string("");
            args[2].set_string("");
            args[3].set_string("");
            args[4].set_string("");
            args[5].set_bool(false);
            root->InvokeASCallback("_root.Multiplayer_Leaderboard", "addLeaderboardEntry", args, 6);
        }
    } else {
        RenderFX* root = MenuManager::GetInstance()->GetRoot();
        for (int index = 0; index != size; ++index) {
            char position[12];
            char score[12];
            std::sprintf(position, "%d", leaderboard->getLeaderboardEntryPlayerPosition(index));
            std::sprintf(score, "%d", leaderboard->getLeaderboardEntryPlayerScore(index));
            (void)leaderboard->getLeaderboardEntryPlayerScore(index);  // the listing reads the score a second time and drops it
            gameswf::as_value args[6];
            args[0].set_double(static_cast<double>(index + 1));
            args[1].set_string(position);
            args[2].set_string(leaderboard->getLeaderboardEntryPlayerName(index));
            args[3].set_string(leaderboard->getLeaderboardEntryPlayerCountry(index));
            args[4].set_string(score);
            args[5].set_bool(false);
            if (leaderboard->getLeaderboardEntryPlayerPosition(index) == leaderboard->getCurrentPlayerLeaderboardPosition()) {
                args[5].set_bool(true);
            }
            root->InvokeASCallback("_root.Multiplayer_Leaderboard", "addLeaderboardEntry", args, 6);
        }
    }
}

// 0x8456e4 threadfun(void*)
// The pthread entry point of Thread::Start in the original: runs Thread::Run on the argument, then pthread_exit(1). The port starts its
// threads with std::thread (net-transport/src/sync.cpp), which calls Run directly, so nothing in the port passes this to pthread_create.
// Run is protected; the accessor type below names it through a derived class, which is allowed.
namespace {
struct ThreadRunAccess : Thread {
    static void run(Thread* thread) { (thread->*(&ThreadRunAccess::Run))(); }
    int Kernel() override { return 0; }
};
}  // namespace

void threadfun(void* argument) {
    ThreadRunAccess::run(static_cast<Thread*>(argument));
    pthread_exit(reinterpret_cast<void*>(1));
}

// 0x8212d0 PrintDatapacket(DataPacket*)
// File-local in the original (each user has its own copy; the lobby observers inline theirs, see
// net-session-online/src/c_matching_gl_live_observers.cpp): getMessageBody (vtable +0x64), then getMessageLen (+0x60), whose result the
// listing returns as the register leftover.
[[maybe_unused]] static int PrintDatapacket(DataPacket* packet) {
    (void)packet->getMessageBody();
    return packet->getMessageLen();
}

// 0x7d3c24 cross(float*, float*, float*)
// out = a x b for float triples. The listing returns the last product's value (register leftover); void here.
void cross(float* a, float* b, float* out) {
    out[0] = (a[1] * b[2]) - (a[2] * b[1]);
    out[1] = (a[2] * b[0]) - (a[0] * b[2]);
    out[2] = (a[0] * b[1]) - (a[1] * b[0]);
}

// 0x7d4584 normalize(float*)
// Divides the float triple by its length (sqrtf) unless the length is exactly zero. The listing returns the register leftover.
void normalize(float* v) {
    const float length = sqrtf(((v[0] * v[0]) + (v[1] * v[1])) + (v[2] * v[2]));
    if (length != 0.0f) {
        v[0] = v[0] / length;
        v[1] = v[1] / length;
        v[2] = v[2] / length;
    }
}

// ---- LoadSubtitles (0x339830) ----

// 0x33931c GetSubtitleTimeInfo(char*, int&, int&): an empty body in the binary (dh2/global/subtitles.hpp declares it; that header
// cannot be included next to Globals.hpp, whose g_skip is the real 16-byte array).
void GetSubtitleTimeInfo(char* text, int& startTime, int& endTime);

namespace {

constexpr unsigned int kSubtitleSlots = 32;  // slots of one deque node (0x80 bytes in the original)

// The slot array of the deque map or of a node: sizes up to 0x80 bytes go through the STLport pool (std::allocator::allocate).
void* AllocateSlots(std::size_t count) {
    unsigned int bytes = static_cast<unsigned int>(count * sizeof(void*));
    return std::__node_alloc::allocate(bytes);
}

void FreeSlots(void* block, std::size_t count) {
    if (block != nullptr) {
        std::__node_alloc::deallocate(block, count * sizeof(void*));
    }
}

// The static initialisation of the original deque (STLport _M_initialize_map(0)): a map of 8 slots and one node in its middle.
// The port has no static constructor for the queue, so the first push builds it.
void InitSubtitleQueue(SubtitleDeque& q) {
    q.mapSize = 8;
    q.map = static_cast<SubtitleEntry***>(AllocateSlots(q.mapSize));
    SubtitleEntry*** middle = q.map + (q.mapSize - 1) / 2;
    *middle = static_cast<SubtitleEntry**>(AllocateSlots(kSubtitleSlots));
    q.node = middle;
    q.first = *middle;
    q.last = q.first + kSubtitleSlots;
    q.cur = q.first;
    q.finishNode = middle;
    q.finishFirst = *middle;
    q.finishLast = q.finishFirst + kSubtitleSlots;
    q.finish = q.finishFirst;
}

// std::deque<SubtitleEntry*>::push_back as the listing has it inlined: a free slot in the last node, or a new node (growing or
// re-centring the node map when the last map slot is reached).
void PushSubtitle(SubtitleDeque& q, SubtitleEntry* entry) {
    if (q.map == nullptr) {
        InitSubtitleQueue(q);
    }
    if (q.finish == q.finishLast - 1) {
        if (q.mapSize - static_cast<unsigned int>(q.finishNode - q.map) <= 1) {
            const std::ptrdiff_t oldNumNodes = (q.finishNode - q.node) + 1;
            const std::ptrdiff_t newNumNodes = oldNumNodes + 1;
            SubtitleEntry*** newStart;
            if (q.mapSize > static_cast<unsigned int>(2 * newNumNodes)) {
                newStart = q.map + ((q.mapSize - static_cast<unsigned int>(newNumNodes)) >> 1);
                const std::ptrdiff_t count = (q.finishNode + 1) - q.node;
                if (q.node <= newStart) {
                    if (count > 0) {
                        std::memmove(newStart + oldNumNodes - count, q.node, static_cast<std::size_t>(count) * sizeof(void*));
                    }
                } else if (count != 0) {
                    std::memmove(newStart, q.node, static_cast<std::size_t>(count) * sizeof(void*));
                }
            } else {
                const unsigned int newMapSize = q.mapSize + (q.mapSize != 0 ? q.mapSize : 1) + 2;
                SubtitleEntry*** newMap = static_cast<SubtitleEntry***>(AllocateSlots(newMapSize));
                newStart = newMap + ((newMapSize - static_cast<unsigned int>(newNumNodes)) >> 1);
                if (q.finishNode + 1 != q.node) {
                    std::memmove(newStart, q.node, static_cast<std::size_t>((q.finishNode + 1) - q.node) * sizeof(void*));
                }
                FreeSlots(q.map, q.mapSize);
                q.mapSize = newMapSize;
                q.map = newMap;
            }
            q.node = newStart;
            q.first = *newStart;
            q.last = q.first + kSubtitleSlots;
            q.finishNode = newStart + oldNumNodes - 1;
            q.finishFirst = *q.finishNode;
            q.finishLast = q.finishFirst + kSubtitleSlots;
        }
        *(q.finishNode + 1) = static_cast<SubtitleEntry**>(AllocateSlots(kSubtitleSlots));
        *q.finish = entry;
        ++q.finishNode;
        q.finishFirst = *q.finishNode;
        q.finish = q.finishFirst;
        q.finishLast = q.finishFirst + kSubtitleSlots;
    } else {
        *q.finish = entry;
        ++q.finish;
    }
}

}  // namespace

// 0x339830 LoadSubtitles
// Clears the queue and the skip label, then by language (SavegameManager::getLanguage): 1 French "Passer", 2 German (the bytes C3 9C 62
// 65 72 73 70 00), 3 Italian "Salta", 4 Japanese, 5 Korean, 6 Chinese (UTF-8 strings written as words), 7 Spanish "Omitir", else
// English "skip"; and opens "DQ_TRAILER_SUB-<language>.srt" ("Itallian" is the file's spelling). Without the file the function returns
// 0. Otherwise it reads the file to its end: a block is a time line (GetSubtitleTimeInfo, which is empty in the binary, so the two
// times stay 0 and the loop only skips lines), a text line and the following lines up to a blank line, joined into a 256-byte buffer
// (a line that would not fit within 254 bytes is skipped); each block becomes a SubtitleEntry {start, end, text} pushed on the queue.
// Returns the fclose result.
int LoadSubtitles() {
    ClearSubtitles();
    g_skip[0] = 0;
    std::FILE* file;
    switch (ApplicationGetInstance().m_savegameManager->getLanguage()) {
        case 1:
            file = std::fopen("DQ_TRAILER_SUB-French.srt", "r");
            std::strcpy(g_skip, "Passer");
            break;
        case 2:
            file = std::fopen("DQ_TRAILER_SUB-German.srt", "r");
            std::memcpy(g_skip, "\xC3\x9C" "bersp", 8);
            break;
        case 3:
            file = std::fopen("DQ_TRAILER_SUB-Itallian.srt", "r");
            std::strcpy(g_skip, "Salta");
            break;
        case 4:
            file = std::fopen("DQ_TRAILER_SUB-Japanese.srt", "r");
            std::memcpy(g_skip, "\xE3\x82\xB9\xE3\x82\xAD\xE3\x83\x83\xE3\x83\x97", 12);
            g_skip[12] = 0;
            break;
        case 5:
            file = std::fopen("DQ_TRAILER_SUB-Korean.srt", "r");
            std::memcpy(g_skip, "\xEA\xB1\xB4\xEB\x84\x88\xEB\x9B\xB0\xEA\xB8\xB0", 12);
            g_skip[12] = 0;
            break;
        case 6:
            file = std::fopen("DQ_TRAILER_SUB-Chinese.srt", "r");
            std::memcpy(g_skip, "\xE8\xB7\xB3\xE8\xBF\x87", 6);
            g_skip[6] = 0;
            break;
        case 7:
            file = std::fopen("DQ_TRAILER_SUB-Spanish.srt", "r");
            std::strcpy(g_skip, "Omitir");
            break;
        default:
            file = std::fopen("DQ_TRAILER_SUB-English.srt", "r");
            std::strcpy(g_skip, "skip");
            break;
    }
    if (file == nullptr) {
        return 0;
    }
    char line[256];
    while (!std::feof(file)) {
        int start = 0;
        int end = 0;
        do {
            if (std::feof(file)) {
                break;
            }
            std::fgets(line, 256, file);
            GetSubtitleTimeInfo(line, start, end);
        } while (start == 0 && end == 0);
        if (std::feof(file)) {
            break;
        }
        SubtitleEntry* entry = static_cast<SubtitleEntry*>(CustomAlloc(static_cast<unsigned>(sizeof(SubtitleEntry))));
        entry->startTime = 0;
        entry->endTime = 0;
        entry->text_08 = nullptr;
        char* text = static_cast<char*>(CustomAlloc(0x100u));
        entry->startTime = start;
        entry->endTime = end;
        std::fgets(line, 256, file);
        std::strcpy(text, line);
        while (std::fgets(line, 256, file) != nullptr) {
            if (std::strcmp(line, "\r\n") == 0 || std::strcmp(line, "\n") == 0) {
                break;
            }
            if (std::strlen(line) + std::strlen(text) > 0xFE) {
                continue;
            }
            std::strcat(text, line);
        }
        entry->text_08 = text;
        PushSubtitle(g_SubtitlesQueue, entry);
    }
    return std::fclose(file);
}
