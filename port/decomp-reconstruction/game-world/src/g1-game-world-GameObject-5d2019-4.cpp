// Batch g1-game-world-GameObject-5d2019-4 (GameObject, part 5 of 8). Redo pass r2a-game-world-GameObject-5d2019-1 completed
// the Lua bindings below now that dh2/sfc/script/lua (Arguments, Value, ReturnValues) is declared.
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Layout and declarations: dh2/GameObject.hpp.
// Offsets in comments are the original 32-bit ones.
//
// The Lua statics take (const Arguments& args, ReturnValues& ret, void* self). The listings name the first pointer `this`
// (the arguments), the second `a2` (the return values) and the third `a3` (self), and type them shifted by one. The bodies
// use the header's names. The Value tag word (Value::m_type, +0x04) is 1 for bool, 2 for pointer, 3 for number, 4 for
// string and 7 for userdata; each listing pairs these tags with the matching getter. The argument count is the size of
// the argument vector (the listing's (end - begin) / 112).

#include <cstddef>
#include <cstdint>
#include <string>

#include "dh2/AnimatedFX.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/Vec3f_K.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "pydata-accessors/w7_arrays27.hpp"  // Arrays::GameObjectDamager::size

namespace {

// Number of values in a Lua argument list.
std::size_t argCount(const sfc::script::lua::Arguments& args) {
    return args.m_values->size();
}

}  // namespace

// 0x38eab4 GameObject::_IsInWater(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
void GameObject::_IsInWater(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret, void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->m_pfObject.IsInWater());
}

// 0x38ead4 GameObject::_IsOverAHole(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
void GameObject::_IsOverAHole(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret, void* self) {
    ret.pushBoolean(static_cast<GameObject*>(self)->m_pfObject.IsOverAHole());
}

// 0x38eaf4 GameObject::_GetSelf(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
void GameObject::_GetSelf(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret, void* self) {
    ret.pushUserData(static_cast<GameObject*>(self));
}

// 0x38eb68 GameObject::_GetTargetListTop(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// An empty queue pushes a null pointer. Otherwise the front entry is pushed as: object, distance, angle in degrees
// (radians times 57.2957764f, the single-precision constant 0x42652EE0), bit 0 of isCharacter, lateral.
void GameObject::_GetTargetListTop(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret, void* self) {
    const auto& results = static_cast<GameObject*>(self)->m_targetList.m_results;
    if (results.empty()) {
        ret.pushPointer(nullptr);
        return;
    }
    const ObjectSearcher::TargetInfo& top = results.top();
    ret.pushUserData(top.object);
    ret.pushNumber(top.distance);
    ret.pushNumber(top.angle * 57.2957764f);
    ret.pushBoolean((top.isCharacter & 1) != 0);
    ret.pushNumber(top.lateral);
}

// 0x38ebe4 GameObject::_GetID(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
void GameObject::_GetID(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret, void* self) {
    ret.pushPointer(self);
}

// 0x38ebf0 GameObject::_GetName(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The listing pushes the data pointer at +0x44, which is the character data of m_name (the std::string at +0x30).
void GameObject::_GetName(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& ret, void* self) {
    ret.pushString(static_cast<GameObject*>(self)->m_name.c_str());
}

// 0x38ef60 GameObject::LoadExternalScript(char const*, char const*)
// The current script is released (vtable +0x04 is the deleting destructor). A new LuaScript is built (operator new(152)
// then LuaScript(0), bindings included), its binder receives this object's bindings (createBindings is vtable +0x0c,
// the binder is LuaScript +0x10), the second argument is stored in m_scriptDirectory (+0x68), and Load(file) runs. The
// script is released again when Load returns 0.
void GameObject::LoadExternalScript(const char* file, const char* name) {
    if (m_script != nullptr) {
        delete m_script;
        m_script = nullptr;
    }
    if (file != nullptr && *file != '\0') {
        m_script = new LuaScript(false);
        createBindings(m_script->m_binder);
        if (name != nullptr) {
            m_script->m_scriptDirectory.assign(name);
        }
        if (m_script->Load(file) == 0) {
            delete m_script;
            m_script = nullptr;
        }
    }
}

