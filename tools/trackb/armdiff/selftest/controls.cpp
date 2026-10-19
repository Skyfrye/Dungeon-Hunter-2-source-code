// armdiff self-test: faithful and deliberately wrong clones of original functions of libDungeonHunter2.so.
//
// run.py --unit replaces the ledger source of the selected functions with this file. selftest.py checks that
// every faithful clone is reported as a match and every wrong clone as a mismatch. If a wrong clone ever
// reports a match, the comparison is blind to that kind of difference and no result can be trusted.
//
// The classes declare only what the mangled names need. Field accesses use raw byte offsets taken from the
// original disassembly, so the clones do not depend on any Track B header.
//
//   0x3c932c CharAnimator::ANIM_GetStepIndex() const        faithful
//   0x3c9444 CharAnimator::ANIM_SkipNextStep(unsigned)      wrong: adds 2 instead of 1
//   0x3c946c CharAnimator::ANIM_SetStep(unsigned, unsigned) wrong: stores into the next field (+0x14, not +0x10)
//   0x3c948c CharAnimator::ANIM_StopLoop(bool)              wrong: never sets the loop flag at +0x4a
//   0x364400 AnimApplicator::SetCallback(cb, user)          faithful
//   0x3649d8 AnimationSet::Update(int)                      wrong: calls operator new (the original does nothing)
//   0x36621c Animator::getType() const                      wrong: returns 12, the original returns 11

namespace glitch { namespace scene { class ITimelineController; } }

class CharAnimator {
public:
    int ANIM_GetStepIndex() const;
    void ANIM_SkipNextStep(unsigned int stackIdx);
    void ANIM_SetStep(unsigned int step, unsigned int stackIdx);
    void ANIM_StopLoop(bool stop);
    unsigned char raw[96];
};

class AnimApplicator {
public:
    void SetCallback(void (*cb)(glitch::scene::ITimelineController*, void*), void* user);
    unsigned char raw[64];
};

class AnimationSet {
public:
    void Update(int dt);
    unsigned char raw[64];
};

class Animator {
public:
    int getType() const;
    unsigned char raw[16];
};

static inline unsigned char* bytes(void* p) { return static_cast<unsigned char*>(p); }
static inline const unsigned char* bytes(const void* p) { return static_cast<const unsigned char*>(p); }

// faithful: -1 while stopped, else the step index of the current stack entry
int CharAnimator::ANIM_GetStepIndex() const {
    const unsigned char* p = bytes(this);
    if (p[0x48]) {
        return -1;
    }
    unsigned int idx = *reinterpret_cast<const unsigned int*>(p + 0x2c);
    return *reinterpret_cast<const int*>(p + 0x10 + 12 * idx);
}

// wrong: the original adds one
void CharAnimator::ANIM_SkipNextStep(unsigned int stackIdx) {
    unsigned char* p = bytes(this);
    if (!p[0x48]) {
        *reinterpret_cast<int*>(p + 0x10 + 12 * stackIdx) += 2;
    }
}

// wrong: the original stores at +0x10 + 12 * stackIdx
void CharAnimator::ANIM_SetStep(unsigned int step, unsigned int stackIdx) {
    unsigned char* p = bytes(this);
    if (!p[0x48]) {
        *reinterpret_cast<unsigned int*>(p + 0x14 + 12 * stackIdx) = step;
    }
}

// wrong: the original also sets the byte at +0x4a when `stop` is true
void CharAnimator::ANIM_StopLoop(bool stop) {
    unsigned char* p = bytes(this);
    if (!p[0x48]) {
        unsigned int idx = *reinterpret_cast<unsigned int*>(p + 0x2c);
        *reinterpret_cast<unsigned int*>(p + 12 * idx + 0xc) = 0;
        (void)stop;
    }
}

// faithful
void AnimApplicator::SetCallback(void (*cb)(glitch::scene::ITimelineController*, void*), void* user) {
    unsigned char* p = bytes(this);
    *reinterpret_cast<void**>(p + 0x34) = reinterpret_cast<void*>(cb);
    *reinterpret_cast<void**>(p + 0x38) = user;
}

// wrong: an allocation the original does not make
void AnimationSet::Update(int) {
    void* leak = ::operator new(8);
    __asm__ volatile("" : : "r"(leak) : "memory");
}

// wrong: 12 instead of 11
int Animator::getType() const { return 12; }
