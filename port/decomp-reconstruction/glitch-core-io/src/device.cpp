#include "glitch-core-io/os/device.hpp"

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/os/CLogger.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-scene-collada-gui/irr_factory.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-core-io/os/ctimer.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/recon/slice_24.hpp"

#include <cstring>
#include <string>

namespace glitch {

// 0x672040 _ZN6glitch7IDeviceC1ERKNS_19SCreationParametersE (C2 at 0x67228c is the same body)
// Re-read from the listing: the original zeroes +0x10..+0x24, stores the vtable and the count 1,
// copies the word at parameters +0x28 into +0x28 (the event receiver - the port's memcpy of the
// 0x58-byte block covers it, which is what the old note asked for), clears the logger at +0x2c,
// builds the CVideoModeList at +0x3c, then allocates and constructs the collada resource manager
// (+0x08), the animation streaming manager (+0x0c) and the timer (+0x20), attaches
// glitch::os::Printer::Logger (adding it a use and passing the receiver to CLogger::setReceiver),
// stores the logger into the Printer global, takes the file system from the CIrrFactory instance
// (+0x34), logs the "Glitch Engine version " + "0.1.0.2" text at ELL_INFORMATION and runs
// checkVersion on the parameters string at +0x3c.
// Host form of the 32-bit parameter block: the two address words (the receiver at +0x28, the compiled-version text at +0x3c) are the
// host-width members eventReceiver and version next to the block, so the whole listing is written. Order as in the listing: the block copy,
// glitch::init(), the resource manager (+0x08, which publishes CResFileManager::Inst), the animation streaming manager (+0x0c, which publishes
// its Instance), the timer (+0x20) with initTimer, the logger attachment, the file system (+0x34) from the CIrrFactory instance, the log line,
// checkVersion. (First-boot fix: the earlier body only copied the block, so CResFileManager::Inst was null when Application::Init ran.)
IDevice::IDevice(const SCreationParameters& parameters) {
    std::memcpy(creationParameters.bytes, parameters.bytes, sizeof(creationParameters.bytes));
    creationParameters.eventReceiver = parameters.eventReceiver;  // the two address words of the block are host-width members
    creationParameters.version = parameters.version;
    eventReceiver = parameters.eventReceiver;  // +0x28 (a1[10] = parameters +0x28)

    glitch::init();
    resFileManager = new collada::CResFileManager(this);                // operator new(0x2c), +0x08
    animationStreamingManager = new collada::CAnimationStreamingManager();  // operator new(0x20), +0x0c
    timer = new CTimer();                                               // operator new(8): vptr and count
    os::Timer::initTimer();
    if (os::Printer::Logger != nullptr) {
        ++os::Printer::Logger->referenceCounter;  // +0x04
        logger = os::Printer::Logger;                                       // +0x2c
        reinterpret_cast<CLogger*>(logger)->setReceiver(eventReceiver);
    }
    os::Printer::Logger = reinterpret_cast<ILogger*>(logger);

    boost::intrusive_ptr<io::IFileSystem> files = CIrrFactory::getInstance()->createFileSystem();
    io::IFileSystem* previous = fileSystem;
    fileSystem = files.get();
    if (fileSystem != nullptr) ++fileSystem->referenceCounter;
    if (previous != nullptr) previous->drop();

    std::string banner = "Glitch Engine version ";
    banner += "0.1.0.2";
    os::Printer::log(banner.c_str(), os::ELL_INFORMATION);
    if (parameters.version != nullptr) checkVersion(parameters.version);
}

// 0x67169c _ZN6glitch7IDeviceD2Ev. Releases in the listing's order: the scene manager (+0x1c), the resource file manager (+0x08), the
// animation streaming manager (+0x0c, freed as an object), the GUI environment (+0x18), the 2D driver (+0x14), the video driver (+0x10),
// the input-receiving scene manager (+0x38), the cursor control (+0x24), the operator (+0x30), the timer (+0x20), glitch::exit(), the logger
// (+0x2c; the global Printer::Logger is cleared when that drop deletes it), then the file system (+0x34).
// Deviations: (1) the timer is `delete`d instead of dropped: the constructor makes it with a single use and the port's CTimer has no count
// word, so the drop of the original always deletes it; (2) the listing's event-deque and video-mode-list teardown runs after the body (as
// the members' destructors), so their storage is freed after the file system instead of before it. Neither is observable here.
IDevice::~IDevice() {
    // The scene manager object is a CSceneManager (see createGUIAndScene); the port's ISceneManager has no class of its own.
    if (sceneManager != nullptr) reinterpret_cast<scene::CSceneManager*>(sceneManager)->drop();
    // CResFileManager is not an IReferenceCounted in the port: its count is the refCount word at +0x04 (set to 1 by its constructor), so the
    // drop is the same decrement, and the last use deletes it (the listing's drop does the same).
    if (resFileManager != nullptr && --resFileManager->refCount == 0) delete resFileManager;
    delete animationStreamingManager;
    if (guiEnvironment != nullptr) guiEnvironment->drop();
    if (unk_14 != nullptr) reinterpret_cast<IReferenceCounted*>(unk_14)->drop();
    if (videoDriver != nullptr) videoDriver->drop();
    if (inputReceivingSceneManager != nullptr) inputReceivingSceneManager->drop();
    if (unk_24 != nullptr) reinterpret_cast<IReferenceCounted*>(unk_24)->drop();
    if (unk_30 != nullptr) reinterpret_cast<IReferenceCounted*>(unk_30)->drop();
    unk_24 = nullptr;
    delete timer;
    glitch::exit();
    if (logger != nullptr && reinterpret_cast<ILogger*>(logger)->drop()) os::Printer::Logger = nullptr;
    if (fileSystem != nullptr) fileSystem->drop();
}

// 0x67142c _ZN6glitch7IDevice15isExitRequestedEv
bool IDevice::isExitRequested() {
    return false;
}

// 0x671438 _ZN6glitch7IDevice16setScreenCaptureEb
void IDevice::setScreenCapture(bool /*enable*/) {}

// 0x67143c _ZN6glitch7IDevice16getVideoModeListEv
video::CVideoModeList* IDevice::getVideoModeList() {
    return &videoModeList;
}

// 0x671494 _ZNK6glitch7IDevice12isFullscreenEv
// The flag is byte 0x0e of the creation parameters (original +0x6a).
bool IDevice::isFullscreen() const {
    return creationParameters.bytes[0x0e] != 0;
}

// 0x67149c _ZNK6glitch7IDevice14getColorFormatEv
int IDevice::getColorFormat() const {
    return 5;
}

// 0x6714c8 _ZN6glitch7IDevice16setEventReceiverEPNS_14IEventReceiverE
// Stores the receiver (+0x28); a logger attached at +0x2c is handed it (CLogger::setReceiver 0x6a093c); the GUI environment at
// +0x18 is handed it too (vtable +0x34, IGUIEnvironment::setUserEventReceiver). The original returns the last call's value; the
// declared result is void.
void IDevice::setEventReceiver(IEventReceiver* receiver) {
    eventReceiver = receiver;
    if (logger != nullptr) reinterpret_cast<CLogger*>(logger)->setReceiver(receiver);
    if (guiEnvironment != nullptr) guiEnvironment->setUserEventReceiver(receiver);
}

// 0x671444 _ZN6glitch7IDevice29setInputReceivingSceneManagerEPNS_5scene13CSceneManagerE
// The previous manager (+0x38) is dropped first, the new one is stored and gets a use (both through its IReferenceCounted base).
void IDevice::setInputReceivingSceneManager(scene::CSceneManager* manager) {
    if (inputReceivingSceneManager != nullptr) inputReceivingSceneManager->drop();
    inputReceivingSceneManager = manager;
    if (manager != nullptr) ++manager->referenceCounter;
}

// 0x671554 _ZN6glitch7IDevice17createGUIAndSceneEv
// With a video driver (+0x10) a C2DDriver is made over it (+0x14). The GUI environment (+0x18) comes from the CIrrFactory instance's
// createGUIEnvironment(file system (+0x34), driver, OS operator (+0x30)); the scene manager (+0x1c) from its createSceneManager(driver,
// file system, cursor control (+0x24), the GUI environment); then the event receiver (+0x28) is passed to setEventReceiver.
void IDevice::createGUIAndScene() {
    if (videoDriver != nullptr) unk_14 = new video::C2DDriver(videoDriver);
    CIrrFactory* factory = CIrrFactory::getInstance();
    boost::intrusive_ptr<io::IFileSystem> files(fileSystem, true);
    guiEnvironment = factory->createGUIEnvironment(files, videoDriver, static_cast<IOSOperator*>(unk_30));
    factory = CIrrFactory::getInstance();
    // (the port declares the +0x1c member as the opaque scene::ISceneManager; the object is the CSceneManager the factory made)
    sceneManager = reinterpret_cast<scene::ISceneManager*>(
        factory->createSceneManager(videoDriver, files, static_cast<gui::ICursorControl*>(unk_24), guiEnvironment));
    setEventReceiver(eventReceiver);
}

// 0x671a00 _ZN6glitch7IDevice17postEventFromUserERKNS_6SEventEb
// Queued: the event is appended to the deque (+0xb4) and the answer is true. Otherwise the event receiver's onEvent (vtable +0x08) is tried,
// and when there is none or it did not consume the event the GUI environment's postEventFromUser (vtable +0x30; false without one). The
// scene manager that gets the event is the input-receiving one (+0x38), or else the device's own (+0x1c); it is asked only when
// nothing consumed the event so far, and only when there is one.
bool IDevice::postEventFromUser(const SEvent& event, bool queued) {
    if (queued) {
        eventQueue.push_back(event);
        return true;
    }
    bool handled = false;
    if (eventReceiver == nullptr || !(handled = eventReceiver->onEvent(event))) {
        handled = guiEnvironment != nullptr ? guiEnvironment->postEventFromUser(event) : false;
    }
    scene::CSceneManager* receiver = inputReceivingSceneManager;
    if (receiver == nullptr) receiver = reinterpret_cast<scene::CSceneManager*>(sceneManager);
    if (handled || receiver == nullptr) return handled;
    return receiver->postEventFromUser(event);
}

// 0x671aec _ZN6glitch7IDevice22postMouseEventFromUserERNS_6SEventEb
// The window origin is the screen framebuffer's offset (the first render target of the video driver, +0x24 and +0x28 of it): X (+0x08) and
// Y (+0x0c) of the mouse payload lose it before the event is posted.
bool IDevice::postMouseEventFromUser(SEvent& event, bool queued) {
    const auto* screen = static_cast<const video::IVideoDriver::IFramebuffer*>(videoDriver->m_renderTargets[0].get());
    event.MouseInput.X -= screen->m_screenX;
    event.MouseInput.Y -= screen->m_screenY;
    return postEventFromUser(event, queued);
}

// 0x671b24 _ZN6glitch7IDevice3runEv
// Every queued event is taken from the front of the deque and posted immediately (not queued); then the device's own step (vtable +0x40)
// answers.
bool IDevice::run() {
    while (!eventQueue.empty()) {
        const SEvent event = eventQueue.front();
        eventQueue.pop_front();
        postEventFromUser(event, false);
    }
    return runImpl() != 0;
}

// 0x671e84 _ZN6glitch7IDevice12checkVersionEPKc
// The library version is "0.1.0.2". A mismatch logs one warning line (the original builds the
// message through std::string appends and logs it through Printer::log at warning level).
bool IDevice::checkVersion(const char* compiledVersion) {
    static const char kLibraryVersion[] = "0.1.0.2";
    if (std::strcmp(kLibraryVersion, compiledVersion) == 0) return true;
    std::string message = "Warning: The library version of the Glitch Engine (";
    message += kLibraryVersion;
    message += ") does not match the version the application was compiled with (";
    message += compiledVersion;
    message += "). This may cause problems.";
    os::Printer::log(message.c_str(), os::ELL_WARNING);
    return false;
}

}  // namespace glitch
