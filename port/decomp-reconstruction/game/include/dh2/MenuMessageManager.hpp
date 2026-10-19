// MenuMessageManager<T, N>: N FIFO queues of T messages that the front-end menus show one at a time, each
// shown by calling a Lua function on the HUD root. Queue index q is the int argument of the queue methods.
// Each instance is a Singleton<MenuMessageManager<T, N>>, reached through its s_inst.
// Instantiations (queue count N, original destructor addresses D1 / D0):
//   StatusMsg, 4          0x3297a4 / 0x3297f0
//   AchievementMsg, 1     0x329930 / 0x32997c
//   TutorialMsg, 1        0x329a54 / 0x329ae4
//   OnlineStatusMsg, 1    0x329c4c / 0x329c98
//   CharMenuTutorialMsg,1 0x329e78 / 0x329ec4
//   DialogMsg, 1          0x329fe8 / 0x32a034
// Original 32-bit size 4 + 40 * N: 0x2c for N = 1 and 0xa4 for N = 4 (the vptr, then one STLport deque per
// queue). The destructors release the deques from the last to the first and then free the object.
// Reconstructed from libDungeonHunter2.so pseudocode. The vtable (16 bytes) holds only the two destructors.
#pragma once

#include <cstdint>
#include <deque>

template <typename T, int N>
class MenuMessageManager {
public:
    virtual ~MenuMessageManager();                                      // 0x3297a4 / 0x3297f0 for StatusMsg, 4

    // Appends message to queue q. The clones for the instances above are 0x3ecff8 (StatusMsg, 4) and
    // 0x480b2c, 0x460dec (DialogMsg). When the queue then holds one message, the start function is invoked.
    void EnqueueMessage(const T& message, int queue, bool flag);        // 0x3ecff8

    // Pops every queued message of queue q. Clones: 0x383ea8 (DialogMsg), 0x3f9018 (StatusMsg, 4).
    void FlushEnqueuedMessages(int queue);                              // 0x3f9018

    // Copies the front message of queue q into message. Returns false when the queue is empty.
    bool GetNextEnqueuedMessage(T& message, int queue);                 // 0x43f890 (DialogMsg)

    // Pops the front message of queue q, invoking its skip function and then the start function of the next one.
    void SkipEnqueuedMessage(int queue, bool flag);                     // 0x442c1c (DialogMsg)

    // Calls the callback functionName on the HUD root through RenderFX::InvokeASCallback. The int is not read in the pseudocode.
    void Invoke(const char* functionName, int queue) const;             // 0x49b858 (DialogMsg)

    // +0x00 is the vptr (implicit). One std::deque per queue index, 40 bytes each at 32-bit.
    std::deque<T> m_queues[N];                                          // +0x04
    // Singleton<MenuMessageManager<T, N>>::s_inst: the instance is the object itself (its queue deques sit at +0x04).
    // The binary has the object only as Singleton<MenuMessageManager<T, N>>::s_inst; this name is a reference to it, defined
    // per instantiation in game-app/src/singleton_MenuMessageManager_<T>.cpp (link-1).
    static MenuMessageManager& s_inst;
};
