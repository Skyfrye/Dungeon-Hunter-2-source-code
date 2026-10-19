# net-session-online notes

Status: 1235 functions queued. Ledger has 996 rows (710 reconstructed, 168 partial, 118 skipped).
Wave 7 added 124 rows (598 at its start). 546 queued functions remain (see "Wave 7" below).

## Layouts (original 32-bit offsets, kept as comments)

CEvent (`include/net-session-online/c_event.hpp`), vtable `_ZTV6CEvent`:
- +0x00 vptr, +0x04 type, +0x08 payload pointer, +0x0c payload size, +0x10 online clock at Init.
- Init copies the payload only when data != 0, size != 0 and size is non-negative as a signed int.

CMessage (`include/net-session-online/c_message.hpp`), vtable `_ZTV8CMessage`:
- Header block, 16 bytes at +0x04: type (low byte on the wire), destMask (+0x08), sender (+0x0c), reserved (+0x10).
- +0x2c sendMode: 0 routes via the server, 1 is remote, >1 is never local.
- +0x30 reliable, +0x31 local, +0x33 includeLocalMember, +0x34 timestamp, +0x38 trackSent,
  +0x3c finished (set by CMessaging when a message is done with its queue; the constructor zeroes it),
  +0x40 ackMask, +0x48 sentMask, +0x4c lifetime.
- CMessaging reads the header through the accessors Sender (+0x0c), Serial (+0x04), DestMask (+0x08),
  WireTypeId (+0x10, low byte), AckMask (+0x40), IsFinished and SetFinished (+0x3c).
- The original also has a std::string at +0x14 (STL private layout). It is not modelled, so D1/D2 are partial.
- Virtual slots: +0x00 GetDataPtr, +0x04 unnamed (body not recovered), +0x08 GetDataSize,
  +0x0c ResetData, +0x10 WriteData, +0x14 ReadData, +0x20 Duplicate.

## Inferred CMatching interface (`deps/matching.hpp`)

Slot names are inferred from call sites; the vtable dump shows them as null/pure.
- +0x84 MemberBit(memberId) gives the bit for a member in a mask.
- +0x6c LocalMemberId(), +0x74 ServerMemberId().
- IsServer() and GetRoomMask() are non-virtual in the original. They are declared virtual here for testing.

## Decisions and deviations

- Deviation: CEvent copy-assignment nulls the freed payload pointer. The original left it dangling.
- Deviation: CMessage::CreateMessage returns nullptr for an out-of-range or unregistered type. The original calls through the slot.
- TerminateMessageRegistration stores 0 into the terminated flag, as decompiled. The name suggests 1. Kept as decompiled, and this is worth checking against the real binary.
- Unserialize reads the type id as a signed char, as the original does, so type ids of 128 and above map to negative slots.
- Several small getters are declared inline in the header. Their addresses are in the ledger notes.

## Not done / next

- CMessage::SetDefaultProperties (0x81a33c): mostly std::string internals. Not reconstructed.
- CEventQueueBase and the CEventQueue<...> templates: most ledger candidates decompile to a bare tail call into CNetMutex::Lock. This looks like identical-code folding or mislabeled thunks, not real bodies. Only HasEvents (0x7fde10) has a real body. Needs a check against the binary before it is ledgered.
- Still queued: CMessaging, CSignIn*, GameCenter, MultiplayerCallback, lib-online-glx (GLXPlayer*, COnline*, Json::), item, channel, tFriendInfo/tRoomInfo.
- Stand-ins in deps/ are minimal. NetBitStream is byte-aligned only. The real implementation belongs to net-transport.

## CLobbyParameterAndQuery (session 2)

Layout (`include/net-session-online/c_lobby_parameter_and_query.hpp`), vtable `_ZTV23CLobbyParameterAndQuery`:
- +0x00 vptr, +0x04 parameter count, +0x14 array of owned value buffers, +0x18 inline int array of value lengths.
- PackParameter: count byte = number of non-empty parameters, then the non-empty values concatenated; returns nullptr when total length is 0.
- The original's ctor loads "oconf.bar" and parses it, then ends in a non-returning tail call. Only the not-found trace is kept (partial).
- AddQueryCondition and SetParameterValue: only the index guard is recovered (partial). Test seams Reserve and StoreParameter are not in the original.
- Deviation: the original frees values with scalar delete over new[] memory; the port uses delete[].

## Still not done

- GLXPlayerMPLobby::mpSend* (0x8376fc..0x83a744) need ConnectionLobby and GLXPlayerUserFriend stand-ins and the GLXPlayerMPLobby layout (+0x4, +0x48, +0x50, +0x60, +0x74, +0x80, +0x84). Not started.
- The rest of the queue (about 1100 functions) is unchanged.

## GLXPlayerMPLobby (session 2)

Layout is in `include/net-session-online/glx_player_mp_lobby.hpp`. Key offsets:
- +0x04 observer (GLXPlayerMPBase), +0x50 last result (-1 pending, 0x32 refused), +0x60 state.
- +0x74 ConnectionLobby (heap, 0x2058 bytes, time at +0x2050), +0x84 pending request kind, +0x80 pending flag, +0x81 master.
- Every mpSend* request checks state > 1 (0 and 1 are refused); a refusal sets 0x32 and calls observer vtable slot 0 (`OnInvalidState`).
- Request kinds at +0x84 are taken from the store instructions in each body; see the constants in the cpp.

Deviations and open questions:
- The closing `XP_DEBUG_OUT(&DAT_0091d6b0)` trace of each body is not reproduced (the string is not recovered).
- Argument types on the mpSend* wrappers follow the mangled symbol. Ghidra's own parameter types differ on some (for example the third argument of mpSendGetLobbyForFriend). Forwarding casts to the ConnectionLobby stand-ins follow the mangled names of the ConnectionLobby methods. Verify against the binary before relying on the exact widths.
- ConnectionLobby and GLXPlayerUserFriend are inline stand-ins in deps/ (no-op sends, friend count 0). They are not functional.
- The ConnectionLobby stand-in is not polymorphic (the original deletes it through a vtable slot).

Not done in this group: mpSendGetLobbyForFriend (friend-list overload, 0x837a88, 420 bytes), CreateLobby (0x8387a4), CreateLobbyWithGameCenter (0x83a744), Update (0x838a34), ProcessIncomingMessages (0x838c6c, 4492 bytes, skip), SendGetLobbyForFriend with GLXPlayerUserFriend, and the GLXPlayerMPLobby class members listed in the queue.

## GLXPlayerMPBase, observer and GLXPlayerUserFriend getters (session 2)

- `include/net-session-online/glx_player_mp_base.hpp`: GLXPlayerMPBaseObserver with the 14 callbacks in vtable order (slot 0 is OnMPFinishGameSuccess). GLXPlayerMPBase has observer at +0x04, error message at +0x4c, aux object at +0x68.
- The lobby refusal path (`RefuseRequest`) calls observer slot 0. That is OnMPFinishGameSuccess in the vtable, which looks wrong for a refusal. Verify against the binary.
- `include/net-session-online/glx_player_user_friend.hpp`: per-entry arrays at +0x40..+0x70 (see the comment). Getters use an inclusive bound (index <= count), GetName uses strict (<). The original reads at index == count, which is past the end. The port returns the default.
- GLXPlayerUserFriend ctors/dtors, clearFriendsList (816 bytes), processFriendsList and the send* methods are not reconstructed yet.
- GLXPlayerMPBase::mpSendEstablishConnection (0x84ad78), mpSendDisconnect (0x84ae28) and the setErrMsg() overload (0x84abd8) are not done.

