export const meta = {
  name: 'trackb-worker-wave',
  description: 'Track B worker wave: Haiku reconstructs planned batches, Sonnet spot-verifies, Haiku fixes once',
  phases: [
    { title: 'Load', detail: 'read the chain list', model: 'haiku' },
    { title: 'Build', detail: 'Haiku worker per batch', model: 'haiku' },
    { title: 'Verify', detail: 'Sonnet spot-checks each batch against Hex-Rays/IDA', model: 'sonnet' },
  ],
}

// args: { wave: 'e2', split: false }  split=true runs every batch as its own chain (headers already exist).
const ROOT = '<home>/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/.worktrees/track-b'
const WAVE = args.wave
const SPLIT = !!args.split

phase('Load')
const loaded = await agent(
  `Read the file ${ROOT}/reports/decomp-reconstruction/trackb-batches/${WAVE}-chains.json (a JSON array of {c, o, ids}) and return it unchanged as "chains". Do nothing else.`,
  { label: 'load chains', phase: 'Load', model: 'haiku', effort: 'low', schema: {
    type: 'object', properties: { chains: { type: 'array', items: { type: 'object', properties: {
      c: { type: 'string' }, o: { type: 'string' }, ids: { type: 'array', items: { type: 'string' } } }, required: ['c', 'o', 'ids'] } } }, required: ['chains'] } })
let chains = loaded.chains
if (SPLIT) chains = chains.flatMap(ch => ch.ids.map(id => ({ c: ch.c, o: ch.o, ids: [id] })))
log(`${WAVE}: ${chains.length} chains, ${chains.reduce((n, c) => n + c.ids.length, 0)} batches`)

const WORK = {
  type: 'object',
  properties: {
    batch: { type: 'string' },
    files: { type: 'array', items: { type: 'string' } },
    counts: { type: 'object', properties: { reconstructed: { type: 'number' }, partial: { type: 'number' }, skipped: { type: 'number' }, upstream: { type: 'number' } } },
    compiles: { type: 'boolean' },
    ledger_part: { type: 'string' },
    layout_requests: { type: 'array', items: { type: 'string' } },
    notes: { type: 'string' },
  },
  required: ['batch', 'files', 'compiles', 'ledger_part'],
}
const VERDICT = {
  type: 'object',
  properties: { ok: { type: 'boolean' }, checked: { type: 'array', items: { type: 'string' } }, problems: { type: 'array', items: { type: 'string' } } },
  required: ['ok', 'problems'],
}

function placement(cat, id) {
  if (cat.startsWith('vendor-')) {
    return `VENDORED LIBRARY category (Gameloft's fork of an upstream library). Read port/decomp-reconstruction/${cat}/NOTES.md and the upstream README under port/decomp-reconstruction/${cat}/upstream/. These functions are NOT plain upstream: they are Gameloft additions or changes, or upstream functions whose body differs. Upstream classes live in the upstream headers under ${cat}/upstream/: when Gameloft added a member or method to an upstream class, add it to that upstream header with a // DH2: comment on each added line (small Edit insertions only; never reformat upstream code). Entirely new Gameloft classes or files go in port/decomp-reconstruction/${cat}/include/${cat}/<name>.hpp. When an upstream function's body differs in the binary, put the DH2 version in your batch file and mark the upstream definition with #if 0 /* DH2: replaced by <file> */ ... #endif.
Write the bodies to the NEW file port/decomp-reconstruction/${cat}/src/${id}.cpp.`
  }
  if (cat.startsWith('game-')) {
    return `GAME category. Each owner class has ONE canonical header port/decomp-reconstruction/game/include/dh2/<Class>.hpp (namespaced classes nest by directory; nested classes live in their owner's header; free <global> functions go in game/include/dh2/global/<topic>.hpp — use a topic header named after this batch's functions, create it if absent). Most headers already exist with members and method declarations: use them. Add a missing method declaration, or a member the bodies prove, with a SMALL Edit insertion only (other agents work on other classes, and other batches of the same class may edit the same header concurrently: never rewrite a header wholesale, never reorder or delete members). If the owner header does not exist, create it following port/decomp-reconstruction/TRACK-B.md "Layout rules". Never create local stand-in structs for other classes: include their dh2 header; if a needed member is not declared there, mark the function partial and add a layout request ("<Class> +0xNN <type> <evidence>"). Headers of other game classes are still being written by a parallel wave: if one you need does not exist yet, do your other functions first and check again at the end; mark the dependent function partial (note "waits on dh2/<Class>.hpp") only if it is still absent then.
Write the bodies to the NEW file port/decomp-reconstruction/${cat}/src/${id}.cpp. Include headers as "dh2/<Class>.hpp" and engine headers as "<engine-category>/<file>.hpp".`
  }
  return `ENGINE category. Find where each owner class is already declared (grep -rn under port/decomp-reconstruction/${cat}/include and port/decomp-reconstruction/shared/include). Reuse that declaration: add missing method declarations with SMALL Edit insertions only (other agents may edit the same header concurrently; never rewrite a whole existing header). If a class is declared nowhere, create port/decomp-reconstruction/${cat}/include/${cat}/tb/<class_slug>.hpp.
Write the bodies to the NEW file port/decomp-reconstruction/${cat}/src/${id}.cpp.`
}

