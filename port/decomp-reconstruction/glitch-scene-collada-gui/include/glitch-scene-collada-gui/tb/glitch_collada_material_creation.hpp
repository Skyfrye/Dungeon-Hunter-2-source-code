// glitch::collada free functions of the material creation path, declared for Track B batch
// e1-glitch-scene-collada-gui-glitch_collada-0. glitch::collada is a namespace here, not a class, so
// there is no owner class header. Only getStringsInternal is declared; createMaterial and the two
// createMaterialRendererForProfile templates are not reconstructed yet (see the source file).
#pragma once

namespace glitch::collada {

// 0x667c38 _ZN6glitch7collada18getStringsInternalEPNS0_18ISceneNodeAnimator20E_INTERPOLATION_MODEE
// The original takes an E_INTERPOLATION_MODE* that its body never reads. The argument is omitted
// here because ISceneNodeAnimator::E_INTERPOLATION_MODE is not mapped in this category yet.
char** getStringsInternal();

}  // namespace glitch::collada