## Wave 3: GLX player, state machine, IEvent, CMsg types

152 rows added in this wave (113 reconstructed, 32 partial, 7 skipped). Host and Windows
builds both pass: 16 tests, all passing.

### Layouts (original 32-bit offsets, kept as comments)

GLXPlayerComponent (`glx_player_component.hpp`): +0x00 vptr, +0x04 observer (GLXPlayerObserver*),
+0x08 GGI (unsigned long), +0x0c user id (owned string).

GLXPlayerObserver (`glx_player_observer.hpp`): the vtable has seven slots, and only slot 0 is named
in the dump. Four slots that the web component calls are declared: slot 0 OnDownloadError,
slot 1 OnRequestTimeout, slot 2 OnResponseText, slot 3 OnResponseError. Slots 1-3 are inferred
from call sites. The virtual destructor is an addition and is not in the slot count.

GLXPlayerWebComponent (`glx_player_web_component.hpp`): base GLXPlayerComponent.
- +0x10, +0x14, +0x18 owned strings (role not identified); +0x1c service URL (set by LoadConfig).
- +0x20 request client (type not identified; allocation partial).
- +0x24 response cursor (points into the response text); +0x28 response function id;
  +0x2c enabled flag; +0x34 request start time; +0x38 request id, -1 when idle.
- Virtual slots after the dtors: +0x08 Update, +0x0c SendByGet, +0x10 SendByPost, +0x14 Cancel,
  +0x18 OnUpdateParse, +0x1c OnUpdateSuccess, +0x20 OnUpdateFailure, +0x24 LoadConfig.

GLXPlayerUser (`glx_player_user.hpp`): extends GLXPlayerWebComponent (base at +0x00..+0x3b).
- Owned strings at +0x40..+0x124 (userName_ +0x44, password_ +0x48, email_ +0x4c, country_ +0x54,
  userData_ +0xc0, avatarKey_ +0xa8, chatWarning_ +0x118, and others; the header lists them).
- Vectors: gamePid_ +0x70, gameName_ +0x74, gameTrophy_ +0x78 (int32), avatarKeys_ +0x108,
  avatarLastUpdates_ +0x10c, avatarStatus_ +0x110; avatarCount_ +0x114.
- Scalars: email flag +0x50, sex +0x60, online time +0x68, total trophy +0x6c, game count +0x7c,
  field80_ +0x80 (-1), currentState_ +0x84 (-1), reputation (double) +0x90, bad/good reputation
  +0x98/+0x9c, trophy +0xa0, best score +0xa4, trophy-icon mode +0xd4 (-1).
- Not modelled: vector<channel> at +0xe8 and +0xf8, _LiveFeed array at +0x12c, request client at +0x20.

MultiplayerStateMachine (`multiplayer_state_machine.hpp`): +0x00 state (-1 when none),
+0x04 entry count, +0x08 head entry, +0x0c tail link (the Entry** slot the next entry is stored in).
Entry: +0x00 skip flag, +0x04 state id, +0x08 callback, +0x0c next, +0x10 link (the slot that holds
this entry, so removal can fix the predecessor). It is an intrusive singly linked list.

IEvent and IEventReceiver: `i_event.hpp` and `i_event_receiver.hpp` now forward to the game's one
definitions, `dh2/IEvent.hpp` (+0x04 event id, virtual getEventID) and `dh2/IEventReceiver.hpp`
(onEvent at +0x08). U2 (engine unification) retired the stand-ins.

CMsgDropLoot (`c_msg_drop_loot.hpp`): header bytes +0x50..+0x67 (fixed_[0x18]); block length
int32 at +0x64; block owned at +0x68. GetDataSize = block length + 24.

CMsgQuestsSync (`c_msg_quests_sync.hpp`): header bytes +0x50..+0x57 (fixed_[8]); block length
int32 at +0x50; second header word at +0x54; block owned at +0x58. GetDataSize = block length + 8.

### Decisions and deviations

- Observer slot numbers are inferred from call sites. Each name in glx_player_observer.hpp says so.
- Pseudocode ends in a tail call that Ghidra could not follow for several bodies (process*,
  setPassword, sendSetUserStoreData, sendUploadUserAvatar, sendSetUserMind, IsNextResponseIntToken,
  OnUpdateSuccess, CMsgDropLoot::WriteData, the GLXPlayerUser ctor). Those bodies were written from
  the ARM listing in recovered/native/assembly/libDungeonHunter2.so/, which is authoritative.
- Text setters differ on empty input. setPassword uses OwnedDup (null stays null, "" is kept).
  The chat warning, promo and RSS attachment and trophy-icon setters use OwnedNonEmpty (null or
  "" gives null).
- Request builders write "f|kind|i|GGI|u|UID|..." into a 0x1000-byte buffer. A missing user id
  is sent as "" in the u| slot. A rejected argument calls observer slot 3 with (kind, -100) and sends nothing.
- Getters are bounded by the stored list size. The avatar getters also check avatarCount_. Out of
  range they return nullptr, -1 (trophy) or 0 (status). The original's getUserGamePID returns the
  stored pointer with no count check, so this is a deviation.
- MultiplayerStateMachine::runStateMachine calls each callback with nullptr. The ARM passes the skip
  byte there, which is 0 at that point. The state is re-read for each entry, so a callback that
  changes it affects the entries after it.
- Test seams (*ForTest, BlockLengthForTest, SendModeForTest, IncludeLocalForTest) are not in the original.
- The CMsgDropLoot and CMsgQuestsSync ctors set sendMode_ and includeLocalMember_ (CMsgQuestsSync also
  sets reliable_). The bool argument is not stored. The CMessage(const char*, bool) base ctor is not run.
- Fifteen earlier ledger rows (GLXPlayerMPBase, GLXPlayerMPBaseObserver, GLXPlayerUserFriend)
  had mangled-name lengths that did not match the queue. They were corrected to the queue names.

### What remains

- GLXPlayerUser response parsers (partial): processLiveFeeds (the 452-byte list goes into the
  _LiveFeed array at +0x12c, not modelled), processGetPromo_RSS and processGetADV_RSS (XML document
  reader slim::XmlDocument), and the parse bodies of processUserAvatar, processUserBestScore,
  processUserTrophy, processUserReputation, processUserGameIcon, processUserData,
  processUserAvatarList, processUserInformation, processUserState and processUserGameList.
  These need the token-parse helpers 0x82b634, 0x82abd4 and 0x82ace0 identified.
