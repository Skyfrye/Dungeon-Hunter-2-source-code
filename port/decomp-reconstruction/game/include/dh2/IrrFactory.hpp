// IrrFactory: the game's factory for the glitch engine objects. It derives from the engine singleton
// glitch::CIrrFactory and overrides the file-system and scene-manager creators. It declares no data of its own.
// The engine header now declares the three factory virtuals, so the two creators below are overrides and are
// marked as such.
//
// createSceneManager narrows the base's glitch::scene::CSceneManager* to the game's ::SceneManager*, which is
// legal covariant return because SceneManager : public glitch::scene::CSceneManager (dh2/SceneManager.hpp).
// That needs the COMPLETE SceneManager type here, hence the include below rather than the old forward
// declaration - the compiler cannot prove the inheritance from an incomplete type, and the engine header's own
// return type is what the override is checked against.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x350a4c, 0x350c40; createFileSystem 0x350aec;
// createSceneManager 0x350a80). The IrrFactory constructor is not in the queue, so it is not declared.
#pragma once

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/irr_factory.hpp"
#include "dh2/SceneManager.hpp"

namespace glitch {
namespace video {
class IVideoDriver;
}  // namespace video
namespace io {
class IFileSystem;
}  // namespace io
namespace gui {
class ICursorControl;
class IGUIEnvironment;
}  // namespace gui
}  // namespace glitch

class IrrFactory : public glitch::CIrrFactory {
public:
    ~IrrFactory() override;                                         // slot +0x00 0x350a4c (D1), slot +0x04 0x350c40 (D0): reset the vptr, then the base dtor

    // IrrFactory's own vtable slots, in vtable order. Slot +0x10 is glitch::CIrrFactory::createGUIEnvironment,
    // inherited and not redeclared.
    virtual boost::intrusive_ptr<glitch::io::IFileSystem> createFileSystem();                   // slot +0x08 0x350aec: new FileSystemWin32, returned counted
    virtual SceneManager* createSceneManager(glitch::video::IVideoDriver* driver,               // slot +0x0c 0x350a80: new SceneManager, 0x494 bytes
                                             const boost::intrusive_ptr<glitch::io::IFileSystem>& fileSystem,
                                             glitch::gui::ICursorControl* cursor,
                                             glitch::gui::IGUIEnvironment* gui);

    // _ZN10IrrFactory9s_factoryE (0x9a1eec): the object whose static initialiser (_GLOBAL__I_IrrFactory.cpp 0x350b24) runs the CIrrFactory constructor,
    // which publishes it as the engine's factory instance, so glitch::IDevice creates the game's FileSystemWin32 and SceneManager.
    static IrrFactory s_factory;
};
