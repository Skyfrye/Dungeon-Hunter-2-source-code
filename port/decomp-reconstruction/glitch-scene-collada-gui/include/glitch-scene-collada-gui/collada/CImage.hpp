// glitch::collada::CImage: the image object CRootSceneNode::getImage hands out (a named, reference-counted wrapper of one image record of
// a COLLADA file). Canonical header of the scene-owner wave. It replaces tb/glitch_collada_CImage.hpp (a class with a plain count and
// no vtable) and recon_11's CImageStandIn.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x60e1d4, destructors 0x619728 (D1) and 0x6202f8 (D0, skipped);
// tools/decomp_vtable.py glitch::collada::CImage: the two destructors and IReferenceCounted::onDelete, no virtual base):
//   Derives from glitch::IReferenceCounted (+0x00 vptr, +0x04 the count, 1 after construction), through IObject, which adds
//   +0x08 the name (the empty-string constant, then the record's name)
//   then +0x0c CColladaDatabase (record, factory), +0x14 the loaded image (a use is held; SImage +0x10), +0x18 the SImage record.
#pragma once

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

namespace glitch::collada {

class CImage : public glitch::IReferenceCounted {
public:
    // 0x60e1d4: the database copied (a use on the record), the name taken from the record, the loaded image taken (a use).
    CImage(const CColladaDatabase& database, SImage& image);
    // 0x619728 (D1), 0x6202f8 (D0, skipped): drops the loaded image and the database handle.
    ~CImage() override;

    const char* name = "";                                      // +0x08
    CColladaDatabase database;                                  // +0x0c
    boost::intrusive_ptr<glitch::IReferenceCounted> imageData;  // +0x14
    SImage* image = nullptr;                                    // +0x18
};

}  // namespace glitch::collada