- processDownloadAvatar and processUploadAvatar: the copy of the avatar data is not reconstructed.
- sendSetUserMind (length check only), sendUploadUserAvatar (null case only).
- sendAwardTrophy (0x83e918) and sendUpdateUserInfo (0x83eb14): not reconstructed.
- GLXPlayerUser ctor and dtor: the 0x428-byte request client at +0x20 and the channel vectors at
  +0xe8/+0xf8 are not allocated or destroyed. clearUserState does not free the object at +0x88.
- GLXPlayerWebComponent transport: SendByGet, SendByPost, Update, Cancel, OnUpdateParse, LoadConfig
  and the dtors are stubs (partial). Their request client type is not identified.
- CMessage(const char*, bool) base constructor is not recovered. The std::string at +0x14 in CMessage is
  not modelled either.

## Wave 6: sign-in, observers, GameCenter, CXPlayerManager, COnline (this session)

Ledger: 598 rows in total, 202 added this session (185 reconstructed, 14 partial, 3 skipped).
Queue: 1235 rows, 239 still unledgered. Every ledger address is in queue.csv (checked numerically).

### Layouts (original 32-bit offsets, kept as comments)

- CSignIn (`c_sign_in.hpp`): +0x00 vptr, +0x04 credentials (name, password, context), +0x10 active
  flag, +0x11 logged-in flag, +0x14 CEventQueueBase. Virtual slots: +0x08 Initialize, +0x0c and
  +0x10 SignIn, +0x14 SignOut, +0x18 CancelLogin, +0x1c Update, +0x20 Terminate, +0x24 Destroy.
  Singleton s_SignIn; provider switch s_SignInProvider (0 = CSignInDummy, 1 = CSignInGLLive).
- CSignInGLLiveObserver (`c_sign_in_gl_live_observer.hpp`): +0x04 server-configured flag (set by
  code 1), +0x05 logged-in flag (set by 0xf, cleared by 0x11), +0x06 server address (0x80 bytes),
  +0x88 last error code. Error codes: 1 no user name, 0x31 wrong user name or password,
  0x43 user name does not exist, 0x61 authentication failed, 0x6e nickname used, 0x71 invalid
  nickname, -2 no connection, 0x29 request timeout.
- CXPlayerManager (`cxplayer_manager.hpp`): +0x14 state (0x10 ready, 0x11 error or logged out),
  +0x7c last error (name inferred; 3 after a network error). +0x08, +0x0c and +0x10 are owned
  objects deleted through their virtual dtor (types not identified, not modelled).
- GameCenter (`game_center.hpp`): +0x07 features enabled, +0x24 player-ID list (the STL list
  sentinel, now std::list<std::string>), +0x2c player count, +0x30 host UID, +0x34 local user UID,
  +0x4c player alias (std::string), +0x70 achievement list tail (SaveGCAchievement, queued).
- GameCenterInfo (`game_center_info.hpp`): +0x10 list of strings. Other members not identified.
- COnline (`c_online.hpp`): +0x05 online-game flag, +0x30 time-synced flag. Non-virtual.
- COnlineImpl (`c_online_impl.hpp`): +0x04 initialized flag, +0x08 event queue, +0x40 last-check timeval.
- CMatchingLocal (`c_matching_local.hpp`): +0x3638 local member id, +0x4b6d room closed, +0x4b8d room hidden.
- CMatchingGLLive (`c_matching_gl_live.hpp`): +0x0d room hidden, +0x0e room closed, +0x3640 local
  member id, +0x3644 server member id, +0x6700 friends, +0x6be0 friend list loaded. The byte at
  +0x67ed is the alpha-server switch read by the sign-in observer (reached through the CMatching seam).
  The full layout is in "Decision 6" at the end of this file (CMatchingGLLive now derives from CMatching).
- CMatchingGLLiveLobbyObserver: +0x04 logged-in, +0x05 connected, +0x06 game started, +0x14 state,
  +0x48 last result. The friend observer has a flag at +0x04. The message observer has only a vptr.
- GLXPlayerLogin: +0x40 keep-alive enabled, +0x44 time of last keep-alive, APNS strings and ports
  at +0x48..+0x60, product arrays at +0x64..+0x70. Keep-alive interval 90000 ms.
- GLXPlayerMessage: message arrays at +0x3c..+0x5c, count +0x60, current id +0x64, body +0x68,
  boxCounts_[6][3] at +0x6c..+0xb3 (group mapping in getMsgCount), sent count +0xb4.
- GLXPlayerLeaderboard: entry count +0x3c, name and score arrays +0x40..+0x50, current player
  fields +0x58..+0x64. A missing score is 0xfff5d3d6.
- GLXPlayerSocket and LCXPlayerSocket: +0x04 state (7 = error), +0x08 handle, +0x820 socket type,
  +0x824 accept address (owned string), +0x828 accept port, +0x850 send percentage (GLX only).
- GLXPlayerHttp and LCXPlayerHttp: +0x04 socket pointer, +0x08 request buffer (0x400 bytes),
  +0x408 response text, +0x40c response length, +0x410 server address (GLX), +0x41c post body,
  +0x420 post body length, +0x424 send-by-post flag.
- GLXPlayerPing: +0x24 probe state, 1 when finished.
- OnlineGameState: +0x3c start-game timeval, +0x44 room-creation timeval (`time_of_day.hpp` stand-in).

### Decisions and deviations

- CSignIn::Get (partial): provider 0 creates a CSignInDummy. Provider 1 would create CSignInGLLive,
  which is not ported, so Get returns null then. s_SignInProvider is a static that defaults to 0 and
  nothing in this port sets it.
- The observer is a standalone class. Its vtable (first slot OnNetworkError) is not modelled, and the
  request handlers are direct calls. Events are posted through CSignIn::Get() each time, and a null
  singleton is skipped. The original would dereference it.
- OnRequestSuccess (partial): the code-1 branch omits GLXPlayerSereverConfig::GetXPlayerURL (queued),
  because its result is discarded. Code 0x6b copies the address with strncpy and keeps the NUL inside
  the 0x80-byte buffer. The original does not check the length. This port clamps it to 0x7f.
- Code 0x6b with the alpha flag set copies "alpha01.gameloft.com:7500" (26 bytes with the NUL). The
  pseudocode shows the strncpy after the branch, but the ARM listing (0x824c2c-0x824c78) returns after
  the memcpy. The ARM is authoritative, and the strncpy is not run on that path.
- The CMatching stand-in (`deps/matching.hpp`) gains two non-pure seams: UseAlphaServer() (default
  false) and SetGCState(int) (default no-op). CMatchingGLLive::SetGCState (0x81f178) is not ported.
- GameCenter list and alias: a null user UID or null alias is taken as an empty string. The original
  would construct std::string from a null pointer. GetGCPlayerAlias returns the std::string by value,
  which matches the sret in the pseudocode.
- GameCenterInfo: only the destructor is reconstructed. Its list at +0x10 is std::list<std::string>.
- CXPlayerManager::OnNetworkError prints the same line as the original, with puts.
- CMessage::CompareMsgSendPriority (0x80a6f8, 24 bytes) reads a uint at +0x38. The CMessage header
  names +0x38 as trackSent_ (a bool, described as int in the original). The two readings conflict,
  so the comparator is not ported yet. Resolve the field name before adding it.
