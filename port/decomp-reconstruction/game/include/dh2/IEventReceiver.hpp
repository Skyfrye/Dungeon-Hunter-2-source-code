// IEventReceiver: interface of objects that receive events from EventManager (Console, MenuManager, ...).
// _ZTV14IEventReceiver is 20 bytes: offset-to-top, typeinfo, and three slots: +0x00 / +0x04 the destructors
// (0x32fdbc D1 is empty, 0x330674 D0 resets the vptr and calls CustomFree) and +0x08 onEvent, which is pure.
// The signature (const IEvent*, const EventManager*) follows MenuManager::onEvent (0x430ad4) and
// EventManager::Raise; the bool result means "consumed" (Raise stops at the first receiver returning 1).
// Several stand-ins of this class exist in the engine categories; this is the game's one definition.
#pragma once

class IEvent;
class EventManager;

class IEventReceiver {
public:
    virtual ~IEventReceiver() = default;                                            // +0x00, +0x04
    virtual bool onEvent(const IEvent* event, const EventManager* manager) = 0;     // +0x08
};
