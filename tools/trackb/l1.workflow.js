export const meta = {
  name: 'trackb-wave-l1-headers',
  description: 'Track B wave L1: Haiku recovers the canonical headers of the remaining game classes, base classes first',
  phases: [
    { title: 'Load', detail: 'read the class groups', model: 'haiku' },
    { title: 'Headers', detail: 'one Haiku agent per group of up to 5 classes, levels in inheritance order', model: 'haiku' },
  ],
}

const ROOT = '<home>/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b'
const TRACKA = '<home>/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc'

phase('Load')
const loaded = await agent(
  `Read the file ${ROOT}/reports/decomp-reconstruction/trackb-batches/${(typeof args !== "undefined" && args && args.groups) || "l1-groups.json"} (a JSON array of {level, cat, classes, id}) and return it unchanged as "groups". Do nothing else.`,
  { label: 'load groups', phase: 'Load', model: 'haiku', effort: 'low', schema: {
    type: 'object', properties: { groups: { type: 'array', items: { type: 'object', properties: {
      level: { type: 'number' }, cat: { type: 'string' }, id: { type: 'string' }, classes: { type: 'array', items: { type: 'string' } } },
      required: ['level', 'cat', 'id', 'classes'] } } }, required: ['groups'] } })
const groups = loaded.groups

const SCHEMA = {
  type: 'object',
  properties: {
    headers: { type: 'array', items: { type: 'string' } },
    classes: { type: 'array', items: { type: 'object', properties: {
      name: { type: 'string' }, header: { type: 'string' }, original_size_hex: { type: 'string' },
      bases: { type: 'array', items: { type: 'string' } }, compiles: { type: 'boolean' } }, required: ['name', 'compiles'] } },
    open_questions: { type: 'array', items: { type: 'string' } },
  },
  required: ['headers', 'classes'],
}

function prompt(g) {
  return `You are recovering canonical C++ class layouts for the Dungeon Hunter 2 whole-game source reconstruction (Track B).
Working tree (cwd for all commands): ${ROOT}
Read first: port/decomp-reconstruction/TRACK-B.md ("One tree, one definition", "Layout rules") and port/decomp-reconstruction/README.md ("Rules for reconstructed code"). For the house style, look at one finished header, e.g. port/decomp-reconstruction/game/include/dh2/Door.hpp.

Your classes (category ${g.cat}): ${g.classes.join(', ')}

Task: one header per class at port/decomp-reconstruction/game/include/dh2/<Class>.hpp (namespaced classes nest by directory; nested classes X::Y go inside X's header). HEADERS ONLY: the class, its bases, ALL members in original order with // +0xNN offset comments, and declarations (no bodies) of all its methods listed in the queues. If a header for one of your classes already exists, complete it rather than replacing it.
Base classes: many already have headers in game/include/dh2 (ObjectBase, GameObject, Zone, ZoneEx, Trigger, Container, Door, Character, CharAI, MenuBase, MenuFX, Projectile, PhysicalObject, VisualObject, LightBase, CameraBase, InputDevice, LuaScript, AnimController, EventManager, StateMachine...). Include them; never redeclare another class's layout. If your class's base has no header yet and is not in your group, wait 5 minutes and look again (other agents are writing headers in parallel); if still absent, forward-declare nothing about its layout, derive from it via #include anyway and note it in open_questions.

Evidence:
- reports/decomp-reconstruction/class-facts.json (bases, members built in place, operator new sizes, vtable size)
- functions of a class: grep -h "<Class>::" port/decomp-reconstruction/*/queue.csv (columns elf_address,body_bytes,owner,name,demangled); pseudocode: py -3 tools/decomp_extract.py --address 0x<addr>. Constructor and destructor first, then accessors, Serialize/Deserialize/DeclareProperties (property names name the members).
- vtable slot order: py -3 tools/decomp_vtable.py <Class>
- assembly: py -3 tools/decomp_asm.py --address 0x<addr>; IDA via ida-pro-mcp (ToolSearch "select:mcp__ida-pro-mcp__decompile,mcp__ida-pro-mcp__xrefs_to_field") read-only.
- Track A, a separate behaviour-reference port, knows many offsets: grep ${TRACKA}/port for the class name. Hints only; confirm against Hex-Rays; never copy code.

Rules: m_<name> names from evidence, unk_<hexoff> otherwise, uint8_t pad_<hexoff>[N] for untouched gaps; virtual methods in vtable slot order with override where the base declares the slot; original 32-bit size as a comment; no static_assert on sizes; self-contained includes; engine types from engine categories (e.g. "glitch-shared/glitch_core.hpp") or forward declarations of classes you only point to (match the namespace exactly, e.g. namespace glitch { namespace scene { class ISceneNode; } }).
Compile each header alone: bash tools/trackb/check_tu.sh port/decomp-reconstruction/game/include/dh2/<Class>.hpp — iterate until OK. If it fails only because of another class's header, note it instead of editing that header.
Only create or edit your own classes' headers. Do not run git. Return the structured result.`
}

const byLevel = {}
for (const g of groups) (byLevel[g.level] = byLevel[g.level] || []).push(g)
const levels = Object.keys(byLevel).map(Number).sort((a, b) => a - b)
const all = []
for (const lv of levels) {
  phase('Headers')
  log(`level ${lv}: ${byLevel[lv].length} groups`)
  const r = await parallel(byLevel[lv].map(g => () => agent(prompt(g), { label: `L1:${g.id}`, phase: 'Headers', model: 'haiku', schema: SCHEMA })
    .then(res => ({ id: g.id, classes: g.classes, res }))))
  all.push(...r.filter(Boolean))
}
const cls = all.flatMap(x => (x.res && x.res.classes) || [])
return {
  groups: all.length,
  headers: cls.length,
  not_compiling: cls.filter(c => !c.compiles).map(c => c.name),
  missing_groups: all.filter(x => !x.res).map(x => x.id),
  open_questions: all.flatMap(x => ((x.res && x.res.open_questions) || []).map(q => `${x.id}: ${q}`)).slice(0, 300),
}
