// DebugCachedCharacter: a (path, gameswf::character weak pointer) pair that MenuManager keeps embedded at
// +0x20 (original size 0x30) so a debug UI element can be re-found by name once the weak pointer dies.
// Offsets are the original 32-bit ones. Constructor 0x41aeec (default), 0x431428 (clone, takes a character);
// destructor 0x41a9fc releases the weak_ptr proxy refcount and frees the string.
#pragma once

#include <cstdint>
#include <string>

#include "vendor-gameswf/smart_ptr_proxy.hpp"  // gameswf::smart_ptr_proxy: the weak proxy word at +0x28

class MenuFX;
namespace gameswf { class character; }

class DebugCachedCharacter {
public:
    DebugCachedCharacter();                                             // 0x41aeec
    explicit DebugCachedCharacter(gameswf::character* character);       // 0x431428
    ~DebugCachedCharacter();                                            // 0x41a9fc

    void RefreshCache(gameswf::character* character, MenuFX* menu, gameswf::character* root);   // 0x427c44
    void RefreshCache(const char* path, MenuFX* menu, gameswf::character* root);                // 0x427ca0
    gameswf::character* GetChar();                                      // 0x427d50 asserts m_character.get_ptr() != 0

    // The inlined refresh the callers run before GetChar (MenuMessageManager<T, N>::Invoke, TrophyManager::TrophyUnlockedCB): a
    // cached pointer whose weak proxy is alive is kept; a set pointer with a dead proxy drops the proxy (the count falls, the
    // proxy is freed at zero) and clears the cache, and an empty cache is refreshed with RefreshCache(path, menu, null).
    void RefreshCacheIfStale(const char* path, MenuFX* menu) {
        if (m_character != nullptr) {
            if (m_characterProxy.get_proxy()->is_alive()) {
                return;
            }
            m_characterProxy = nullptr;
            m_character = nullptr;
        }
        RefreshCache(path, menu, nullptr);
    }

    uint8_t m_flag;                                                     // +0x00 0 (the ctor writes it as a byte)
    uint8_t pad_01[3];
    uint32_t unk_04;                                                    // +0x04 0
    std::string m_path;                                                 // +0x08 STLport string, 0x18 bytes (+0x08 .. +0x1f)
    MenuFX* m_menu;                                                     // +0x20 0; the menu passed to RefreshCache (both overloads store it)
    gameswf::character* m_root;                                         // +0x24 0; the root character passed to RefreshCache
    gameswf::smart_ptr_proxy m_characterProxy;                          // +0x28 gameswf::weak_ptr<character>: the proxy (one reference, released by operator=(nullptr))
    gameswf::character* m_character;                                    // +0x2c weak_ptr<character> m_ptr: the cached pointer, valid while the proxy is alive
};
