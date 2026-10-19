// gameswf.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// SWF (Shockwave Flash) player library.  The info for this came from
// http://www.openswf.org, the flashsource project, and swfparse.cpp


#ifndef GAMESWF_H
#define GAMESWF_H

// for memory leaks debugging
#if _WIN32 && _DEBUG && !USE_STACKWALKER
	#include <stdlib.h>
	#include <crtdbg.h>
#endif

#include <ctype.h>	// for poxy wchar_t
#include <assert.h>
#include "base/image.h"	// for delete m_suspended_image
#include "base/container.h"	// for hash<...>
#include "base/tu_gc.h"
#include "base/tu_gc_singlethreaded_refcount.h"
#include "base/weak_ptr.h"
#include "vendor-gameswf/ref_counted.hpp"  // DH2: replaces the upstream ref_counted struct below
#include "vendor-gameswf/gc_ptr.hpp"  // DH2: gc_ptr is a smart_ptr (no tu_gc layer in the binary)

class tu_file;
class render_handler;

// @@ forward decl to avoid including base/image.h; TODO change the
// render_handler interface to not depend on these structs at all.
namespace image { struct rgb; struct rgba; struct image_base; }
namespace glitch { namespace video { class ITexture; } }  // DH2: forward decl for bitmap_info::set_texture
struct membuf;  // DH2: global (base/membuf.h), forward decl for render_handler::create_bitmap_info_native

// forward decl
namespace jpeg { struct input; }
class tu_string;
class tu_stringi;

// Forward decl for D3D render handlers, in case they are
// instantiated.  Harmless on non-D3D platforms.
struct IDirect3DDevice9;
struct IDirect3DDevice8;

namespace gameswf
{
#if 0 /* DH2: replaced by vendor-gameswf/include/vendor-gameswf/gc_ptr.hpp (gc_ptr is smart_ptr, gc_array is array<smart_ptr>) */
	DECLARE_GC_TYPES(tu_gc::singlethreaded_refcount);
	SPECIALIZE_GC_CONTAINER(gc_array, array);
#endif /* DH2 */

	// Forward declarations.
	struct image_rgb;	// DH2: vendor-gameswf/image_rgb.hpp (Gameloft; the binary's handler takes these, not image::rgb)
	struct image_rgba;	// DH2: vendor-gameswf/image_rgba.hpp
	struct player;
	struct as_value;
	struct bitmap_info;
	struct character;
	struct execute_tag;
	struct font;
	struct render_handler;
	struct rgba;
	struct sound_handler;
	struct stream;
	struct video_handler;
	struct event_id;
	struct root;
	struct movie_def_impl;
	struct rect;
	struct as_environment;
	struct character_def;
	struct sound_sample;
	struct video_stream_definition;
	struct sprite_definition;
	struct as_s_function;
	struct as_object;
	struct movie_definition;

	//
	// Log & error reporting control.
	//

	// Supply a function pointer to receive log & error messages.
	exported_module void	register_log_callback(void (*callback)(bool error, const char* message));

	// Control verbosity of specific categories.
	exported_module bool get_verbose_parse();
	exported_module bool get_verbose_debug();
	exported_module bool get_verbose_action();
	exported_module void	set_verbose_action(bool verbose);
	exported_module void	set_verbose_parse(bool verbose);

	// Get and set the render handler.  This is one of the first
	// things you should do to initialise the player (assuming you
	// want to display anything).
	exported_module void	set_render_handler(render_handler* s);
	// Game-fork export hook: called only for exported bitmap characters.
	// Original DH2 75c750..75c784 / substitute_bitmap_character 759cfc.
	typedef void (*bitmap_substitution_callback)(const char*, bitmap_info*);
	exported_module void register_bitmap_substitution_callback(bitmap_substitution_callback);

	// Pass in a sound handler, so you can handle audio on behalf of
	// gameswf.  This is optional; if you don't set a handler, or set
	// NULL, then sounds won't be played.
	//
	// If you want sound support, you should set this at startup,
	// before loading or playing any movies!
	exported_module void	set_sound_handler(sound_handler* s);

	// You probably don't need this. (@@ make it private?)
	exported_module sound_handler*	get_sound_handler();

	// Register a callback to the host, for providing a file,
	// given a "URL" (i.e. a path name).  This is the only means
	// by which the gameswf library accesses file data, for
	// loading movies, cache files, and so on.
	//
	// gameswf will call this when it needs to open a file.
	//
	// NOTE: the returned tu_file* will be delete'd by gameswf
	// when it is done using it.  Your file_opener_function may
	// return NULL in case the requested file can't be opened.
	typedef tu_file* (*file_opener_callback)(const char* url_or_path);
	exported_module void	register_file_opener_callback(file_opener_callback opener);