- Earlier-wave decisions still apply: XP_API_STRNEW uses new[] and pairs with XP_API_FREE; the
  GLXPlayerSocket accept-address leak is fixed; the box and bounds checks are in the GLX message and
  leaderboard getters; IsHost treats a null UID as not the host; the observers are standalone;
  COnline is non-virtual; time uses the std::chrono stand-in in deps/time_of_day.hpp.
- Several bodies were garbled in the pseudocode (tail calls to memcpy, strncpy or __aeabi helpers
  shown as noreturn). The ARM listing was used for those, and the ARM is authoritative.

### What remains

Queue rows left, by owner and class (670 in total):
- lib-online-glx CMatchingGLLive 81, CMatchingLocal 55, CMatching 40, CMatchingBluetooth 17,
  tMatchingPeer 7. The matching layer is large and is still mostly queued.
- CMessaging 40, CMessage 4 (the ctor at 0x80a540/0x80a61c and CompareMsgSendPriority; see above),
  CMsgRaisedEvent 2, CMsgAttackResult 1 (CMsgAttackResult::Create at 0x3af330).
- Struct copies tFriendInfo 3, tRoomInfo 2, tGLRoomInfo 1, tMemberInfo 1, channel 6 and item 6 (slim
  XML objects), _LiveFeed 1 (its destructor at 0x83ab64).
- CSignInGLLive 14 (Initialize, SignIn, CancelLogin, SignOut, LoginLobby, SignIn(credentials), ctors,
  dtors, Terminate, Destroy). It needs CMatchingGLLive::GetGLXPlayerLogin and GLXPlayerLogin::SendLogout.
  CSignIn 4 (ctors 0x81a58c/0x81a61c and dtors 0x81a7b4/0x81a8b4; the CSignIn ctor sets an event queue
  expiry of 100 that the port does not model).
- GameCenter 15 (ctor 0x32bc34, dtors, GCStartMultiplayerGame family, GetJoinPlayerList,
  GCAddToJoinPlayerList, CoinTossForHost, SetPlayerIDStatus, SaveGCAchievement, ReportGCScore and
  ReportGCAchievement, GCStartGameTimeoutExpired, DumpPlayerIDStatusList). MultiplayerCallback 22.
- GLX and LCX services: GLXPlayerSereverConfig 27, GLXPlayerLogin 21, GLXPlayerMessage 21,
  GLXPlayerHttp 17, GLXPlayerLeaderboard 15, LCXPlayerHttp 15, GLXPlayerUserFriend 13,
  GLXPlayerSocket 13, LCXPlayerSocket 13, GLXPlayerPing 11, GLXPlayerMPLobby 5, GLXPlayerMPBase 4,
  GLXPlayerUser 3.
- CXPlayerManager 13 (Init is garbled: its tail call goes to an allocator. Login, Logout, IsLoggedIn,
  OnRequestSuccess, OnRequestFailure, OnRequestTimeout, UploadMyScore, ctors and dtors). The owned
  objects at +0x08, +0x0c and +0x10 need their types.
- COnline 17 (GetPing, SendPackets, ReceivePackets, SendSyncTime, Initialize, Terminate, Destroy,
  ReportDisconnect, ctors). These need CConnectionManager, which is not in deps/.
- COnlineImpl 10, OnlineGameState 9 (Update, Destroy, ctors, dtors, timeout helpers), and
  OnlineSingleton<OnlineGameState> 3. OnlineGameState::Update needs MultiplayerStateMachine and COnline.
- ALicenseCheck 21 and ALicenseCheck_GetUserAgent 1.
- XP_API quick wins still queued: XP_API_ITOA (82a66c), XP_API_TOLOWER (82ad54), XP_API_IP_INT2STR,
  XP_API_IP_STR2INT, XP_API_FTOA, XP_API_GET_RANDOM, XP_API_GET_TIME, XP_API_PARSE_DATA,
  XP_API_STRCHRFIND, the XP_API_FILE_* family, and the XP_DEBUG_*_LOG functions.
- No Json:: functions are queued for this category, so no upstream rows are needed.

## Wave 7: Hex-Rays source, sockets and HTTP, ping, CXPlayerManager (this session)

Source: IDA Hex-Rays is now the default for `tools/decomp_extract.py` (export in
`recovered/native/hexrays-all/`, commit 9476235b). Ghidra is only a fallback (`--source ghidra`).
Where the decompile garbled a tail call, the ARM listing (`recovered/native/assembly/...`) was
checked; the notes name each case.

### Rows added (124 this wave)

- GLXPlayerSocket (13): Start, Cancel, IsInProgress, both destructors, both constructor aliases,
  RemoveHttpHeader, CalculateTotalLength (reconstructed); ParseHttpHeader, ParseChunkedContent
  (partial); GLXPlayerSocketFactory::GetSocket (partial). D0 is skipped.
- GLXPlayerHttp (12): GetResponseLen, Start, UpdateRequest, IsInProgress, IsErrorOccurred, Cancel,
  SetResponseData (reconstructed); destructors D1 and D2 and both constructor aliases (partial);
  D0 skipped.
- GLXPlayerPing (9): Init, Prepare, both destructors, SendEchoRequest (reconstructed);
  WaitForEchoReply and both constructor aliases (partial); D0 skipped.
- GLXPlayerLeaderboard addScoreEntry (1, reconstructed). Deleting destructors of the leaderboard
  and OnlineGameState are skipped (2).
- Earlier in the wave (87): CXPlayerManager, GLXPlayerSereverConfig, the GLXPlayerLogin, Message,
  Leaderboard and UserFriend senders, and the XP_API wave-7 set.

### Layouts (checked against the ARM ctor and the Hex-Rays accessors)

GLXPlayerSocket (`glx_player_socket.hpp`): +0x04 state (0 idle, 1 started, 6 finished, 7 error,
8 cancelled), +0x08 handle (-1), +0x10 port, +0x14 host (owned copy), +0x18 observer,
+0x1c receive buffer (0x800 bytes, zeroed by Start), +0x81c receive length, +0x820 socket type,
+0x824 accept address (owned), +0x828 accept port, +0x82c received content (std::string),
+0x850 send percentage. Seven more words (+0x84c..+0x868) are zeroed by the ctor and not decoded.
The earlier header had no ctor arguments; the ctor was not stored.

GLXPlayerHttp (`glx_player_http.hpp`): +0x04 socket (owned), +0x08 request buffer (0x400),
+0x408 response (owned), +0x40c response length, +0x410 server address (owned copy of ctor
argument 1), +0x414 and +0x418 owned copies of ctor arguments 2 and 3, +0x41c post body (owned),
+0x420 post length, +0x424 send-by-post flag. The ctor creates the socket on port 0x50 with the
HTTP object as observer, so GLXPlayerHttp derives from GLXPlayerSocketObserver.

GLXPlayerPing (`glx_player_ping.hpp`): +0x08 flag (1), +0x0c host, +0x10 address (null),
+0x14 port, +0x18 socket, +0x1c result (-1), +0x24 state (1, then 2 after Prepare), +0x28 and
+0x2c timeouts (0, 5000 us; operator new in the original, held by value here), +0x30 echo id (123).

