// Objective_EventReceiver: an Objective that attaches itself to the level's EventManager while it is
// registered, and forwards events to handleEvent while it is valid and not completed. Register and
// Unregister attach and detach it. Subclasses implement GetPositions and handleEvent. Objective_SavedQty
// derives from this class, and the ObjectiveTemplate_* family derives from Objective_SavedQty.
// Original 32-bit size 0x20 (inferred: the last member is at +0x1c; no ctor or operator new size in the queue).
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x47a330 / 0x47ccbc, Register 0x47ae70, onEvent 0x47acf0).
// Objective is the first base; IEventReceiver is the second base at +0x18 (see the destructor 0x47a330).
#pragma once

#include <cstdint>

#include "dh2/IEventReceiver.hpp"
#include "dh2/Objective.hpp"

class IEvent;
class EventManager;
class Vector3DFList;
struct __sFILE;

class Objective_EventReceiver : public Objective, public IEventReceiver {
public:
    // Overrides of Objective slots, in vtable order. Slots 0x00 and 0x04 are the destructors.
    ~Objective_EventReceiver() override;                                            // slot 0x00/0x04: 0x47a330 D1, 0x47ccbc D0 (frees)
    int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const override;      // slot 0x0c: 0x47aab4 prints isValid and isRegistered
    void Register() override;                                                       // slot 0x18: 0x47ae70 attaches to the level EventManager, sets m_registered
    void Unregister() override;                                                     // slot 0x1c: 0x47adbc DelayedDetach from the level, clears m_registered
    void GetPositions(Vector3DFList& positions) const override = 0;                 // slot 0x20: pure in this class, subclasses implement it

    // New virtuals of this class, in vtable slot order.
    // onEvent is also IEventReceiver::onEvent (secondary vtable thunk at +0x4c). It calls handleEvent while
    // the objective is valid and not completed, then CheckMustSendThroughNetwork. Returns the consumed flag.
    bool onEvent(const IEvent* event, const EventManager* manager) override;        // slot 0x34 and IEventReceiver +0x08: 0x47acf0
    virtual bool handleEvent(const IEvent* event, const EventManager* manager) = 0; // slot 0x38: pure, the templates implement it

    // Non-virtual members.
    void CheckMustSendThroughNetwork(const IEvent* event);                          // 0x47ac94 sends a raised event to the network when GetOnline() is set
    // Counts the characters of the given type loaded in the level, or falls back to the character cache.
    // Called with TestCharPropId (0x47c7f4) and TestCharTemplate (0x47cc20). Static: takes no object.
    template <typename TTest>
    static int HasEnemyOfTypeLoaded(int enemyId, int levelId);

    // Objective occupies +0x00 .. +0x17 (Objective.hpp). The IEventReceiver subobject occupies +0x18 .. +0x1b.
    bool m_registered;                                                              // +0x1c set by Register, cleared by Unregister (the original prints "isRegistered")
    uint8_t pad_1d[3];                                                              // +0x1d
};
