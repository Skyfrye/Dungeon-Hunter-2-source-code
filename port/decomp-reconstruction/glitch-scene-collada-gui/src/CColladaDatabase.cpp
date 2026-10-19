// Track B batch e2-glitch-scene-collada-gui-glitch_collada_CColladaDatabase-056212-0 (part 1 of 1).
// Owner: glitch::collada::CColladaDatabase. Layouts (SAnimation +0x10, SChannel, SNode, SVisualScene,
// SLight +0x0c) are declared in collada_database.hpp; the member declarations for this batch are there too.
#include <cstring>
#include <string>
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada_database.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada_factory.hpp"





namespace glitch::collada {

// 0x61c0c8 glitch::collada::CColladaDatabase::getAnimation(char const*, glitch::collada::SChannel::Type, unsigned char) const
// Walks the animation table (count = tables().animations.size()). Each animation's channel record (SAnimation
// +0x10) is tested by kind: kind 9 and kind 5 accept channel types 5 and 9 by name; kinds 87..91 (0x57..0x5b,
// and 256) accept channel types 87..91 by name; kinds 1..4 accept channel types 1..4 by name; kind 0 and kinds
// 6..8 and the other kinds above 9 need the channel type and flag to equal the arguments and then compare
// the name. The name test is strcmp on the channel's name (+0x04). The original dereferences the channel
// unconditionally; a null channel is skipped here.
SAnimation* CColladaDatabase::getAnimation(const char* name, SChannel::Type type, std::uint8_t flag) const {
    const std::uint32_t kind = static_cast<std::uint32_t>(type);
    const std::uint32_t count = static_cast<std::uint32_t>(tables().animations.size());
    for (std::uint32_t i = 0; i < count; ++i) {
        SAnimation* animation = animationAt(tables(), static_cast<int>(i));
        const SChannel* channel = animation->channels;
        if (channel == nullptr || name == nullptr || channel->name == nullptr) {
            continue;
        }
        const std::uint32_t channelType = channel->type;
        const bool sameKindAndFlag = channelType == kind && channel->flag == flag;
        bool kindMatches;
        if (kind == 9) {
            kindMatches = channelType == 5 || channelType == 9;
        } else if (kind > 9) {
            if (kind >= 0x57 && (kind <= 0x5b || kind == 256)) {
                kindMatches = channelType - 87u <= 4u;
            } else {
                kindMatches = sameKindAndFlag;
            }
        } else if (kind == 0) {
            kindMatches = sameKindAndFlag;
        } else if (kind <= 4) {
            kindMatches = channelType - 1u <= 3u;
        } else if (kind == 5) {
            kindMatches = channelType == 5 || channelType == 9;
        } else {
            kindMatches = sameKindAndFlag;  // kinds 6..8
        }
        if (kindMatches && std::strcmp(channel->name, name) == 0) {
            return animation;
        }
    }
    return nullptr;
}

// 0x61c1e0 glitch::collada::CColladaDatabase::getBlendableAnimation(glitch::collada::SChannel const*) const
// Null channel gives null. Otherwise the lookup uses the channel's name (+0x04), type (+0x08) and flag (+0x0c).
SAnimation* CColladaDatabase::getBlendableAnimation(const SChannel* channel) const {
    if (channel == nullptr) {
        return nullptr;
    }
    return getAnimation(channel->name, static_cast<SChannel::Type>(channel->type), channel->flag);
}

// 0x61c214 glitch::collada::CColladaDatabase::getNode(char const*, glitch::collada::SNode&) const
// The node itself is returned when its name (+0x00) equals the lookup name. Otherwise its children (count
// +0x38, base +0x3c, stride 0x50) are searched in order, and the first match is returned. A node with a
// null name never matches here; the original would call strcmp on it.
SNode* CColladaDatabase::getNode(const char* name, SNode& node) const {
    if (node.id != nullptr && std::strcmp(node.id, name) == 0) {
        return &node;
    }
    for (std::uint32_t i = 0; i < node.childCount; ++i) {
        if (SNode* found = getNode(name, node.children[i])) {
            return found;
        }
    }
    return nullptr;
}

// 0x61c290 glitch::collada::CColladaDatabase::getNode(char const*) const
// Searches the top-level nodes of visual scene 0 (the index getter visualSceneAt returns null when there
// are no visual scenes). The nodes are searched in order with getNode(name, node).
SNode* CColladaDatabase::getNode(const char* name) const {
    const SVisualScene* scene = visualSceneAt(tables(), 0);
    if (scene == nullptr) {
        return nullptr;
    }
    for (std::uint32_t i = 0; i < scene->nodeCount; ++i) {
        if (SNode* found = getNode(name, scene->nodes[i])) {
            return found;
        }
    }
    return nullptr;
}

// 0x61c2f8 glitch::collada::CColladaDatabase::getDefaultValue(char const*, glitch::collada::SChannel::Type, void**, void*) const
// Every path that does not produce a value stores null into *out and returns false, as the original's LABEL_3 does. The value is the address
// of a field of a record found by name:
//   case 1..4   node translation (+0x0c)
//   case 5..9   node rotation (+0x18)
//   case 10, 11 node scale (+0x28)
//   case 12     scale word 1 (+0x2c)
//   case 13     scale word 2 (+0x30)
//   case 14     the weight of a morph controller, element *(unsigned char*)flag of the weights array (SMorph +0x1c)
//   case 16     light block (SLight +0x0c)
//   case 20     node bool word (+0x34)
// Kinds 0, 15, 17..26, 71..85 and 87..91 and the default give null. Case 86 (material parameters) logs "TODO - SetParam Default Values"
// (information) for each parameter of the material whose word at +0x04 equals *(int*)flag, or `Material "<name>" not found.` (warning)
// when the material is missing; it gives null in every case.
bool CColladaDatabase::getDefaultValue(const char* name, SChannel::Type type, void** out, void* flag) const {
    const std::uint32_t kind = static_cast<std::uint32_t>(type);
    const auto fail = [out]() {
        *out = nullptr;
        return false;
    };
    switch (kind) {
        case 0:
            // The original looks the node up here and discards it; the lookup has no side effect.
            return fail();
        case 1:
        case 2:
        case 3:
        case 4: {
            SNode* node = getNode(name);
            if (node == nullptr) {
                return fail();
            }
            *out = static_cast<void*>(node->translation);
            return true;
        }
        case 5:
        case 6:
        case 7:
        case 8:
        case 9: {
            SNode* node = getNode(name);
            if (node == nullptr) {
                return fail();
            }
            *out = static_cast<void*>(node->rotation);
            return true;
        }
        case 10:
        case 11: {
            SNode* node = getNode(name);
            if (node == nullptr) {
                return fail();
            }
            *out = static_cast<void*>(node->scale);
            return true;
        }
        case 12: {
            SNode* node = getNode(name);
            if (node == nullptr) {
                return fail();
            }
            *out = static_cast<void*>(&node->scale[1]);
            return true;
        }
        case 13: {
            SNode* node = getNode(name);
            if (node == nullptr) {
                return fail();
            }
            *out = static_cast<void*>(&node->scale[2]);
            return true;
        }
        case 14: {
            SController* controller = getController(tables(), name);
            if (controller == nullptr) {
                return fail();
            }
            const SMorph* morph = static_cast<const SMorph*>(controller->morph);
            *out = const_cast<float*>(morph->weights) + *static_cast<const std::uint8_t*>(flag);
            return true;
        }
        case 16: {
            SLight* light = getLight(tables(), name);
            if (light == nullptr) {
                return fail();
            }
            *out = static_cast<void*>(light->color);
            return true;
        }
        case 20: {
            SNode* node = getNode(name);
            if (node == nullptr) {
                return fail();
            }
            *out = static_cast<void*>(&node->unk_34);
            return true;
        }
        case 86: {
            const SMaterial* material = getMaterial(tables(), name);
            if (material != nullptr) {
                const std::int32_t key = *static_cast<const std::int32_t*>(flag);
                for (std::int32_t i = 0; i < material->paramCount; ++i) {
                    if (key == static_cast<std::int32_t>(material->params[i].reserved04)) {
                        os::Printer::log("TODO - SetParam Default Values", ELL_INFORMATION);
                    }
                }
            } else {
                const std::string message = std::string("Material \"") + name + "\" not found.";
                os::Printer::log(message.c_str(), ELL_WARNING);
            }
            return fail();
        }
        default:
            // Kinds 15, 17..26, 71..85 and 87..91 produce no value in the original.
            (void)flag;
            return fail();
    }
}

// 0x61c6bc glitch::collada::CColladaDatabase::getDefaultValue(glitch::collada::SChannel const*, void**) const
// Forwards the channel's name (+0x04), type (+0x08) and, as the flag pointer, its flag byte (+0x0c).
// A null channel gives null (the original would dereference it).
bool CColladaDatabase::getDefaultValue(const SChannel* channel, void** out) const {
    if (channel == nullptr) {
        *out = nullptr;
        return false;
    }
    return getDefaultValue(channel->name, static_cast<SChannel::Type>(channel->type), out,
                           const_cast<std::uint8_t*>(&channel->flag));
}

}  // namespace glitch::collada

