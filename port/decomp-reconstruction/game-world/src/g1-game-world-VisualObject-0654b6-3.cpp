// Batch g1-game-world-VisualObject-0654b6-3: the category-name overload of the modular module lookup.
// The declaration comes from dh2/VisualObject.hpp (already present); no member or declaration was added.

#include "dh2/VisualObject.hpp"

// 0x474654 _ZNK12VisualObject18GetModularModuleIdEPKcS1_
// Resolves the category name to its id with GetModularCategoryId (-1 without a modular node), then forwards
// the module name to GetModularModuleId(int, const char*). The original ends in a tail branch (B) to that
// overload after passing this, the category id and the module name through (r0, r1, r2); no other work is done.
int VisualObject::GetModularModuleId(const char* category, const char* module) const {
    return GetModularModuleId(GetModularCategoryId(category), module);
}
