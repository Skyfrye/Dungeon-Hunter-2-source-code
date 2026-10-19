// Native playlists (vox::PlaylistElement, vox::NativePlaylist and
// vox::NativePlaylistsManager). The native segment decoder walks these lists.
// Only the members the reconstructed bodies read or write are named; the others
// are kept as field_NN_ with their offsets.
#pragma once

#include <cstddef>
#include <cstdint>
#include <vector>

namespace vox {

class SegmentGroup;
struct GroupInfos;  // defined in groups.hpp

// Two-word record the playlist constructor reads (vox::PlaylistInfos). The words are
// not identified; word 0 goes to +0x04 and word 1 to +0x08, +0x14 and +0x20.
struct PlaylistInfos {
    std::int32_t words_[2] = {0, 0};
};

// Record the AddPlaylistElement functions read (vox::PlaylistElementInfos). Words 0 to
// 7 are read (word k at +0x04 * k in the original); the names are not identified.
struct PlaylistElementInfos {
    std::int32_t words_[8] = {0, 0, 0, 0, 0, 0, 0, 0};
};

// Snapshot written by NativePlaylist::GetState and read by NativePlaylist::SetState.
// The original record is 28 bytes: six words, then the pointer to the group vector.
// Field names come from what the playlist code does with each slot.
struct PlaylistState {
    std::int32_t group_index = 0;        // +0x0c of the playlist (current group)
    std::int32_t element_index = 0;      // +0x10 (current element index)
    std::int32_t remaining_repeats = 0;  // +0x14
    std::int32_t previous_group = 0;     // +0x18
    std::int32_t previous_element = 0;   // +0x1c
    std::int32_t saved_repeats = 0;      // +0x20
    const std::vector<SegmentGroup*>* groups = nullptr;  // +0x24 (the group vector itself)
};

// 0x881834 C1, 0x881810 C2: five words (20 bytes in the 32-bit original).
class PlaylistElement {
public:
    PlaylistElement();  // C1 0x881834, C2 0x881810: the body is the same as Reset
    // C1 0x881884, C2 0x881858: memberwise copy of the five words.
    PlaylistElement(const PlaylistElement& other);
    void Reset();       // 0x8818b0: field_00 = -1, field_04 = 0, field_08 = 0, field_0c = 0, field_10 = 1

private:
    friend struct PlaylistElementTestAccess;
    friend struct NativePlaylistElementsTestAccess;
    friend class NativePlaylist;
    friend class VoxNativeSubDecoder;      // the segment code reads these words
    friend class NativeSubDecoderState;    // SetState and GetState copy them
    std::int32_t field_00_ = -1;  // +0x00
    std::int32_t field_04_ = 0;   // +0x04
    std::int32_t field_08_ = 0;   // +0x08
    std::int32_t field_0c_ = 0;   // +0x0c
    std::int32_t field_10_ = 1;   // +0x10
};

// One playlist, 60 bytes in the 32-bit original (VoxAlloc(0x3c) in AddPlaylist).
// Offsets: +0x00 valid, +0x04 word 0 of the PlaylistInfos, +0x08 total repeats,
// +0x0c current group, +0x10 current element, +0x14 remaining repeats, +0x18 and
// +0x1c the previous group and element, +0x20 saved repeats, +0x24..+0x2c the group
// vector, +0x30..+0x38 the element vector (see the port note on elements_ below).
class NativePlaylist {
public:
    NativePlaylist() = default;
    // C2 0x881e4c, C1 0x881e9c: the body is the same.
    explicit NativePlaylist(const PlaylistInfos* info);
    // C1 0x883cd8, C2 0x884024: copies the scalar words, the groups (copy constructors)
    // and the elements (heap copies owned by this playlist).
    NativePlaylist(const NativePlaylist& other);
    // D1 0x8825b8, D2 0x88278c: destroys and frees the groups and the elements.
    ~NativePlaylist();

    // The element accessors return the PlaylistElement* the original returns (a pointer
    // stored in the 32-bit element vector; the returned word is the pointer itself).
    PlaylistElement* GetCurrentElement() const;  // 0x881eec: elements_[current_]
    int GetCurrentPosition() const;              // 0x881efc: current_
    bool IsValid() const;                        // 0x88219c: the flag byte at +0x00
    // 0x881f40: the element at index when the int flag at +0x14 is set and the index is
    // inside the table (+0x30 to +0x34); otherwise nullptr.
    PlaylistElement* GetPlaylistElement(int index) const;
    // 0x881f04: copies the current indices, repeats and the group vector into state.
    void GetState(PlaylistState* state) const;

