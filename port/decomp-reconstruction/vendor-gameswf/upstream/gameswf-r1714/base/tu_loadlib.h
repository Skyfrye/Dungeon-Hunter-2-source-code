// tu_loadlib.h	-- Vitaly Alexeev <tishka92@yahoo.com>	2007

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// plugin loader

#ifndef TU_LOADLIB_H
#define TU_LOADLIB_H

#ifdef _WIN32
	// HOST-PORT: <windows.h> is only needed by tu_loadlib.cpp, which includes it itself. Including it here leaked
	// its macros (GetClassName, GetObject, GetMessage, SendMessage, ERROR, IN, near, far, ...) into every game
	// translation unit that reaches gameswf_player.h. HINSTANCE is "struct HINSTANCE__*", so the forward
	// declaration gives the same type without the header. No effect on the ARM build.
	struct HINSTANCE__;
	#define lib_t struct HINSTANCE__*
#else
	#define lib_t void*
#endif

struct tu_loadlib
{
	exported_module tu_loadlib(const char* library_name);
	exported_module ~tu_loadlib();

	exported_module void* get_function(const char* function_name);
	
	private:

	lib_t m_hlib;

};


#endif // TU_LOADLIB_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
