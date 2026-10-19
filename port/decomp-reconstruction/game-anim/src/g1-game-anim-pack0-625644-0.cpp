// Functions of AnimatedDecor, Animation and AnimatorSynchronizedSet from libDungeonHunter2.so (batch
// g1-game-anim-pack0-625644-0). Rebuilt from the Hex-Rays pseudocode in recovered/native/hexrays-all and checked
// against the assembly. Class layouts: game/include/dh2/AnimatedDecor.hpp, Animation.hpp and AnimatorSynchronizedSet.hpp.
#include "dh2/AnimatedDecor.hpp"

#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSet.hpp"

#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "dh2/Animation.hpp"
#include "dh2/AnimApplicator.hpp"
#include "dh2/AnimController.hpp"
#include "dh2/AnimatorSynchronizedSet.hpp"
#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/Random.hpp"
#include "dh2/VisualObject.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel). core-platform/memory.hpp declares it too, but that header is
// not included in game TUs: its deps/glitch_core.hpp repeats the glitch::core types.
extern int gAssertLevel;

namespace {

// Assert text of the random clip callback: the original's Block.cpp path and line.
const char kBlockAssertFile[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Block.cpp";
const int kBlockAssertLine = 345;

// The random clip pick shared by InitPost's "randomall" branch and the clip callback. The original calls the
// controller's GetNumClip(0) (vtable +0x10), draws a clip index in [0, count - 1) from the ordinary random stream
// (the Random::GetRandom clone .clone.3 at 0x388c58 is GetRandom(range, false)), then plays that clip with
// PlayClip(clip, loop = false, 0, 0) (vtable +0x1c). Returns PlayClip's result.
bool PlayRandomClip(AnimController* anim) {
    const int clipCount = anim->GetNumClip(0u);
    const unsigned int clip = Random::GetRandom(clipCount - 1, false);
    return anim->PlayClip(clip, false, 0, 0u);
}

}  // namespace

// 0x342600 _ZN13AnimatedDecorC1EN10ObjectBase6GO_IDSE
// Inlined into GetNewInstance<AnimatedDecor> (0x342600), so the binary has no standalone AnimatedDecor constructor
// symbol. The asm runs GameObject::GameObject(GO_IDS 20) (MOV R1,#0x14 before the BL) and does NOT call
// Decor::Decor(GO_IDS): it stores the primary vptr at +0x00, the third at +0x04 and the second at +0x24, sets
// m_floorMapPending (+0x375), m_isSolid (+0x376) and m_static (+0x84) to 1, builds the empty string at +0x37c
// (_M_allocate_block(0x10), the data and end words both re-seated on the object's own address and the terminator
// written), then clears m_floorMapPending to 0 and repeats the m_static store. The final state is m_floorMapPending 0,
// m_isSolid 1, m_static 1 and an empty m_startAnim; the 1 -> 0 store pair is the compiler's inline expansion and is not
// observable. The vptr stores are what the C++ constructor emits; the base is the flag-skipping Decor variant in
// dh2/Decor.hpp, because this constructor writes m_floorMapPending and m_isSolid itself.
AnimatedDecor::AnimatedDecor(GO_IDS id) : Decor(id, true) {
    m_static = true;           // ObjectBase +0x84
    m_floorMapPending = false; // +0x375, the original's last store
    m_isSolid = true;          // +0x376
}

// 0x3883dc AnimatedDecor::IsAnimated() const
bool AnimatedDecor::IsAnimated() const {
    return true;
}

// 0x3884f8 AnimatedDecor::IsZonable() const
// Thunk: the original tail-branches to GameObject::MeetCondition (0x38ab60). Forwarded, not reimplemented.
bool AnimatedDecor::IsZonable() const {
    return GameObject::MeetCondition();
}

// 0x388cec AnimatedDecor::__CallbackRandomAll(glitch::scene::ITimelineController*, void*)
// The second argument is the decor (the user data that InitPost passes to SetCallbacks). The first argument, the
// timeline, is not used. The original returns int (PlayClip's result, or the fprintf result on the log path). The
// animation callbacks are void and the caller discards that value, so this port returns void.
void AnimatedDecor::__CallbackRandomAll(glitch::scene::ITimelineController* /*timeline*/, void* user) {
    AnimatedDecor* decor = static_cast<AnimatedDecor*>(user);
    if (PlayRandomClip(decor->m_visualObject->m_animController)) {
        return;
    }
    if (gAssertLevel == 2) {
        // The original writes to address 0 here to force a crash.
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "hasAnim == true", kBlockAssertFile, kBlockAssertLine);
    }
}

