// DH2: frame arithmetic of gameswf::sprite_instance::goto_frame(int) (binary 0x781a3c) and advance(float) (0x78240c).
//
// Pure code with no gameswf types, so the batch test (tests/v1-vendor-gameswf-gameswf_sprite_instance-d5206d-1_test.cpp)
// compiles it on its own. The batch body (src/v1-vendor-gameswf-gameswf_sprite_instance-d5206d-1.cpp) uses these
// helpers for its two frame loops.
#ifndef VENDOR_GAMESWF_SPRITE_GOTO_HPP
#define VENDOR_GAMESWF_SPRITE_GOTO_HPP

namespace gameswf {
namespace dh2 {

// A run of consecutive frames. A backward run visits first, first - 1, ..., first - count + 1.
// A forward run visits first, first + 1, ..., first + count - 1. A count of zero means no frame runs.
struct frame_run
{
	int first;
	int count;
};

// goto_frame rejects the request (sets the update flag and returns) when the target is past the last
// frame, negative, or already the current frame. frame_count is m_def->get_frame_count().
inline bool sprite_goto_rejected(int target, int current, int frame_count)
{
	return frame_count <= target || target < 0 || current == target;
}

// Backward jump (target < current): execute_frame_tags_reverse on current, current - 1, ..., target + 1.
inline frame_run sprite_goto_reverse_run(int current, int target)
{
	return frame_run{current, current - target};
}

// Forward jump: execute_frame_tags(f, true) on current + 1, ..., target - 1. Empty when target <= current + 1.
inline frame_run sprite_goto_forward_run(int current, int target)
{
	return frame_run{current + 1, target > current + 1 ? target - current - 1 : 0};
}

// What advance() does with the frame of a playing clip that has already loaded: it steps to the next frame, wrapping to
// frame 0 at the end; the frame's tags run only when the frame changed (a one-frame clip stays on frame 0); frame 0 of a
// clip with more than one frame first clears the characters the frame does not place.
struct advance_step
{
	int next_frame;
	bool changed;
	bool clear_before_tags;
};

inline advance_step sprite_advance_step(int current, int frame_count)
{
	const int next = (current + 1 >= frame_count) ? 0 : current + 1;
	return advance_step{next, next != current, next == 0 && frame_count > 1};
}

// advance() runs the goto actions again while they queue more goto actions, with this many passes at most (it logs
// "stop recursive loop gotoAndPlay/gotoAndStop (more than 10)" and stops after the pass numbered 11).
const int kSpriteGotoActionPassLimit = 11;

}  // namespace dh2
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_SPRITE_GOTO_HPP
