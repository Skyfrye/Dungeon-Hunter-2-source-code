// gameswf natives of the player info, potion, stats, keyboard, options, save slot, buff, inventory, quest,
// tutorial, item details, invite and parsed-string menus (batch g1-game-app-global-f216b6-13, ELF 0x4466c4 ..
// 0x44f528). Definitions: game-app/src/g1-game-app-global-f216b6-13.cpp.
//
// gameswf calls every native with one const fn_call&. The Hex-Rays int or pointer return is the leftover r0 of the
// last call, so the natives return void. The fn_call accessors and the as_value and as_object API are not in the
// tree, so every native is PARTIAL; the notes in the .cpp give the original steps.
//
// Two pure parts of the natives are written here and tested in game-app/tests/g1-game-app-global-f216b6-13_test.cpp.
#pragma once

namespace gameswf {
struct fn_call;
}  // namespace gameswf

// 0x4466c4 NativeGetPlayerInfos
void NativeGetPlayerInfos(const gameswf::fn_call& call);
// 0x446978 NativeGetStringNumPotions
void NativeGetStringNumPotions(const gameswf::fn_call& call);
// 0x446afc NativeGetPlayerStats
void NativeGetPlayerStats(const gameswf::fn_call& call);
// 0x4497f4 NativeGetKeyboardLastString
void NativeGetKeyboardLastString(const gameswf::fn_call& call);
// 0x44996c NativeGetNumPotions
void NativeGetNumPotions(const gameswf::fn_call& call);
// 0x449b10 NativeGetPossibleClassSpec
void NativeGetPossibleClassSpec(const gameswf::fn_call& call);
// 0x449e70 NativeSetOptions
void NativeSetOptions(const gameswf::fn_call& call);
// 0x44a298 NativeGetOptionParameters
void NativeGetOptionParameters(const gameswf::fn_call& call);
// 0x44a5c4 NativeInvGetPlayerGold
void NativeInvGetPlayerGold(const gameswf::fn_call& call);
// 0x44a820 NativeHUDGetActiveFaery
void NativeHUDGetActiveFaery(const gameswf::fn_call& call);
// 0x44aa28 NativeGetSaveSlotDetails
void NativeGetSaveSlotDetails(const gameswf::fn_call& call);
// 0x44b604 NativeGetBuffs
void NativeGetBuffs(const gameswf::fn_call& call);
// 0x44bb94 NativeInvGetItemsListForSlot
void NativeInvGetItemsListForSlot(const gameswf::fn_call& call);
// 0x44c444 NativeGetQuestDetails
void NativeGetQuestDetails(const gameswf::fn_call& call);
// 0x44c7a0 NativeGetCharMenuTutorialMessage
void NativeGetCharMenuTutorialMessage(const gameswf::fn_call& call);
// 0x44ca5c NativeInvGetItemDetails
void NativeInvGetItemDetails(const gameswf::fn_call& call);
// 0x44d770 NativeInvitePlayer
void NativeInvitePlayer(const gameswf::fn_call& call);
// 0x44de4c NativeGetParsedString
void NativeGetParsedString(const gameswf::fn_call& call);

// Language value stored by NativeSetOptions for the 'Language' key (the arithmetic of 0x449e70, without the
// gameswf argument reads). requested is the value from the script, koreanBuild is isKOREAN_BUILD, langKor is the
// Korean-build slot lang_kor and langCurr is lang_curr (-1 when unset). The result is stored in lang_curr and passed
// to SavegameManager::setOption. Other keys store the requested value unchanged and do not call this.
inline int ResolveLanguageOption(int requested, bool koreanBuild, int langKor, int langCurr) {
    int value = requested;
    bool flag = false;  // the original's v15: 1 when the requested value is 6 (or the Korean-build flag)
    if (koreanBuild && langKor == 0) {
        value = 5;
        flag = false;
    } else if (koreanBuild && langKor == 5) {
        value = 0;
        flag = false;
    } else {
        flag = (value == 6);
    }
    const int effective = langCurr < 0 ? value : langCurr;
    if (effective == 3 && flag) {
        value = 4;
    } else if (effective == 4 && flag) {
        value = 5;
    } else if (effective == 6 && value == 3) {
        value = 5;
    } else if (effective == 5 && value == 3) {
        value = 4;
    }
    return value;
}

// strftime format of a save slot's time text in NativeGetSaveSlotDetails (0x44aa28), chosen by the language index
// from SavegameManager::getLanguage(). The buffer the original formats into is 80 bytes.
inline const char* SaveSlotTimeFormat(int language) {
    switch (language) {
        case 1:
        case 3:
        case 7:
            return "%d/%m     %H:%M";
        case 2:
            return "%d.%m.     %H:%M";
        case 4:
        case 5:
        case 6:
            return "%m.%d.     %H:%M";
        default:
            return "%m/%d     %H:%M";
    }
}