// 0x38fbb8 GameObject::_PopTargetList(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Reconstructed. Removes the top entry of the target queue (m_targetList at +0x304) when it is not empty. The listing
// tests the deque's size as the distance between its begin and end iterators, which is the same as empty(). The
// arguments and the return values are not used.
void GameObject::_PopTargetList(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    auto& results = static_cast<GameObject*>(self)->m_targetList.m_results;
    if (!results.empty()) {
        results.pop();
    }
}

// 0x38fbf8 GameObject::_TargetListResort(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With args[0] a number, TargetList::Resort(int(args[0])) on the target list at +0x304.
void GameObject::_TargetListResort(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (argCount(args) != 0 && args[0].m_type == 3) {
        static_cast<GameObject*>(self)->m_targetList.Resort(static_cast<int>(args[0].getNumber()));
    }
}

// 0x38fc74 GameObject::_DropFX(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With args[0] a pointer, the listing drops it through VisualFXManager's instance. The listing works on a local copy of
// the pointer, which DropAnimatedFX clears, so the copy is what gets passed on.
void GameObject::_DropFX(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* /*self*/) {
    if (argCount(args) != 0 && args[0].m_type == 2) {
        AnimatedFX* instance = static_cast<AnimatedFX*>(args[0].getPointer());
        VisualFXManager::s_inst.DropAnimatedFX(instance);
    }
}

// 0x38fcf0 GameObject::_TargetListSearch(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs args[0] a number (radius). With two or more arguments, args[1] must be a number (cone angle in degrees). The
// search then uses half the angle in radians, (angle * 0.0174532924f) * 0.5f (the single-precision constant 0x3C8EFA35,
// then 0x3F000000). With one argument the half angle is pi (0x40490FDB).
// Origin: self m_position by default. A userdata in args[2] gives its m_position and the options start at index 3.
// With args[2..4] numbers the origin is (args[2], args[3], args[4]), or, when args[5] is a true bool,
// m_position + args[2] * (K x L) + args[3] * L + args[4] * K, with L the look vector of self and K = Vec3f_K. The options
// then start at index 6. Anything else starts the options at count - 1 and keeps the origin at m_position.
// The option at the start index selects the source: a true bool selects the backup named "default", a string selects
// the backup of that name. Without one, PlayerList is used when TargetList::m_filterMask has bit 0x80, CharacterList
// when TargetList::m_arg3 is 2, and RoomObjectList otherwise.
void GameObject::_TargetListSearch(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    GameObject* const go = static_cast<GameObject*>(self);
    const std::size_t count = argCount(args);
    if (count == 0 || args[0].m_type != 3) {
        return;
    }
    if (count > 1 && args[1].m_type != 3) {
        return;
    }

    Point3D<float> origin = go->m_position;
    std::size_t option = 0;  // index of the argument that names the source

    if (count <= 2) {
        option = count - 1;
    } else if (args[2].m_type == 7) {
        const GameObject* const from = static_cast<const GameObject*>(args[2].getUserData());
        origin = from->m_position;
        option = 3;
    } else if (count > 4 && args[2].m_type == 3 && args[3].m_type == 3 && args[4].m_type == 3) {
        if (count > 5 && args[5].m_type == 1 && args[5].getBool()) {
            Point3D<float> look{};
            go->GetLookAtVec(look);
            const float a2 = args[2].getNumber();
            const float a3 = args[3].getNumber();
            const float a4 = args[4].getNumber();
            const Point3D<float>& k = Vec3f_K;
            origin.X = origin.X + a2 * (k.Y * look.Z - k.Z * look.Y);
            origin.Y = origin.Y + a2 * (k.Z * look.X - look.Z * k.X);
            origin.Z = origin.Z + a2 * (look.Y * k.X - k.Y * look.X);
            origin.X = origin.X + a3 * look.X;
            origin.Y = origin.Y + a3 * look.Y;
            origin.Z = origin.Z + a3 * look.Z;
            origin.X = origin.X + a4 * k.X;
            origin.Y = origin.Y + a4 * k.Y;
            origin.Z = origin.Z + a4 * k.Z;
        } else {
            origin.X = args[2].getNumber();
            origin.Y = args[3].getNumber();
            origin.Z = args[4].getNumber();
        }
        option = 6;
    } else {
        option = count - 1;
    }

    // The three sources the listing builds on every call, then the chosen one.
    ObjectManager* const objects = dword_99F764;
    ObjectSearcher::CharacterList characters;
    characters.m_list = &objects->m_characters;
    characters.m_current = objects->m_characters.begin();
    characters.m_end = objects->m_characters.end();
    ObjectSearcher::PlayerList players;
    players.m_players = dword_99F76C;
    players.m_index = 0;
    ObjectSearcher::RoomObjectList rooms;
    rooms.m_list = &objects->m_roomZones;
    rooms.m_node = objects->m_roomZones.begin();
    rooms.m_end = objects->m_roomZones.end();

    ObjectSearcher::TargetList& targets = go->m_targetList;
    ObjectSearcher::IObjectList* source = nullptr;
    if (option < count) {
        const sfc::script::lua::Value& choice = args[static_cast<unsigned int>(option)];
        if (choice.m_type == 1 && choice.getBool()) {
            source = &targets.GetResultsBackup("default");
        } else if (choice.m_type == 4) {
            source = &targets.GetResultsBackup(choice.getString());
        }
    }
    if (source == nullptr) {
        if ((targets.m_filterMask & 0x80) != 0) {
            source = &players;
        } else if (targets.m_arg3 == 2) {
            source = &characters;
        } else {
            source = &rooms;
        }
    }

    const float radius = args[0].getNumber();
    if (count <= 1) {
        targets.Search(origin, radius, 3.14159265f, *source);
    } else {
        const float halfAngle = (args[1].getNumber() * 0.0174532924f) * 0.5f;
        targets.Search(origin, radius, halfAngle, *source);
    }
}

