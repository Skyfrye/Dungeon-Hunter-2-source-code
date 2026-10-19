// gameswf_listener.cpp	-- Vitaly Alexeev <tishka92@yahoo.com>	2007

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

#include "gameswf/gameswf_listener.h"

namespace gameswf
{

	// DH2: the three notifiers iterate over a COPY of the weak-pointer array (array::operator=), and hold a strong reference
	// DH2: only for the duration of one call (add_ref before, drop_ref after). r1714 copies strong pointers (clone_listener)
	// DH2: and keeps all of them alive for the whole loop. An entry that died during the loop is cleared by get_ptr() and
	// DH2: skipped. The size is read once, before the loop.

	// for Key, keyPress, ...
	// DH2: 0x7607b8, the event handler is the virtual on_event (vtable +0x2c)
	void listener::notify(const event_id& ev)
	{
		// event handler may affects m_listeners using addListener & removeListener
		// iterate through a copy of it
		array< weak_ptr<as_object> > listeners;
		listeners = m_listeners;
		for (int i = 0, n = listeners.size(); i < n; i++)
		{
			as_object* obj = listeners[i].get_ptr();
			if (obj != NULL)
			{
				smart_ptr<as_object> hold(obj);	// ref_counted::add_ref / drop_ref around the call
				obj->on_event(ev);
			}
		}
	}

	// for asBroadcaster, ...
	// DH2: 0x760aec. The call runs on the caller's environment (r1714 pushes copies of the arguments into a fresh one):
	// DH2: nargs from the fn_call, first argument index = the top of the caller's stack, debug label "???".
	void listener::notify(const tu_string& event_name, const fn_call& fn)
	{
		// may be called from multithread plugin ==>
		// we should check current root
		if (fn.get_player()->get_root() == NULL)
		{
			return;
		}

		// event handler may affects m_listeners using addListener & removeListener
		// iterate through a copy of it
		array< weak_ptr<as_object> > listeners;
		listeners = m_listeners;
		for (int i = 0, n = listeners.size(); i < n; i++)
		{
			as_object* obj = listeners[i].get_ptr();
			if (obj != NULL)
			{
				smart_ptr<as_object> hold(obj);
				as_value function;
				if (obj->get_member(event_name, &function))
				{
					call_method(function, fn.env, as_value(obj), fn.nargs, fn.env->get_top_index(), "???");
				}
			}
		}
	}

	// for video, timer, ...
	// DH2: 0x760d58, the virtual advance (vtable +0x5c)
	void	listener::advance(float delta_time)
	{
		// event handler may affects m_listeners using addListener & removeListener
		// iterate through a copy of it
		array< weak_ptr<as_object> > listeners;
		listeners = m_listeners;
		for (int i = 0, n = listeners.size(); i < n; i++)
		{
			as_object* obj = listeners[i].get_ptr();
			if (obj != NULL)
			{
				smart_ptr<as_object> hold(obj);
				obj->advance(delta_time);
			}
		}
	}

	// DH2: Gameloft addition (0x760940). Keeps the listeners alive for the player's garbage pass: root::advance calls it
	// DH2: on the +0xb8 listener right before it marks the movie alive. A dead entry loses its proxy and its pointer.
	void listener::alive()
	{
		for (int i = 0; i < m_listeners.size(); i++)
		{
			if (m_listeners[i] != NULL)
			{
				m_listeners[i].get_ptr()->this_alive();
			}
		}
	}

	void listener::add(as_object* listener) 
	{
		// sanity check
		assert(m_listeners.size() < 1000);
		//printf("m_listeners size=%d\n", m_listeners.size());

		if (listener)
		{
			int free_item = -1;
			for (int i = 0, n = m_listeners.size(); i < n; i++)
			{
				if (m_listeners[i] == listener)
				{
					return;
				}
				if (m_listeners[i] == NULL)
				{
					free_item = i;
				}
			}

			if (free_item >= 0)
			{
				m_listeners[free_item] = listener;
			}
			else
			{
				m_listeners.push_back(listener);
			}
		}
	} 

	bool listener::remove(as_object* listener) 
	{
		bool is_removed = false;

		// null out a item
		for (int i = 0, n = m_listeners.size(); i < n; i++)
		{
			if (m_listeners[i] == listener)
			{
				m_listeners[i] = NULL;
				is_removed = true;
			}
		}
		return is_removed;
	} 

	as_object*	listener::operator[](const tu_stringi& name) const
	{
		return operator[](atoi(name.c_str()));
	}
	
	as_object*	listener::operator[](int index) const
	{
		if (index >= 0 && index < m_listeners.size())
		{
			int nonzero = 0;
			for (int i = 0, n = m_listeners.size(); i < n; i++)
			{
				if (m_listeners[i] != NULL)
				{
					if (nonzero == index)
					{
						return m_listeners[i].get_ptr();
					}
					nonzero++;
				}
			}
		}
		return NULL;
	}

	int	listener::size() const
	{
		int nonzero = 0;
		for (int i = 0, n = m_listeners.size(); i < n; i++)
		{
			if (m_listeners[i] != NULL)
			{
				nonzero++;
			}
		}
		return nonzero;
	}

	void listener::enumerate(as_environment* env) const
	{
		int nonzero = 0;
		for (int i = 0, n = m_listeners.size(); i < n; i++)
		{
			if (m_listeners[i] != NULL)
			{
				env->push(nonzero);
				nonzero++;
			}
		}
	}

}
