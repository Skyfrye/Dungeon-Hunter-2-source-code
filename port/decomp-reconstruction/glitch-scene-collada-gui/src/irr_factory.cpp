#include "glitch-scene-collada-gui/irr_factory.hpp"

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/file_system.hpp"
#include "glitch-scene-collada-gui/gui/CGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

namespace glitch {

CIrrFactory* CIrrFactory::s_instance = nullptr;

// 0x533e98 _ZN6glitch11CIrrFactoryC2Ev
// 0x533ecc _ZN6glitch11CIrrFactoryC1Ev
CIrrFactory::CIrrFactory() {
    s_instance = this;
}

// 0x533fb0 _ZN6glitch11CIrrFactory16createFileSystemEv
// operator new(0x2c) with memory hint 0, the CFileSystem constructor, then the intrusive_ptr stores the pointer
// and raises the count the constructor left at 0 to 1 (the take-over form). The object is the port's
// glitch::io::CFileSystem (0x2c bytes, constructor 0x56c0a8, both reconstructed in glitch-core-io).
boost::intrusive_ptr<io::IFileSystem> CIrrFactory::createFileSystem() {
    return boost::intrusive_ptr<io::IFileSystem>(new io::CFileSystem(), true);  // the constructor leaves 0; the take-over raises it to 1
}

// 0x533f60 _ZN6glitch11CIrrFactory18createSceneManagerEPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_3gui14ICursorControlEPNSB_15IGUIEnvironmentE
// operator new(0x294) with memory hint 0 and CSceneManager's constructor; the mesh cache argument is the null
// literal in the listing. The new object is returned as-is (no count is touched).
scene::CSceneManager* CIrrFactory::createSceneManager(video::IVideoDriver* driver,
                                                      const boost::intrusive_ptr<io::IFileSystem>& fileSystem,
                                                      gui::ICursorControl* cursorControl,
                                                      gui::IGUIEnvironment* guiEnvironment) {
    return new scene::CSceneManager(driver, fileSystem, cursorControl, nullptr, guiEnvironment);
}

// 0x533f28 _ZN6glitch11CIrrFactory20createGUIEnvironmentERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEPNS_5video12IVideoDriverEPNS_11IOSOperatorE
// operator new(0x1d8) with memory hint 0 and CGUIEnvironment's constructor; the new object is returned as-is.
gui::IGUIEnvironment* CIrrFactory::createGUIEnvironment(const boost::intrusive_ptr<io::IFileSystem>& fileSystem,
                                                        video::IVideoDriver* driver, IOSOperator* osOperator) {
    return new gui::CGUIEnvironment(fileSystem, driver, osOperator);
}

// 0x533fe8 _ZN6glitch11CIrrFactory11getInstanceEv
CIrrFactory* CIrrFactory::getInstance() {
    if (s_instance != nullptr) {
        return s_instance;
    }
    // The function-local object is constructed once, and its constructor sets s_instance.
    static CIrrFactory instance;
    return &instance;
}

}  // namespace glitch
