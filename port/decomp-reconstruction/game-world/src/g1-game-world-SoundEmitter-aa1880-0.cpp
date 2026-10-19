// Batch g1-game-world-SoundEmitter-aa1880-0 (SoundEmitter, all 11 rows of the batch).
// Reconstructed from the Hex-Rays pseudocode and the disassembly of libDungeonHunter2.so. Layout and declarations:
// dh2/SoundEmitter.hpp (no change to that header was needed). Offsets in comments are the original 32-bit ones.
//
// Partial: Update, and the destructor (D1 and D2). Both need VoxSoundManager, which the tree does not declare (see
// the notes on each function). Skipped: the deleting destructor (D0). Reconstructed: Draw, IsZonable, IsUpdatable,
// InitPost, the constructor (C1 and C2) and DeclareProperties.

#include <cmath>
#include <cstring>
#include <string>

#include "dh2/SoundEmitter.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "pydata-accessors/member_names.hpp"   // Arrays::Sounds::m_memberNames
#include "pydata-accessors/w7_pydata12.hpp"    // PyDataConstants::getConstant

// 0x394ec0 _ZNK12SoundEmitter4DrawEv
void SoundEmitter::Draw() const {
    // Empty in the original.
}

// 0x394ec4 _ZNK12SoundEmitter9IsZonableEv
bool SoundEmitter::IsZonable() const {
    return true;
}

// 0x394ecc _ZNK12SoundEmitter11IsUpdatableEv
bool SoundEmitter::IsUpdatable() const {
    return true;
}

// 0x395144 _ZN12SoundEmitter8InitPostEv
// Resolves m_sound (+0x378) in the Sounds name table: the first entry equal to the name, compared with LC_API_STRCMP_0
// (strcmp) in table order, sets m_soundId (+0x390). A name that is not in the table, or an empty table, gives -1.
// The count is Arrays::Sounds::size in the original. The NameTable size is the same count, as game-ui
// MenuBase-8948cc-2.cpp uses it. The original does not call GameObject::InitPost, and this body does not either.
void SoundEmitter::InitPost() {
    const pydata::NameTable& sounds = Arrays::Sounds::m_memberNames;
    int soundId = -1;
    for (int i = 0; i < sounds.size; ++i) {
        if (std::strcmp(m_sound.c_str(), sounds.names[i]) == 0) {
            soundId = i;
            break;
        }
    }
    m_soundId = soundId;  // +0x390
}

// 0x3951c0 _ZN12SoundEmitter6UpdateEv
// The listener leaving the range stops the sound: VoxSoundManager::Stop3D(s_instance, m_soundId, 250, &characterPos, m_distMax),
// and entering it starts the sound: VoxSoundManager::Play3D(s_instance, m_soundId, m_position, m_loop, 1, -1, -1). Each call
// is made only when s_instance is not null.
//
// The original calls Application::GetCurrentLevel and PlayerManager::GetLocalPlayer a second time for the later reads.
// Both return the same object each time, so each is called once here.
void SoundEmitter::Update() {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        return;
    }
    PlayerInfo* localPlayer = dword_99F76C->GetLocalPlayer(0, true);
    if (localPlayer->unk_660 == nullptr) {  // the local player's Character (character_660)
        return;
    }
    if (level->m_loadStep != 38) {  // +0x130; 38 = the level is fully loaded
        return;
    }

    // The Character's position is its GameObject::m_position (+0x160), read as three floats (v13..v15 in the original).
    Point3D<float> characterPos = localPlayer->unk_660->m_position;

    // Distance between the emitter and the character. The original computes the squared sum in float and takes the
    // square root in double, then rounds the result to float (__aeabi_f2d, sqrt, __aeabi_d2f).
    const float dx = m_position.X - characterPos.X;  // +0x160
    const float dy = m_position.Y - characterPos.Y;  // +0x164
    const float dz = m_position.Z - characterPos.Z;  // +0x168
    const float distance = static_cast<float>(std::sqrt(static_cast<double>(dx * dx + dy * dy + dz * dz)));

    if (m_playing) {  // +0x39c
        if (!(m_distMax <= distance)) {  // +0x398: still inside the audible range, nothing to do
            return;
        }
        if (m_distMax <= 0.0f) {
            return;
        }
        m_playing = false;
        if (VoxSoundManager::s_instance != nullptr) {
            VoxSoundManager::s_instance->Stop3D(m_soundId, 250, &characterPos, m_distMax);
        }
        if (m_playing) {
            // The original returns here when the stop call sets the flag again.
            return;
        }
    }

    if (m_distMax > distance && m_distMax > 0.0f) {  // +0x398: the listener is inside the range
        m_playing = true;  // +0x39c
        if (VoxSoundManager::s_instance != nullptr) {
            const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
            VoxSoundManager::s_instance->Play3D(m_soundId, at, m_loop, 1, -1.0f, -1.0f);
        }
    }
}

