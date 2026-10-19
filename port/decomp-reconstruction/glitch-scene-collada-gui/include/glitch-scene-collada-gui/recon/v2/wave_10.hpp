// Wave 10 reconstruction (namespace glitch::collada::recon_v2_10).
//
// Covers glitch::collada::CColladaDatabase bodies, from the Hex-Rays pseudocode. The animation_track applicator and
// interpolator bodies that used to be here are the canonical templates of collada/animation_track.hpp.
//
// Layouts used: collada_db.hpp only.
//
// Pointer-valued results that the pseudocode types as `int` or `_DWORD *` are
// returned as host pointers (void *). Unmapped pieces are declared below as
// stand-ins. They are defined only by the test double file, never by src.
#ifndef GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_10_HPP
#define GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_10_HPP

#include <cstdint>

#include "glitch-scene-collada-gui/layouts/collada_db.hpp"

namespace glitch::collada::recon_v2_10 {

using glitch::collada::CColladaDatabase;
using glitch::collada::CColladaFactory;
using glitch::collada::CResFile;
using glitch::collada::CResFileManager;

// CImage (not mapped in collada_db.hpp): resource slot at +0x14, embedded
// CColladaDatabase at +0x0c, and the two vtable writes of the destructor.
void* image_resource(void* self);
CColladaDatabase* image_database(void* self);
void image_set_vptr(void* self, int which);

// Scene-node virtual calls and fields (CRootSceneNode, SVisualScene, SAnimation).
void root_call(void* obj, int slot, void* arg);
void node_on_post_load(void* root);
void drop_subobject(void* p);
void* scene_field1(void* scene);
int scene_node_count(void* scene);
void* scene_node_at(void* scene, int index);
const void* animation_blendable_link(const void* animation);

// CResFileManager, reference counting, streaming and logging.
CResFileManager* res_manager();
CResFile* res_get(CResFileManager* mgr, CResFile* reader, const char* name, int flag);
CResFile* res_load(CResFileManager* mgr, const void* self, const void* a, const void* b, void* reader);
void res_unload(CResFileManager* mgr, const char* name, int flag);
void ref_drop(void* obj);
void streaming_release(void* manager, CColladaDatabase* db);
void* streaming_instance();
void log_msg(const char* msg, int level);
CColladaFactory* db_default_factory();

// CColladaDatabase members not declared in collada_db.hpp.
void* db_construct_animator(CColladaDatabase* db);
void* db_get_gnps_emitter(const CColladaDatabase* db, const char* name);
void* db_construct_gnps_emitter(const CColladaDatabase* db, void* entry, int a3, int a4, int a5);
void* db_get_coronas(const CColladaDatabase* db, const char* name);
void* db_construct_coronas(const CColladaDatabase* db, void* entry, int a3, int a4);
void* db_get_emitter(const CColladaDatabase* db, const char* name);
void* db_construct_emitter(const CColladaDatabase* db, void* entry, int a3, int a4, int a5);
void* db_get_controller(void* driver, const char* name);
void db_construct_controller(void** out, void* driver, const char* name, void* controller, void* root);
void* db_get_material_of(void* driver, const char* name);
void* db_get_material_index_of(void* driver, int index);
void* db_get_material(CColladaDatabase* db, const char* name);
void* material_construct_body(void* out, void* driver, const char* name, void* entry, void* root);
void db_construct_geometry(void** out, void* driver, const char* name, const char* arg);
void* db_get_image(const CColladaDatabase* db, const char* name);
void db_construct_image(void* out, const CColladaDatabase* db, void* entry);
void* db_get_visual_scene(const CColladaDatabase* db, const char* name);
void* db_get_visual_scene_index(const CColladaDatabase* db, int index);
void* db_get_node(const CColladaDatabase* db, const char* name);
void* db_construct_node_entry(const CColladaDatabase* db, const char* driver, void* node, void* root);
void* db_make_root(const CColladaDatabase* db);
void* db_construct_scene_basic(const CColladaDatabase* db, void* driver);
void* db_construct_scene_named(const CColladaDatabase* db, void* driver, const char* name, void* factory);
const void* db_find_animation(const CColladaDatabase* db, const char* name, int channelType, const char* target);
void* db_get_default(const CColladaDatabase* db, const void* blendable, void** out);

// ---------------------------------------------------------------------------
// CColladaDatabase bodies.
// ---------------------------------------------------------------------------
CColladaDatabase* w10_6192f0(CColladaDatabase* self, CResFile** a2, const char* a3, CColladaFactory* a4);
CColladaDatabase* w10_619344(CColladaDatabase* self, CResFile** a2, const char* a3, CColladaFactory* a4);
void w10_619474(CColladaDatabase* self);
void w10_619784(CColladaDatabase* self);
void* w10_619510(CColladaDatabase* self, void* a2, int* a3, CColladaFactory* a4);
void* w10_6195c8(CColladaDatabase* self, void* a2, CColladaFactory* a3);
void* w10_61967c(CColladaDatabase* self, void* a2, CColladaFactory* a3);
void w10_619728(void* self);
void* w10_61a5d4(const CColladaDatabase* a1, const char* a2, int a3, int a4, int a5);
void* w10_61a750(const CColladaDatabase* a1, const char* a2, int a3, int a4);
void* w10_61a854(const CColladaDatabase* a1, const char* a2, int a3, int a4, int a5);
void** w10_61aa00(void** self, void* a2, const char* a3, void* a4, void* a5);
CColladaDatabase* w10_61aae0(CColladaDatabase* self, CColladaDatabase* a2, const char* a3, const char* a4,
                             const char* a5);
const char** w10_61ac88(CResFile** rec, const char* a2, const char* a3);
void* w10_61b1b4(void* out, CColladaDatabase* self, const char* entryName);
void* w10_61b8bc(const CColladaDatabase* a1, const char* a2, void* scene, void* root);
void* w10_61b988(const CColladaDatabase* a1, void* driver, int index, void* root);
void* w10_61b9b8(const CColladaDatabase* a1, void* driver, const char* name, void* root);
void* w10_61babc(const CColladaDatabase* a1, void* driver, bool animate);
void* w10_61bb20(const CColladaDatabase* a1, void* driver, void* a3, CColladaFactory* a4);
void* w10_61bbd4(const CColladaDatabase* a1, void* driver, const char* name, void* a4, CColladaFactory* a5);
void* w10_61be14(const CColladaDatabase* a1, const char* driver, void* node);
const void* w10_61c1fc(const CColladaDatabase* a1, const void* animation);
const std::uint8_t* w10_61c6ec(const CColladaDatabase* a1, const void* animation, void** out);
void* w10_61c6f4(const CColladaDatabase* a1, void* driver, const char* name);
void* w10_61c878(const CColladaDatabase* a1, void* driver, const char* name, void* a4, CColladaFactory* a5);
const void* w10_61c91c(const CColladaDatabase* a1, const char* name, int channelType, const char* target);
void* w10_61cca8(void* out, void* a2, const char* a3, void* a4, void* a5);
void* w10_61cefc(CColladaDatabase* self, void* driver, const char* name, void* root, void* a5);
void* w10_61cf44(CColladaDatabase* self, void* driver, int id, void* root, void* a5);

}  // namespace glitch::collada::recon_v2_10

#endif  // GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_10_HPP