// 0x39040c GameObject::_EnableCollisions(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// args[0] a bool sets the flag. With a second true bool and a physical object (m_physicalObject at +0x2dc): resetFilter()
// when the flag is set, otherwise setFilter(m_group, m_category, m_mask & 0xFFE3, false). Without the second bool:
// EnableCollisions() when the flag is set, otherwise DisableCollisions().
void GameObject::_EnableCollisions(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (argCount(args) == 0 || args[0].m_type != 1) {
        return;
    }
    GameObject* const go = static_cast<GameObject*>(self);
    const bool enable = args[0].getBool();
    if (argCount(args) > 1 && args[1].m_type == 1 && args[1].getBool()) {
        PhysicalObject* const physical = go->m_physicalObject;
        if (physical != nullptr) {
            if (enable) {
                physical->resetFilter();
            } else {
                physical->setFilter(physical->m_group, physical->m_category,
                                    static_cast<std::uint16_t>(physical->m_mask & 0xFFE3), false);
            }
        }
    } else if (enable) {
        go->EnableCollisions();
    } else {
        go->DisableCollisions();
    }
}

// 0x390548 GameObject::_SetTargetListSorting(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The listing pops every entry and installs the sorter for the mode (1 closest, 2 frontal, other unsorted), then rebuilds
// the heap of the empty queue. That is TargetList::Resort(mode), which does the same steps (checked against its body).
void GameObject::_SetTargetListSorting(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (argCount(args) != 0 && args[0].m_type == 3) {
        static_cast<GameObject*>(self)->m_targetList.Resort(static_cast<int>(args[0].getNumber()));
    }
}

// 0x390624 GameObject::_SetTargetListObjectFilter(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Stores (int) args[0] in TargetList::m_arg3 (self +0x33c), the value _TargetListSearch compares with 2.
void GameObject::_SetTargetListObjectFilter(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (argCount(args) != 0 && args[0].m_type == 3) {
        static_cast<GameObject*>(self)->m_targetList.m_arg3 = static_cast<int>(args[0].getNumber());
    }
}

// 0x390690 GameObject::_SetTargetListCharacterFilter(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Stores (int) args[0] in TargetList::m_filterMask (self +0x338), which _TargetListSearch tests with bit 0x80.
void GameObject::_SetTargetListCharacterFilter(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (argCount(args) != 0 && args[0].m_type == 3) {
        static_cast<GameObject*>(self)->m_targetList.m_filterMask = static_cast<int>(args[0].getNumber());
    }
}

