#include "glitch-core-io/collada_binary_file_loader.hpp"

namespace glitch::scene {

// 0x6b9310 _ZN6glitch5scene24CColladaBinaryFileLoaderC2EPNS0_13CSceneManagerERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
// 0x6b9360 _ZN6glitch5scene24CColladaBinaryFileLoaderC1EPNS0_13CSceneManagerERKN5boost13intrusive_ptrINS_2io11IFileSystemEEE
CColladaBinaryFileLoader::CColladaBinaryFileLoader(CSceneManager* manager,
                                                   const boost::intrusive_ptr<glitch::io::IFileSystem>& fs)
    : sceneManager(manager), fileSystem(fs) {}

}  // namespace glitch::scene
