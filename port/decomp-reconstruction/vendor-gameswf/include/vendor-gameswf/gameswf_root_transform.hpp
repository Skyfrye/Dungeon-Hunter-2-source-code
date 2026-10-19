// Screen <-> logical mapping of gameswf::root (DH2 binary: screen_to_logical 0x773dc0,
// logical_to_screen 0x773f50). Arithmetic only: no gameswf types, so the batch test compiles it alone.
//
// landscape: root's get_orientation() returned 0 or 2 (the binary's v5 flag). Otherwise the axes swap.
// frame: the movie frame rect in twips (rect m_x_min, m_x_max, m_y_min, m_y_max). 20 twips = 1 pixel.
// display: root +0x24..+0x30 (x, y, width, height set by set_display_bounds).
// viewport: root +0x1c and +0x20 (width, height).
#ifndef VENDOR_GAMESWF_ROOT_TRANSFORM_HPP
#define VENDOR_GAMESWF_ROOT_TRANSFORM_HPP

namespace gameswf {
namespace dh2 {

struct root_frame_twips {
	float x_min;
	float x_max;
	float y_min;
	float y_max;
};

struct root_display_bounds {
	int x;
	int y;
	int width;
	int height;
};

// Body of root::screen_to_logical after the orientation and frame rect are loaded.
// Writes the logical point into x and y.
inline void root_screen_to_logical(bool landscape, const root_frame_twips& frame,
                                   const root_display_bounds& d, float& x, float& y)
{
	const float frame_w = (frame.x_max - frame.x_min) / 20.0f;
	const float frame_h = (frame.y_max - frame.y_min) / 20.0f;
	if (landscape)
	{
		const float x_scale = static_cast<float>(d.width) / frame_w;
		const float y_scale = static_cast<float>(d.height) / frame_h;
		x = (x - static_cast<float>(d.x)) / x_scale;
		y = (y - static_cast<float>(d.y)) / y_scale;
	}
	else
	{
		const float x_scale = static_cast<float>(d.height) / frame_w;
		const float y_scale = static_cast<float>(d.width) / frame_h;
		x = (x - static_cast<float>(d.y)) / x_scale;
		y = (y - static_cast<float>(d.x)) / y_scale;
	}
}

// Body of root::logical_to_screen after the orientation and frame rect are loaded.
// viewport_w and viewport_h are root +0x1c and +0x20.
inline void root_logical_to_screen(bool landscape, const root_frame_twips& frame,
                                   const root_display_bounds& d, int viewport_w, int viewport_h,
                                   float& x, float& y)
{
	const float frame_w = (frame.x_max - frame.x_min) / 20.0f;
	const float frame_h = (frame.y_max - frame.y_min) / 20.0f;
	const float vw_per_d = static_cast<float>(viewport_w) / static_cast<float>(d.width);
	const float vh_per_d = static_cast<float>(viewport_h) / static_cast<float>(d.height);
	if (landscape)
	{
		const float x_off = (static_cast<float>(d.x) * 20.0f) / (static_cast<float>(d.width) / frame_w);
		const float y_off = (static_cast<float>(d.y) * 20.0f) / (static_cast<float>(d.height) / frame_h);
		x = (vw_per_d * x) - x_off;
		y = (vh_per_d * y) - y_off;
	}
	else
	{
		const float x_off = (static_cast<float>(d.y) * 20.0f) / (static_cast<float>(d.height) / frame_w);
		const float y_off = (static_cast<float>(d.x) * 20.0f) / (static_cast<float>(d.width) / frame_h);
		x = (vh_per_d * x) - x_off;
		y = (vw_per_d * y) - y_off;
	}
}

}  // namespace dh2
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_ROOT_TRANSFORM_HPP