// 0x389098 AnimatedDecor::~AnimatedDecor() (D1, complete object)
// The original releases m_startAnim (+0x37c), resets the vptrs to Decor's, then calls GameObject::~GameObject. It makes no
// separate call to Decor::~Decor (0x388428): that function does the same vptr resets and the same GameObject call, so the
// C++ base destructor gives the same effects. The C++ order is this body (empty), the member m_startAnim, the Decor base
// destructor, then GameObject. The vptr stores are compiler-generated.
AnimatedDecor::~AnimatedDecor() {}

// 0x38910c AnimatedDecor::~AnimatedDecor() (D0, scalar deleting destructor)
// skipped: the original is ~AnimatedDecor() followed by CustomFree(this). The C++ delete expression produces it.

// 0x389128 AnimatedDecor::InitPost()
// Rebuilt: the flag, the Decor::InitPost base call, the MeetCondition branch, the startanim choice (idle when empty,
// "randomall", or the named clip with a clip-0 fallback), the mesh box, the physics object and the final Update.
// The physics world is Application::m_physicalWorld: the original's global dword_99F770 is Singleton<Application>::s_inst
// + 0x44 (asm: LDR R3,[R3,#(dword_99F770 - 0x99F72C)]), and the header places m_physicalWorld at +0x44.
void AnimatedDecor::InitPost() {
    unk_10c = 1;  // +0x10c, written before the Decor base InitPost
    Decor::InitPost();
    if (!MeetCondition()) {
        SetVisible(false);  // +0x40 vtable call. Its argument register holds the MeetCondition result, 0
        return;
    }
    VisualObject* visual = m_visualObject;  // +0x2d8
    if (visual == nullptr) {
        return;
    }
    if (m_startAnim.empty()) {  // +0x37c. The original compares the two data words of the string
        m_startAnim = "idle";
    }
    AnimController* anim = visual->m_animController;  // +0x38 of the visual object
    if (LC_API_STRCASECMP(m_startAnim.c_str(), "randomall") != 0) {
        if (!anim->HasClip(m_startAnim.c_str(), 0u) || !anim->PlayClip(m_startAnim.c_str(), true, 0, 0u)) {
            anim->PlayClip(0u, true, 0, 0u);
        }
    } else {
        PlayRandomClip(anim);
        anim->SetCallbacks(&AnimatedDecor::__CallbackRandomAll, this, nullptr, this);
    }
    visual->ApplyMeshBox();
    if (visual->m_hasColBox) {  // visual +0x28
        // operator new(0x28), then PODecor(m_physicalWorld, this, unused). The third argument is not used by the
        // constructor, and the original's r3 holds a residue at that call (operator new clobbers it), so false is passed.
        PODecor* physics = new PODecor(ApplicationGetInstance().m_physicalWorld, this, false);
        SetPhysicalObject(physics, false);  // GameObject::SetPhysicalObject(po, false)
    }
    Update();  // +0x2c vtable call, the original's tail call
}

// 0x389dd4 AnimatedDecor::DeclareProperties()
// The Decor base runs first (its own properties), then the startanim property, as in the original.
void AnimatedDecor::DeclareProperties() {
    Decor::DeclareProperties();
    AddProperty<std::string>("startanim", m_startAnim);  // PropertyMap at ObjectBase +0x04, m_startAnim at +0x37c
}

// Animation::Animation(): the state an entry has before the load fills it in (LoadAnimation 0x3659ec): the name "Invalid", the default
// database, library index -1, use count -1, no stamp, counter 0.
Animation::Animation()
    : m_fileName("Invalid"), m_database(), unk_20(-1), m_useCount(-1), m_lastUseTime(0), unk_2c(0) {
    m_database.factory = &glitch::collada::CColladaDatabase::DefaultFactory;
}