	// ActionScripts embedded in a movie can use the built-in
	// fscommand() function to send data back to the host
	// application.	 If you are interested in this data, register
	// a handler, which will be called when the embedded scripts
	// call fscommand().
	//
	// The handler gets the character* that the script is
	// embedded in, and the two string arguments passed by the
	// script to fscommand().
	typedef void (*fscommand_callback)(character* movie, const char* command, const char* arg);
	exported_module void	register_fscommand_callback(fscommand_callback handler);

	// Use this to control how finely curves are subdivided.  1.0
	// is the default; it's a pretty good value.  Larger values
	// result in coarser, more angular curves with fewer vertices.
	exported_module void	set_curve_max_pixel_error(float pixel_error);
	exported_module float	get_curve_max_pixel_error();

	// Some helpers that may or may not be compiled into your
	// version of the library, depending on platform etc.
	exported_module render_handler*	create_render_handler_xbox();
	exported_module render_handler*	create_render_handler_ogl();
	exported_module render_handler*	create_render_handler_ogles();
	exported_module render_handler* create_render_handler_d3d(IDirect3DDevice9* _pDevice);
	exported_module render_handler* create_render_handler_d3d(IDirect3DDevice8* _pDevice);
#ifdef TU_USE_SDL
	exported_module sound_handler*	create_sound_handler_sdl();
#endif
	exported_module sound_handler*	create_sound_handler_openal();


	// For things that should be automatically garbage-collected.
#if 0 /* DH2: replaced by vendor-gameswf/include/vendor-gameswf/ref_counted.hpp */
	struct ref_counted : public gc_object, public weak_pointee_mixin
	{
		void detach_weak_proxy();  // DH2: Gameloft addition; body is in another vendor-gameswf batch
	};
#endif /* DH2: ref_counted (declared in ref_counted.hpp) */

	// Unique id of all gameswf resources
	// DH2: the values of the DH2 build, read from the is(int) bodies of the binary (character 1, sprite 2,
	// DH2: generic character 3, function 4 ... stage 21, edit text 32, bitmap character 33, timer 37, mouse
	// DH2: event 40). Added over r1714: AS_GENERIC_CHARACTER, AS_STAGE and AS_BITMAP_CHARACTER. AS_LOADVARS
	// DH2: has no class in the binary and moved to the end.
	enum as_classes
	{
		AS_OBJECT,
		AS_CHARACTER,
		AS_SPRITE,
		AS_GENERIC_CHARACTER,	// DH2
		AS_FUNCTION,
		AS_C_FUNCTION,
		AS_S_FUNCTION,
		AS_3_FUNCTION,	// action script 3 function
		AS_MOVIE_DEF,
		AS_MOVIE_DEF_SUB,
		AS_CHARACTER_DEF,
		AS_SPRITE_DEF,
		AS_VIDEO_DEF,
		AS_SOUND_SAMPLE,
		AS_VIDEO_INST,
		AS_KEY,
		AS_ARRAY,
		AS_COLOR,
		AS_SOUND,
		AS_FONT,
		AS_CANVAS,
		AS_STAGE,	// DH2
		AS_NETSTREAM,
		AS_STRING,
		AS_SELECTION,
		AS_POINT,
		AS_MATRIX,
		AS_TRANSFORM,
		AS_COLOR_TRANSFORM,
		AS_NETCONNECTION,
		AS_LISTENER,
		AS_DATE,
		AS_EDIT_TEXT,
		AS_BITMAP_CHARACTER,	// DH2
		AS_XML_SOCKET,
		AS_TEXTFORMAT,
		AS_MCLOADER,
		AS_TIMER,
		AS_MOUSE,

		// flash9
		AS_EVENT,
		AS_MOUSE_EVENT,

		AS_LOADVARS,	// DH2: moved here, the binary has no as_loadvars

		// plugins
		AS_PLUGIN_MYDB,
		AS_PLUGIN_MYTABLE,
		AS_PLUGIN_3DS,
		AS_PLUGIN_FILE,
		AS_PLUGIN_SQLITE_DB,
		AS_PLUGIN_SQLITE_TABLE,
		AS_PLUGIN_SQL_DB,
		AS_PLUGIN_SQL_TABLE,

		// user defined plugins
		// should be the last in this enum
		AS_USER_PLUGIN = 1000

	};

	// This is the base class for all ActionScript-able objects
	// ("as_" stands for ActionScript).
	struct as_object_interface : public ref_counted
	{
		virtual bool is(int class_id) const = 0;
	};

