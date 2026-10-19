#ifndef GLITCH_SCENE_COLLADA_GUI_LAYOUTS_PS_EVIDENCE_HPP
#define GLITCH_SCENE_COLLADA_GUI_LAYOUTS_PS_EVIDENCE_HPP

// Evidence layouts (generated from Hex-Rays bodies in recovered/native/hexrays-all).
// Member offsets are from the start of each object. Word-indexed model ctors (int* a1) are converted to byte offsets.
// Names come only from the string keys bound into the parameter map (hashString("...")) or from zero/default stores in the cited ctor.
// Entries marked "bound" were bound by name but their type is not confirmed unless stated.
// Ctor addresses are the GNPS instantiations. The PS system block 0x642558 has a Hex-Rays symbol of createParticleSystem, not the queue name.
// PD domain (PDBox/PDSphere/...) layouts are in ps_members.hpp and are not re-derived here.

#include <cstddef>
#include <cstdint>

namespace glitch::ps::evidence {

// IParticleContext (GNPS ctor 0x63b560; SParticle ctor 0x64d1d0 has the same stores).
struct IParticleContext_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x63b560 GNPS vptr off_97CA00; SParticle ctor 64d1d0 writes its own vptr (off_980DA0)
  std::uint8_t pad_0x04[4]; // not confirmed
  std::uint32_t u32_0x08; // +0x08 width=4 src=0x63b560 ctor writes 0; same in SParticle 64d1d0
  std::uint32_t u32_0x0c; // +0x0C width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x10; // +0x10 width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x14; // +0x14 width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x18; // +0x18 width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x1c; // +0x1C width=4 src=0x63b560 ctor writes 0
  std::uint8_t pad_0x20[1]; // not confirmed
  std::uint8_t u8_0x21; // +0x21 width=1 src=0x63b560 ctor writes 0
  std::uint8_t pad_0x22[2]; // not confirmed
  std::uint32_t u32_0x24; // +0x24 width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x28; // +0x28 width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x2c; // +0x2C width=4 src=0x63b560 ctor writes 0
  std::uint8_t binding_map_color; // +0x30 width=1 src=0x63b560 map header byte (ctor writes 0); map inserts use a1+48 as header (src 63b560)
  std::uint8_t pad_0x31[3]; // not confirmed
  std::uint32_t binding_map_root; // +0x34 width=4 src=0x63b560 ctor writes 0 (rb-tree root)
  std::uint32_t binding_map_leftmost; // +0x38 width=4 src=0x63b560 ctor writes a1+48 (header self-pointer)
  std::uint32_t binding_map_rightmost; // +0x3C width=4 src=0x63b560 ctor writes a1+48 (header self-pointer)
  std::uint32_t binding_map_count; // +0x40 width=4 src=0x63b560 ctor writes 0
  std::uint8_t pad_0x44[4]; // not confirmed
  std::uint32_t u32_0x48; // +0x48 width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x4c; // +0x4C width=4 src=0x63b560 ctor writes 0
  std::uint32_t u32_0x50; // +0x50 width=4 src=0x63b560 ctor writes 0
  std::uint8_t u8_0x54; // +0x54 width=1 src=0x63b560 ctor writes 0
  std::uint8_t pad_0x55[3]; // not confirmed
  std::uint32_t anim_database; // +0x58 width=4 src=0x63b560 bound by name "AnimationDatabase" (hashString) into the binding map; address a1+88
};
static_assert(offsetof(IParticleContext_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(IParticleContext_ev, u32_0x08) == 0x08, "u32_0x08");
static_assert(offsetof(IParticleContext_ev, u32_0x0c) == 0x0C, "u32_0x0c");
static_assert(offsetof(IParticleContext_ev, u32_0x10) == 0x10, "u32_0x10");
static_assert(offsetof(IParticleContext_ev, u32_0x14) == 0x14, "u32_0x14");
static_assert(offsetof(IParticleContext_ev, u32_0x18) == 0x18, "u32_0x18");
static_assert(offsetof(IParticleContext_ev, u32_0x1c) == 0x1C, "u32_0x1c");
static_assert(offsetof(IParticleContext_ev, u8_0x21) == 0x21, "u8_0x21");
static_assert(offsetof(IParticleContext_ev, u32_0x24) == 0x24, "u32_0x24");
static_assert(offsetof(IParticleContext_ev, u32_0x28) == 0x28, "u32_0x28");
static_assert(offsetof(IParticleContext_ev, u32_0x2c) == 0x2C, "u32_0x2c");
static_assert(offsetof(IParticleContext_ev, binding_map_color) == 0x30, "binding_map_color");
static_assert(offsetof(IParticleContext_ev, binding_map_root) == 0x34, "binding_map_root");
static_assert(offsetof(IParticleContext_ev, binding_map_leftmost) == 0x38, "binding_map_leftmost");
static_assert(offsetof(IParticleContext_ev, binding_map_rightmost) == 0x3C, "binding_map_rightmost");
static_assert(offsetof(IParticleContext_ev, binding_map_count) == 0x40, "binding_map_count");
static_assert(offsetof(IParticleContext_ev, u32_0x48) == 0x48, "u32_0x48");
static_assert(offsetof(IParticleContext_ev, u32_0x4c) == 0x4C, "u32_0x4c");
static_assert(offsetof(IParticleContext_ev, u32_0x50) == 0x50, "u32_0x50");
static_assert(offsetof(IParticleContext_ev, u8_0x54) == 0x54, "u8_0x54");
static_assert(offsetof(IParticleContext_ev, anim_database) == 0x58, "anim_database");

// GNPSMotionModel (ctor 0x641724).
struct GNPSMotionModel_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x641724 primary vptr written from ctor arg
  float direction[3]; // +0x04 width=4 x3 src=0x641724 bound by name "Direction" (a1+1); zeroed words 0x04..0x0C; vec3 span from adjacent binding
  float direction_variation[3]; // +0x10 width=4 x3 src=0x641724 bound by name "DirectionVariation" (a1+4); zeroed words 0x10..0x18
  std::uint32_t motion_random; // +0x1C width=4 src=0x641724 bound by name "MotionRandom" (a1+7); not zeroed in ctor; type not confirmed
  std::uint32_t motion_random_variation; // +0x20 width=4 src=0x641724 bound by name "MotionRandomVariation" (a1+8); not zeroed; type not confirmed
  std::uint32_t speed_scale_over_life; // +0x24 width=4 src=0x641724 bound by name "SpeedScaleOverLife" (a1+9); zeroed
  std::uint32_t motion_random_scale_over_life; // +0x28 width=4 src=0x641724 bound by name "MotionRandomScaleOverLife" (a1+10); zeroed
  std::uint32_t speed_scale; // +0x2C width=4 src=0x641724 bound by name "SpeedScale" (a1+11); zeroed
  std::uint32_t motion_random_scale; // +0x30 width=4 src=0x641724 bound by name "MotionRandomScale" (a1+12); not zeroed
  std::uint32_t speed; // +0x34 width=4 src=0x641724 bound by name "Speed" (a1+13); zeroed
  std::uint32_t speed_variation; // +0x38 width=4 src=0x641724 bound by name "SpeedVariation" (a1+14); zeroed
};
static_assert(offsetof(GNPSMotionModel_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(GNPSMotionModel_ev, direction) == 0x04, "direction");
static_assert(offsetof(GNPSMotionModel_ev, direction_variation) == 0x10, "direction_variation");
static_assert(offsetof(GNPSMotionModel_ev, motion_random) == 0x1C, "motion_random");
static_assert(offsetof(GNPSMotionModel_ev, motion_random_variation) == 0x20, "motion_random_variation");
static_assert(offsetof(GNPSMotionModel_ev, speed_scale_over_life) == 0x24, "speed_scale_over_life");
static_assert(offsetof(GNPSMotionModel_ev, motion_random_scale_over_life) == 0x28, "motion_random_scale_over_life");
static_assert(offsetof(GNPSMotionModel_ev, speed_scale) == 0x2C, "speed_scale");
static_assert(offsetof(GNPSMotionModel_ev, motion_random_scale) == 0x30, "motion_random_scale");
static_assert(offsetof(GNPSMotionModel_ev, speed) == 0x34, "speed");
static_assert(offsetof(GNPSMotionModel_ev, speed_variation) == 0x38, "speed_variation");

// GNPSSpinModel (ctor 0x6419dc).
struct GNPSSpinModel_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x6419dc primary vptr
  std::uint32_t spin_time; // +0x04 width=4 src=0x6419dc bound by name "SpinTime" (a1+1); not zeroed
  std::uint32_t spin_variation; // +0x08 width=4 src=0x6419dc bound by name "SpinVariation" (a1+2); not zeroed
  std::uint32_t spin_phase; // +0x0C width=4 src=0x6419dc bound by name "SpinPhase" (a1+3); not zeroed
  std::uint32_t spin_phase_variation; // +0x10 width=4 src=0x6419dc bound by name "SpinPhaseVariation" (a1+4); not zeroed
  std::uint32_t spin_axis[3]; // +0x14 width=4 x3 src=0x6419dc bound by name "SpinAxis" (a1+5); zeroed 0x14..0x28
  std::uint32_t spin_axis_variation[3]; // +0x20 width=4 x3 src=0x6419dc bound by name "SpinAxisVariation" (a1+8); zeroed
  std::uint32_t start_angle_type; // +0x2C width=4 src=0x6419dc bound by name "StartAngleType" (a1+11); zeroed
  std::uint32_t spin_keep_aligned_to_motion; // +0x30 width=4 src=0x6419dc bound by name "SpinKeepAlignedToMotion" (a1+12); zeroed
  std::uint8_t pad_0x34[68]; // not confirmed
  std::uint32_t spin_pivot_point[3]; // +0x78 width=4 x3 src=0x6419dc bound by name "SpinPivotPoint" (a1+30); zeroed
  std::uint32_t spin_scale_over_life; // +0x84 width=4 src=0x6419dc bound by name "SpinScaleOverLife" (a1+33); zeroed
  std::uint32_t spin_scale; // +0x88 width=4 src=0x6419dc bound by name "SpinScale" (a1+34); zeroed
  std::uint32_t spin_axis_type; // +0x8C width=4 src=0x6419dc bound by name "SpinAxisType" (a1+35); not zeroed
};
static_assert(offsetof(GNPSSpinModel_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(GNPSSpinModel_ev, spin_time) == 0x04, "spin_time");
static_assert(offsetof(GNPSSpinModel_ev, spin_variation) == 0x08, "spin_variation");
static_assert(offsetof(GNPSSpinModel_ev, spin_phase) == 0x0C, "spin_phase");
static_assert(offsetof(GNPSSpinModel_ev, spin_phase_variation) == 0x10, "spin_phase_variation");
static_assert(offsetof(GNPSSpinModel_ev, spin_axis) == 0x14, "spin_axis");
static_assert(offsetof(GNPSSpinModel_ev, spin_axis_variation) == 0x20, "spin_axis_variation");
static_assert(offsetof(GNPSSpinModel_ev, start_angle_type) == 0x2C, "start_angle_type");
static_assert(offsetof(GNPSSpinModel_ev, spin_keep_aligned_to_motion) == 0x30, "spin_keep_aligned_to_motion");
static_assert(offsetof(GNPSSpinModel_ev, spin_pivot_point) == 0x78, "spin_pivot_point");
static_assert(offsetof(GNPSSpinModel_ev, spin_scale_over_life) == 0x84, "spin_scale_over_life");
static_assert(offsetof(GNPSSpinModel_ev, spin_scale) == 0x88, "spin_scale");
static_assert(offsetof(GNPSSpinModel_ev, spin_axis_type) == 0x8C, "spin_axis_type");

// GNPSLifeModel (ctor 0x641d7c).
struct GNPSLifeModel_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x641d7c primary vptr
  std::uint32_t life; // +0x04 width=4 src=0x641d7c bound by name "Life" (a1+1); zeroed
  std::uint32_t life_variation; // +0x08 width=4 src=0x641d7c bound by name "LifeVariation" (a1+2); zeroed
};
static_assert(offsetof(GNPSLifeModel_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(GNPSLifeModel_ev, life) == 0x04, "life");
static_assert(offsetof(GNPSLifeModel_ev, life_variation) == 0x08, "life_variation");

// GNPSGenerationModel (ctor 0x641e2c).
struct GNPSGenerationModel_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x641e2c primary vptr
  float birth_rate; // +0x04 width=4 src=0x641e2c bound by name "BirthRate" (a1+1); ctor stores float 1.0 (0x3F800000)
  std::uint32_t birth_rate_variation; // +0x08 width=4 src=0x641e2c bound by name "BirthRateVariation" (a1+2); zeroed
  std::uint32_t max_particles_variation; // +0x0C width=4 src=0x641e2c bound by name "MaxParticlesVariation" (a1+3); zeroed
  std::int32_t max_particles; // +0x10 width=4 src=0x641e2c bound by name "MaxParticles" (a1+4); ctor stores int 1
  std::uint32_t u32_0x14; // +0x14 width=4 src=0x641e2c zeroed, no binding
  std::uint32_t u32_0x18; // +0x18 width=4 src=0x641e2c zeroed, no binding
};
static_assert(offsetof(GNPSGenerationModel_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(GNPSGenerationModel_ev, birth_rate) == 0x04, "birth_rate");
static_assert(offsetof(GNPSGenerationModel_ev, birth_rate_variation) == 0x08, "birth_rate_variation");
static_assert(offsetof(GNPSGenerationModel_ev, max_particles_variation) == 0x0C, "max_particles_variation");
static_assert(offsetof(GNPSGenerationModel_ev, max_particles) == 0x10, "max_particles");
static_assert(offsetof(GNPSGenerationModel_ev, u32_0x14) == 0x14, "u32_0x14");
static_assert(offsetof(GNPSGenerationModel_ev, u32_0x18) == 0x18, "u32_0x18");

// GNPSSizeModel (ctor 0x641f70).
struct GNPSSizeModel_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x641f70 primary vptr
  float target_size; // +0x04 width=4 src=0x641f70 bound by name "TargetSize" (a1+1); ctor stores float 1.0
  std::uint32_t size_variation; // +0x08 width=4 src=0x641f70 bound by name "SizeVariation" (a1+2); zeroed
  std::uint32_t size_scale_over_life; // +0x0C width=4 src=0x641f70 bound by name "SizeScaleOverLife" (a1+3); zeroed
  std::uint32_t size_scale; // +0x10 width=4 src=0x641f70 bound by name "SizeScale" (a1+4); zeroed
};
static_assert(offsetof(GNPSSizeModel_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(GNPSSizeModel_ev, target_size) == 0x04, "target_size");
static_assert(offsetof(GNPSSizeModel_ev, size_variation) == 0x08, "size_variation");
static_assert(offsetof(GNPSSizeModel_ev, size_scale_over_life) == 0x0C, "size_scale_over_life");
static_assert(offsetof(GNPSSizeModel_ev, size_scale) == 0x10, "size_scale");

// GNPSColorModel (ctor 0x6420a8).
struct GNPSColorModel_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x6420a8 primary vptr
  std::uint32_t texture_transform_track; // +0x04 width=4 src=0x6420a8 bound by name "TextureTransformTrack" (a1+1); zeroed
  std::uint32_t diffuse_color_track; // +0x08 width=4 src=0x6420a8 bound by name "DiffuseColorTrack" (a1+2); zeroed
  std::uint32_t anim_key_mapping_type; // +0x0C width=4 src=0x6420a8 bound by name "AnimKeyMappingType" (a1+3); ctor stores int 1
  std::uint32_t anim_offset; // +0x10 width=4 src=0x6420a8 bound by name "AnimOffset" (a1+4); zeroed
  std::uint32_t anim_offset_variation; // +0x14 width=4 src=0x6420a8 bound by name "AnimOffsetVariation" (a1+5); zeroed
  std::uint32_t anim_length; // +0x18 width=4 src=0x6420a8 bound by name "AnimLength" (a1+6); zeroed
  std::uint32_t anim_length_variation; // +0x1C width=4 src=0x6420a8 bound by name "AnimLengthVariation" (a1+7); zeroed
  float anim_scale_multiplier; // +0x20 width=4 src=0x6420a8 bound by name "AnimScaleMultiplier" (a1+8); ctor stores float 1.0
  std::uint32_t anim_scale_multiplier_variation; // +0x24 width=4 src=0x6420a8 bound by name (a1+9); not zeroed
  std::uint32_t tint_strength; // +0x28 width=4 src=0x6420a8 bound by name "TintStrength" (a1+10); not zeroed
  std::uint32_t tint_color; // +0x2C width=4 src=0x6420a8 bound by name "TintColor" (a1+11); not zeroed
  std::uint32_t visibility; // +0x30 width=4 src=0x6420a8 bound by name "Visibility" (a1+12); not zeroed
  std::uint32_t random_color; // +0x34 width=4 src=0x6420a8 bound by name "RandomColor" (a1+13); zeroed
  std::uint32_t texture_subdivise_h; // +0x38 width=4 src=0x6420a8 bound by name "TextureSubDiviseH" (a1+14); ctor stores int 1
  std::uint32_t texture_subdivise_v; // +0x3C width=4 src=0x6420a8 bound by name "TextureSubDiviseV" (a1+15); ctor stores int 1
  std::uint32_t texture_subdivise_random_pick; // +0x40 width=4 src=0x6420a8 bound by name (a1+16); zeroed
  std::uint8_t pad_0x44[4]; // not confirmed
  std::uint32_t flip_u; // +0x48 width=4 src=0x6420a8 bound by name "FlipU" (a1+18); zeroed
  std::uint32_t flip_v; // +0x4C width=4 src=0x6420a8 bound by name "FlipV" (a1+19); zeroed
};
static_assert(offsetof(GNPSColorModel_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(GNPSColorModel_ev, texture_transform_track) == 0x04, "texture_transform_track");
static_assert(offsetof(GNPSColorModel_ev, diffuse_color_track) == 0x08, "diffuse_color_track");
static_assert(offsetof(GNPSColorModel_ev, anim_key_mapping_type) == 0x0C, "anim_key_mapping_type");
static_assert(offsetof(GNPSColorModel_ev, anim_offset) == 0x10, "anim_offset");
static_assert(offsetof(GNPSColorModel_ev, anim_offset_variation) == 0x14, "anim_offset_variation");
static_assert(offsetof(GNPSColorModel_ev, anim_length) == 0x18, "anim_length");
static_assert(offsetof(GNPSColorModel_ev, anim_length_variation) == 0x1C, "anim_length_variation");
static_assert(offsetof(GNPSColorModel_ev, anim_scale_multiplier) == 0x20, "anim_scale_multiplier");
static_assert(offsetof(GNPSColorModel_ev, anim_scale_multiplier_variation) == 0x24, "anim_scale_multiplier_variation");
static_assert(offsetof(GNPSColorModel_ev, tint_strength) == 0x28, "tint_strength");
static_assert(offsetof(GNPSColorModel_ev, tint_color) == 0x2C, "tint_color");
static_assert(offsetof(GNPSColorModel_ev, visibility) == 0x30, "visibility");
static_assert(offsetof(GNPSColorModel_ev, random_color) == 0x34, "random_color");
static_assert(offsetof(GNPSColorModel_ev, texture_subdivise_h) == 0x38, "texture_subdivise_h");
static_assert(offsetof(GNPSColorModel_ev, texture_subdivise_v) == 0x3C, "texture_subdivise_v");
static_assert(offsetof(GNPSColorModel_ev, texture_subdivise_random_pick) == 0x40, "texture_subdivise_random_pick");
static_assert(offsetof(GNPSColorModel_ev, flip_u) == 0x48, "flip_u");
static_assert(offsetof(GNPSColorModel_ev, flip_v) == 0x4C, "flip_v");

// PEmitterModel<GNPSParticle> (ctor 0x6415ac). Word-indexed (int* a1).
struct PEmitterModel_GNPS_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x6415ac primary vptr (a1 word 0 from ctor arg)
  std::uint32_t domain; // +0x04 width=4 src=0x6415ac ctor allocates 0x5C bytes and runs PDBox::PDBox with vec3 args -1.0 and +1.0 (order not confirmed); stored at word 1
  std::int32_t emitter_type; // +0x08 width=4 src=0x6415ac bound by name "EmitterType" (a1+2); zeroed
  float radius_length; // +0x0C width=4 src=0x6415ac bound by name "RadiusLength" (a1+3); ctor stores float 2.0
  float width; // +0x10 width=4 src=0x6415ac bound by name "Width" (a1+4); ctor stores float 2.0
  float height; // +0x14 width=4 src=0x6415ac bound by name "Height" (a1+5); ctor stores float 2.0
};
static_assert(offsetof(PEmitterModel_GNPS_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(PEmitterModel_GNPS_ev, domain) == 0x04, "domain");
static_assert(offsetof(PEmitterModel_GNPS_ev, emitter_type) == 0x08, "emitter_type");
static_assert(offsetof(PEmitterModel_GNPS_ev, radius_length) == 0x0C, "radius_length");
static_assert(offsetof(PEmitterModel_GNPS_ev, width) == 0x10, "width");
static_assert(offsetof(PEmitterModel_GNPS_ev, height) == 0x14, "height");

// PDeflector (ctor 0x6349a0, Parameters& form).
struct PDeflector_ev {
  std::uint32_t vptr; // +0x00 width=4 src=0x6349a0 ctor arg a2 stored as vptr
  float matrix[16]; // +0x04 width=4 x16 src=0x6349a0 memset 0x40 bytes then diagonal 1.0 at +0x04,+0x18,+0x2C,+0x40 (identity 4x4); row-major span 0x04..0x43
  std::uint8_t flag_0x44; // +0x44 width=1 src=0x6349a0 ctor writes 0 then 1 after memcpy of 0x41 bytes from parameter block
};
static_assert(offsetof(PDeflector_ev, vptr) == 0x00, "vptr");
static_assert(offsetof(PDeflector_ev, matrix) == 0x04, "matrix");
static_assert(offsetof(PDeflector_ev, flag_0x44) == 0x44, "flag_0x44");

// Render-data binds in the 0x642558 system ctor (queue name PSBillboardTexCoordsBaker Mixin::Mixin).
struct PSSystemRenderBinds_ev {
  std::uint8_t pad_0x00[408]; // not confirmed
  std::uint32_t render_mesh; // +0x198 width=4 src=0x642558 bound by name "RenderMesh" (byte offset a1+408)
  std::uint32_t render_material; // +0x19C width=4 src=0x642558 bound by name "RenderMaterial" (a1+412)
  std::uint8_t pad_0x1A0[36]; // not confirmed
  float view_matrix[16]; // +0x1C4 width=4 x16 src=0x642558 bound by name "ViewMatrix" (a1+452); ctor writes 1.0 on the diagonal (+0x1C4, +0x1D8, +0x1EC, +0x200)
  std::uint8_t pad_0x204[4]; // not confirmed
  float bbox_min[3]; // +0x208 width=4 x3 src=0x642558 bound by name "BBox" (a1+520); ctor stores -1.0 x3 at +0x208
  float bbox_max[3]; // +0x214 width=4 x3 src=0x642558 ctor stores 1.0 x3 at +0x214 (same BBox block)
  std::uint8_t allocate_buffer; // +0x220 width=1 src=0x642558 bound by name "AllocateBuffer" (a1+544); ctor stores 1
  std::uint8_t pad_0x221[3]; // not confirmed
  std::uint32_t render_buffer; // +0x224 width=4 src=0x642558 bound by name "RenderBuffer" (a1+548); ctor zeroes
  std::uint8_t pad_0x228[4]; // not confirmed
  std::uint32_t rbuffer_size_needed; // +0x22C width=4 src=0x642558 bound by name "RBufferSizeNeeded" (a1+556)
  std::uint8_t pad_0x230[4]; // not confirmed
  std::uint32_t out_index_buffer; // +0x234 width=4 src=0x642558 bound by name "OutIndexBuffer" (a1+564); ctor zeroes
};
static_assert(offsetof(PSSystemRenderBinds_ev, render_mesh) == 0x198, "render_mesh");
static_assert(offsetof(PSSystemRenderBinds_ev, render_material) == 0x19C, "render_material");
static_assert(offsetof(PSSystemRenderBinds_ev, view_matrix) == 0x1C4, "view_matrix");
static_assert(offsetof(PSSystemRenderBinds_ev, bbox_min) == 0x208, "bbox_min");
static_assert(offsetof(PSSystemRenderBinds_ev, bbox_max) == 0x214, "bbox_max");
static_assert(offsetof(PSSystemRenderBinds_ev, allocate_buffer) == 0x220, "allocate_buffer");
static_assert(offsetof(PSSystemRenderBinds_ev, render_buffer) == 0x224, "render_buffer");
static_assert(offsetof(PSSystemRenderBinds_ev, rbuffer_size_needed) == 0x22C, "rbuffer_size_needed");
static_assert(offsetof(PSSystemRenderBinds_ev, out_index_buffer) == 0x234, "out_index_buffer");

// GNPSParticle copy ctor (0x637cf4). Raw copy only.
struct GNPSParticle_ev {
  std::uint32_t words[39]; // +0x00 width=4 x39 src=0x637cf4 copy ctor copies 39 words (0x00..0x9B); no field names evidenced
};
static_assert(offsetof(GNPSParticle_ev, words) == 0x00, "words");

}  // namespace glitch::ps::evidence

#endif  // GLITCH_SCENE_COLLADA_GUI_LAYOUTS_PS_EVIDENCE_HPP