GLXPlayerSocket virtual hooks added: Start (+0x0c), Run (+0x10), Cancel (+0x14), IsInProgress
(+0x18), IsErrorOccurred (+0x1c), OnCancelled (+0x3c), SendTo (+0x58), Connect (+0x74). The base
defaults are no-ops; SendTo returns -1 and Connect returns 0, so a port without a transport
reports failure.

### Decisions and deviations

- Owned buffers. GLXPlayerHttp and GLXPlayerSocket own their strings and buffers through
  unique_ptr. The test seams now copy the post body and the response.
- Cancel clears the response and post pointers after freeing them. The original leaves them dangling.
- D1 and D2 of GLXPlayerHttp free the response and post with different allocators (operator delete in
  D1, free in D2). The port cannot reproduce that mix, so both are partial.
- std::string::substr past the end throws in the original. The port returns an empty string. This
  matters only for the chunked decode.
- ParseChunkedContent is kept as decompiled. The size line is cut at the absolute CRLF position and
  the next offset is CRLF+2+CRLF. Multi-chunk bodies may not decode the way the server meant.
- ParseHttpHeader with no CRLF CRLF terminator returns npos. The original copies npos bytes there,
  which is undefined.
- XP_API_GET_TIME is the glx_stand_ins.hpp stub (0), so the ping timestamp is 0.
- The ping checksum is a stand-in for the BSD in_cksum, which is not in the queue. A test checks that
  a packet with its checksum sums to all ones. Fields are in host byte order, as the original writes them.
- The socket factory builds the base class. The original builds CAndroidSocket (0xcf4 bytes). The
  ctors, and the factory, are partial for this reason.
- WaitForEchoReply does not call select(). It reports no data (0).

### Layout mismatches found in older headers (not fixed here)

- GLXPlayerLeaderboard: +0x50 is an array of per-entry int* arrays (score data), but the header models
  it as a flat vector. getLeaderboardEntry (0x8321cc) and clearLeaderboard (0x832a48) need the
  per-entry model. The leaderboard ctors (0x833244, 0x8332dc) store the request client at the
  GLXPlayerWebComponent requestClient_ (void*), which is not typed as GLXPlayerHttp yet.
- GLXPlayerMessage: +0x50 is a char* array (the des-user name lists), but the header says receiver
  ids. processMsgCount (0x834ffc) is clean and is the next candidate; the other parsers depend on
  the corrected layout.
- GameCenter: the full layout needs +0x74 (the list sentinel) and GCSingleton<GameCenter>. The
  header models only the simplified state, so the ctor and dtors are not started.
- OnlineGameState: the ctor (0x49ffe0, 0x4a0040) sets members from +0x04 to +0x138 that the header
  does not model.
- LCXPlayerSocket and LCXPlayerHttp mirror the GLX classes, but their receive buffer and state
  members are not in the header yet.

### What remains (546 queued functions; 76 short of the 200-row target for this wave)

Blocked on classes or stand-ins the port does not have:
- COnline and COnlineImpl (about 27): need CConnectionManager (GetConnectionMgr, RegisterPacketType,
  GetServerPing) and CPacketManager (SendPackets). Those belong in deps/ as stand-ins.
- CMatching, CMatchingLocal, CMatchingGLLive and the observers (about 200): need the CMatching base
  with tMatchingPeer and the CNetworkId and CRoomAttributes types.
- CMessaging (about 40): needs the CMessage queues with std::list and std::set, NetBitStream and
  CNetMutex.
- GameCenter (about 15) and CSignInGLLive (about 14): need the full GameCenter layout and GCSingleton.
- ALicenseCheck (21): FUN_ names, not yet identified.
- MultiplayerCallback (22): large message handlers.
- channel and item copy constructors: need slim::XmlNode and the item fields.

Not blocked, but large or layout-dependent: GLXPlayerLeaderboard and GLXPlayerMessage parsers
(see the mismatches above), GLXPlayerSereverConfig SaveServerConfig and LoadConfig (std::map node
walks), GLXPlayerMPBase and GLXPlayerMPLobby senders, LCXPlayerSocket and LCXPlayerHttp (receive
buffer and state members), and the LC_API_FREE and LC_API_MALLOC thunks.

## Wave 4 decisions (feature/decomp-net, 2026-10-12)

- Ledgers merged from the 10 glx slices and 4 nso slices. Blocked rows are not in the ledger.
- GLXPlayerMessage ctor (0x8368e0 / 0x836980) was missing from src. Added as partial: LoadConfig, current id -1 and
  clearMsgCount are reproduced. The 0x428-byte GLXPlayerHttp at +0x20 is not allocated (no typed slot).
- glx_player_user_responses_test expectations were aligned with the ledger: processUserInformation("ignored") gives an
  empty name (not null), and processUserGameList("ignored") gives one record. Later replaced by the integrator's version.
- Host 61/61 and MinGW/Wine 91/91 pass for net-transport and net-session-online together.

- Decision (2026-10-12): LCXPlayerSocket::ParseChunkedContent (0x8a0af0) stays faithful to the binary. The
  Hex-Rays body and IDA listing use the absolute CR index as the next-data offset, so a second chunk reads from the
  wrong place. The data-end constant (v58 = end + 4 in the pseudocode, +2 in the listing) is unresolved. Left partial
  until the wire format is checked against a real capture. Do not "fix" it to standard chunked semantics without that.

## Decision 6: CMatchingGLLive on CMatching (Track B integrator, applied)

`CMatchingGLLive` now derives from `CMatching` (the original CMatching, the first 0x3630 bytes) and declares every
member in original order with its 32-bit offset (`include/net-session-online/c_matching_gl_live.hpp`). The object is
0x6c08 bytes in the original (operator new size in `CMatching::Get`, 0x800f8c). The constructor 0x81e7f0 runs the
CMatching constructor first and the vtable (`_ZTV15CMatchingGLLive`) holds the CMatching slots, so the base fits.

Base members added to `CMatching`: +0x08 member capacity (the `Initialize(int)` argument), +0x0d room hidden, +0x0f a
byte (the GLLive constructor sets it to 3; it is the byte argument of `mpSendJoinLobby`). `Update` and `Initialize` are
virtual in the base now (vtable +0x30 and +0x28, confirmed by `tools/decomp_vtable.py`). The base slots are served by
`LocalMemberId` = `GetMemberId` (+0x6c), `ServerMemberId` = `GetServerMemberId` (+0x74), `MemberBit` = `GetMemberMask`
(+0x84), `UnknownGate` = `IsInRoom()` (+0x64), `ConnectedMemberIds` = `CMatching::GetMemberIdList` (+0x88).

Discrepancy with the decision text: +0x6800 and +0x6804 are not members. They are the finish and start pointers of the
STLport `std::string` at +0x67f0 (`playerParam_`, 24 bytes: 16-byte buffer, finish at +0x10, start at +0x14), which
`JoinRoomInternal` and `CreateJoinRoomInternal` pass to the lobby as data and length. All other listed offsets match the
binary (+0x3630 byte, +0x3650 CRoomAttributes, +0x6718 GLXPlayerUser*, +0x67ec byte, +0x6808 CLobbyParameterAndQuery*,
+0x6834 room operation, +0x6838 Game Center state).

