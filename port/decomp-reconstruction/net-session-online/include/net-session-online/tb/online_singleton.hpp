// OnlineSingleton<T>: the original's singleton base. The only instantiation in this
// category is OnlineSingleton<OnlineGameState>. Its instance is allocated on first use and
// constructed in place. Bodies are in src/tb_session-online-OnlineSingleton_OnlineGameState-0.cpp.
#pragma once

class OnlineGameState;

template <class T>
class OnlineSingleton {
public:
    // 0x320e98 _ZN15OnlineSingletonI15OnlineGameStateE11GetInstanceEv. Partial, see the .cpp.
    static T* GetInstance();

public:  // decision 9: Application::Quit deletes and clears the instance directly
    // OnlineSingleton<OnlineGameState>::m_instance (one static per T).
    static T* m_instance;
};

extern template class OnlineSingleton<OnlineGameState>;
