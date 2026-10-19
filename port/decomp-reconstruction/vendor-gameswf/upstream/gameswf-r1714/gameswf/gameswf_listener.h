// gameswf_listener.h	-- Vitaly Alexeev <tishka92@yahoo.com>	2007

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.


#ifndef GAMESWF_LISTENER_H
#define GAMESWF_LISTENER_H

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_function.h"
#include "base/container.h"
#include "base/utility.h"
#include "base/weak_ptr.h"

namespace gameswf
{

	// DH2: THE listener class of the DH2 build, 16 bytes with no vptr and no ref_counted base: one array<weak_ptr<as_object> >
	// DH2: (buffer +0x00, size +0x04, capacity +0x08, borrowed flag +0x0c, which is the array's own byte and never set for a
	// DH2: listener). It is embedded by value in root (+0xa8 keypress, +0xb8 advance/alive), as_key (+0x58), as_mcloader
	// DH2: (+0x38) and as_listener (+0x38); as_event's constructor builds one as a local that it never uses. A dead entry is
	// DH2: cleared by weak_ptr::get_ptr() (the array slot is zeroed and the proxy released), not removed from the array.
	// DH2: Bodies: gameswf_listener.cpp, each marked "// DH2:" with its address.
	struct listener
	{
		exported_module void add(as_object* listener);	// DH2: 0x760f4c
		exported_module bool remove(as_object* listener);	// DH2: 0x760e44 (the binary leaves the return register unset; the bool is r1714's and no caller reads it)

		exported_module void notify(const event_id& ev);	// DH2: 0x7607b8
		exported_module void notify(const tu_string& event_name, const fn_call& fn);	// DH2: 0x760aec
		exported_module void advance(float delta_time);	// DH2: 0x760d58
		exported_module void alive();	// DH2: 0x760940, calls this_alive on each live listener, drops the dead ones

		exported_module void clear() { m_listeners.clear(); }
		exported_module as_object*	operator[](const tu_stringi& name) const;	// DH2: 0x761144
		exported_module as_object*	operator[](int index) const;	// DH2: 0x76107c
		exported_module int	size() const;	// DH2: 0x7608a4
		exported_module void enumerate(as_environment* env) const;	// DH2: 0x7609e4

	private:

		array< weak_ptr<as_object> > m_listeners;	// +0x00, 16 bytes with the array's borrowed flag at +0x0c

	};

}

#endif