Layout (offset, name, type; the CMatching part is +0x00..+0x362f):

| offset | name | type |
|---|---|---|
| +0x3630 | roomOperationPending_ | bool (set by Create/Search in the sibling classes, cleared by JoinRoomInternal; AddServer posts 8388622 when set) |
| +0x3638 | roomStatus_[2] | uint8 (ProcessRoomStatusMessage bytes 0, 1) |
| +0x363c | nextPeerKey_ | int32 (key of the next server map entry; the constructor does not set it) |
| +0x3640 | memberId_ | int32 (-1 from the constructor) |
| +0x3644 | serverMemberId_ | int32 (Initialize sets 1) |
| +0x3648, +0x364c | roomValue0_, roomValue1_ | int32 (ProcessRoomStatusMessage) |
| +0x3650 | createRoomAttributes_ | CRoomAttributes (0x394 bytes) |
| +0x39e8 | servers_ | std::map<uint64, tMatchingPeer> (STLport header 0x14 bytes) |
| +0x3a00 | memberInfo_[32] | MemberInfoNetStruct (stride 360, ends at +0x6700) |
| +0x6700 | glxUserFriend_ | GLXPlayerUserFriend* |
| +0x6704 | friendObserver_ | CMatchingGLLiveFriendObserver* |
| +0x6708 | glxMessage_ | GLXPlayerMessage* |
| +0x670c | messageObserver_ | CMatchingGLLiveMessageObserver* (vtable off_992980) |
| +0x6710 | glxServerConfig_ | GLXPlayerSereverConfig* (was glxComponent_) |
| +0x6714 | pad_6714 | no access recovered |
| +0x6718 | glxUser_ | GLXPlayerUser* |
| +0x671c | glxLeaderboard_ | GLXPlayerLeaderboard* |
| +0x6720 | roomAttributes_ | std::map<uint64, CRoomAttributes> |
| +0x6738 | searchFilter_ | CRoomSearchFilter (0x24 bytes) |
| +0x675c | serversMutex_ | CNetMutex (AddServer, JoinRoomInternal) |
| +0x6760 | unk_6760 | CNetMutex |
| +0x6764 | unk_6764 | int32 |
| +0x6768 | pad_6768[0x80] | no access recovered |
| +0x67e8 | gameCenterActive_ | bool |
| +0x67e9 | glFriendsRequested_ | uint8 |
| +0x67ea | unk_67ea | uint8 |
| +0x67eb | glxComponentsCreated_ | uint8 (Update creates message, friend and leaderboard services once) |
| +0x67ec | unk_67ec | bool (CreateJoinRoomInternal stores the negated flag; no reader) |
| +0x67ed | useAlphaServer_ | bool (read by the sign-in observer; OnlineGameState::Init sets it) |
| +0x67f0 | playerParam_ | std::string |
| +0x6808 | lobbyQuery_ | CLobbyParameterAndQuery* (0x40 bytes) |
| +0x680c | roomKey_ | int32 |
| +0x6810 | glLiveEventFlag_ | uint8 |
| +0x6811 | unk_6811 | uint8 |
| +0x6814 | roomList_ | std::vector<tRoomInfo> (t_room_info.hpp, 968 bytes per element) |
| +0x6820 | roomListTime_ | int32 (time(nullptr) at the last refresh) |
| +0x6824 | unk_6824 | std::vector<int32> |
| +0x6830 | unk_6830 | int32 |
| +0x6834 | roomOp_ | int32 (3 create, 5 leave, 7 search, 9 join) |
| +0x6838 | gcState_ | int32 |
| +0x6840 | gcRoomAttributes_ | CRoomAttributes (Game Center room settings) |
| +0x6bd8 | glFriends_ | std::list<GLFriendInfo> (gl_friend_info.hpp, 12-byte element) |
| +0x6be0 | glFriendsListLoaded_ | uint8 |
| +0x6be1 | userName_[16] | char |
| +0x6bf1 | profileFlag_ | uint8 |
| +0x6bf2 | password_[16] | char |
| +0x6c02 | unk_6c02 | uint8 (CMatchingGLLiveMessageObserver::OnRequestSuccess sets it for codes 0x6f, 0x70) |
| +0x6c03 | pad_6c03[5] | |

Decisions and deviations:
- `deps/matching_stand_ins.hpp` defines its own `CRoomAttributes` and `CRoomSearchFilter`, which cannot be included with
  the real headers. The connection manager and transport stand-ins moved to `deps/connection_manager_stand_in.hpp`
  (included by the old header), so GLLive reaches `GetConnectionMgr()` without the conflict. `tMatchingPeer` became the
  template `tMatchingPeerT<RoomAttributes>` (`t_matching_peer_t.hpp`); `t_matching_peer.hpp` aliases the stand-in
  instance (CMatchingLocal) and GLLive aliases the real one. When the room layer is unified the template collapses.
- `MemberInfoNetStruct` is defined inside `CMatchingGLLive` (the owner holds 32 by value). `NetStructStringStub16`
  moved to `deps/net_struct_stub.hpp`.
- `JoinRoomInternal` is reconstructed. `Initialize`, `WritePacketData`, `AddServer`, `CreateJoinRoomInternal` stay
  partial; each ledger note says what is missing (RegisterObserver on the login observer, NetStruct serializers in
  net-transport, `CRoomAttributes::Serialize(char*, 0x80, 15)` and `Unserialize`, the stand-in transport name).
- The destructor frees the objects Initialize creates (server config, GLXPlayerUser, lobby query). The original never
  frees the GLXPlayerUser; the port does.
- Names that are guesses are avoided: `unk_<offset>` is used where no access shows a role.

## Integrator ruling: CMatching is one class (2026-10-13)

The binary decides. Its base class is `CMatching`: `CMatching::CMatching` (0x80003c, vtable `_ZTV9CMatching`),
and `CMatchingLocal::CMatchingLocal` (0x807e44) and `CMatchingGLLive::CMatchingGLLive` (0x81e9dc) both call
`CMatching::CMatching(this)` first. `CMatchingBase` was the port's name for that same base (its header says so),
so the port has one class now:

- `include/net-session-online/c_matching_base.hpp` defines `class CMatching` (the former CMatchingBase layout plus
  the members of the former `deps/matching.hpp` stand-in). `deps/matching.hpp` only includes it, because the
  game-app test includes that path.
- `CMatchingLocal` and `CMatchingGLLive` derive from `CMatching`. CMatchingLocal's copies of the base fields
  (initialized_ at +0x0c, the room hidden flag at +0x0d, baseRoomClosed_ at +0x0e) are removed; the base holds them.
- Pure virtuals are only MemberBit, LocalMemberId, ServerMemberId and IsServer. The others have defaults, so the
  game-app test's `FakeMatching` (overrides five members) still compiles.
- `CMatching::Get()` returns `s_Matching` and creates the object on first use from `s_matchingProvider`, as the
  binary's Get does (provider 0 or 1: CMatchingLocal; 3: CMatchingGLLive(false); 4: CMatchingGLLive(true)).
  It is in `src/glx_320e98.cpp`. The constructors do not assign `s_Matching`. `Set()` remains as a test helper.
