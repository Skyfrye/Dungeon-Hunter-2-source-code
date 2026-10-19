// gameswf::filter_texture_cache (Gameloft, not in gameswf r1714).
//
// A texture_cache (texture_cache.hpp) used for filter results. The binary calls the texture_cache
// members on this object (the used-region hash at +0x30, find_available_region), so the class derives
// from texture_cache and adds no members that are recovered yet.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp. filter_engine (filter_engine.hpp) derives
// from this class.

#pragma once

#include "vendor-gameswf/texture_cache.hpp"

namespace gameswf {

struct character;

class filter_texture_cache : public texture_cache {
public:
	using texture_cache::texture_cache;	// the binary has no constructor of its own: the filter engine calls texture_cache's

	// 0x758a80 gameswf::filter_texture_cache::get_character_region(gameswf::character*, int, int).
	// The region cached for a character: looks the key (character, 0, 0, 0) up in the used-region table (+0x30) and
	// returns the value. On a miss the size (pixels) is rounded up to whole cells and the best-fitting free region
	// is taken (find_available_region), which can be null when nothing fits. The region is not put into the table.
	region* get_character_region(character* ch, int width, int height);

	// 0x756cdc gameswf::filter_texture_cache::get_region_size_requirement_cellsize(int&, int&).
	// Rounds both sizes (pixels) up to whole 16-pixel cells, with a minimum of one cell. Returns the
	// remainder of the original height (height % 16). The object itself is not read.
	int get_region_size_requirement_cellsize(int& width, int& height);
};

}  // namespace gameswf