	// cast_to<gameswf object>(obj) implementation (from Julien Hamaide)
	template <typename cast_class>
	cast_class* cast_to(as_object_interface* object)
	{
		if (object)
		{
			return object->is(cast_class::m_class_id) ? static_cast<cast_class*>(object) : 0;
		}
		return 0;
	}

	template <typename cast_class>
	const cast_class* cast_to(const as_object_interface* object)
	{
		if (object)
		{
			return object->is(cast_class::m_class_id) ? static_cast<const cast_class*>(object) : 0;
		}
		return 0;
	}

	// For caching precomputed stuff.  Generally of
	// interest to gameswf_processor and programs like it.
	struct cache_options
	{
		bool	m_include_font_bitmaps;

		cache_options()
			:
			m_include_font_bitmaps(true)
		{
		}
	};


	// Keyboard handling
	namespace key
	{
		enum code
		{
			INVALID = 0,
			A = 65,
			B,
			C,
			D,
			E,
			F,
			G,
			H,
			I,
			J,
			K,
			L,
			M,
			N,
			O,
			P,
			Q,
			R,
			S,
			T,
			U,
			V,
			W,
			X,
			Y,
			Z,
			_0 = 48,
			_1,
			_2,
			_3,
			_4,
			_5,
			_6,
			_7,
			_8,
			_9,
			KP_0 = 96,
			KP_1,
			KP_2,
			KP_3,
			KP_4,
			KP_5,
			KP_6,
			KP_7,
			KP_8,
			KP_9,
			KP_MULTIPLY,
			KP_ADD,
			KP_ENTER,
			KP_SUBTRACT,
			KP_DECIMAL,
			KP_DIVIDE,
			F1 = 112,
			F2,
			F3,
			F4,
			F5,
			F6,
			F7,
			F8,
			F9,
			F10,
			F11,
			F12,
			F13,
			F14,
			F15,
			BACKSPACE = 8,
			TAB,
			CLEAR = 12,
			ENTER,
			SHIFT = 16,
			CONTROL,
			ALT,
			CAPSLOCK = 20,
			ESCAPE = 27,
			SPACE = 32,
			PGDN,
			PGUP,
			END = 35,
			HOME,
			LEFT,
			UP,
			RIGHT,
			DOWN,
			INSERT = 45,
			DELETEKEY,
			HELP,
			NUM_LOCK = 144,
			SEMICOLON = 186,
			EQUALS = 187,
			COMMA = 188,
			MINUS = 189,
			PERIOD = 190,
			SLASH = 191,
			BACKTICK = 192,
			LEFT_BRACKET = 219,
			BACKSLASH = 220,
			RIGHT_BRACKET = 221,
			QUOTE = 222,

			KEYCOUNT
		};
	}	// end namespace key

	// Try to grab movie info from the header of the given .swf
	// file.
	//
	// Sets *version to 0 if info can't be extracted.
	//
	// You can pass NULL for any entries you're not interested in.
	void	get_movie_info(
		const char*	filename,
		int*		version,
		int*		width,
		int*		height,
		float*		frames_per_second,
		int*		frame_count,
		int*		tag_count);

	// Enable/disable attempts to read cache files (.gsc) when
	// loading movies.
	exported_module void	set_use_cache_files(bool use_cache);

	//
	// Use DO_NOT_LOAD_BITMAPS if you have pre-processed bitmaps
	// stored externally somewhere, and you plan to install them
	// via get_bitmap_info()->...
	enum create_bitmaps_flag
	{
		DO_LOAD_BITMAPS,
		DO_NOT_LOAD_BITMAPS
	};
	// Use DO_NOT_LOAD_FONT_SHAPES if you know you have
	// precomputed texture glyphs (in cached data) and you know
	// you always want to render text using texture glyphs.
	enum create_font_shapes_flag
	{
		DO_LOAD_FONT_SHAPES,
		DO_NOT_LOAD_FONT_SHAPES
	};

	// unused
//	movie_definition*	create_movie_no_recurse(
//		tu_file*		input_stream,
//		create_bitmaps_flag	cbf,
//		create_font_shapes_flag cfs);

	// Helper to pregenerate cached data (basically, shape
	// tesselations).  Does this by running through each frame of
	// the movie and displaying the shapes with a null renderer.
	// The pregenerated data is stored in the movie_definition
	// object itself, and is included with the cached data written
	// by movie_definition::output_cached_data().
	//
	// Note that this tesselates shapes to the resolution they
	// explicitly appear in the linear frames of the movie.	 Does
	// not try very hard to run your ActionScript to account for
	// dynamic scaling (that's more or less futile anyway due to
	// the halting problem).
	void	precompute_cached_data(movie_definition* movie_def);