// 0x3953e0 SoundEmitter::~SoundEmitter(void)
// Also the D2 base destructor at 0x395490 (same body; one C++ destructor serves both).
// When m_playing (+0x39c) is set, the sound is stopped first: VoxSoundManager::Stop(s_instance, m_soundId (+0x390), 0). The
// string m_sound (+0x378) and then GameObject are destroyed by the compiler, in the original order.
SoundEmitter::~SoundEmitter() {
    if (m_playing) {
        VoxSoundManager::s_instance->Stop(m_soundId, 0);
    }
}

// 0x395474 _ZN12SoundEmitterD0Ev
// skipped: the compiler generates the deleting destructor (~SoundEmitter() followed by CustomFree(this)). A delete
// expression produces it, so no source is written for it.

// 0x39551c _ZN12SoundEmitterC1EN10ObjectBase6GO_IDSE
// 0x3955a8 _ZN12SoundEmitterC2EN10ObjectBase6GO_IDSE
// Both addresses have the same body. One C++ constructor covers them. The vtable pointers are written by the compiler.
// The constructor does not set m_loop (+0x374), as in the original.
SoundEmitter::SoundEmitter(GO_IDS id) : GameObject(id) {
    unk_85 = 1;         // +0x85 updating flag (ObjectBase::unk_85), set by the constructor
    m_soundId = -1;     // +0x390
    m_distMin = -1.0f;  // +0x394
    m_distMax = -1.0f;  // +0x398
    m_playing = false;  // +0x39c
    // m_sound (+0x378) is default constructed. The original allocates its 16-byte buffer, which is not observable.
}

// 0x395718 _ZN12SoundEmitter17DeclarePropertiesEv
// The registrations follow the original's order: the GameObject properties, then "loop" (bool, default true, +0x374),
// "sound" (string, default empty, +0x378), "distMin" (float, default AudioConstants::CameraReferenceDistance, +0x394)
// and "distMax" (float, default AudioConstants::CameraMaxDistance, +0x398). The original builds "loop" and "sound" by
// hand from SimpleTypeProperty objects, and AddProperty<T> builds the same ones. The PyDataConstants pointer is
// Application +0x2c (dword_99F758 in the original).
void SoundEmitter::DeclareProperties() {
    GameObject::DeclareProperties();
    AddProperty<bool>("loop", m_loop, true);         // +0x374
    AddProperty<std::string>("sound", m_sound);      // +0x378

    PyDataConstants* constants = ApplicationGetInstance().m_pyDataConstants;
    const int referenceDistance = constants->getConstant("AudioConstants", "CameraReferenceDistance");
    AddProperty<float>("distMin", m_distMin, static_cast<float>(referenceDistance));  // +0x394
    const int maxDistance = constants->getConstant("AudioConstants", "CameraMaxDistance");
    AddProperty<float>("distMax", m_distMax, static_cast<float>(maxDistance));        // +0x398
}
