// Bodies of glitch::collada::CAnimationSet, IAnimationSetTemplate, CAnimationSetTransformationTemplate and CDynamicAnimationSet
// (canonical classes: collada/CAnimationSet.hpp, collada/CDynamicAnimationSet.hpp). This file replaces
//   src/animation_set.cpp, src/tb_scene-collada-gui-glitch_collada_CAnimationSet-0.cpp (accessors over a stand-in struct),
//   src/tb_scene-collada-gui-glitch_collada_IAnimationSetTemplate-0.cpp,
//   src/tb_scene-collada-gui-glitch_collada_CAnimationSetTransformationTempla-0.cpp and the CAnimationSet / IAnimationSetTemplate /
//   CAnimationSetTransformationTemplate / CDynamicAnimationSet stubs of recon/slice_22.cpp, recon/slice_28.cpp and
//   collada_scene_accessors.cpp.
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/CAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CDynamicAnimationSet.hpp"

#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/collada/CSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"
#include "glitch-scene-collada-gui/collada_scene_accessors.hpp"
#include "glitch-scene-collada-gui/tb/glitch_collada_detail.hpp"

namespace glitch::collada {

namespace {

// The channel match of addAnimation: a compatible channel (CompatibilityTable row = the existing channel's type, bit = the new
// channel's type) of the same name; for type 14 the flag byte must match, for type 86 the string at +0x0c, otherwise the match
// is complete. Returns the index of the match or -1.
template <typename ChannelAt>
int findMatchingChannel(int count, const SChannel& channel, ChannelAt channelAt) {
    for (int i = 0; i < count; ++i) {
        const SChannel& existing = channelAt(i);
        if (!detail::channelTypeCompatible(existing.type, channel.type)) {
            continue;
        }
        if (std::strcmp(existing.name, channel.name) != 0) {
            continue;
        }
        if (channel.type == 14) {
            if (existing.flag == channel.flag) {
                return i;
            }
        } else if (channel.type != 86 || std::strcmp(existing.extra, channel.extra) == 0) {
            return i;
        }
    }
    return -1;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// IAnimationSetTemplate
// ---------------------------------------------------------------------------------------------------------------------

// 0x667588 _ZN6glitch7collada21IAnimationSetTemplateD1Ev, 0x66762c (D2); D0 0x667610 is skipped.
// Frees the record of every target (the targets themselves are not deleted by the original).
IAnimationSetTemplate::~IAnimationSetTemplate() {
    for (STemplateTarget* target : targets) {
        delete target->record;
        target->record = nullptr;
    }
}

// 0x667320 _ZN6glitch7collada21IAnimationSetTemplate10setUnAddedEv
// For each target: clear the added flag (+0x00) and the record pointer (+0x0c). Returns this.
IAnimationSetTemplate& IAnimationSetTemplate::setUnAdded() {
    for (STemplateTarget* target : targets) {
        target->added = 0;
        target->record = nullptr;
    }
    return *this;
}

// 0x667384 _ZN6glitch7collada21IAnimationSetTemplate11addChannelsEPSt6vector...
// For each target not yet added: a record with the target's kind and the node's UID (virtual slot +0x54), linked to the target, and the target
// marked added. The original also calls, per kind (1..13), CVirtualEx<...>::getInstance() of the matching track and discards the result: it only
// builds function-local statics, so it is not repeated. The two vector arguments are never read. Host guard: a target without a node (the SNode
// overload stores none) has no UID.
void IAnimationSetTemplate::addChannels(core::svector<const SChannel*>*, core::svector<const CAnimationTrackEx*>*) {
    for (STemplateTarget* target : targets) {
        if (target->added) {
            continue;
        }
        STemplateRecord* record = new STemplateRecord();  // +0x00..+0x0f
        record->kind08 = target->kind;                    // record +0x08 = target +0x04
        record->uid = target->node != nullptr ? target->node->getUID() : nullptr;  // record +0x04
        target->record = record;                          // target +0x0c
        target->added = 1;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// CAnimationSetTransformationTemplate
// ---------------------------------------------------------------------------------------------------------------------

namespace {

// Allocates one 16-byte target record (the original uses operator new(0x10) and writes the flag byte, the kind word and the node).
STemplateTarget* newTarget(std::uint32_t kind, CSceneNode* node) {
    auto* target = new STemplateTarget;
    target->added = 0;
    target->kind = kind;
    target->node = node;
    return target;
}

}  // namespace

// 0x6e21c0 _ZN6glitch7collada35CAnimationSetTransformationTemplateC2EPKc, 0x6e21f4 (C1)
// The name argument is not stored.
CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(const char*) {}

// 0x6e264c _ZN6glitch7collada35CAnimationSetTransformationTemplateC2EPNS0_10CSceneNodeE, 0x6e2690 (C1)
CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(CSceneNode* node) {
    addTransformationTargets(node);
}

// 0x6e2830 _ZN6glitch7collada35CAnimationSetTransformationTemplateC2EPNS0_16CColladaDatabaseE, 0x6e28f0 (C1)
// Targets for every root node of every visual scene of the database.
CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(CColladaDatabase* database) {
    const SDatabaseTables& tables = database->tables();
    for (std::size_t i = 0; i < tables.visualScenes.size(); ++i) {
        SVisualScene* scene = visualSceneAt(tables, static_cast<int>(i));
        for (std::uint32_t k = 0; k < scene->nodeCount; ++k) {
            addTransformationTargets(scene->nodes[k]);
        }
    }
}

// 0x6e2248 _ZN6glitch7collada35CAnimationSetTransformationTemplateD1Ev, 0x6e2298 (D2); D0 0x6e227c is skipped.
CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate() = default;

// 0x6e22cc _ZN6glitch7collada35CAnimationSetTransformationTemplate16isAnimationExistEPKNS0_8SChannelE
// A target matches when its node's UID (vptr+0x54) equals the channel name and the channel type belongs to the target kind: types
// 10..13 match kind 10, types 5..9 kind 5, types 1..4 kind 1 (types above 13 match nothing). A match sets the target's added flag and
// returns 1.
int CAnimationSetTransformationTemplate::isAnimationExist(const SChannel* channel) {
    for (STemplateTarget* target : targets) {
        if (std::strcmp(channel->name, target->node->getUID()) != 0) {
            continue;
        }
        const std::uint32_t type = channel->type;
        if (type > 0xD) {
            continue;
        }
        const std::uint32_t bit = 1u << type;
        std::uint32_t accepted = 0;
        if ((bit & 0x3C00u) != 0) {
            accepted = 10;
        } else if ((bit & 0x3E0u) != 0) {
            accepted = 5;
        } else if ((bit & 0x1Eu) != 0) {
            accepted = 1;
        } else {
            continue;
        }
        if (target->kind == accepted) {
            target->added = 1;
            return 1;
        }
    }
    return 0;
}

// 0x6e23d0 _ZNK6glitch7collada35CAnimationSetTransformationTemplate15getDefaultValueEPKNS0_8SChannelEPPv
// Each target's node is asked in turn (its database at node +0x14c); the first node that has a default value for the channel answers 1.
// Host guard: a target without a node (the SNode overload stores none) is skipped.
int CAnimationSetTransformationTemplate::getDefaultValue(const SChannel* channel, void** out) const {
    for (const STemplateTarget* target : targets) {
        if (target->node != nullptr && target->node->database.getDefaultValue(channel, out)) {
            return 1;
        }
    }
    return 0;
}

// 0x6e24e8 _ZN6glitch7collada35CAnimationSetTransformationTemplate24addTransformationTargetsEPNS0_10CSceneNodeE
// Pushes three targets for this node, of kinds 1, 5 and 10, in that order, then does the same for every child of the node (the original
// converts each child link to a node pointer without checking the child's type).
void CAnimationSetTransformationTemplate::addTransformationTargets(CSceneNode* node) {
    targets.push_back(newTarget(1, node));
    targets.push_back(newTarget(5, node));
    targets.push_back(newTarget(10, node));
    for (scene::ISceneNode* child : node->getChildren()) {
        addTransformationTargets(static_cast<CSceneNode*>(child));
    }
}

// 0x6e26d4 _ZN6glitch7collada35CAnimationSetTransformationTemplate24addTransformationTargetsERNS0_5SNodeE
// Pushes three targets of kinds 1, 5 and 10 (the original never stores a node word for these entries: operator new does not zero
// it, so the node is null here), then recurses over the children (count +0x38, base +0x3c, stride 0x50).
void CAnimationSetTransformationTemplate::addTransformationTargets(SNode& node) {
    targets.push_back(newTarget(1, nullptr));
    targets.push_back(newTarget(5, nullptr));
    targets.push_back(newTarget(10, nullptr));
    for (std::uint32_t i = 0; i < node.childCount; ++i) {
        addTransformationTargets(node.children[i]);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// CAnimationSet
// ---------------------------------------------------------------------------------------------------------------------

// 0x65f2ac _ZN6glitch7collada13CAnimationSetD1Ev; D0 0x65f348 is skipped.
// Releases the template, frees the vectors and drops the database handles (the std::vector members do the freeing).
CAnimationSet::~CAnimationSet() {
    remAnimationTemplate();
    for (CColladaDatabase& database : databases) {
        dropDatabase(database);
    }
}

// 0x6601fc _ZN6glitch7collada13CAnimationSet12addAnimationEPKNS0_10SAnimationE
// Verified against the decompilation 0x6601fc (632 bytes): the channel match (CompatibilityTable row = the existing channel's type, tested at
// (table + 4 * (type >> 5)) & (1 << (type & 31)); for type 14 the flag byte at +0x0c, for type 86 the string at +0x0c, else a name match),
// the track from CColladaDatabase::getAnimationTrackEx (0x660330; -1 when none), and the two push_backs (channels at +0x0c, tracks at +0x18)
// with the index ((end - begin) >> 2) - 1.
int CAnimationSet::addAnimation(const SAnimation* animation) {
    const SChannel& channel = *animation->channels;
    const int match = findMatchingChannel(static_cast<int>(channels.size()), channel,
                                          [this](int i) -> const SChannel& { return *channels[i]; });
    if (match >= 0) {
        return match;
    }
    const auto* track = static_cast<const CAnimationTrackEx*>(CColladaDatabase::getAnimationTrackEx(animation));
    if (track == nullptr) {
        return -1;
    }
    channels.push_back(&channel);
    tracks.push_back(track);
    return static_cast<int>(channels.size()) - 1;
}

// 0x65f004 _ZN6glitch7collada13CAnimationSet12remAnimationEPKNS0_10SAnimationE
int CAnimationSet::remAnimation(const SAnimation*) {
    return 0;
}

// 0x65f00c _ZN6glitch7collada13CAnimationSet10getChannelEj
const SChannel* CAnimationSet::getChannel(unsigned index) {
    return channels[index];
}

// 0x65f018 _ZNK6glitch7collada13CAnimationSet10getChannelEj
const SChannel* CAnimationSet::getChannel(unsigned index) const {
    return channels[index];
}

// 0x62db98 _ZN6glitch7collada13CAnimationSet20setMismatchBehaviorENS1_19E_MISMATCH_BEHAVIORE
CAnimationSet& CAnimationSet::setMismatchBehavior(E_MISMATCH_BEHAVIOR behavior) {
    mismatchBehavior = behavior;
    return *this;
}

// 0x65f024 _ZNK6glitch7collada13CAnimationSet17getAnimationTrackEi
const SChannel* CAnimationSet::getAnimationTrack(int index) const {
    return getChannel(static_cast<unsigned>(index));
}

// 0x65f038 _ZN6glitch7collada13CAnimationSet19getAnimationTrackExEi
const CAnimationTrackEx* CAnimationSet::getAnimationTrackEx(int index) {
    return tracks[index];
}

// 0x6600fc _ZN6glitch7collada13CAnimationSet19addAnimationLibraryEPKc
// The file is loaded through the manager (automatic unloading switched off meanwhile), wrapped in a database over DefaultFactory (the record
// gets a use) and added through the database overload (vptr+0x2c); the temporary handle is then dropped. A file that does not load prints the
// error line and answers the last index.
int CAnimationSet::addAnimationLibrary(const char* url) {
    CResFile* record = CResFileManager::Inst->load(url, false, nullptr);
    if (record == nullptr) {
        std::printf("ERROR: CAnimationSet::addAnimationLibrary: Unable to add url: %s\n", url);
        return static_cast<int>(databases.size()) - 1;
    }
    const bool savedAutoUnload = CResFileManager::Inst->autoUnloadEnabled;
    CResFileManager::Inst->autoUnloadEnabled = false;
    CColladaDatabase handle;
    handle.record = record;
    handle.factory = &CColladaDatabase::DefaultFactory;
    if (record->refCount != 0) {
        ++record->refCount;
    }
    const int index = addAnimationLibrary(handle);
    dropDatabase(handle);
    CResFileManager::Inst->autoUnloadEnabled = savedAutoUnload;
    return index;
}

// 0x6601d4 _ZN6glitch7collada13CAnimationSet19addAnimationLibraryERKNS0_16CColladaDatabaseE
// Appends the handle (a copy: the record gets a use) and returns its index.
int CAnimationSet::addAnimationLibrary(const CColladaDatabase& database) {
    CColladaDatabase copy;
    copyDatabase(copy, database);
    databases.push_back(copy);
    return static_cast<int>(databases.size()) - 1;
}

// 0x65f0d0 _ZN6glitch7collada13CAnimationSet19remAnimationLibraryERNS0_16CColladaDatabaseE
void CAnimationSet::remAnimationLibrary(CColladaDatabase&) {}

// 0x65f0d4 _ZN6glitch7collada13CAnimationSet19remAnimationLibraryEi
void CAnimationSet::remAnimationLibrary(int) {}

// 0x660710 _ZN6glitch7collada13CAnimationSet7compileEv
void CAnimationSet::compile() {
    if (animationTemplate != nullptr) {
        animationTemplate->setUnAdded();
    }
    // Collect the animations of every database (those the template does not claim are skipped).
    for (std::size_t d = 0; d < databases.size(); ++d) {
        CColladaDatabase& database = databases[d];
        const int animationCount = static_cast<int>(database.tables().animations.size());
        for (int k = 0; k < animationCount; ++k) {
            SAnimation* animation = animationAt(database.tables(), k);
            if (animationTemplate == nullptr || animationTemplate->isAnimationExist(animation->channels)) {
                addAnimation(animation);  // vptr+0x0c
            }
        }
    }
    if (animationTemplate != nullptr) {
        animationTemplate->addChannels(&channels, &tracks);
    }
    // Prune the channels that no database can drive: no blendable animation, no default value, no template default, and the
    // mismatch behaviour is 0.
    for (std::size_t d = 0; d < databases.size(); ++d) {
        CColladaDatabase& database = databases[d];
        for (std::size_t j = 0; j < channels.size(); ++j) {
            void* defaultValue = nullptr;
            if (database.getBlendableAnimation(channels[j]) == nullptr && !database.getDefaultValue(channels[j], &defaultValue)) {
                if ((animationTemplate == nullptr || !animationTemplate->getDefaultValue(channels[j], &defaultValue)) &&
                    mismatchBehavior == 0) {
                    channels.erase(channels.begin() + static_cast<std::ptrdiff_t>(j));
                    tracks.erase(tracks.begin() + static_cast<std::ptrdiff_t>(j));
                    --j;
                }
            }
        }
    }
    animatedTrackCount = static_cast<std::uint32_t>(channels.size());
    bindings.assign(databases.size() * animatedTrackCount, SBinding());
    std::size_t index = 0;
    for (std::size_t d = 0; d < databases.size(); ++d) {
        CColladaDatabase& database = databases[d];
        for (std::size_t j = 0; j < channels.size(); ++j, ++index) {
            SBinding& binding = bindings[index];
            SAnimation* blendable = database.getBlendableAnimation(channels[j]);
            void* defaultValue = nullptr;
            const bool hasDefault = database.getDefaultValue(channels[j], &defaultValue);
            binding.defaultValue = defaultValue;
            if (blendable != nullptr) {
                binding.kind = 2;
                binding.animation = blendable;
            } else {
                binding.kind = 1;
                if (!hasDefault && animationTemplate != nullptr) {
                    void* templateDefault = nullptr;
                    animationTemplate->getDefaultValue(channels[j], &templateDefault);
                    binding.defaultValue = templateDefault;
                }
            }
        }
    }
    CompileInternal();
}

// 0x62f61c _ZN6glitch7collada20CDynamicAnimationSet7compileEv
// Reconstructed against the decompilation 0x62f61c (884 bytes). Whole body is guarded by the dirty byte at +0x70.
//   1. clearTracks().
//   2. For every database (vector +0x24 / +0x2c, 8-byte elements) and every animation of its table holder
//      (tables +0x24 count; animationAt), call the addAnimation slot +0x0c.
//   3. Prune pass, for every database: walk the own channels (+0x74 / +0x7c, 16-byte elements) with an index that is NOT
//      advanced after an erase; drop the channel when the database has no blendable animation for it, no default value
//      for it, and the mismatch behaviour (+0x08) is 0. Unlike CAnimationSet::compile this pass never asks the template.
//      The two erases are the two byte-shifts at 0x62f900..0x62f974: SChannel entries move down one element, tracks move
//      down one pointer.
//   4. animatedTrackCount (+0x3c) = the new channel count; bindings (+0x30) is reserve()d then resize()d to
//      databaseCount * animatedTrackCount with a zero-valued SBinding ({0, 0, 0}).
//   5. Fill pass, per (database, channel): kind (+0x00) is 2 when the database has a blendable animation else 1;
//      animation (+0x08) is that animation; getDefaultValue writes straight into defaultValue (+0x04) - note the dynamic
//      form asks unconditionally, where CAnimationSet::compile only asks when there is no blendable animation - and when
//      that fails it retries against the default library (+0x68) and stores 0 when that fails too.
//   6. CompileInternal(), then the dirty byte is cleared.
void CDynamicAnimationSet::compile() {
    if (!dirty) {
        return;
    }
    clearTracks();

    for (CColladaDatabase& database : databases) {
        const int animationCount = static_cast<int>(database.tables().animations.size());
        for (int k = 0; k < animationCount; ++k) {
            addAnimation(animationAt(database.tables(), k));  // vptr+0x0c
        }
    }

    for (CColladaDatabase& database : databases) {
        for (std::size_t j = 0; j < ownedChannels.size();) {
            const SChannel* channel = &ownedChannels[j];
            void* defaultValue = nullptr;
            if (database.getBlendableAnimation(channel) == nullptr &&
                !database.getDefaultValue(channel, &defaultValue) && mismatchBehavior == 0) {
                ownedChannels.erase(ownedChannels.begin() + static_cast<std::ptrdiff_t>(j));
                tracks.erase(tracks.begin() + static_cast<std::ptrdiff_t>(j));
                continue;  // the original does not advance the index after an erase
            }
            ++j;
        }
    }

    animatedTrackCount = static_cast<std::uint32_t>(ownedChannels.size());
    bindings.clear();
    bindings.reserve(databases.size() * animatedTrackCount);
    bindings.resize(databases.size() * animatedTrackCount, SBinding());

    std::size_t index = 0;
    for (CColladaDatabase& database : databases) {
        for (std::size_t j = 0; j < ownedChannels.size(); ++j, ++index) {
            const SChannel* channel = &ownedChannels[j];
            SBinding& binding = bindings[index];
            SAnimation* blendable = database.getBlendableAnimation(channel);
            binding.kind = blendable != nullptr ? 2u : 1u;
            binding.animation = blendable;
            void* defaultValue = nullptr;
            if (!database.getDefaultValue(channel, &defaultValue)) {
                defaultValue = nullptr;
            }
            binding.defaultValue = defaultValue;
            if (defaultValue == nullptr) {
                void* libraryValue = nullptr;
                binding.defaultValue = defaultLibrary.getDefaultValue(channel, &libraryValue) ? libraryValue : nullptr;
            }
        }
    }

    CompileInternal();
    dirty = false;
}

// 0x65f044 _ZNK6glitch7collada13CAnimationSet17getAnimationCountEv
std::uint32_t CAnimationSet::getAnimationCount() const {
    return static_cast<std::uint32_t>(databases.size());
}

// 0x65f058 _ZNK6glitch7collada13CAnimationSet21getAnimatedTrackCountEv
std::uint32_t CAnimationSet::getAnimatedTrackCount() const {
    return animatedTrackCount;
}

// 0x65f060 _ZNK6glitch7collada13CAnimationSet18getAnimationLengthEj
std::uint32_t CAnimationSet::getAnimationLength(unsigned index) const {
    return index < lengths.size() ? static_cast<std::uint32_t>(lengths[index]) : 0u;
}

// 0x65f07c _ZNK6glitch7collada13CAnimationSet17getAnimationStartEj
std::uint32_t CAnimationSet::getAnimationStart(unsigned index) const {
    return index < starts.size() ? static_cast<std::uint32_t>(starts[index]) : 0u;
}

// 0x65f098 _ZNK6glitch7collada13CAnimationSet15getAnimationEndEj
std::uint32_t CAnimationSet::getAnimationEnd(unsigned index) const {
    return index < ends.size() ? static_cast<std::uint32_t>(ends[index]) : 0u;
}

// 0x65f0b4 _ZN6glitch7collada13CAnimationSet11getDatabaseEi
CColladaDatabase* CAnimationSet::getDatabase(int index) {
    return &databases[index];
}

// 0x65f0c0 _ZNK6glitch7collada13CAnimationSet10getBindingEi
const CAnimationSet::SBinding* CAnimationSet::getBinding(int index) const {
    return &bindings[index];
}

// 0x65f0d8 _ZN6glitch7collada13CAnimationSet17remAnimationTemplateEv
void CAnimationSet::remAnimationTemplate() {
    delete animationTemplate;
    animationTemplate = nullptr;
}

// 0x6600a4 _ZN6glitch7collada13CAnimationSet20addAnimationTemplateEPNS0_16CColladaDatabaseE
// The original overwrites the template pointer without releasing the old one.
void CAnimationSet::addAnimationTemplate(CColladaDatabase* database) {
    animationTemplate = new CAnimationSetTransformationTemplate(database);
}

// 0x6600d0 _ZN6glitch7collada13CAnimationSet20addAnimationTemplateEPNS0_10CSceneNodeE
void CAnimationSet::addAnimationTemplate(CSceneNode* node) {
    animationTemplate = new CAnimationSetTransformationTemplate(node);
}

// 0x6605ac _ZN6glitch7collada13CAnimationSet15CompileInternalEv
void CAnimationSet::CompileInternal() {
    starts.assign(databases.size(), 0);
    ends.assign(databases.size(), 0);
    lengths.assign(databases.size(), 0);
    for (std::size_t i = 0; i < databases.size(); ++i) {
        const SDatabaseTables& tables = databases[i].tables();
        starts[i] = tables.animationRange.start;
        ends[i] = tables.animationRange.end;
        lengths[i] = ends[i] - starts[i];
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// CDynamicAnimationSet
// ---------------------------------------------------------------------------------------------------------------------

// 0x3648c4 _ZN6glitch7collada20CDynamicAnimationSetC1Ev
// The default factory (CColladaDatabase::DefaultFactory) is not modelled, so the default library keeps a null factory.
CDynamicAnimationSet::CDynamicAnimationSet() = default;

// 0x62e198 _ZN6glitch7collada20CDynamicAnimationSetD1Ev; D0 0x62e1e8 is skipped.
CDynamicAnimationSet::~CDynamicAnimationSet() {
    dropDatabase(defaultLibrary);
}

// 0x62dba0 _ZN6glitch7collada20CDynamicAnimationSet10getChannelEj
const SChannel* CDynamicAnimationSet::getChannel(unsigned index) {
    return &ownedChannels[index];
}

// 0x62dbac _ZNK6glitch7collada20CDynamicAnimationSet10getChannelEj
const SChannel* CDynamicAnimationSet::getChannel(unsigned index) const {
    return &ownedChannels[index];
}

// 0x62e8a8 _ZN6glitch7collada20CDynamicAnimationSet19addAnimationLibraryERKNS0_16CColladaDatabaseE
int CDynamicAnimationSet::addAnimationLibrary(const CColladaDatabase& database) {
    const int result = CAnimationSet::addAnimationLibrary(database);
    dirty = true;
    return result;
}

// 0x62dbb8 _ZN6glitch7collada20CDynamicAnimationSet16getDatabaseIndexERNS0_16CColladaDatabaseE
int CDynamicAnimationSet::getDatabaseIndex(CColladaDatabase& database) {
    for (std::size_t i = 0; i < databases.size(); ++i) {
        if (databases[i].record == database.record) {
            return static_cast<int>(i);
        }
    }
    return -1;
}

// 0x62fc90 _ZN6glitch7collada20CDynamicAnimationSet26setDefaultAnimationLibraryERKNS0_16CColladaDatabaseE
// The argument's record takes a use, then replaces the default library; the handle it displaces loses its own.
// The original copies the new pair over +0x68/+0x6c and then runs ~CColladaDatabase on the saved old pair,
// which is exactly copyDatabase() then dropDatabase() here.
void CDynamicAnimationSet::setDefaultAnimationLibrary(const CColladaDatabase& database) {
    CColladaDatabase previous;
    previous.record = defaultLibrary.record;
    previous.factory = defaultLibrary.factory;
    copyDatabase(defaultLibrary, database);
    dropDatabase(previous);
    dirty = true;
}

// 0x62fcf8 _ZN6glitch7collada20CDynamicAnimationSet26setDefaultAnimationLibraryEj
// An index past the end of the database list resets the default to the empty factory handle, releasing what it
// held (the original builds a default CColladaDatabase and runs ~CColladaDatabase on it, then copies the pair
// into +0x68/+0x6c). An index inside the list copies that database in, which takes its own use.
void CDynamicAnimationSet::setDefaultAnimationLibrary(unsigned index) {
    if (index >= databases.size()) {  // 0x62fd00..0x62fd20: (end - begin) >> 3
        CColladaDatabase previous;
        previous.record = defaultLibrary.record;
        previous.factory = defaultLibrary.factory;
        defaultLibrary.record = nullptr;                       // the original's outgoing default
        defaultLibrary.factory = &CColladaDatabase::DefaultFactory;
        dropDatabase(previous);                                // ~CColladaDatabase on the old handle
    }
    if (index < databases.size()) {
        copyDatabase(defaultLibrary, databases[index]);
    }
    dirty = true;
}

// 0x62ee9c _ZN6glitch7collada20CDynamicAnimationSet27addAnimationLibraryBindingsERKNS0_16CColladaDatabaseE
// Appends the bindings of one more library. The database joins +0x24, the library's window joins starts (+0x40),
// ends (+0x4c) and lengths (+0x58), and one SBinding per owned channel is appended to bindings (+0x30) and filled
// exactly as CompileInternal fills the whole set: kind 2 + the animation when the database has a blendable
// animation for the channel, else kind 1 + the channel's default value, falling back to the default library's
// own value and then to zero when neither the database nor the default library has one.
//
// The original walks the containers through out-of-line STLport helpers rather than member calls, which is what
// made this row look impenetrable: it computes the old binding count as (bindings.end - bindings.begin) / 12,
// adds the channel count, and reserve()s then resize()s bindings to that total; starts, ends and lengths each get
// exactly one new element (one per library, not per channel), taken from the library's tables() range.
void CDynamicAnimationSet::addAnimationLibraryBindings(const CColladaDatabase& database) {
    // W2 (AddressSanitizer heap-use-after-free at level teardown): the original's push_back copy-constructs a CColladaDatabase, which takes a use of
    // the record. The port's handle is a plain struct, so the use has to be taken by hand (as addAnimationLibrary does); without it the set's
    // destructor drops a use it never took and the file manager unloads a record the game's Animation entries still hold.
    CColladaDatabase held;
    copyDatabase(held, database);
    databases.push_back(held);

    const SDatabaseTables& tables = database.tables();
    starts.push_back(tables.animationRange.start);   // 0x62eecc: *(holder + 28)
    ends.push_back(tables.animationRange.end);       // 0x62ef00: *(holder + 32)
    lengths.push_back(tables.animationRange.end - tables.animationRange.start);

    const std::size_t oldBindingCount = bindings.size();
    bindings.reserve(oldBindingCount + ownedChannels.size());   // reserve, then resize to the same total
    bindings.resize(oldBindingCount + ownedChannels.size(), SBinding());

    for (std::size_t i = 0; i < ownedChannels.size(); ++i) {
        const SChannel* channel = getChannel(static_cast<unsigned>(i));   // vptr+0x18: ownedChannels + index
        SBinding& binding = bindings[oldBindingCount + i];
        SAnimation* blendable = database.getBlendableAnimation(channel);
        void* defaultValue = nullptr;
        const bool hasDefault = database.getDefaultValue(channel, &defaultValue);
        binding.kind = blendable != nullptr ? 2u : 1u;
        binding.defaultValue = defaultValue;
        binding.animation = blendable;
        if (blendable == nullptr && !hasDefault) {
            // Neither this database nor the default library can supply a value: the binding keeps none.
            void* fallback = nullptr;
            binding.defaultValue = defaultLibrary.getDefaultValue(channel, &fallback) ? fallback : nullptr;
        }
    }
}

// 0x62fc58 _ZN6glitch7collada20CDynamicAnimationSet8clearSetEv
void CDynamicAnimationSet::clearSet() {
    for (CColladaDatabase& database : databases) {
        dropDatabase(database);
    }
    databases.clear();
    dirty = true;
}

// 0x62f54c _ZN6glitch7collada20CDynamicAnimationSet11clearTracksEv
void CDynamicAnimationSet::clearTracks() {
    ownedChannels.clear();
    tracks.clear();
    bindings.clear();
    dirty = true;
    animatedTrackCount = 0;
}

// 0x62f0cc _ZN6glitch7collada20CDynamicAnimationSet12remAnimationEPKNS0_10SAnimationE
// The owned channel that matches the animation's first channel (same flag byte at +0x0c, a compatible type through the table row of the
// owned channel, the same name) is removed with its track; the answer is its index, -1 when none matches. (The flag byte is compared for
// every type here, unlike addAnimation; the bindings and the library windows are left as they are.)
int CDynamicAnimationSet::remAnimation(const SAnimation* animation) {
    const SChannel& channel = *animation->channels;
    for (std::size_t i = 0; i < ownedChannels.size(); ++i) {
        const SChannel& existing = ownedChannels[i];
        if (existing.flag == channel.flag && detail::channelTypeCompatible(existing.type, channel.type) &&
            std::strcmp(existing.name, channel.name) == 0) {
            ownedChannels.erase(ownedChannels.begin() + static_cast<std::ptrdiff_t>(i));
            tracks.erase(tracks.begin() + static_cast<std::ptrdiff_t>(i));
            return static_cast<int>(i);
        }
    }
    return -1;
}

// 0x62e204 _ZN6glitch7collada20CDynamicAnimationSet33overwriteAnimationLibraryBindingsERKNS0_16CColladaDatabaseEj
// A library inside the list is replaced by the given one (the new handle takes a use, the old one loses its own); its start, end and length
// come from the new file's animation range; and the library's bindings (animatedTrackCount of them from index * animatedTrackCount) are
// refilled: kind 2 + the blendable animation when the new file has one for the owned channel, else kind 1; the default value is the
// file's, else the default library's (when it has a record), else none.
void CDynamicAnimationSet::overwriteAnimationLibraryBindings(const CColladaDatabase& database, unsigned index) {
    if (index >= databases.size()) {
        return;
    }
    CColladaDatabase previous = databases[index];
    copyDatabase(databases[index], database);
    dropDatabase(previous);
    const SDatabaseTables& tables = database.tables();
    starts[index] = static_cast<std::int32_t>(tables.animationRange.start);
    ends[index] = static_cast<std::int32_t>(tables.animationRange.end);
    lengths[index] = ends[index] - starts[index];
    const std::size_t first = static_cast<std::size_t>(index) * animatedTrackCount;
    for (std::uint32_t i = 0; i < animatedTrackCount; ++i) {
        const SChannel* channel = &ownedChannels[i];
        SBinding& binding = bindings[first + i];
        SAnimation* blendable = database.getBlendableAnimation(channel);
        void* defaultValue = nullptr;
        const bool hasDefault = database.getDefaultValue(channel, &defaultValue);
        binding.defaultValue = defaultValue;
        binding.kind = blendable != nullptr ? 2u : 1u;
        binding.animation = blendable;
        if (!hasDefault) {
            void* fallback = nullptr;
            binding.defaultValue = defaultLibrary.record != nullptr && defaultLibrary.getDefaultValue(channel, &fallback) ? fallback : nullptr;
        }
    }
}

// 0x62e3f8 _ZN6glitch7collada20CDynamicAnimationSet33overwriteAnimationLibraryBindingsERKNS0_16CColladaDatabaseERS2_
// The same for the library that has `library`'s record (-1 as an unsigned index changes nothing).
void CDynamicAnimationSet::overwriteAnimationLibraryBindings(const CColladaDatabase& database, CColladaDatabase& library) {
    overwriteAnimationLibraryBindings(database, static_cast<unsigned>(getDatabaseIndex(library)));
}

// 0x62fa44 _ZN6glitch7collada20CDynamicAnimationSet27remAnimationLibraryBindingsEj
// The library's bindings (animatedTrackCount of them from index * animatedTrackCount) and its database handle are removed; the start, end and
// length lists are left as they are.
void CDynamicAnimationSet::remAnimationLibraryBindings(unsigned index) {
    if (index >= databases.size()) {
        return;
    }
    const std::size_t first = static_cast<std::size_t>(index) * animatedTrackCount;
    const std::size_t last = first + animatedTrackCount;
    if (first != last) {
        bindings.erase(bindings.begin() + static_cast<std::ptrdiff_t>(first), bindings.begin() + static_cast<std::ptrdiff_t>(last));
    }
    dropDatabase(databases[index]);
    databases.erase(databases.begin() + static_cast<std::ptrdiff_t>(index));
}

// 0x62fb10 _ZN6glitch7collada20CDynamicAnimationSet27remAnimationLibraryBindingsERNS0_16CColladaDatabaseE
void CDynamicAnimationSet::remAnimationLibraryBindings(CColladaDatabase& library) {
    remAnimationLibraryBindings(static_cast<unsigned>(getDatabaseIndex(library)));
}

// 0x62fb2c _ZN6glitch7collada20CDynamicAnimationSet19remAnimationLibraryEj
// A library inside the list is removed (its handle loses its use) and the set is marked for recompilation.
void CDynamicAnimationSet::remAnimationLibrary(unsigned index) {
    if (index < databases.size()) {
        dropDatabase(databases[index]);
        databases.erase(databases.begin() + static_cast<std::ptrdiff_t>(index));
        dirty = true;
    }
}

// 0x62fb6c _ZN6glitch7collada20CDynamicAnimationSet19remAnimationLibraryERNS0_16CColladaDatabaseE (vptr+0x30)
void CDynamicAnimationSet::remAnimationLibrary(CColladaDatabase& library) {
    remAnimationLibrary(static_cast<unsigned>(getDatabaseIndex(library)));
}

// 0x62f354 _ZN6glitch7collada20CDynamicAnimationSet12addAnimationEPKNS0_10SAnimationE
// As CAnimationSet::addAnimation, over the owned channels (copied by value) and with the negative-type rejection: when the
// owned channel list is non-empty and (int)channel.type < 0 the original returns -1 before searching. Verified against the
// decompilation; the channel match is the same shared shape.
int CDynamicAnimationSet::addAnimation(const SAnimation* animation) {
    const SChannel& channel = *animation->channels;
    if (!ownedChannels.empty() && static_cast<std::int32_t>(channel.type) < 0) {
        return -1;
    }
    const int match = findMatchingChannel(static_cast<int>(ownedChannels.size()), channel,
                                          [this](int i) -> const SChannel& { return ownedChannels[i]; });
    if (match >= 0) {
        return match;
    }
    const auto* track = static_cast<const CAnimationTrackEx*>(CColladaDatabase::getAnimationTrackEx(animation));
    if (track == nullptr) {
        return -1;
    }
    ownedChannels.push_back(channel);
    tracks.push_back(track);
    return static_cast<int>(ownedChannels.size()) - 1;
}

}  // namespace glitch::collada
