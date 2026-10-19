// Bodies of glitch::collada::CImage (canonical class: collada/CImage.hpp). This file replaces src/tb_scene-collada-gui-glitch_collada_CImage-0.cpp
// and the CImage destructor stand-in of recon/v2/wave_10.cpp.
#include "glitch-scene-collada-gui/collada/CImage.hpp"

namespace glitch::collada {

// 0x60e1d4 _ZN6glitch7collada6CImageC1ERKNS0_16CColladaDatabaseERNS0_6SImageE
// The database is copied (a use on the record), the image record stored, the name taken from it (the count starts at 1), and the loaded
// image of the record (SImage +0x10) taken with a use.
CImage::CImage(const CColladaDatabase& source, SImage& sourceImage) {
    copyDatabase(database, source);
    image = &sourceImage;
    name = sourceImage.name;
    if (sourceImage.imageData != nullptr) {
        imageData = boost::intrusive_ptr<glitch::IReferenceCounted>(sourceImage.imageData, true);
    }
}

// 0x619728 _ZN6glitch7collada6CImageD1Ev (D0 0x6202f8 skipped)
// Drops the loaded image, then the database handle.
CImage::~CImage() {
    imageData.reset();
    dropDatabase(database);
}

}  // namespace glitch::collada
