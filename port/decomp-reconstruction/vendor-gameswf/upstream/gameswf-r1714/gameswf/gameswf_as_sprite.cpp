// gameswf_as_sprite.cpp	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Some implementation for SWF player.

// Useful links:
//
// http://sswf.sourceforge.net/SWFalexref.html
// http://www.openswf.org

#include "gameswf/gameswf_action.h"	// for as_object
#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_as_classes/as_number.h"

namespace gameswf
{

	void transform_point(as_object* obj, const matrix& m);	// DH2: 0x7c1574 (src/v1-vendor-gameswf-gameswf-fddef6-7.cpp)

	//
	// sprite built-in ActionScript methods
	//

	void	as_global_movieclip_ctor(const fn_call& fn)
	// Constructor for ActionScript class XMLSocket
	{
		root* rm = fn.get_player()->get_root();
		sprite_definition* empty_sprite_def = new sprite_definition(fn.get_player(), NULL);
		character* ch = new sprite_instance(fn.get_player(), empty_sprite_def,
			rm, rm->get_root_movie(), 0);
		fn.result->set_as_object(ch);
	}

	sprite_instance* sprite_getptr(const fn_call& fn)
	{
		sprite_instance* sprite = cast_to<sprite_instance>(fn.this_ptr);
		if (sprite == NULL)
		{
			sprite = cast_to<sprite_instance>(fn.env->get_target());
		}
		assert(sprite);
		return sprite;
	}

	void	sprite_hit_test(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		fn.result->set_bool(false);
		// DH2 0x7c136c: no arguments is an error (hitTest wrong parameters); with two or three the coordinates are taken
		// DH2: only when they are numbers (0 otherwise), scaled to twips (x 20), and the shape flag only with exactly three.
		if (fn.nargs <= 0)
		{
			log_error("hitTest() wrong parameters\n");
			return;
		}
		if (fn.nargs == 1) 
		{
			// Evaluates the bounding boxes of the target and specified instance,
			// and returns true if they overlap or intersect at any point.
			character* ch = cast_to<character>(fn.env->find_target(fn.arg(0)));
			if (ch)
			{
				fn.result->set_bool(sprite->hit_test(ch));
				return;
			}
			log_error("hitTest: can't find target\n");
			return;
		}
		else
		{
			float hx = fn.arg(0).is_number() ? static_cast<float>(fn.arg(0).to_number() * 20.0) : 0.0f;
			float hy = fn.arg(1).is_number() ? static_cast<float>(fn.arg(1).to_number() * 20.0) : 0.0f;
			bool shape = fn.nargs == 3 ? fn.arg(2).to_bool() : false;
			fn.result->set_bool(sprite->hit_test(hx, hy, shape));
		}
	}

	// DH2: 0x7c1ea8. startDrag(lock, left, top, right, bottom): the lock flag is the first argument, the bounds are the next four
	// DH2: (taken as given, no twips conversion and no swapping of the corners, a missing right or bottom is 199980, a missing
	// DH2: top is -199980; the left is read whenever there are at least two arguments). The root starts the drag (root::start_drag,
	// DH2: 0x775154) with the sprite, the lock flag, the bound flag (set when there are two or more arguments) and the rectangle.
	void	sprite_start_drag(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);

		bool lock_center = false;
		bool bound = false;
		rect r;
		if (fn.nargs > 0)
		{
			lock_center = fn.arg(0).to_bool();
			if (fn.nargs > 1)
			{
				r.m_x_min = static_cast<float>(fn.arg(1).to_number());
				if (fn.nargs <= 2)
				{
					r.m_y_min = -199980.0f;
					r.m_x_max = 199980.0f;
					r.m_y_max = 199980.0f;
				}
				else
				{
					r.m_y_min = static_cast<float>(fn.arg(2).to_number());
					r.m_x_max = fn.nargs > 3 ? static_cast<float>(fn.arg(3).to_number()) : 199980.0f;
					r.m_y_max = fn.nargs > 4 ? static_cast<float>(fn.arg(4).to_number()) : 199980.0f;
				}
				bound = true;
			}
		}