	//
	// Library management
	//

	// Release any library movies we've cached.  Do this when you want
	// maximum cleanup.
	void	clear_library();

	//
	// Sound callback handler.
	//

	// You may define a subclass of this, and pass an instance to
	// set_sound_handler().
	//
	// DH2: the binary's vtable (verified from the callers; the concrete handler is outside the gameswf library):
	// DH2:   +0x00 create_sound (6 arguments), +0x04 load_sound, +0x08 append_sound, +0x0c play_sound(handle, loops),
	// DH2:   +0x10 set_volume, +0x14 stop_sound, +0x18 stop_all_sounds, +0x1c delete_sound, +0x20..+0x28 the aux streamer
	// DH2:   pair and cvt (not called by the library), +0x2c/+0x30 destructors, +0x34 is_open, +0x38 pause,
	// DH2:   +0x3c get_position, then advance. Compared with r1714 set_max_volume is gone and play_sound has no
	// DH2:   listener object argument.
	struct sound_handler
	{
		// audio for video
		typedef void (*aux_streamer_ptr)(as_object* netstream, unsigned char* stream, int len);

		enum format_type
		{
			FORMAT_RAW = 0,		// unspecified format.	Useful for 8-bit sounds???
			FORMAT_ADPCM = 1,	// gameswf doesn't pass this through; it uncompresses and sends FORMAT_NATIVE16
			FORMAT_MP3 = 2,
			FORMAT_UNCOMPRESSED = 3,	// 16 bits/sample, little-endian
			FORMAT_NELLYMOSER = 6,	// Mystery proprietary format; see nellymoser.com

			// gameswf tries to convert data to this format when possible:
			FORMAT_NATIVE16 = 7	// gameswf extension: 16 bits/sample, native-endian
		};

		// If stereo is true, samples are interleaved w/ left sample first.

		// gameswf calls at load-time with sound data, to be
		// played later.  You should create a sample with the
		// data, and return a handle that can be used to play
		// it later.  If the data is in a format you can't
		// deal with, then you can return 0 (for example), and
		// then ignore 0's in play_sound() and delete_sound().
		//
		// Assign handles however you like.
		virtual int	create_sound(
			void*		data,
			int		data_bytes,
			int		sample_count,
			format_type	format,
			int		sample_rate,	/* one of 5512, 11025, 22050, 44100 */
			bool		stereo) = 0;

		// loads external sound file
		virtual int	load_sound(const char* url) = 0;

		virtual void append_sound(int sound_handle, void* data, int data_bytes) = 0;

		// gameswf calls this when it wants you to play the defined sound.
		//
		// loop_count == 0 means play the sound once (1 means play it twice, etc)
		virtual void	play_sound(int sound_handle, int loop_count /* , volume, pan, etc? */) = 0;	// DH2: no listener object (+0x0c)

		virtual void	set_volume(int sound_handle, int volume) = 0;

#if 0	// DH2: not in the binary's sound_handler vtable
		// set max volume in percent, [0..100]
		virtual void	set_max_volume(int vol) = 0;
#endif

		// Stop the specified sound if it's playing.
		// (Normally a full-featured sound API would take a
		// handle specifying the *instance* of a playing
		// sample, but SWF is not expressive that way.)
		virtual void	stop_sound(int sound_handle) = 0;
		virtual void	stop_all_sounds() = 0;

		// gameswf calls this when it's done with a particular sound.
		virtual void	delete_sound(int sound_handle) = 0;

		// They are called from netstream when it wishes to sound video
		virtual void attach_aux_streamer(aux_streamer_ptr ptr, as_object* netstream) {};
		virtual void detach_aux_streamer(as_object* netstream) {};
		virtual void cvt(short int** adjusted_data, int* adjusted_size, unsigned char* data,
				 int size, int channels, int freq) {};

		virtual ~sound_handler() {};
		virtual bool is_open() { return false; };
		virtual void pause(int sound_handle, bool paused) {};

		// The number of milliseconds a sound has been playing. 
		// If the sound is looped, the position is reset to 0 at the beginning of each loop.
		virtual int get_position(int sound_handle) { return 0; };

		// openAL sound handler uses this function to handle sound events
		virtual void advance(float delta_time) {};
	};

	struct matrix; 
	struct rect; 

	// base class for video handler
	struct video_handler : public ref_counted
	{
		video_handler() :
			m_clear_background(false)
		{
		}

		virtual void display(Uint8* data, int width, int height, 
			const matrix* mat, const rect* bounds, const rgba& color) = 0;

		void clear_background(bool clear) { m_clear_background = clear; }

	protected:

		bool m_clear_background;
	};

	// tu_float is used in matrix & cxform because
	// Flash converts inf to zero when works with matrix & cxform
	struct tu_float
	{
		tu_float()	{ m_float = 0.0f; }
		tu_float(float x)	{ operator=(x); }
		tu_float(double x)	{ operator=((float) x); }

		operator float() const { return m_float; }
		inline void	operator=(float x)
		{
			m_float = x >= -3.402823466e+38F && x <= 3.402823466e+38F ? x : 0.0f;
		}
		void	operator+=(const float x) { operator=(m_float + x); }
		void	operator-=(const float x) { operator=(m_float - x); }
		void	operator*=(const float x) { operator=(m_float * x); }
		void	operator/=(const float x) { operator=(m_float / x); }

	private:
		float m_float;
	};



	//
	// matrix type, used by render handler
	//

	struct point;
	struct matrix
	{
		tu_float	m_[2][3];

		static matrix	identity;

		exported_module matrix();
		exported_module void	set_identity();
		void	concatenate(const matrix& m);
		void	concatenate_translation(float tx, float ty);
		void	concatenate_scale(float s);
		bool	set_lerp(const matrix& m1, const matrix& m2, float t);	// DH2: returns whether m12 is in range (binary); body in vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp
		void	set_scale_rotation(float x_scale, float y_scale, float rotation);
		void	read(stream* in);
		void	print() const;
		void	transform(point* result, const point& p) const;
		void	transform(rect* bound) const;
		void	transform_vector(point* result, const point& p) const;
		void	transform_by_inverse(point* result, const point& p) const;
		void	transform_by_inverse(rect* bound) const;
		bool	set_inverse(const matrix& m);	// DH2: returns whether m12 is in range (binary); body in vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp
		bool	does_flip() const;	// return true if we flip handedness
		float	get_determinant() const;	// determinant of the 2x2 rotation/scale part only
		float	get_max_scale() const;	// return the maximum scale factor that this transform applies
		float	get_x_scale() const;	// return the magnitude scale of our x coord output
		float	get_y_scale() const;	// return the magnitude scale of our y coord output
		float	get_rotation() const;	// return our rotation component (in radians)

		bool operator==(const matrix& m) const
		{
			return 
				m_[0][0] == m.m_[0][0] &&
				m_[0][1] == m.m_[0][1] &&
				m_[0][2] == m.m_[0][2] &&
				m_[1][0] == m.m_[1][0] &&
				m_[1][1] == m.m_[1][1] &&
				m_[1][2] == m.m_[1][2];
		}

		bool operator!=(const matrix& m) const
		{
			return ! (*this == m);
		}

	};


	//
	// point: used by rect which is used by render_handler (otherwise would be in internal gameswf_types.h)
	//


	struct point
	{
		float	m_x, m_y;

		point() : m_x(0), m_y(0) {}
		point(float x, float y) : m_x(x), m_y(y) {}

		void	set_lerp(const point& a, const point& b, float t)
		// Set to a + (b - a) * t
		{
			m_x = a.m_x + (b.m_x - a.m_x) * t;
			m_y = a.m_y + (b.m_y - a.m_y) * t;
		}

		bool operator==(const point& p) const { return m_x == p.m_x && m_y == p.m_y; }

		bool	bitwise_equal(const point& p) const;
		
		float get_length() const;

		void twips_to_pixels();
		void pixels_to_twips();
	};


	//
	// rect: rectangle type, used by render handler
	//


	struct rect
	{
		float	m_x_min, m_x_max, m_y_min, m_y_max;

		rect() :
			m_x_min(0.0f),
			m_x_max(0.0f),
			m_y_min(0.0f),
			m_y_max(0.0f)
		{
		}

		void	read(stream* in);
		void	print() const;
		bool	point_test(float x, float y) const;
		bool	bound_test(const rect& bound) const;
		void	set_to_point(float x, float y);
		void	set_to_point(const point& p);
		void	expand_to_point(float x, float y);
		void	expand_to_point(const point& p);
		void	expand_to_rect(const rect& r);
		float	width() const { return m_x_max - m_x_min; }
		float	height() const { return m_y_max - m_y_min; }

		point	get_corner(int i) const;

		void	enclose_transformed_rect(const matrix& m, const rect& r);

		void	set_lerp(const rect& a, const rect& b, float t);

		void twips_to_pixels();
		void pixels_to_twips();
	};


	//
	// cxform: color transform type, used by render handler
	//
	struct cxform
	{
		tu_float	m_[4][2];	// [RGBA][mult, add]

