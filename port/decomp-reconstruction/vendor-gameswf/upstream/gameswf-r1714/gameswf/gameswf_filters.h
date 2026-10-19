// gameswf_filters.h	-- Julien Hamaide <julien.hamaide@gmail.com> 2008

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Filters

#ifndef GAMESWF_FILTERS_H
#define GAMESWF_FILTERS_H

#include "gameswf_stream.h"

namespace gameswf
{
	// DH2: 0x758ca8. r1714 declares read_filter_list(stream*), which keeps nothing; the DH2 binary fills an effect.
	struct effect;
	void read_filter_list( stream* in, effect& fx );
}

#endif //GAMESWF_FILTERS_H

// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