		// inform the root
		fn.get_root()->start_drag(sprite, lock_center, bound, r);
	}

	// DH2: 0x7c1e70. Stops the drag only when this sprite is the one being dragged.
	void	sprite_stop_drag(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.get_root()->m_drag_state.m_character == sprite)
		{
			fn.get_root()->stop_drag();
		}
	}

	void	sprite_play(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		sprite->set_play_state(character::PLAY);
	}

	void	sprite_stop(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		sprite->set_play_state(character::STOP);
	}

	void	sprite_goto_and_play(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs < 1)
		{
			log_error("error: sprite_goto_and_play needs one arg\n");
			return;
		}

		// gotoAndPlay(NaN) will be ignored
		// DH2 0x7c198c: only a number or a string (the property type is not accepted); the play state changes only when
		// DH2: the goto succeeded (goto_frame returns the frame move / label lookup result)
		if (fn.arg(0).is_string() || fn.arg(0).is_number())
		{
			tu_string frame_buf;
			if (sprite->goto_frame(fn.arg(0).to_string(frame_buf)))
			{
				sprite->set_play_state(character::PLAY);
			}
		}
	}

	void	sprite_goto_and_stop(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs < 1)
		{
			log_error("error: sprite_goto_and_stop needs one arg\n");
			return;
		}

		// gotoAndStop(NaN) will be ignored
		// DH2 0x7c1adc: only a number or a string; the play state is set to STOP whatever the goto returned
		if (fn.arg(0).is_string() || fn.arg(0).is_number())
		{
			tu_string frame_buf;
			sprite->goto_frame(fn.arg(0).to_string(frame_buf));
			sprite->set_play_state(character::STOP);
		}
	}

	void	sprite_next_frame(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		int frame_count = sprite->get_frame_count();
		int current_frame = sprite->get_current_frame();
		if (current_frame < frame_count)
		{
			sprite->goto_frame(current_frame + 1);
		}
		sprite->set_play_state(character::STOP);
	}

	void	sprite_prev_frame(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		int current_frame = sprite->get_current_frame();
		if (current_frame > 0)
		{
			sprite->goto_frame(current_frame - 1);
		}
		sprite->set_play_state(character::STOP);
	}

	void	sprite_get_bytes_loaded(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		fn.result->set_int(sprite->get_loaded_bytes());
	}

	void	sprite_get_bytes_total(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		fn.result->set_int(sprite->get_file_bytes());
	}

	//swapDepths(target:Object) : Void
	//swapDepths(depth:Number) : Void
	void sprite_swap_depths(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs != 1) 
		{ 
			log_error("swapDepths needs one arg\n"); 
			return; 
		} 

		sprite_instance* target = NULL;

		if (fn.arg(0).is_number())
		{ 
			int target_depth = fn.arg(0).to_int();
			target_depth += ADJUST_DEPTH_VALUE;
			if (target_depth == sprite->get_depth())	// DH2 0x7c2028: same depth, nothing to do
			{
				return;
			}
			sprite_instance* parent = cast_to<sprite_instance>(sprite->get_parent());
			if (parent == NULL)
			{
				log_error("can't do _root.swapDepths\n"); 
				return; 
			}

			character* ch = parent->m_display_list.get_character_at_depth(target_depth);
			if (ch)
			{
				target = cast_to<sprite_instance>(ch);
			}
			else
			{
				// no character at depth
				parent->m_display_list.change_character_depth(sprite, target_depth);
				return;
			}
		}
		else
		if (fn.arg(0).is_object()) 
		{ 
			target = cast_to<sprite_instance>(fn.arg(0).to_object());
		}
		else 
		{ 
			log_error("swapDepths has received invalid arg\n"); 
			return; 
		} 

		if (sprite == NULL || target == NULL) 
		{ 
			log_error("It is impossible to swap NULL character\n"); 
			return; 
		} 

		if (sprite->get_parent() == target->get_parent() && sprite->get_parent() != NULL) 
		{ 
			int target_depth = target->get_depth(); 
			target->set_depth(sprite->get_depth()); 
			sprite->set_depth(target_depth); 
			sprite_instance* parent = cast_to<sprite_instance>(sprite->get_parent());
			parent->m_display_list.swap_characters(sprite, target); 
		} 
		else 
		{ 
			log_error("MovieClips should have the same parent\n"); 
		} 
	} 

	//duplicateMovieClip(name:String, depth:Number, [initObject:Object]) : MovieClip 
	void sprite_duplicate_movieclip(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs >= 2) 
		{ 
			character* ch = sprite->clone_display_object(
				fn.arg(0).to_tu_string(), 
				fn.arg(1).to_int() + ADJUST_DEPTH_VALUE);

			if (fn.nargs == 3) 
			{ 
				as_object* init_object = fn.arg(2).to_object();
				if (init_object)
				{
					init_object->copy_to(ch);
				}
			} 
			fn.result->set_as_object(ch); 
			return;
		} 
		log_error("duplicateMovieClip needs 2 or 3 args\n"); 
	} 

	void sprite_get_depth(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		fn.result->set_int(sprite->get_depth() - ADJUST_DEPTH_VALUE);
	}

	//createEmptyMovieClip(name:String, depth:Number) : MovieClip
	void sprite_create_empty_movieclip(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs != 2)
		{
			log_error("createEmptyMovieClip needs 2 args\n");
			return;
		}

		character* ch = sprite->add_empty_movieclip(fn.arg(0).to_string(),
			fn.arg(1).to_int() + ADJUST_DEPTH_VALUE);
		fn.result->set_as_object(ch);
	}

	// removeMovieClip() : Void 
	void sprite_remove_movieclip(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);
		sprite_instance* parent = cast_to<sprite_instance>(sprite->get_parent());
		if (parent) 
		{ 
			parent->remove_display_object(sprite); 
		} 
	} 

	// loadMovie(url:String, [method:String]) : Void
	// TODO: implement [method:String]
	void sprite_loadmovie(const fn_call& fn) 
	{ 
		if (fn.nargs >= 1)
		{
			fn.env->load_file(fn.arg(0).to_string(), fn.this_ptr);	// DH2 0x7c077c: the result is left alone (r1714 returned the clip)
		}

	} 

	// public unloadMovie() : Void
	void sprite_unloadmovie(const fn_call& fn) 
	{ 
//		sprite_instance* sprite = sprite_getptr(fn);
//				UNUSED(sprite);
		fn.env->load_file("", fn.this_ptr);
	} 

	// getNextHighestDepth() : Number
	// Determines a depth value that you can pass to MovieClip.attachMovie(),
	// MovieClip.duplicateMovieClip(), or MovieClip.createEmptyMovieClip()
	// to ensure that Flash renders the movie clip in front of all other objects
	// on the same level and layer in the current movie clip.
	// The value returned is 0 or larger (that is, negative numbers are not returned).
	// Content created at design time (in the authoring tool) starts at depth -16383.
	void sprite_getnexthighestdepth(const fn_call& fn) 
	{ 
		int highest_depth;
		sprite_instance* sprite = sprite_getptr(fn);
		highest_depth = sprite->get_highest_depth() - ADJUST_DEPTH_VALUE;

		// highest_depth must be 0 or larger !!!
		//highest_depth = max( highest_depth, 0 );
		assert(highest_depth >= 0);
		fn.result->set_int(highest_depth);
	} 

	// public createTextField(instanceName:String, depth:Number,
	// x:Number, y:Number, width:Number, height:Number) : TextField
	void sprite_create_text_field(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);
		fn.result->set_as_object(NULL);
		if (fn.nargs != 6)
		{
			log_error("createTextField: the number of arguments must be 6\n");
			return;
		}

		fn.result->set_as_object(sprite->create_text_field(
			fn.arg(0).to_string(),	// field name
			fn.arg(1).to_int() + ADJUST_DEPTH_VALUE,	// depth
			fn.arg(2).to_int(),	// x
			fn.arg(3).to_int(),	// y
			fn.arg(4).to_int(),	// width
			fn.arg(5).to_int()	// height
		));
	} 

	// public attachMovie(id:String, name:String, depth:Number, [initObject:Object]) : MovieClip
	// Takes a symbol from the library and attaches it to the movie clip.
	void sprite_attach_movie(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);

		if (fn.nargs >= 3)
		{
			tu_string id = fn.arg(0).to_string();	// the exported name (sprite_definition)
			tu_string name = fn.arg(1).to_string();	// instance name
			int depth = fn.arg(2).to_int() + ADJUST_DEPTH_VALUE;
			sprite_instance* ch = sprite->attach_movie(id, name, depth);

			if (fn.nargs >= 4)
			{
				as_object* init_object = fn.arg(3).to_object();
				if (init_object)
				{
					init_object->copy_to(ch);
				}
			}
			fn.result->set_as_object(ch);
			return;
		}
		log_error("attachMovie needs 3 or 4 args\n"); 
	} 

	// gameSWF extension
	void sprite_set_fps(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);

		if (fn.nargs == 1)
		{
			float fps = fn.arg(0).to_float();
			sprite->set_fps(fps);
		}
	} 

	// public localToGlobal(pt:Object) : Void
	void sprite_local_global(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs == 1)
		{
			// DH2 0x7c1938: the point object (type 5 only, may be null) goes through transform_point (0x7c1574) with the world matrix
			as_object* pt = fn.arg(0).is_object() ? fn.arg(0).to_object() : NULL;
			transform_point(pt, *sprite->get_world_matrix());
		}
	}

	// public globalToLocal(pt:Object) : Void
	void sprite_global_local(const fn_call& fn) 
	{ 
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs == 1)
		{
			// DH2 0x7c18a8: transform_point (0x7c1574) with the inverse of the world matrix
			as_object* pt = fn.arg(0).is_object() ? fn.arg(0).to_object() : NULL;
			matrix inv;
			inv.set_inverse(*sprite->get_world_matrix());
			transform_point(pt, inv);
		}
	}


	// gameSWF extension
	void sprite_get_play_state(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		bool state = sprite->get_play_state() == character::STOP ? false : true;
		fn.result->set_bool(state);
	}

	// drawing API

	//	public beginFill(rgb:Number, [alpha:Number]) : Void
	void sprite_begin_fill(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		canvas* canva = sprite->get_canvas();
		assert(canva);

		rgba color(0, 0, 0, 255);
		if (fn.nargs > 0)
		{
			color.set(fn.arg(0).to_number());
		}
		canva->begin_fill(color);
	}

	//	public endFill() : Void
	void sprite_end_fill(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		canvas* canva = sprite->get_canvas();
		assert(canva);
		canva->end_fill();
	}

	//	public clear() : Void
	void sprite_clear(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		if (sprite->m_canvas != NULL)
		{
			sprite->remove_display_object(sprite->m_canvas.get_ptr());
			sprite->m_canvas = NULL;
		}
	}

	// public moveTo(x:Number, y:Number) : Void
	void sprite_move_to(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		canvas* canva = sprite->get_canvas();
		assert(canva);

		if (fn.nargs >= 2)
		{
			float x = PIXELS_TO_TWIPS(fn.arg(0).to_float());
			float y = PIXELS_TO_TWIPS(fn.arg(1).to_float());
			canva->move_to(x, y);
		}
	}

	//	public lineTo(x:Number, y:Number) : Void
	void sprite_line_to(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		canvas* canva = sprite->get_canvas();
		assert(canva);

		if (fn.nargs >= 2)
		{
			float x = PIXELS_TO_TWIPS(fn.arg(0).to_float());
			float y = PIXELS_TO_TWIPS(fn.arg(1).to_float());
			canva->line_to(x, y);
		}
	}

	//	public curveTo(controlX:Number, controlY:Number, anchorX:Number, anchorY:Number) : Void
	void sprite_curve_to(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		canvas* canva = sprite->get_canvas();
		assert(canva);

		if (fn.nargs >= 4)
		{
			float cx = PIXELS_TO_TWIPS(fn.arg(0).to_float());
			float cy = PIXELS_TO_TWIPS(fn.arg(1).to_float());
			float ax = PIXELS_TO_TWIPS(fn.arg(2).to_float());
			float ay = PIXELS_TO_TWIPS(fn.arg(3).to_float());
			canva->curve_to(cx, cy, ax, ay);
		}
	}

	// public lineStyle(thickness:Number, rgb:Number, alpha:Number, pixelHinting:Boolean,
	// noScale:String, capsStyle:String, jointStyle:String, miterLimit:Number) : Void
	void sprite_line_style(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		canvas* canva = sprite->get_canvas();
		assert(canva);

		// If a thickness is not specified, or if the parameter is undefined, a line is not drawn
		if (fn.nargs == 0)
		{
			canva->m_current_line = 0;
			canva->add_path(false);
			return;
		}

		Uint16 width = (Uint16) PIXELS_TO_TWIPS(fclamp(fn.arg(0).to_float(), 0, 255));
		rgba color(0, 0, 0, 255);

		if (fn.nargs >= 2)
		{
			color.set(fn.arg(1).to_float());
			if (fn.nargs >= 3)
			{
				float alpha = fclamp(fn.arg(2).to_float(), 0, 100);
				color.m_a = Uint8(255 * (alpha/100));

				// capsStyle:String - Added in Flash Player 8. 
				// A string that specifies the type of caps at the end of lines.
				// Valid values are: "round", "square", and "none". 
				// If a value is not indicated, Flash uses round caps. 
				if (fn.nargs >= 6)
				{
					//TODO
				}
			}
		}

		canva->set_line_style(width, color);
	}

	// flash9
	void sprite_add_script(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs == 2) 
		{
			// arg #1 - frame number, 0 based
			// arg #2 - function
			sprite->add_script(fn.arg(0).to_int(), fn.arg(1).to_function());
		}
	}

	// public getBounds(target:Object) : Object
	void	sprite_get_bounds(const fn_call& fn)
	{
		// DH2 0x7c23f4. The target is the argument when it is a character object (null otherwise). With no target argument, or
		// DH2: when the target is the clip itself, the clip's bound goes straight through the inverse of its own world matrix.
		// DH2: Otherwise the bound goes through the parent's world matrix and the inverse of the target's world matrix.
		sprite_instance* sprite = sprite_getptr(fn);
		character* target = NULL;
		if (fn.nargs == 1)
		{
			if (fn.arg(0).is_object())
			{
				target = cast_to<character>(fn.arg(0).to_object());
			}
			if (target == NULL)
			{
				target = sprite;	// the binary dereferences the null target; fall back to the clip
			}
		}
		else
		{
			target = sprite;
		}

		rect bound;
		sprite->get_bound(&bound);

		if (target != sprite)
		{
			character* parent = sprite->get_parent();
			if (parent)
			{
				parent->get_world_matrix()->transform(&bound);
			}
		}

		matrix m;
		m.set_inverse(*target->get_world_matrix());
		m.transform(&bound);

		bound.twips_to_pixels();
		as_object* obj = new as_object(sprite->get_player());
		obj->set_member("xMin", bound.m_x_min);
		obj->set_member("yMin", bound.m_y_min);
		obj->set_member("xMax", bound.m_x_max);
		obj->set_member("yMax", bound.m_y_max);

		fn.result->set_as_object(obj);
	}

	// public getRect(target:Object) : Object
	void	sprite_get_rect(const fn_call& fn)
	{
		// TODO: exclude any strokes on shapes
		sprite_get_bounds(fn);
	}

	#if 0 /* DH2: no setMask native in the binary, and the DH2 sprite_instance has no mask clip member (gameswf_sprite.h) */
	// public setMask(mc:Object) : Void
	void	sprite_set_mask(const fn_call& fn)
	{
		sprite_instance* sprite = sprite_getptr(fn);
		if (fn.nargs > 0)
		{
			// end of submit prev mask, setMask(null)
			if (sprite->m_mask_clip != NULL)
			{
				sprite->m_mask_clip->set_visible(true);
			}

			sprite->m_mask_clip = cast_to<sprite_instance>(fn.arg(0).to_object());

			if (sprite->m_mask_clip != NULL)
			{
				// submit mask, setMask(mc)
				sprite->m_mask_clip->set_visible(false);
			}
		}

	}

	#endif /* DH2 */
}