		cxform();
		void	concatenate(const cxform& c);
		rgba	transform(const rgba in) const;
		void	read_rgb(stream* in);
		void	read_rgba(stream* in);
		void	clamp();  // Force component values to be in range.
		void	print() const;

		static cxform	identity;
	};


	//
	// texture and render callback handler.
	//

	// Your render_handler creates bitmap_info's for gameswf.  You
	// need to subclass bitmap_info in order to add the
	// information and functionality your app needs to render
	// using textures.
	// DH2: the vtable of the DH2 binary has 16 slots (72 bytes with the thunk header): D1 +0x00, D0 +0x04, layout +0x08,
	// DH2: unlayout +0x0c, activate +0x10, set_writable +0x14, lock +0x18, unlock +0x1c, set_texture +0x20, get_width +0x24,
	// DH2: get_height +0x28, set_min_filter +0x2c, set_mag_filter +0x30, is_layout +0x34, get_internal_width +0x38,
	// DH2: get_internal_height +0x3c. r1714's get_data and get_bpp are not in the binary. Bodies are in
	// DH2: vendor-gameswf/src/v1-vendor-gameswf-gameswf_bitmap_info-d3c4c6-0.cpp.
	struct bitmap_info : public ref_counted
	{
		virtual ~bitmap_info();  // DH2: vtable slots D1 and D0
		virtual void layout() {};	// +0x08
		virtual void unlayout();  // DH2: +0x0c
		virtual void activate() {};	// +0x10
		virtual void set_writable();  // DH2: +0x14
		virtual void* lock();  // DH2: +0x18, returns the pixel buffer of the locked texture (Hex-Rays types it int on the 32-bit target)
		virtual void unlock();  // DH2: +0x1c
		virtual void set_texture(glitch::video::ITexture* texture);  // DH2: +0x20
		virtual int get_width() const { return 0; }	// +0x24
		virtual int get_height() const { return 0; }	// +0x28
		#if 0 /* DH2: not in the binary */
		virtual unsigned char* get_data() const { return 0; }
		virtual int get_bpp() const { return 0; }	// byte per pixel
		#endif /* DH2 */
		enum filter_mode : int {};  // DH2: enumerators not recovered; set_min_filter and set_mag_filter never read the value
		virtual void set_min_filter(filter_mode mode);  // DH2: +0x2c
		virtual void set_mag_filter(filter_mode mode);  // DH2: +0x30
		virtual int is_layout() const;  // DH2: +0x34
		virtual int get_internal_width() const;  // DH2: +0x38, returns the virtual get_width()
		virtual int get_internal_height() const;  // DH2: +0x3c, returns the virtual get_height()
		// DH2 port addition (remaster, not in the binary; appended so every slot above keeps its offset): after a SWF bitmap gets
		// its texture from the texture loader, keep the size the SWF declares when the texture is an exact 2x/4x/... scale of it.
		// Texture coordinates are pixel rectangles divided by this size, so an upscaled menu atlas keeps mapping the same regions.
		virtual void dh2_keep_declared_size(int /*width*/, int /*height*/) {}  // +0x40
	};

	// DH2: Gameloft enum used by render_handler::set_orientation (gameswf::orientation_mode in the binary).
	// DH2: Only its name is recovered: no enumerators, and int is assumed as the underlying type.
	enum orientation_mode : int;  // DH2: opaque

	// DH2: gameswf::blend_mode::id (Gameloft): the argument of render_handler::set_blend_mode. The enumerators are not
	// DH2: recovered; the values are the batch renderer's material slots 0 to 15 (slot 15 is the mask slot).
	struct blend_mode
	{
		enum id : int {};
	};

	struct player_context;	// DH2: vendor-gameswf/player_context.hpp
	struct render_cache;	// DH2: vendor-gameswf/render_cache.hpp

	// You must define a subclass of render_handler, and pass an
	// instance to set_render_handler().
	//
	// DH2: the virtuals are those of the DH2 binary, in vtable slot order (192-byte vtable, 47 slots, dump with
	// DH2: tools/decomp_vtable.py gameswf::render_handler). Changes from r1714: Gameloft adds create_bitmap_info_texture,
	// DH2: create_bitmap_info_native and create_bitmap_info_target, set_blend_mode, set_target, clear_frame_buffer,
	// DH2: read_frame_buffer, set_wire_frame, set_buffer_capacity, set_context, set_render_cache, draw, flush, open, reset,
	// DH2: the orientation pair and the display-callback pair; fill_style_bitmap loses its blend mode argument,
	// DH2: draw_triangle_list takes an index array, and test_stencil_buffer is gone.
	struct render_handler
	{
		virtual ~render_handler() {}	// DH2: +0x00 (D1), +0x04 (D0)