- `CMatching::Initialize` calls `CSignIn::Get()->Initialize()` (vtable +0x08, sets the active flag), then
  `CConnectionManager::Initialize()` unconditionally, before the member reset, as the binary does. No guard.
- The transport hook is `TransportTypeForProtocol(int)` (vtable +0x34). The binary's name is GetTransportType,
  but the derived classes keep their table lookups as statics named GetTransportType (tests call them), and a
  virtual of the same name with another signature would clash with them. CMatchingLocal and CMatchingGLLive
  override the hook to call their table.

Not ported: **CMatchingBluetooth** (provider 2). The port has only its static functions and no instance state, so
it cannot honestly derive from CMatching. `CMatching::Get()` returns null for provider 2 until it is reconstructed.

## CConnectionManager, CNetworkId, NetStruct, ConnectionLobby (2026-10-13)

- The real `CConnectionManager` (net-transport/connection_manager.hpp) replaces the stand-in. `GetConnectionMgr()`
  is gone: call `CConnectionManager::GetInstance()`, which is null until `CConnectionManager::Initialize()`.
  Tests initialize it through `tests/connection_manager_for_tests.hpp`.
- Sends: `SendToAll` goes to connected connections only, as the binary does, so a server change with no connected
  peer sends nothing. The transport stand-ins record what they are handed in `SentPacketLog()`
  (net-transport/deps/connection_env.hpp); the tests read that log where they used to read `Sent()`.
- The packet registrations live in the static `s_recvCBMap`, which `Terminate` does not clear. The test reset
  unregisters them explicitly.
- `CNetworkId`, `NetStruct`, `NetStructMemberType` and `ConnectionLobby` are the net-transport classes. The
  net-session-online stand-ins are deleted. `NetStructMemberType<T>::TestValue` defaults to true (the binary's int
  version returns 1), and its `(int size_bits)` constructor is public. `CMatchingLocal::MemberInfoNetStruct`'s
  int and CNetworkId members use small subclasses whose Read and Write are no-ops, because the binary's vtables
  for them are not identified (the stand-in never called them either).
- `ConnectionLobby::SetRequestTime` writes the +0x2050 slot. GLXPlayerMPLobby writes the request time there, and
  the real class names that slot `establish_time_`; they are the same slot.
- Blocked CRoomAttributes::Serialize and Unserialize (declared in c_room_attributes.hpp, not ported) have
  no-op bodies in `src/room_attributes_impl.cpp`, with the behaviour of the stand-in they replace.

## Net structure pass (2026-10-13, ledger part `ledger.d/net-structure.csv`)

Applies the net-session-online side of the layout requests of the r1n result (the net-transport side is in
`net-transport/NOTES.md`, same heading). The binary won wherever the request text differed.

- **Socket hierarchy.** `GLXPlayerSocket` is abstract: the platform slots of the binary vtable (GetLocalIP +0x08, GetHostByName +0x20 ...
  SendBroadcast +0x84, 34 slots) are pure virtuals, `Run` and the HTTP receive code call them through the slots at the original
  offsets, the observer interface has the four virtuals (`GetRequestData`, `GetRequestLength`, `SetResponseData`, `SetResponseLen`), and
  the members (state +0x04, socket +0x08, host entry +0x0c, port +0x10, ... connect and lookup timers up to +0x868) are public.
  `GLXPlayerSocketFactory::GetSocket` returns a `CAndroidSocket`; the response span the observer receives is the content string's own
  span. `LCXPlayerSocket` is a separate abstract class (27 slots, its own signatures) and `LCAndroidSocket` derives from it
  (not from `GLXPlayerSocket`: see net-transport). Tests that need a socket derive from `StubGLXSocket` / `StubLCXSocket`
  (`tests/socket_test_doubles.hpp`).
- **Ping.** `GLXPlayerPing` runs on the real slots: `Init` uses `CreateIcmpSocket` (+0x74), `SendEchoRequest` `SendTo` (+0x58, 48 bytes),
  `WaitForEchoReply` `select(socket_ + 1, ...)` on the base's `socket_`, `RecvEchoReply` `RecvFrom` (+0x5c, 324 bytes) and Kernel
  state 2 `GetHostByName` (+0x20).
- **COnline / COnlineImpl.** `COnlineImpl` no longer shadows `initialized_` and the event queue: it uses COnline's (so `COnline::Initialize`'s
  guard sees the flag `COnlineImpl::Initialize` sets) and adds only `lastCheck_` at +0x40. `COnline::Destroy` calls
  `CMatching::Get()->Destroy()` first. `COnlineImpl::GetPlayerName` is the transport manager's `GetLocalhostname()` (vtable +0x20)
  when the manager is initialized, else "PLAYER". `COnline::IsOnlineGame()` and `GetElapsedTime()` are the inline reads other classes did.
- **Host names.** The transport-name and listen-id stand-ins in `deps/platform_stand_ins.hpp` are gone:
  `CMatchingLocal::GetMemberName`/`AddServer`, `CMatchingGLLive::AddServer` and `SendServerResponse` call
  `CTransportManager::GetHostname`, `GetLocalhostname` and `GetListenNetworkId`. `CMatchingBluetooth::SetServerBroadcast` is written
  (`EnableBroadcast(GetListenNetworkId(0))`).
- **Web component.** `GLXPlayerWebComponent::SendByGet` and `SendByPost` return 1 as in the binary; `GLXPlayerUserFriend::sendGetUserFriends`
  and `sendAddUserFriend` and `GLXPlayerLeaderboard::sendHighScore(int,int,int)` return that result, so `CMatchingGLLive::InitializeFriend`,
  `SendGLFriendInvite` and `GLSendHighScore` return it. The blob codec is the real `SSEncDec_String2Blob` of tinyxml-and-c-libs
  (the stand-in header is deleted; the blob is released with `delete[]`).
- **Accessors added for readers elsewhere** (no symbols in the binary; inline reads): `CSignIn::LoggedIn()` and `CredentialsName()`,
  `CMatchingGLLiveFriendObserver::Flag()`, the lobby observer's `LoggedIn()`, `Connected()`, `GameStarted()`,
  `CSignInGLLiveObserver::Configured()`, `LoggedIn()`, `Server()`, `CSignInGLLive::LoginEvents()`, `CMatchingGLLive::GameCenterActive()`,
  `GLXPlayerMPLobby::SetMaster()`, `GLXPlayerLogin::UnToken()`, `MultiplayerStateMachine::CurrentState()`, and the public flag members of
  `OnlineGameState` (`flag24_` .. `flag4e_`, `mode_`, `menuName30_`, `menuName38_`, `GetState()`). `CXPlayerManager`'s members are public.
  `CMessage` already had the consumed flag (`SetFinished`, +0x3c) and `Sender()`. The production code now uses these instead of the
  `...ForTest` reads, and the multiplayer message handlers write the consumed flag.