// Animation::Animation(const Animation&) and operator=: the name is copied and the database record takes one more use, as the
// tree insert of the original does (it copies the record and factory and increments the use when the record has one).
Animation::Animation(const Animation& other)
    : m_fileName(other.m_fileName), m_database(), unk_20(other.unk_20), m_useCount(other.m_useCount),
      m_lastUseTime(other.m_lastUseTime), unk_2c(other.unk_2c) {
    glitch::collada::copyDatabase(m_database, other.m_database);
}

Animation& Animation::operator=(const Animation& other) {
    if (this != &other) {
        glitch::collada::dropDatabase(m_database);
        m_fileName = other.m_fileName;
        glitch::collada::copyDatabase(m_database, other.m_database);
        unk_20 = other.unk_20;
        m_useCount = other.m_useCount;
        m_lastUseTime = other.m_lastUseTime;
        unk_2c = other.unk_2c;
    }
    return *this;
}

// 0x364ad4 Animation::~Animation()
// The database is destroyed (its record loses the use), then the name block is released (the std::string member does that).
Animation::~Animation() {
    glitch::collada::dropDatabase(m_database);
}

// 0x368efc AnimatorSynchronizedSet::getType() const
glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE AnimatorSynchronizedSet::getType() const {
    return static_cast<glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE>(15);
}

// 0x368f24 AnimatorSynchronizedSet::animateNode(glitch::scene::ISceneNode*, unsigned int)
// The engine set animateNode runs first (CSceneNodeAnimatorSet), then AnimApplicator::AnimateNode on +0x84 (non-virtual). The function
// returns nothing: Hex-Rays shows float because its last instruction is a tail branch that leaves r0 as it found it.
void AnimatorSynchronizedSet::animateNode(glitch::scene::ISceneNode* node, unsigned int time) {
    glitch::collada::CSceneNodeAnimatorSet::animateNode(node, time);
    m_applicator.AnimApplicator::AnimateNode(time);
}

// 0x368f54 AnimatorSynchronizedSet::~AnimatorSynchronizedSet() (D1)
// The original runs ~AnimApplicator on +0x84 and then the CSceneNodeAnimatorSynchronizedSet base destructor
// (through the VTT entry). The applicator is a member here, so it is destroyed after this body, as in the original.
// The base destructor runs after this body, implicitly.
AnimatorSynchronizedSet::~AnimatorSynchronizedSet() {}

// 0x368fcc AnimatorSynchronizedSet::~AnimatorSynchronizedSet() (D0, scalar deleting destructor)
// skipped: the original is ~AnimatorSynchronizedSet() followed by CustomFree(this). The C++ delete expression produces it.

// 0x368fe8 AnimatorSynchronizedSet::~AnimatorSynchronizedSet() (D2, VTT base-object variant)
// No separate C++ form. The VTT variant resets the vptrs of the base sub-object, runs ~AnimApplicator on +0x84
// and the base destructor. It is covered by the D1 definition above and has the same blockers.

// 0x36904c AnimatorSynchronizedSet::AnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&, glitch::core::svector<std::string> const&) (C1)
// The original calls the CSceneNodeAnimatorSynchronizedSet base constructor with the animation set and the names
// (through the VTT), then builds the AnimApplicator at +0x84 with this as its animator. The base constructor runs with
// the arguments forwarded here. The stores of the original's secondary words (+0xc0, +0xc4) are not written, as those
// words are part of the base. The vptr stores are compiler-generated.
AnimatorSynchronizedSet::AnimatorSynchronizedSet(
        const boost::intrusive_ptr<glitch::collada::CAnimationSet>& animationSet,
        const glitch::core::svector<std::string>& names)
    : glitch::collada::CSceneNodeAnimatorSynchronizedSet(animationSet, names), m_applicator(this) {}

// 0x3690dc AnimatorSynchronizedSet::AnimatorSynchronizedSet(boost::intrusive_ptr<glitch::collada::CAnimationSet> const&, glitch::core::svector<std::string> const&) (C2, VTT base-object variant)
// No separate C++ form. The VTT variant passes the VTT entry (+4) and the arguments to the base constructor, then
// builds the AnimApplicator. It is the same as C1 except that it does not store 1 at +0xc4. The C1 definition above covers
// it, with the same blockers.
