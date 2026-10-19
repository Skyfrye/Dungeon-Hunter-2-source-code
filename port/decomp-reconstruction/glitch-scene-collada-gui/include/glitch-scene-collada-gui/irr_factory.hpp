// glitch::CIrrFactory: the singleton that creates the file system, the scene manager and the GUI
// environment. Its constructor publishes the object through the static s_instance
// pointer, and getInstance returns that pointer, creating a function-local instance
// on first use.
#pragma once

namespace boost {
template <typename T>
class intrusive_ptr;
}

namespace glitch {

class IOSOperator;
namespace io {
class IFileSystem;
}
namespace video {
class IVideoDriver;
}
namespace gui {
class ICursorControl;
class IGUIEnvironment;
}
namespace scene {
class CSceneManager;
}

class CIrrFactory {
public:
    // 0x533e98 _ZN6glitch11CIrrFactoryC2Ev
    // 0x533ecc _ZN6glitch11CIrrFactoryC1Ev
    CIrrFactory();
    // 0x533f00 _ZN6glitch11CIrrFactoryD2Ev (empty)
    // 0x533f04 _ZN6glitch11CIrrFactoryD1Ev (empty); D0 0x534090 is the deleting thunk.
    virtual ~CIrrFactory() = default;

    // Virtual slot order from _ZTVN6glitch11CIrrFactoryE (0x96cb78, offset-to-top and RTTI first): +0x08 D1,
    // +0x0c D0, +0x10 createFileSystem, +0x14 createSceneManager, +0x18 createGUIEnvironment. The three
    // factories are the first three virtuals, in this order.
    // 0x533fb0. Verified against Hex-Rays 0x533fb0: operator new(0x2c) with memory hint 0, CFileSystem's
    // constructor, the pointer stored into the returned intrusive_ptr and the reference count raised from the 0
    // the constructor leaves to 1 (the take-over form). The return type is not part of the mangled symbol; the
    // device constructor (0x672040) stores this result in IDevice's file-system member and drops it as an
    // IReferenceCounted, so the pointee is the interface.
    virtual boost::intrusive_ptr<glitch::io::IFileSystem> createFileSystem();
    // 0x533f60. Verified against Hex-Rays 0x533f60: operator new(0x294) and CSceneManager's constructor with
    // (driver, file system, cursor control, mesh cache = nullptr, GUI environment). The return type is not part
    // of the mangled symbol; the port has no ISceneManager class (the binary has no such symbol or vtable), so
    // this returns the concrete CSceneManager - the only deviation on this row.
    virtual glitch::scene::CSceneManager* createSceneManager(
        glitch::video::IVideoDriver* driver, const boost::intrusive_ptr<glitch::io::IFileSystem>& fileSystem,
        glitch::gui::ICursorControl* cursorControl, glitch::gui::IGUIEnvironment* guiEnvironment);
    // 0x533f28. Verified against Hex-Rays 0x533f28 and its assembly (14 instructions): operator new(0x1d8) and
    // CGUIEnvironment's constructor with the three arguments, the new object returned as-is. The return type is
    // not part of the mangled symbol; IGUIEnvironment is the interface CGUIEnvironment implements.
    virtual glitch::gui::IGUIEnvironment* createGUIEnvironment(
        const boost::intrusive_ptr<glitch::io::IFileSystem>& fileSystem, glitch::video::IVideoDriver* driver,
        glitch::IOSOperator* osOperator);

    // 0x533fe8 _ZN6glitch11CIrrFactory11getInstanceEv
    static CIrrFactory* getInstance();

    // _ZN6glitch11CIrrFactory10s_instanceE: the object published by the constructor.
    static CIrrFactory* s_instance;
};

}  // namespace glitch