		// DH2: +0x04, the pixel rounding flag. render_handler_glitch::draw_bitmap snaps the quad corners to whole pixels
		// when it is set (the constructor sets it to 1); edit_text_character::display writes it before drawing text.
		unsigned char	unk_04 = 0;

		// Your handler should return these with a ref-count of 0.  (@@ is that the right policy?)
		virtual bitmap_info*	create_bitmap_info_empty() = 0;	// +0x08; used when DO_NOT_LOAD_BITMAPS is set
		virtual bitmap_info*	create_bitmap_info_alpha(int w, int h, unsigned char* data) = 0;	// +0x0c
		virtual bitmap_info*	create_bitmap_info_rgb(image_rgb* im) = 0;	// +0x10 (DH2: gameswf::image_rgb, r1714: image::rgb)
		virtual bitmap_info*	create_bitmap_info_rgba(image_rgba* im) = 0;	// +0x14 (DH2: gameswf::image_rgba, r1714: image::rgba)
		virtual bitmap_info*	create_bitmap_info_texture(glitch::video::ITexture* texture) = 0;	// DH2: +0x18
		virtual bitmap_info*	create_bitmap_info_native(int w, int h, const membuf* data) = 0;	// DH2: +0x1c
		virtual bitmap_info*	create_bitmap_info_target(int w, int h) = 0;	// DH2: +0x20, a texture the handler can render into
		virtual video_handler*	create_video_handler() = 0;	// +0x24

		// Bracket the displaying of a frame from a movie.
		// Fill the background color, and set up default
		// transforms, etc.
		virtual void	begin_display(
			rgba background_color,
			int viewport_x0, int viewport_y0,
			int viewport_width, int viewport_height,
			float x0, float x1, float y0, float y1) = 0;	// +0x28
		virtual void	end_display() = 0;	// +0x2c

		// DH2: +0x30 .. +0x4c, the render-target and batching controls.
		enum buffer_mode : int {};	// DH2: enumerators not recovered
		virtual void	set_blend_mode(blend_mode::id mode) = 0;	// DH2: +0x30
		virtual void	set_target(bitmap_info* target) = 0;	// DH2: +0x34
		virtual void	clear_frame_buffer() = 0;	// DH2: +0x38
		virtual void	read_frame_buffer(int x, int y, int width, int height, unsigned char* pixels) = 0;	// DH2: +0x3c
		virtual void	set_wire_frame(bool wire) = 0;	// DH2: +0x40
		virtual void	set_buffer_capacity(buffer_mode mode, int vertex_count) = 0;	// DH2: +0x44
		virtual void	set_context(player_context* context) = 0;	// DH2: +0x48
		virtual void	set_render_cache(render_cache* cache) = 0;	// DH2: +0x4c

		// Geometric and color transforms for mesh and line_strip rendering.
		virtual void	set_matrix(const matrix& m) = 0;	// +0x50
		virtual void	set_cxform(const cxform& cx) = 0;	// +0x54

		// Draw triangles using the current fill-style 0.
		// Clears the style list after rendering.
		//
		// coords is a list of (x,y) coordinate pairs, in
		// triangle-strip order.  The type of the array should
		// be Sint16[vertex_count*2]
		virtual void	draw_mesh_strip(const void* coords, int vertex_count) = 0;	// +0x58
		// As above, but coords is in triangle list order.
		// DH2: with an optional index array (indices may be null).
		virtual void	draw_triangle_list(const void* coords, int vertex_count, const unsigned short* indices, int index_count) = 0;	// DH2: +0x5c

		// Draw a line-strip using the current line style.
		// Clear the style list after rendering.
		//
		// Coords is a list of (x,y) coordinate pairs, in
		// sequence.  Each coord is a 16-bit signed integer.
		virtual void	draw_line_strip(const void* coords, int vertex_count) = 0;	// +0x60
		virtual void	draw(render_cache* cache) = 0;	// DH2: +0x64, replays a cached batch

		// Set line and fill styles for mesh & line_strip
		// rendering.
		enum bitmap_wrap_mode
		{
			WRAP_REPEAT,
			WRAP_CLAMP
		};

		enum bitmap_blend_mode
		{
			BLEND_NORMAL,
			BLEND_LAYER,
			BLEND_MULTIPLY,
			BLEND_SCREEN,
			BLEND_LIGHTEN,
			BLEND_DARKEN,
			BLEND_DIFFERENCE,
			BLEND_ADD,
			BLEND_SUBTRACT,
			BLEND_INVERT,
			BLEND_ALPHA,
			BLEND_ERASE,
			BLEND_OVERLAY,
			BLEND_HARDLIGHT
		};

