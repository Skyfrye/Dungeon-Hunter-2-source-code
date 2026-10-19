// Batch g1-game-world-pack1-bc81ef-0 (part 1 of 1), main file: the Dummy and Floor overrides and destructors, and the
// IrrFactory destructors and creators. Declarations come from dh2/Dummy.hpp, dh2/Floor.hpp and dh2/IrrFactory.hpp.
//
// Companion: g1-game-world-pack1-bc81ef-0_material.cpp holds MaterialData::setMaterial (0x7d4a08). It is split off because
// dh2/SceneManager.hpp (needed by IrrFactory::createSceneManager) reaches glitch-core-io's deps/glitch_core_objects.hpp,
// which defines glitch::video::CMaterial and CMaterialRenderer again. The canonical glitch-video definitions that
// setMaterial needs cannot be included in the same translation unit.
//
// Partial functions and what is missing:
//   - IrrFactory::createFileSystem (0x350aec): the original allocates a FileSystemWin32 (0x540 bytes), runs its
//     constructor and returns it counted as glitch::io::IFileSystem. core-platform/include/core-platform/filesystem_win32.hpp
//     declares FileSystemWin32 with no base class, so the object cannot be held by boost::intrusive_ptr<IFileSystem>. The
//     port returns a null pointer and does not run the FileSystemWin32 constructor (which resolves the root, resources,
//     data and savefile paths). LAYOUT REQUEST: FileSystemWin32 base glitch::io::IFileSystem (vptr +0x00, IReferenceCounted
//     referenceCounter +0x04, set by the original createFileSystem after the constructor).
//   - Floor::InitPost (0x3886b4): the body is complete, but VisualObject +0x08 is declared RootSceneNode* in
//     dh2/VisualObject.hpp. The original passes that pointer to GetNodePolyCount as glitch::scene::ISceneNode*, and the
//     port's glitch::collada::CRootSceneNode has no base class, so the call uses reinterpret_cast. LAYOUT REQUEST: VisualObject
//     +0x08 is ISceneNode* (the original's view, 0x3886b4), or RootSceneNode derives from ISceneNode in the engine header.
//
// Deleting destructors (D0) are not defined here. The compiler generates them from the virtual destructors, and each is
// the complete destructor followed by operator delete (CustomFree in the original). Their addresses are listed below
// the D1 bodies.

#include "core-platform/filesystem_win32.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Dummy.hpp"
#include "dh2/Floor.hpp"
#include "dh2/IrrFactory.hpp"

#include "dh2/GameObject.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/interfaces.hpp"

// ---------------------------------------------------------------------------------------------------------------------
// Dummy
// ---------------------------------------------------------------------------------------------------------------------

// 0x340134 Dummy::IsUpdatable() const
bool Dummy::IsUpdatable() const { return false; }

// 0x34013c Dummy::IsZonable() const
bool Dummy::IsZonable() const { return false; }

// 0x340144 Dummy::IsAnimated() const
bool Dummy::IsAnimated() const { return false; }

// 0x34014c Dummy::IsInteractive(GameObject*) const. The GameObject argument is not read.
bool Dummy::IsInteractive(GameObject*) const { return false; }

// 0x3410a4 _ZN5DummyC1EN10ObjectBase6GO_IDSE
// Inlined into GetNewInstance<Dummy> (0x3410a4), so the binary has no standalone Dummy constructor symbol. The asm runs
// GameObject::GameObject(GO_IDS 20) (MOV R1,#0x14 before the BL), stores the primary vptr at +0x00, the third at +0x04
// and the second at +0x24, and sets m_static (+0x84) to 1; Dummy has no members of its own. The vptr stores and the
// base call are what the C++ constructor emits, so the body is the single flag store.
Dummy::Dummy(GO_IDS id) : GameObject(id) {
    m_static = true;  // ObjectBase +0x84
}

// 0x341184 Dummy::~Dummy() (D1, complete-object destructor). The original stores the Dummy vtables at +0x00, +0x04 and
// +0x24 and then runs GameObject::~GameObject. The compiler emits the same vptr stores and base destructor call.
Dummy::~Dummy() {}

// 0x341960 Dummy::~Dummy() (D0) is compiler-generated: `delete` runs the destructor above and then CustomFree(this).
// skipped: no body is written here.

// ---------------------------------------------------------------------------------------------------------------------
// Floor
// ---------------------------------------------------------------------------------------------------------------------