// 0x3906fc GameObject::_DealDamages(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs more than two arguments, args[0] userdata (tag 7), and args[1] a number (tag 3) below Arrays::GameObjectDamager::size.
// The userdata's handle (ObjectBase::GetHandle, which the assembly calls on the userdata) resolves to a Character. Then
// Character::F_GOAttack(result, self, character, uint(args[1]), 0) and F_ApplyResult(result, self, character, false), and
// pushInteger(first word of the result). Otherwise, when the userdata's virtual GetInteractionType(self) (vtable +0x90)
// returns 8, its Interact(self) (vtable +0x98) runs and pushBoolean(false) follows.
void GameObject::_DealDamages(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self) {
    GameObject* const go = static_cast<GameObject*>(self);
    if (argCount(args) <= 2 || args[0].m_type != 7 || args[1].m_type != 3) {
        return;
    }
    const std::uint32_t damagerIndex = args[1].getUInteger();
    if (damagerIndex >= Arrays::GameObjectDamager::size) {
        return;
    }
    sfc::script::lua::UserData* const userData = args[0].getUserData();
    if (userData == nullptr) {
        return;
    }
    ObjectHandle handle = static_cast<ObjectBase*>(userData)->GetHandle();
    Character* const target = handle;
    if (target != nullptr) {
        Character::AttackResult result;
        Character::F_GOAttack(result, go, target, static_cast<int>(damagerIndex), 0);
        Character::F_ApplyResult(result, go, target, false);
        ret.pushInteger(result.m_damage);
        return;
    }
    GameObject* const object = static_cast<GameObject*>(userData);
    if (object->GetInteractionType(go) == 8) {
        object->Interact(go);
        ret.pushBoolean(false);
    }
}

// 0x39088c GameObject::_MarkAsSwimming(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With args[0] a bool (tag 1), PFObject::SetSwimming(flag) on m_pfObject (+0x1c8).
void GameObject::_MarkAsSwimming(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (argCount(args) != 0 && args[0].m_type == 1) {
        static_cast<GameObject*>(self)->m_pfObject.SetSwimming(args[0].getBool());
    }
}

// 0x390900 GameObject::_MarkAsFlying(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With args[0] a bool (tag 1), PFObject::SetFlying(flag) on m_pfObject (+0x1c8).
void GameObject::_MarkAsFlying(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    if (argCount(args) != 0 && args[0].m_type == 1) {
        static_cast<GameObject*>(self)->m_pfObject.SetFlying(args[0].getBool());
    }
}

// 0x390974 GameObject::_SetFXEndPoint(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// args[0] a pointer (tag 2), then either two arguments (args[1] userdata, end point = its GetTargetPosition()) or four
// (args[1..3] numbers, end point = those values). Then AnimatedFX::SetEndPoint(pointer, end). Other shapes do nothing.
void GameObject::_SetFXEndPoint(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* /*self*/) {
    const std::size_t count = argCount(args);
    if ((count != 2 && count != 4) || args[0].m_type != 2) {
        return;
    }
    if (count == 2) {
        if (args[1].m_type != 7) {
            return;
        }
    } else if (args[1].m_type != 3 || args[2].m_type != 3 || args[3].m_type != 3) {
        return;
    }
    AnimatedFX* const instance = static_cast<AnimatedFX*>(args[0].getPointer());
    Point3D<float> end{};
    if (count == 2) {
        const GameObject* const target = static_cast<const GameObject*>(args[1].getUserData());
        end = target->GetTargetPosition();
    } else {
        end.X = args[1].getNumber();
        end.Y = args[2].getNumber();
        end.Z = args[3].getNumber();
    }
    instance->SetEndPoint(end);
}

// 0x390b3c GameObject::_SetMaxPath(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With args[0] a number (tag 3), when self is a character (virtual IsCharacter, vtable +0x24) and Character::IsFollower()
// holds, m_maxPath (+0x26c) becomes (uint) args[0], clamped to 100.
void GameObject::_SetMaxPath(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    GameObject* const go = static_cast<GameObject*>(self);
    if (argCount(args) == 0 || args[0].m_type != 3) {
        return;
    }
    if (!go->IsCharacter()) {
        return;
    }
    if (!static_cast<Character*>(go)->IsFollower()) {
        return;
    }
    const std::uint32_t maxPath = args[0].getUInteger();
    go->m_maxPath = maxPath > 100 ? 100 : maxPath;
}