    // 0x881f78: walks the groups and returns the next element (advances the playlist).
    PlaylistElement* GetPlaylistElement();
    // 0x8821a4: returns the element the next call would return, without advancing.
    PlaylistElement* PeekAtNextElement();
    // 0x8822e8: saves the indices and repeats, restarts at group 0 and resets each group.
    void Reset();
    // 0x882360: copies the scalar words and the state of each group (SegmentGroup::SetState).
    void SetState(const NativePlaylist& other);
    // 0x882ae0: copies the six state words and the state of each group.
    void SetState(const PlaylistState* state);
    // 0x88240c: restores the previous group and element; calls the previous group's
    // SetToPreviousState.
    void SetToPreviousState();
    // 0x8838c4: appends a PlaylistElement and adds its word to the group at words_[2].
    void AddPlaylistElement(const PlaylistElementInfos* info);
    // 0x883c04: builds a RandomGroup (select mode nonzero) or a SequentialGroup and appends it.
    void AddGroup(const GroupInfos* info);

private:
    friend struct NativePlaylistTestAccess;
    friend struct NativePlaylistElementsTestAccess;
    // Group dispatch. AddGroup builds a RandomGroup for a nonzero select mode and a
    // SequentialGroup otherwise, so the select mode gives the concrete group type. These
    // calls reach the same functions as the original's vtable slots (+0x08 position,
    // +0x0c peek, +0x10 reset, +0x18 previous state, +0x14 base SetState).
    static int GroupElementPosition(SegmentGroup* group);
    static int GroupPeekNext(const SegmentGroup* group, int mode);
    static void GroupReset(SegmentGroup* group, int reset_mode);
    static void GroupSetToPreviousState(SegmentGroup* group);

    bool valid_ = false;                  // +0x00
    std::int32_t field_04_ = 0;           // +0x04 (word 0 of PlaylistInfos; the reset flag the walk reads)
    std::int32_t total_repeats_ = 0;      // +0x08 (word 1 of PlaylistInfos)
    std::int32_t current_group_ = 0;      // +0x0c
    int current_ = 0;                     // +0x10 (index into the element table)
    int field_14_ = 0;                    // +0x14: remaining repeats; nonzero keeps the playlist live
    std::int32_t previous_group_ = 0;     // +0x18
    std::int32_t previous_element_ = 0;   // +0x1c
    std::int32_t saved_repeats_ = 0;      // +0x20
    std::vector<SegmentGroup*> groups_;   // +0x24..+0x2c
    // +0x30..+0x38: the element vector of PlaylistElement* (begin, end, capacity in the
    // original). Each element is a VoxAlloc block owned by this playlist.
    std::vector<PlaylistElement*> elements_;
};

// Manager for the playlists of one decoder. The original keeps the flag at +0x00,
// a field at +0x04 (initialised to 0; not identified), the count at +0x08 and the
// NativePlaylist pointer array at +0x0c.
class NativePlaylistsManager {
public:
    NativePlaylistsManager();                   // C2 0x882448 (C1 0x882464 has the same body)
    // C1 0x883eac, C2 0x883f68: copies each playlist with the NativePlaylist copy constructor.
    NativePlaylistsManager(const NativePlaylistsManager& other);
    // D1 0x8826b4, D2 0x882720: destroys and frees each playlist, then the pointer array.
    ~NativePlaylistsManager();

    int GetNbPlaylists() const;                 // 0x882480: count_
    bool IsValid() const;                       // 0x8824c0: flag at +0x00

    // 0x882488: mode 0 calls NativePlaylist::GetPlaylistElement(), 1 the current element,
    // 2 the indexed element; any other mode returns nullptr.
    PlaylistElement* GetPlaylistElement(int index, int mode, int argument);
    // 0x8824c8: returns PeekAtNextElement of playlist index.
    PlaylistElement* PeekAtNextPlaylistElement(int index);
    // 0x8824d4: negative index does nothing; otherwise Reset the playlist.
    void ResetPlaylist(int index);
    // 0x8824e8: calls SetToPreviousState on playlist index.
    void SetPlaylistToPreviousState(int index);
    // 0x8824f4: copies the flag and field_04, then SetState on each playlist.
    void SetState(const NativePlaylistsManager& other);
    // 0x882568: allocates a playlist from info at index and counts it when it is built.
    void AddPlaylist(int index, const PlaylistInfos* info);
    // 0x8839c8: forwards to the playlist at info->words_[0] and takes its validity.
    void AddPlaylistElement(const PlaylistElementInfos* info);
    // 0x883ca4: forwards to the playlist at info->unknown_00_ (GroupInfos word 0) and
    // takes its validity.
    void AddGroup(const GroupInfos* info);
    // 0x882c0c: copies the state of playlist from into playlist to.
    void TransposePlaylistParameters(int from, int to);
    // 0x882548: allocates count * 4 bytes for the pointer array and returns it (null when
    // the allocation fails, which also clears the flag). The count at +0x08 is not written.
    NativePlaylist** Init(int count);

private:
    friend struct NativePlaylistsManagerTestAccess;
    bool valid_ = true;                         // +0x00
    int field_04_ = 0;                          // +0x04 (not identified)
    int count_ = 0;                             // +0x08
    NativePlaylist** playlists_ = nullptr;      // +0x0c
};

}  // namespace vox