		virtual void	fill_style_disable(int fill_side) = 0;	// +0x68
		virtual void	fill_style_color(int fill_side, const rgba& color) = 0;	// +0x6c
		virtual bool	fill_style_bitmap(int fill_side, bitmap_info* bi, const matrix& m,
							bitmap_wrap_mode wm) = 0;	// DH2: +0x70, no blend mode argument; returns whether the style was set

		virtual void	line_style_disable() = 0;	// +0x74
		virtual void	line_style_color(rgba color) = 0;	// +0x78
		virtual void	line_style_width(float width) = 0;	// +0x7c

		// Special function to draw a rectangular bitmap;
		// intended for textured glyph rendering.  Ignores
		// current transforms.
		virtual void	draw_bitmap(
			const matrix&		m,
			bitmap_info*	bi,
			const rect&		coords,
			const rect&		uv_coords,
			rgba			color) = 0;	// +0x80
		virtual void	set_antialiased(bool enable) = 0;	// +0x84

		#if 0 /* DH2: the stencil test is not in the DH2 vtable */
		virtual bool test_stencil_buffer(const rect& bound, Uint8 pattern) = 0;
		#endif /* DH2 */
		virtual void begin_submit_mask() = 0;	// +0x88
		virtual void end_submit_mask() = 0;	// +0x8c
		virtual void disable_mask() = 0;	// +0x90
		virtual void	flush();	// DH2: +0x94, empty default

		// Mouse cursor handling.
		enum cursor_type
		{
			SYSTEM_CURSOR,
			ACTIVE_CURSOR,
			VISIBLE_CURSOR,			// show cursor
			INVISIBLE_CURSOR		// hide cursor
		};
		virtual void set_cursor(cursor_type cursor) {}	// +0x98
		virtual bool is_visible(const rect& bound) = 0;	// +0x9c
		virtual void open() = 0;	// +0xa0
		virtual void reset();	// DH2: +0xa4, empty default
		virtual void set_orientation(orientation_mode mode);	// DH2: +0xa8, empty default
		virtual int get_orientation();	// DH2: +0xac, default returns 0
		virtual void begin_display_callback();	// DH2: +0xb0, empty default
		virtual void end_display_callback();	// DH2: +0xb4, empty default
	};

	// DH2: the render handler set by set_render_handler(). The binary keeps it in gameswf::s_render_handler, a global
	// DH2: that character::do_display_callback and other Gameloft code read (r1714 keeps it static in gameswf_render.cpp).
	extern render_handler* s_render_handler;

	// Some optional helpers.
	namespace tools
	{
		struct process_options
		{
			bool	m_zip_whole_file;	// @@ not implemented yet (low priority?)
			bool	m_remove_image_data;	// removes existing image data; leaves minimal placeholder tags
			bool	m_remove_font_glyph_shapes;

			process_options()
				:
				m_zip_whole_file(false),
				m_remove_image_data(false),
				m_remove_font_glyph_shapes(false)
			{}
		};

		// Copy tags from *in to *out, applying the given
		// options.  *in should be a SWF-format stream.	 The
		// output will be a SWF-format stream.
		//
		// Returns 0 on success, or a non-zero error-code on
		// failure.
		int	process_swf(tu_file* swf_out, tu_file* swf_in, const process_options& options);
	}

#if 0 /* DH2: replaced by vendor-gameswf/include/vendor-gameswf/glyph_provider.hpp (glyph_entity, glyph_provider) */
	// helper
	struct glyph_entity : public ref_counted
	{
		gc_ptr<bitmap_info> m_bi;
		float m_advance;
		rect m_bounds;
	};

	struct glyph_provider : public ref_counted
	{
		glyph_provider() {}
		virtual ~glyph_provider() {}
		
		virtual bitmap_info* get_char_image(character_def* shape_glyph, Uint16 code, 
			const tu_string& fontname, bool is_bold, bool is_italic, int fontsize,
			rect* bounds, float* advance) = 0;

	};
#endif /* DH2: glyph_entity and glyph_provider (declared in glyph_provider.hpp) */

	struct glyph_provider;  // DH2: the DH2 layout is in glyph_provider.hpp; the declarations below need only the name

	exported_module glyph_provider*	get_glyph_provider();
	exported_module void	set_glyph_provider(glyph_provider* gp);
	exported_module glyph_provider*	create_glyph_provider_freetype();
	exported_module glyph_provider*	create_glyph_provider_tu();

}	// namespace gameswf


#endif // GAMESWF_H


// Local Variables:
// mode: C++
// c-basic-offset: 8
// tab-width: 8
// indent-tabs-mode: t
// End:
