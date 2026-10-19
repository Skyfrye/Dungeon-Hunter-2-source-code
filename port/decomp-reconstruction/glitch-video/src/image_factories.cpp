// Constructors and factories of the image loaders and writers. Each C1/C2
// pair shares one definition, and the body only sets the reference word (+0x04)
// to 1, which the base or the class member initialiser provides.
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/texture_loaders.hpp"

namespace glitch::video {

// 0x604268 _ZN6glitch5video15CImageLoaderDDSC2Ev  (C2)
// 0x604294 _ZN6glitch5video15CImageLoaderDDSC1Ev  (C1, same body)
CImageLoaderDDS::CImageLoaderDDS() = default;

// 0x604a7c _ZN6glitch5video15CImageLoaderJPGC2Ev  (C2)
// 0x604aa8 _ZN6glitch5video15CImageLoaderJPGC1Ev  (C1, same body)
CImageLoaderJPG::CImageLoaderJPG() = default;

// 0x605740 _ZN6glitch5video15CImageLoaderPVRC2Ev  (C2)
// 0x60576c _ZN6glitch5video15CImageLoaderPVRC1Ev  (C1, same body)
CImageLoaderPVR::CImageLoaderPVR() = default;

// 0x606990 _ZN6glitch5video15CImageWriterJPGC2Ev  (C2)
// 0x6069bc _ZN6glitch5video15CImageWriterJPGC1Ev  (C1, same body)
CImageWriterJPG::CImageWriterJPG() = default;

// 0x606d30 _ZN6glitch5video15CImageWriterPNGC2Ev  (C2)
// 0x606d5c _ZN6glitch5video15CImageWriterPNGC1Ev  (C1, same body)
CImageWriterPNG::CImageWriterPNG() = default;

// 0x603480 _ZN6glitch5video20createImageLoaderBMPEv
CImageLoaderBMP* createImageLoaderBMP() { return new CImageLoaderBMP(); }

// 0x604344 _ZN6glitch5video20createImageLoaderDDSEv
CImageLoaderDDS* createImageLoaderDDS() { return new CImageLoaderDDS(); }

// 0x604bc0 _ZN6glitch5video20createImageLoaderJPGEv
CImageLoaderJPG* createImageLoaderJPG() { return new CImageLoaderJPG(); }

// 0x6057c0 _ZN6glitch5video20createImageLoaderPVREv
CImageLoaderPVR* createImageLoaderPVR() { return new CImageLoaderPVR(); }

// 0x606d10 _ZN6glitch5video20createImageWriterJPGEv
CImageWriterJPG* createImageWriterJPG() { return new CImageWriterJPG(); }

// 0x6072c0 _ZN6glitch5video20createImageWriterPNGEv
CImageWriterPNG* createImageWriterPNG() { return new CImageWriterPNG(); }

// 0x60762c _ZN6glitch5video20createImageWriterTGAEv
CImageWriterTGA* createImageWriterTGA() { return new CImageWriterTGA(); }

// 0x602dc4 _ZN6glitch5video20createImageLoaderATCEv
CImageLoaderATC* createImageLoaderATC() { return new CImageLoaderATC(); }

// 0x60500c _ZN6glitch5video20createImageLoaderPNGEv
CImageLoaderPng* createImageLoaderPNG() { return new CImageLoaderPng(); }

// 0x60632c _ZN6glitch5video20createImageLoaderTGAEv
CImageLoaderTGA* createImageLoaderTGA() { return new CImageLoaderTGA(); }

}  // namespace glitch::video