// ---- merged from r3a-glitch-scene-collada-gui-glitch_collada_CColladaDatabase-056212-2.cpp ----
// Track B redo batch r3a-glitch-scene-collada-gui-glitch_collada_CColladaDatabase-056212-2 (part 3 of 4).
// Owner: glitch::collada::CColladaDatabase. Visual-scene and node overloads by index and name, the animation and default-value
// lookups, and the scene/node/material overloads that load a file by name.
// Partial here: every overload that loads a file (CResFileManager::load / get with the DefaultFactory, which is not declared), the
// scene/node builders that need the root's virtual slots, the per-type default-value switch and the material factory path.
// The e2 file keeps the stub for constructScene(driver) (0x61b9e8) and constructNode(driver, SNode*, root) (0x61b2f4).




namespace glitch::collada {

// 0x61b988 glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, int, glitch::collada::CRootSceneNode*) const
CRootSceneNode* CColladaDatabase::constructVisualScene(video::IVideoDriver* driver, int index, CRootSceneNode* root) const {
    return constructVisualScene(driver, visualSceneAt(tables(), index), root);
}

// 0x61b9b8 glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, char const*, glitch::collada::CRootSceneNode*) const
CRootSceneNode* CColladaDatabase::constructVisualScene(video::IVideoDriver* driver, const char* name, CRootSceneNode* root) const {
    return constructVisualScene(driver, getVisualScene(tables(), name), root);
}

// 0x61c1fc glitch::collada::CColladaDatabase::getBlendableAnimation(glitch::collada::SAnimation const*) const
SAnimation* CColladaDatabase::getBlendableAnimation(const SAnimation* animation) const {
    if (animation == nullptr) {
        return nullptr;
    }
    return getBlendableAnimation(animation->channels);
}

// 0x61c6ec glitch::collada::CColladaDatabase::getDefaultValue(glitch::collada::SAnimation const*, void**) const
bool CColladaDatabase::getDefaultValue(const SAnimation* animation, void** out) const {
    return getDefaultValue(animation->channels, out);
}

// 0x61c91c glitch::collada::CColladaDatabase::getAnimation(char const*, glitch::collada::SChannel::Type, char const*) const
// The first animation whose first channel has the given type, bind URI (compared without case, the 'extra' word at channel +0x0c) and
// name (channel +0x04).
SAnimation* CColladaDatabase::getAnimation(const char* name, SChannel::Type type, const char* uri) const {
    const std::int32_t count = static_cast<std::int32_t>(tables().animations.size());
    for (std::int32_t i = 0; i < count; ++i) {
        SAnimation* animation = animationAt(tables(), i);
        const SChannel* channel = animation->channels;
        // Host-found (guard-page run of the new-game path): the bind URI was compared before the channel type was looked at, so a channel of another
        // type, whose 'extra' word is not a string pointer (0xff here), was passed to _stricmp. The type is tested first, as the && chain reads.
        if (channel->type != static_cast<std::uint32_t>(type)) {
            continue;
        }
#ifdef _WIN32
        const bool uriMatches = _stricmp(channel->extra, uri) == 0;
#else
        const bool uriMatches = strcasecmp(channel->extra, uri) == 0;
#endif
        if (uriMatches && std::strcmp(channel->name, name) == 0) {
            return animation;
        }
    }
    return nullptr;
}

}  // namespace glitch::collada