- **Not applied** (each needs more than a declaration; the reason is in the ledger row or in the request list of the report):
  the `CMatchingLocal`/`CMatching` NetStruct rework (requests 40, 46 to 52, 95: members_ at +0x4be0, the server backup array, the
  room info NetStruct blocks, moving the other NetStruct classes off `deps/net_struct_stub.hpp`) -- **APPLIED in the
  net-session-online sweep batch, see the next section**, `CRoomAttributes` Serialize and
  Unserialize and the `Resend` slot (41, 67, 76), the `CMatchingGLLiveLobbyObserver` member vector and room id (55, 56, 62, 63, 71),
  `tFriendInfo` name (54), `GLXPlayerUserFriend` text storage and the string-typed `GetUserNumber` (23, 73, 98),
  `GLXPlayerMPLobby::Update` (89: needs the lobby members at +0x68 and +0x6c), `tMemberInfo` fields (77, 78),
  the `field60_`/`state_` duplicate (100) and the `LoadConfig` overlap (101), the static singleton getters (87), `vtWritePacketData`
  (45), the `CMsg*` payload field names and duplicate class definitions (26, 27, 34, 90), and the requests whose definitions belong to
  other categories (28, 29, 35, 19).

## Member-record pass (net-session-online sweep batch, 0x7ffd04 / 0x806b98 and the rows that needed them)

**What the earlier layout notes got wrong.** Three separate errors had the same root: the member records were read as
plain field structs rather than as `NetStruct` records.

1. `CMatching`'s element array. `c_matching_base.hpp` declared `struct MemberInfo { int memberId; int teamId;
   std::vector<uint8_t> roomAttribute; int previousMemberId; }` and said the `NetStruct` base was "not modelled". Every
   value write in the binary is `NetStructMemberType<T>::SetValue` through member vtable +0x1c, and the element itself is
   a `NetStruct` whose +0x40/+0x44 slots `CMatching::ProcessAcknowledgedPacket` / `ProcessLostPacket` call for every
   element. The element is now `class CMatching::MemberInfoNetStruct : public NetStruct` with `NetStructInt<32> idMember_`
   (element +0x130, value +0x150), `NetStructUInt<8> teamMember_` (+0x158 / +0x178), `NetStructByteArray<64>
   roomAttributeMember_` (+0x180 / +0x1a0) and the cached `previousMemberId_` (+0x1a8, not a NetStruct member). Element
   stride 432, array base +0x20, `NetStructArray<CMatching::MemberInfoNetStruct,32>` header at +0x18. The array's count
   (+0x1c) is the class's `memberCount_`, which the constructor sets to 32.
2. `CMatchingLocal`'s records. `c_matching_local.hpp` carried only a forward `class MemberInfoNetStruct;` and no members,
   so five rows were partial for want of them. The class's OWN record type is a different class from `CMatching`'s (the
   symbols `_ZN14CMatchingLocal19MemberInfoNetStruct{C1,D1,D0}Ev` and `_ZTVN14CMatchingLocal19MemberInfoNetStructE` are
   its own; the only `NetStructArray` instantiation in the binary names the `CMatching` one). The class now declares
   `RoomInfoNetStruct` (+0x4A20, two `NetStructBool` and two `NetStructInt<32>`), `localMembers_[32]` (+0x4BE0, stride
   408, `NetStructInt<32>` id at the element's +0x130 plus the listen `CNetworkId` at +0x158) and
   `serverBackup_[32]` (+0x7EE8, stride 344, one `NetStructInt<32>`). `RoomInfoNetStruct::unk130_` / `unk150_` are the
   room-closed / room-hidden flags the port used to keep as the plain bytes `roomClosed_` (+0x4b6d) and
   `roomHiddenFlag_` (+0x4b8d); those fields are gone and every read and write goes through the record's members.
3. `IsInRoom(int)` (0x805c1c). Its note called the last term "the member-id word (element +0x150) of the base member table
   (+0x20)". `102*index + 4940` dwords is `408*index + 0x4D30`, i.e. `CMatchingLocal`'s own table at +0x4BE0.

**Host-necessitated deviations of this pass** (all named in the source):

- `roomInfo_` and `serverBackup_` are heap objects (a nested type cannot be complete before its owner), allocated in the
  constructor and released in the destructor. `localMembers_` is a real member.
- `CMatchingLocal::MemberInfoNetStruct`'s address member is now net-transport's real `NetStructNetworkId`, declared
  through the record's second `DeclareMember` call, so the listen address takes part in the record's serialize. This
  closes the old deviation ("a plain `CNetworkId`, because its vtable `off_992008` is not identified"): `off_992008`
  IS `_ZTV18NetStructNetworkId + 8` -- the constructor at 0x806c64..0x806c78 loads `_ZTV18NetStructNetworkId_ptr`,
  adds 8 to the table base 0x992000 and stores the result at element +0x158. The dumped slot list is exactly the
  port's `NetStructNetworkId` vtable: Erase 0x801bfc, Write 0x801f14, Read 0x801de0, PostLoad 0x36d1f8,
  GetSizeBits 0x36d1fc, D1 0x801b04, D0 0x801bc8, SetValue 0x8020b8, TestValue 0x801b8c, GetValue 0x801b84
  (0x992038 is the base template's table with `__cxa_pure_virtual` 0xa36490 in the Read/Write slots). The writers
  now go through `setNetworkId` -> `NetStructMemberType<CNetworkId>::SetValue` (0x8020b8).
- `CMatching` keeps the `NetStructArray` header's count as the plain int `memberCount_` instead of net-transport's
  `NetStructArray` template, whose `count_` is protected and whose element type would have to be declared inside
  `CMatching`; the four array-wide operations (Load/Erase/Serialize/Process*) are therefore inlined in the callers.

**Rows unblocked** (all now `reconstructed`): `CMatching::ProcessLostPacket` 0x7fed84, `ProcessAcknowledgedPacket`
0x7fed08, `SetRoomMemberAttibute` 0x7ff008, `UpdateMemberIdList` 0x8002bc, `SetTeamId` 0x8008ac, `CreateJoinRoom`
0x7ff350, `ReadPacketData` 0x7fea14, `ResendMemberData` 0x7feac4, `MemberInfoNetStruct::MemberInfoNetStruct` 0x7ffd04,
`CMatchingLocal::Reset` 0x8074a4, `CMatchingLocal` ctor/dtor 0x807e44/0x807f80, `CMatchingLocal::ProcessLostPacket`
0x8057f0, `ProcessAcknowledgedPacket` 0x80585c, `ReadPacketData` 0x805b14, `WritePacketData` 0x8063c4, plus the
`CMatchingLocal` record constructors/destructors 0x806b98/0x806258/0x806344, 0x806964/0x8061bc/0x80623c and
0x806cac/0x8062d0/0x806140. `CMatchingLocal::CreateJoinRoomInternal` 0x8079d4, `CMatching::JoinRoom` 0x7ff120,
`CMatching::Initialize` 0x7ff85c, `CMatching::WritePacketData` 0x8010a4, `CMatchingLocal::Update` 0x80890c and
`CMatchingGLLive`'s member records stay `partial` for the reasons in their rows (vtable slot dispatch, remaining body
gaps, and the separate 360-byte `CMatchingGLLive::MemberInfoNetStruct` table this pass did not model).
