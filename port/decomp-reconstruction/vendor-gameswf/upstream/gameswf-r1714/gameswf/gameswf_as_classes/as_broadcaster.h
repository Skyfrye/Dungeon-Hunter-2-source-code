// as_broadcaster.h	-- Vitaly Alexeev <tishka92@yahoo.com>	2007

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Action Script AsBroadcaster implementation code for the gameswf SWF player library.


#ifndef GAMESWF_AS_BROADCASTER_H
#define GAMESWF_AS_BROADCASTER_H

#include "gameswf/gameswf_action.h"	// for as_object
#include "gameswf/gameswf_listener.h"
#include "base/tu_queue.h"

namespace gameswf
{

	// Create built-in broadcaster object.
	as_object* broadcaster_init(player* player);

	struct as_listener : public as_object
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_LISTENER };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_object::is(class_id);
		}

		// DH2: 0x58 bytes: as_object (0x38), m_listeners +0x38 (the 16-byte listener), m_reentrance +0x48, m_suspended_event +0x4c
		// DH2: (tu_queue: back +0x4c, front +0x50, size +0x54). Vtable off_990b88: D1 0x79b5c8, D0 0x79b6b4, is +0x08 (0x79b328),
		// DH2: get_member +0x20 (0x79b49c), enumerate +0x30 (0x79b47c).
		as_listener(player* player);	// DH2: 0x79b518 (C1), 0x79b570 (C2)
		virtual ~as_listener();	// DH2: 0x79b5c8 (D1); the body is empty: the queue pops its elements and the listener array is released as members
		virtual bool	get_member(const tu_stringi& name, as_value* val);
		void add(as_object* listener);
		void remove(as_object* listener);
		int size() const;
		virtual void enumerate(as_environment* env);
		void	broadcast(const fn_call& fn);
	
		private :

		listener m_listeners;
		bool m_reentrance;
		tu_queue< array<as_value> > m_suspended_event;
	};

}	// end namespace gameswf


#endif // GAMESWF_AS_BROADCASTER_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
