// Stand-in for the iOS GameCenter class (owned by the multiplayer category). Only
// the type and its default constructor are needed by GCSingleton<GameCenter>.
#pragma once

class GameCenter {
public:
    GameCenter();
};
