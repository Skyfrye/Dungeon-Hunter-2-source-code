// ObjectListItem: the value of ObjectManager's id map, std::map<int, ObjectListItem> at ObjectManager +0x0c. Each live object
// has one entry under its object id (ObjectBase +0x2c): the object's name and the pointer ObjectHandle::GetObject caches.
// ObjectBase::SetName (0x34ac18) assigns the name, ObjectManager::GetObjectByName (0x34aca0) searches the names,
// ObjectManager::Add (0x34b270) stores the object and ObjectManager::Remove (0x348ea4) clears it. A default entry (what
// operator[] inserts, 0x34952c) has an empty name and a null object.
// Original 32-bit size 0x1c (28): the 24-byte string and the object pointer.
// Reconstructed from libDungeonHunter2.so pseudocode.
#pragma once

#include <string>

class ObjectBase;

class ObjectListItem {
public:
    std::string m_name;                // +0x00 the object's name
    ObjectBase* m_object = nullptr;    // +0x18 the object (ObjectHandle::GetObject returns it)
};
