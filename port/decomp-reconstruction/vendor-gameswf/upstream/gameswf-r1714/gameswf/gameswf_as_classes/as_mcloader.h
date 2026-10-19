// as_mcloader.h	-- Vitaly Alexeev <tishka92@yahoo.com>	2007

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Action Script MovieClipLoader implementation code for the gameswf SWF player library.


#ifndef GAMESWF_AS_MCLOADER_H
#define GAMESWF_AS_MCLOADER_H

#include "gameswf/gameswf_action.h"	// for as_object
#include "gameswf/gameswf_listener.h"	// for listener
#include "gameswf/gameswf_movie_def.h"	// DH2: movie_def_impl must be complete for loadable_movie (its destructor releases the definition)

namespace gameswf
{

	void	as_global_mcloader_ctor(const fn_call& fn);

	// DH2: built-in methods that the constructor registers (defined in as_mcloader.cpp)
	void	as_mcloader_addlistener(const fn_call& fn);	// DH2
	void	as_mcloader_removelistener(const fn_call& fn);	// DH2
	void	as_mcloader_loadclip(const fn_call& fn);	// DH2
	void	as_mcloader_unloadclip(const fn_call& fn);	// DH2
	void	as_mcloader_getprogress(const fn_call& fn);	// DH2

	struct as_mcloader : public as_object
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_MCLOADER };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_object::is(class_id);
		}

		struct loadable_movie
		{
			loadable_movie() :
				m_ch(NULL)
			{
			}

			gc_ptr<movie_def_impl> m_def;
			weak_ptr<character> m_target;
			character* m_ch;
		};

		// DH2: 0x58 bytes: as_object (0x38), m_listeners +0x38 (the 16-byte listener), m_lm +0x48 (array<loadable_movie>, 16 bytes;
		// DH2: each loadable_movie is 16 bytes: m_def +0x00, m_target +0x04 (weak, proxy and pointer), m_ch +0x0c).
		// DH2: Vtable off_990db8: D1 0x7a30c4 (D2 0x7a2aec), D0 0x7a312c, is +0x08 (0x7a2584), advance +0x5c (0x7a3148).
		listener m_listeners;	// +0x38
		array<loadable_movie> m_lm;	// +0x48

		as_mcloader(player* player);
		~as_mcloader();
		
		virtual void	advance(float delta_time);
	};

}	// end namespace gameswf


#endif // GAMESWF_AS_XMLSOCKET_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