function workPrompt(id, cat, owner, fix) {
  return `You are a Track B worker reconstructing original functions of Dungeon Hunter 2 (libDungeonHunter2.so, 32-bit ARM) as readable, compilable C++17.
Working tree (cwd for every command): ${ROOT}
Rules: port/decomp-reconstruction/README.md ("Rules for reconstructed code", ledger status meanings) and port/decomp-reconstruction/TRACK-B.md ("One tree, one definition", "Decisions in force", "Worker protocol"). For an engine category also skim port/decomp-reconstruction/${cat}/NOTES.md.

Your batch: ${id}   category: ${cat}   class(es): ${owner}
See it with: py -3 tools/trackb/show_batch.py ${WAVE} ${id}   (function list, then Hex-Rays pseudocode)

${placement(cat, id)}

Steps:
1. Before writing any function, grep the category's src/ for its address (e.g. grep -rn "0x5a24b4" port/decomp-reconstruction/${cat}/src). If a definition already exists (an earlier interrupted batch), review and fix it in place instead of defining it twice.
2. Each function starts with // 0x<addr> <demangled symbol>. Follow the Hex-Rays control flow and side effects exactly; keep 32-bit offsets as // +0xNN comments; real types and names; forward thunks to their targets.
3. When the pseudocode is unclear, check the assembly (py -3 tools/decomp_asm.py --address 0x...) or IDA via ida-pro-mcp tools (load with ToolSearch "select:mcp__ida-pro-mcp__decompile,mcp__ida-pro-mcp__disasm,mcp__ida-pro-mcp__xrefs_to"). IDA is read-only for you: never rename, retype, comment or patch.
4. No guessing: an unknown field, table, callee or branch keeps the function "partial" with a note naming what is missing. A function you deliberately do not rebuild is "skipped" with the reason.
5. Compile: bash tools/trackb/check_tu.sh <your .cpp> <every header you changed or created>. Iterate until every file prints OK. If an error comes from a header you did not touch and cannot fix with a small insertion, mark the affected functions partial and say so instead of rewriting someone else's code.
6. Where the logic can run on its own (arithmetic, parsing, state changes), add a test port/decomp-reconstruction/${cat}/tests/${id}_test.cpp that returns non-zero on failure, and run it with bash tools/trackb/check_tu.sh --test <test.cpp> <your .cpp>.
7. Write ledger rows for EVERY batch function to port/decomp-reconstruction/${cat}/ledger.d/${id}.csv with header elf_address,symbol,status,source_file,notes. Quote any field containing a comma (CSV). status is one of reconstructed, partial, skipped, upstream; source_file is relative to port/decomp-reconstruction.
8. Do not run git. Do not edit ledger.csv, queue.csv or CMakeLists.txt.
${args.platform ? `\nThis is the PLATFORM pass: these functions were skipped earlier as JNI / Android platform glue. Track B targets Android, so they ARE in scope now. Reconstruct them faithfully with the real JNI types (#include <jni.h>, available on every build), keeping the exported names (extern "C" JNIEXPORT ... JNICALL Java_...) and the JNIEnv call sequence (FindClass, GetMethodID, CallStaticVoidMethod, NewStringUTF, ...) exactly as the binary does. Read the recovered Java side for the matching declarations when useful: recovered/ (grep -rl "native " for the class) and Track A's repaired Java under <home>/Documents/Projects/Dungeon Hunter 2 Recomp/DH_sc/port/android-java (reference only). Functions for other platforms (iPhone, PS3, Win32) stay skipped. A previous skipped body may not exist: write it into the new batch file.\n` : ''}${args.redo ? `\nThis is a REDO pass: every function in this batch already has a partial reconstruction. Find each one by address in port/decomp-reconstruction/${cat}/src (grep the 0x address), read why it is partial (grep the address in port/decomp-reconstruction/${cat}/ledger.csv, notes column), and complete it IN PLACE where the evidence now allows (headers, layouts and callees may have been added since). Do not create a second definition; only create port/decomp-reconstruction/${cat}/src/${id}.cpp if a function has no body anywhere. The ledger part still gets a row for every batch function with its new status.\n` : ''}${fix ? `\nThis is a FIX pass. A verifier found these problems in the first attempt; the files already exist, correct them and update the ledger part:\n${fix}\n` : ''}
Return the structured result.`
}

function verifyPrompt(id, cat, w) {
  return `You are verifying a Track B worker's reconstruction against the original binary. Working tree: ${ROOT}
Batch ${id} (category ${cat}). Worker result: ${JSON.stringify(w).slice(0, 3000)}
Pick the 3 largest functions marked "reconstructed" in port/decomp-reconstruction/${cat}/ledger.d/${id}.csv (fewer if fewer). For each, compare the C++ body with the Hex-Rays pseudocode (py -3 tools/trackb/show_batch.py ${WAVE} ${id}) and, where they disagree, the assembly (py -3 tools/decomp_asm.py --address 0x...). Check: same control flow and conditions, same constants and offsets, same callees and argument order, same side effects and return values, nothing invented. Also confirm the ledger part has a row for every batch function, is valid CSV, and the files compile (bash tools/trackb/check_tu.sh <files>). For a game batch, also check that no local stand-in struct for another class was introduced.
ok=false only for real defects (wrong logic, invented behaviour, a "reconstructed" row that is really partial, missing ledger rows, compile failure, stand-in structs). List each defect concretely (function address, what is wrong, what the original does). Do not edit any files.`
}

async function runChain(ch) {
  const out = []
  for (const id of ch.ids) {
    let w = await agent(workPrompt(id, ch.c, ch.o, null), { label: `work:${id}`, phase: 'Build', model: 'haiku', schema: WORK })
    if (!w) { out.push({ id, failed: true }); continue }
    const v = await agent(verifyPrompt(id, ch.c, w), { label: `verify:${id}`, phase: 'Verify', model: 'sonnet', schema: VERDICT })
    if (v && !v.ok && v.problems.length) {
      const w2 = await agent(workPrompt(id, ch.c, ch.o, v.problems.join(String.fromCharCode(10))), { label: `fix:${id}`, phase: 'Build', model: 'haiku', schema: WORK })
      if (w2) w = w2
    }
    out.push({ id, work: w, verdict: v })
  }
  return { chain: `${ch.c}/${ch.o}`, batches: out }
}
// Concurrency cap: chains are dealt round-robin into LANES lanes; each lane runs its chains
// one after another, and each chain runs one agent at a time, so at most LANES agents run.
const LANES = Math.max(1, args.lanes || 8)
const lanes = Array.from({ length: Math.min(LANES, chains.length) }, () => [])
chains.forEach((ch, i) => lanes[i % lanes.length].push(ch))
log(`${WAVE}: ${lanes.length} lanes (cap ${LANES})`)
const laneResults = await parallel(lanes.map(lane => async () => {
  const res = []
  for (const ch of lane) res.push(await runChain(ch))
  return res
}))
const results = laneResults.filter(Boolean).flat()
const flat = results.filter(Boolean).flatMap(r => r.batches)
const tot = { reconstructed: 0, partial: 0, skipped: 0, upstream: 0 }
for (const b of flat) for (const k of Object.keys(tot)) tot[k] += (b.work && b.work.counts && b.work.counts[k]) || 0
return {
  wave: WAVE,
  batches: flat.length,
  failed: flat.filter(b => b.failed).map(b => b.id),
  not_compiling: flat.filter(b => b.work && !b.work.compiles).map(b => b.id),
  verify_failed_first_pass: flat.filter(b => b.verdict && !b.verdict.ok).map(b => b.id),
  totals: tot,
  layout_requests: flat.flatMap(b => (b.work && b.work.layout_requests) || []).slice(0, 600),
}