// 0x3883e4 Floor::IsUpdatable() const
bool Floor::IsUpdatable() const { return false; }

// 0x3883ec Floor::IsZonable() const
bool Floor::IsZonable() const { return false; }

// 0x34104c _ZN5FloorC1EN10ObjectBase6GO_IDSE
// Inlined into GetNewInstance<Floor> (0x34104c), so the binary has no standalone Floor constructor symbol. The asm runs
// GameObject::GameObject(GO_IDS 20) (MOV R1,#0x14 before the BL), stores the primary vptr at +0x00, the third at +0x04
// and the second at +0x24 (STM R4,{R1,R3} plus the STR at +0x24), and sets m_static (+0x84) to 1; Floor has no members
// of its own. The vptr stores and the base call are what the C++ constructor emits.
Floor::Floor(GO_IDS id) : GameObject(id) {
    m_static = true;  // ObjectBase +0x84
}

// 0x388470 Floor::~Floor() (D1, complete-object destructor). Same shape as Dummy::~Dummy: vtable stores, then
// GameObject::~GameObject. The compiler emits the vptr stores and the base destructor call.
Floor::~Floor() {}

// 0x388e10 Floor::~Floor() (D0) is compiler-generated: the D1 body above, then CustomFree(this). skipped: no body.

// 0x3886b4 Floor::InitPost()
//
// Hex-Rays returns an int: the polygon count of the visual's node when there is a visual, else 0. The GameObject slot
// (+0x1c) is void, so the override is void too and the count is computed and dropped. No caller reads a result from
// that slot. The polygon count (GetNodePolyCount with children) is still computed, as in the original.
void Floor::InitPost() {
    GameObject::InitPost();   // non-virtual call of the base InitPost
    SetVisible(false);        // +0x40 virtual slot: GameObject::SetVisible, the Floor does not override it
    if (m_visualObject) {     // +0x2d8
        m_visualObject->ApplyMeshBox();
        m_visualObject->SetVisible(false);
        GetNodePolyCount(m_visualObject->m_node, true);   // VisualObject +0x08
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// IrrFactory
// ---------------------------------------------------------------------------------------------------------------------

// 0x350a4c IrrFactory::~IrrFactory() (D1, complete-object destructor). The original stores the IrrFactory vtable and runs
// glitch::CIrrFactory::~CIrrFactory. The compiler emits both.
IrrFactory::~IrrFactory() {}

// 0x9a1eec IrrFactory::s_factory: constructed by the file's static initialiser (0x350b24, CIrrFactory::CIrrFactory then the IrrFactory vtable, atexit
// registers ~IrrFactory). Without it glitch::CIrrFactory::getInstance() fell back to the engine's own factory and the device got a 0x2c CFileSystem
// instead of the game's FileSystemWin32 (first boot: DebugSwitches::load called a FileSystemWin32 vtable slot on it).
IrrFactory IrrFactory::s_factory;

// 0x350c40 IrrFactory::~IrrFactory() (D0) is compiler-generated: the D1 body above, then CustomFree(this). skipped: no body.

// 0x350aec IrrFactory::createFileSystem()
// Allocates a FileSystemWin32 (0x540 bytes), runs its constructor (the path setup) and returns it counted as glitch::io::IFileSystem:
// the pointer takes one more use after the constructor, as the original's raw count increment does.
boost::intrusive_ptr<glitch::io::IFileSystem> IrrFactory::createFileSystem() {
    FileSystemWin32* fileSystem = new FileSystemWin32();
    return boost::intrusive_ptr<glitch::io::IFileSystem>(fileSystem, true);
}

// 0x350a80 IrrFactory::createSceneManager(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::io::IFileSystem> const&,
//                                         glitch::gui::ICursorControl*, glitch::gui::IGUIEnvironment*)
//
// The original takes a counted copy of the file system for the call (operator new of 0x494 bytes, then the SceneManager
// constructor, then the release of the copy). The SceneManager constructor takes its file system by value, so passing
// fileSystem does the same add before the call and release after it. The original does not check operator new for null.
SceneManager* IrrFactory::createSceneManager(glitch::video::IVideoDriver* driver,
                                             const boost::intrusive_ptr<glitch::io::IFileSystem>& fileSystem,
                                             glitch::gui::ICursorControl* cursor,
                                             glitch::gui::IGUIEnvironment* gui) {
    return new SceneManager(driver, fileSystem, cursor, gui);
}
