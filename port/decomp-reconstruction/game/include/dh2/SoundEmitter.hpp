// SoundEmitter: a placed object that plays a 3D sound (the "sound" property, looked up in Arrays::Sounds). It starts
// the sound when the local player is inside distMax and stops it again when the player leaves that range.
// Original 32-bit size 0x3a0 (928), the operator new size in GetNewInstance<SoundEmitter>.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3955a8, Update 0x3951c0, InitPost 0x395144).
#pragma once

#include <cstdint>
#include <string>

#include "dh2/GameObject.hpp"

class SoundEmitter : public GameObject {
public:
    explicit SoundEmitter(GO_IDS id);                                   // 0x39551c / 0x3955a8
    ~SoundEmitter() override;                                           // 0x3953e0 (D1), 0x395474 (D0), 0x395490 (D2)

    // ---- virtual, vtable slot order (GameObject slots are inherited unless listed here) ----
    void DeclareProperties() override;                                  // +0x18 0x395718 "loop", "sound", "distMin", "distMax"
    void InitPost() override;                                           // +0x1c 0x395144 resolves m_sound in Arrays::Sounds
    void Update() override;                                             // +0x2c 0x3951c0 starts or stops the 3D sound by distance to the local player
    void Draw() const override;                                         // +0x30 0x394ec0 empty
    bool IsUpdatable() const override;                                  // +0x38 0x394ecc true
    bool IsZonable() const override;                                    // +0xc4 0x394ec4 true

    // GameObject occupies +0x00 .. +0x373.
    bool m_loop;                                                        // +0x374 property "loop", default true; passed to VoxSoundManager::Play3D
    uint8_t pad_375[3];                                                 // +0x375
    std::string m_sound;                                               // +0x378 property "sound", 24 bytes; the name looked up in Arrays::Sounds
    int m_soundId;                                                      // +0x390 index of m_sound in Arrays::Sounds, -1 when not found (-1 from the constructor)
    float m_distMin;                                                    // +0x394 property "distMin" from AudioConstants::CameraReferenceDistance; -1.0 from the constructor
    float m_distMax;                                                    // +0x398 property "distMax" from AudioConstants::CameraMaxDistance; -1.0 from the constructor; the audible range
    bool m_playing;                                                     // +0x39c set while the 3D sound is started, cleared when it is stopped
    uint8_t pad_39d[3];                                                 // +0x39d
};
