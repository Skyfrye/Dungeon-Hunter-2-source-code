// Character::AttackResult is the nested struct of the game's Character class (game/include/dh2/Character.hpp, owned by the character
// code). It was a ten-word stand-in here; the real declaration is used so that CMsgAttackResult::Create and its callers (Character::F_ApplyResult,
// MultiplayerCallback::HandleAttackMessage) share one type. core-platform/memory.hpp comes first, as Character.hpp needs.
#pragma once

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
