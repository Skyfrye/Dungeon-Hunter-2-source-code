# glitch-core-io notes

## Layouts inferred (from the pseudocode offsets)
- `glitch::io::IAttribute` interface: vtable slots from `decomp_vtable.py`
  (getInt +0x0c, getFloat +0x10, getColorf +0x14, getArray +0x24, getBool +0x28,
  getBinary +0x2c, getVector3d +0x30 ... setVector2d +0xac, setColor(SColorf) +0x9c,
  setColor(SColor) +0xa0, setArray +0x98, setEnum +0xf8). Member `name` at +0x1c.
  The Irrlicht-style `getType` virtual sits at +0x104.
- `glitch::io::CAttributes`: +0x48 is a vector-like list of `IAttribute*`. Setters
  check `index < count`; getters return a default when `count <= index`. Negative
  indices count as out of range (the original compares unsigned).
- `glitch::io::CNumbersAttribute`: +0x24 int storage, +0x30 float storage,
  +0x3c element count, +0x40 is-float flag. getType 0x18 (intlist) / 0x17 (floatlist).
- Scalar attributes: CBool value +0x21 (char), CInt value +0x24, CFloat value +0x24,
  CEnum enum +0x38 (derives from CInt), CUserPointer pointer +0x24.
- Typed attributes: Color, Colorf, Vector2D/3D/4D derive from CNumbersAttribute
  (their D1 destructors call the CNumbersAttribute base destructor). The
  Vector*I, Position, Rect, Matrix, Quaternion, BBox, Plane, Triangle, Line and
  Texture/Light/StringW-array bases are assumed to be IAttribute (not confirmed).
- `glitch::io::CMemoryWriteFile`: +0x04 refcount, +0x08 position, +0x0c..+0x14 the
  byte vector. The ctor reserves the given capacity.
- `glitch::core::vector2d/3d/4d`, `position2d`, `rect`, `SColor`, `SColorf`:
  plain members (deps header only, not the real glitch headers).

## Decisions
- Indexed getters and setters use `at()` with a signed bounds check, matching the
  original unsigned compare.
- Type-name literals were used only where the string resolved in the binary
  (for example "colorf", "vector2d", "string", "triangle"). `getTypeString` for
  CBool, CInt, CEnum, CBBox, CLine3d, CPosition and others was left out because
  the literal addresses (DAT_008ce9e8, DAT_008cea00, DAT_008eeea0, DAT_008eee08,
  DAT_008eee80) do not resolve in strings.csv.
- Compiler-generated destructors are ledgered as `skipped` (README rule), not
  reconstructed.
- Boost intrusive_ptr returns (getLight, getTexture, setTexture, setLight) are
  not reconstructed; they need a boost stand-in first.

## Partial rows (2)
- `CMemoryWriteFile::seek(long, bool)`: pseudocode only has the relative branch.
  The absolute case is not confirmed.
- `CMemoryWriteFile::write`: pseudocode never advances the position after the
  copy. Kept as shown; the position in the original may be updated elsewhere.

## Open questions
- `glitch::os::Timer::VirtualTimerSpeed` initial value (0.f placeholder).
- `Printer::Logger` vtable order is assumed from the slot offsets only.
- `glitch::core::vector2d<float>::getAngle`, `plane3d::setPlane`,
  `plane3d::getIntersectionWithLimitedLine`, `triangle3d::getIntersectionWithLineSegment`:
  noreturn tail-call noise in the pseudocode; not in the ledger.
- `CMatrix4::isIdentity` / `getScale` / `mult34` / `setbyproduct`: the pseudocode
  tail-calls unnamed helpers (for example an epsilon compare). Not reconstructed.
- `heapsort` / `heapsink` / `binary_search` instantiations (SPakFileEntry,
  SZipFileEntry, CFileList::FileEntry, CMeshCache::MeshEntry, ...): the comparator
  and the 1-based indexing need a careful read before a template is written.
- `SIDedCollection` template (about 60 instantiations): container layout not
  inferred yet.
- `CFileSystem`, `CZipReader`, `CPakReader`, `CXMLReaderImpl`, `CXMLWriter`,
  `CReadFile`/`CWriteFile`/`CLimitReadFile` bodies beyond the simple getters.
- CStringAttribute and CFloatAttribute setString need `glitch::core::fast_atof_move`
  and `int2stringw`, which are outside this category's queue so far.

## Session 2 additions
- `glitch::IReferenceCounted` (deps header): `referenceCounter` is `mutable` because
  `drop()` is const in the original (`_ZNK...4dropEv`). `drop()` lives in
  `src/reference_counted.cpp`; `onDelete()` is a virtual hook called before delete.
- `IAttribute` base defaults now ledgered (34 rows). Corrections from the pseudocode:
  base `getColorf()` returns opaque white (all channels 1.0, not black with alpha 1).
  Added `getColor()` (0xffffffff), `getUserPointer()` (null), `setRect()`.
- Base defaults still not written (need deps types that do not exist yet):
  getQuaternion (+0x80 area), getTriangle, getLine2d/2di/3d/3di, getDimension2d,
  getBBox, getPlane, getTexture, getLight, getMatrix, getString/getStringW, and the
  matching setters for quaternion, matrix, triangle, line, dimension2d, bbox, plane,
  texture and light. Base getPlane default is normal (0,1,0) with d = -0.0f.
- `getBBox` default is the box (-1,-1,-1)..(1,1,1); `getLine3d` default is (0,0,0)-(1,1,1).

## Session 3 additions
- deps types (modelled on Irrlicht 1.8.5): `quaternion`, `triangle3d<T>`, `line2d<T>`,
  `line3d<T>`, `dimension2d<T>`, `aabbox3d<T>`, `plane3d<T>`, `CMatrix4<T>` (16 values).
- IAttribute base getters/setters for quaternion, triangle, line2d/2di/3d/3di,
  dimension2d, bbox, plane are ledgered. Setters for these and for setString(wchar_t)
  are no-ops in the base, as in the original.
- CAttributes indexed getters/setters for color, quaternion, box3d, plane3d,
  triangle3d, line2d, line3d, user pointer, rect, and the wchar string setter.
  Their vtable slots map to the IAttribute virtuals above. The indexed quaternion
  default is (0,1,0,0), which differs from the IAttribute default (0,0,0,1).
- CReadFile / CWriteFile: the original keeps a shared `CFile` (ISharedObject) opened by
  `CFileSystem::open`. These classes own a `std::FILE*` directly instead, because
  CFileSystem is not reconstructed. Consequences: full path == name as given; the
  obfuscation flag from the shared CFile is not read (ctor argument kept).
  `CReadFile::read` applies the original's first-4-bytes (~pos - i) byte shift.
- Partial: `getPos` for both (pseudocode drops ftell's result), `CReadFile::openFile`,
  `CWriteFile::openFile` (mode inferred from the bool), `CWriteFile` ctor (bool unused).
- Not started: CFileList FileEntry internals (SGI-style string members at +0x10..+0x2c
  need the glitch string layout first), CLimitReadFile, CZipReader, CPakReader,
  CFileSystem bodies, CXMLWriter write* functions (need IWriteFile).
- Group handling in CAttributes is modelled in wave 3 (see below).

## Wave 3 (this session, 200 new ledger rows)
Status of the session's rows: 166 reconstructed, 26 skipped, 8 partial.
Layouts confirmed from the ARM listings of the group, add and accessor code:
- `IAttribute`: refcounted; `name` (std::string, c_str read at +0x1c); flag byte at +0x20
  (constructor argument, not read by the io code); CBool value +0x21; CInt, CFloat and
  CUserPointer value +0x24.
- `CAttributes`: refcounted; root `SContext` embedded at +0x08; +0x44 current group;
  +0x48 pointer to the current group's attribute vector; +0x58 driver (refcounted,
  may be null in tests). `SContext`: name +0x08, attribute vector +0x20, child vector
  +0x2c, parent +0x38. `push(name)` / `push(int)` (named "group<n>") / `push(name, int)`
  create or find a child via `getContext(create)`; `pop` returns to the parent.
- `CNumbersAttribute`: int list +0x24, float list +0x30, count +0x3c, isFloatList +0x40.
  Typed subclasses (CRect, CVector2D/3D/4D, CVector2DI/3DI/4DI, CPosition2D, CMatrix,
  CQuaternion, CBBox, CPlane, CTriangle, CLine2d, CLine3d, CColorf, CColor) share
  the layout; the typed ctors push components in declaration order.
- `CMemoryReadFile`: refcount +0x04, buffer +0x0c, owner +0x10 (shared_ptr<char>),
  size +0x18, position +0x1c, name +0x20.
- `CFileList`: path string +0x08, entry vector +0x20..+0x28; `FileEntry` is 0x38 bytes:
  name +0x00, full name +0x18, id +0x30, isDirectory +0x34.
- Colour words: SColor packs component 0 in the low byte, then 1, 2, and alpha in the
  top byte (getColor and setColor agree; confirmed from the ARM).

Decisions:
- Glitch strings are std::string. Entry names are read through c_str().
- Refcounting follows `glitch::IReferenceCounted` (deps); the default count is 1.
- Attribute containers own their entries: `clear()` deletes them, so tests allocate
  attributes with `new` and never put stack objects in a container.
- By-name setters: an existing attribute gets the virtual setter; otherwise the
  attribute is added with flag false (confirmed for SColor, SColorf and the numbers).
- Float-list colour from bytes multiplies by (1/255) like the original, not by dividing.
- Compiler-generated destructors and GCC `.clone` copies of constructors are `skipped`.
- Identity default matrix comes from `detail::identityMatrix()`.
- IAttribute base `getTypeString()` returns L"unknown" (the base default is not
  recovered). The type names of CBool and CInt are still left out because their
  literal addresses do not resolve.

Partial rows (8):
- `CAttributes::pop` and `setGroup`: out-of-range and root-pop cases differ from the
  original (see the ledger notes).
- `IAttribute::getString`, `IAttribute::setString(wchar_t)`: the wide/narrow helper is
  not resolved; characters are truncated.
- `CNumbersAttribute::setMatrix`: the stray zero byte stored past the argument is not
  reproduced.
- `getAttributeTypeString` (int and name): base type-name default assumed.
- `addStringAsColor`: the listing builds a zero colour and never reads the string.

## Remaining
- String-argument families in CAttributes: addStringAs* (except addStringAsColor),
  addString(char/wchar), setAttribute(char, wchar), getString/getStringW of numbers.
  Their listings end in noreturn strlen tails, so the parse helper is unresolved.
- CStringAttribute, CEnumAttribute, CBinaryAttribute, CTextureAttribute,
  CLightAttribute and the enum choices variants (addEnum/getEnum/setAttribute with
  choices). Texture and light need ITexture/CLight stand-ins and boost::intrusive_ptr.
- CNumbersAttribute::getString/getStringW/setString(char) (352-428 bytes): format
  helpers not resolved.
- CMatrixAttribute::getQuaternion, CFloatAttribute::getStringW (format unknown).
- CXMLReaderImpl<char/wchar_t> (accessors are trivial but the class layout is not
  inferred), CXMLWriter, CXMLAttributesReader/Writer (large read/write bodies).
- CFileList::getFullFileName (lazy cache) and heapsink/heapsort<FileEntry>; the
  comparator orders directories by flag first and then names with strcasecmp (not
  yet verified against the ARM).
- CMemoryReadFile read/seek/getBuffer virtuals, CLimitReadFile (9 functions),
  CZipReader, CZipWriter, CUnZipReader, CPakReader, CFileSystem, SIDedCollection
  (about 60 instantiations).
- IAttributeExchangingObject and the serializeAttributes/deserializeAttributes
  virtuals of other categories' classes.

## Wave 4 (200 new ledger rows: 115 reconstructed, 31 partial, 54 skipped)

Classes whose queued entries are all ledgered after this wave: IAttributeExchangingObject,
IAttributes, IAttributesReader/Writer, IFileSystem, IFileReadCallBack, IWriteFile, IReadFile,
IEventReceiver, IAttribute (64 of 64), CBinaryAttribute, CColorfAttribute, CPlaneAttribute,
CPosition2DAttribute, CStringWArrayAttribute (constructor partial), the CVector2D/2DI/3D/3DI/4DI
getMatrix overrides, SPakFileEntry (default constructor partial), glitch::os::Timer,
boost::detail::sp_counted_base, sp_counted_impl_p<char>, shared_count, shared_ptr<char>,
intrusive_ptr<ITexture>, and the heapsink/heapsort/binary_search instantiations for the
GUI and scene element types (plus heapsink/heapsort for CFileList, partial).
Not complete: CXMLReaderImpl<char/wchar_t> (accessors only), CStringAttribute (float
conversions partial), CAttributes (string families), CPakReader, CTextureAttribute,
CLightAttribute, CColorAttribute, CEnumAttribute, CMatrix4 and aabbox3d.

Layouts confirmed from the ARM listings:
- `CXMLReaderImpl<char>` attribute records are 0x30 bytes (name at +0x14, value at +0x2c,
  both std::string here); `CXMLReaderImpl<wchar_t>` records are 0x90 bytes. The two are
  separate explicit specialisations. The parser step (vtable +0x0c) is in derived readers.
- Colour packing: CColorAttribute and CColorfAttribute share the integer view. getInt returns
  the packed colour rotated left by one byte; setInt writes four floats byte/255.
- Timer: StaticTime, StartRealTime, LastVirtualTime and TickCount are static members, shared
  by all Timer objects. VirtualTimerSpeed's initial value is still open (see Open questions).
- boost shared count: sp_counted_base has the vtable first, use count at +0x04, weak count
  at +0x08; sp_counted_impl_p<T> holds the pointer at +0x0c. The port uses std::atomic where the
  original uses a spinlock pool (same results, not the same instructions).
- Intrusive policy: boost::intrusive_ptr adds a use on copy and drops the old object on
  assignment. Overloads are found by ADL. ITexture, IVideoDriver and CLight derive from
  IReferenceCounted (count at +0x04, drop()). CMaterial and CMaterialRenderer keep their count
  at +0x00 and are released by a direct destructor call; the port deletes them (CustomFree not
  modelled). These are in deps/glitch_core.hpp.
- fast_atof_move (0x322bc8, partial): the 16-entry scale table is Irrlicht's fast_atof_table.
  The glitch table is 16 floats in .rodata and was not read from the binary. Longer fractions
  use pow(10, -n).
- CStringAttribute: narrow std::string at +0x24, wide std::wstring at +0x3c, isWide flag at
  +0x21 (set in the constructor, which then calls setString(wide)). stringc2stringw sign-extends
  bytes (ldrsb). stringw2stringc is partial: its helper (0x3209f8, a wide range copy) was not read.
- CTextureAttribute: texture at +0x24, driver at +0x28 (referenced in the constructor, released
  in the destructor). The constructor does not store the texture argument (as decompiled), so
  the texture starts null (partial).
- CPakReader: vtable +0x00, refcount +0x04 (set to 1), readFile (IReadFile*) at +0x08, entry
  vector +0x18..+0x20, flags at +0x24 (name lower-casing, used by extractFilename) and +0x25.
  SPakFileEntry is 0x50 bytes: path string +0x00, name string +0x18 (passed to
  createLimitReadFile by openFile), third string +0x30 (use not recovered), offset +0x48
  (seek target, relative flag 0) and size +0x4c (limit size). openFile(int) seeks readFile to the
  offset and wraps it in a limit read file.
- Process buffer heap (object of 20 bytes in .bss): start +0x00, bound +0x04, top +0x08, excess
  flag +0x10. The accessors read it; setSize and the allocator that move these values are not
  reconstructed, so the heap stays empty in the port (getProcessBufferHeapSize is 0). Partial
  for the two size accessors because the bound is written by code not yet read.
- CEnumAttribute: its +0x24 value is inherited from CIntAttribute in the original, and the enum
  index is at +0x38. The port's CIntAttribute layout does not match the vtable calls used by the
  enum family, so the enum family stays unreconstructed (layout conflict).

Decisions:
- SPakFileEntry and the attribute classes keep std::string members with the original offsets as
  comments. Structs that only release their members (compiler-generated destructors) are
  skipped.
- Type-name literals (getTypeString) that are not in strings.csv are reconstructed as partial
  with the name inferred from the class: position, plane, binary, texture, light, stringwarray.
  stringwarray is a guess. These need the wide literal read from the binary.
- Test helpers: CPakReader has a default constructor for tests (its real constructor
  0x57002c/0x5700c4 calls scanLocalHeader and the sort, not reconstructed).

Partial rows (31 in this wave); the reasons are in the ledger notes column. The common causes
are: the glitch string and allocator are std::string here, the vtable slot numbers of stand-in
classes, and tail calls hidden behind strlen in the pseudocode.

## Remaining (after wave 4; 1167 queue entries not in the ledger)
- CPakReader: constructors C1/C2 (0x57002c, 0x5700c4, need scanLocalHeader), extractFilename
  (0x56fcec), scanLocalHeader (0x56fe44), findFile (0x5702b4), openFile(int) (0x56f784) and
  openFile(const char*) (0x5703b8). heapsink/heapsort/binary_search<SPakFileEntry> (0x56fa04,
  0x56fc0c, 0x57015c) need the element compare, which is the path string.
- CStringAttribute: getBinary/setBinary (hex loop garbled). CStringAttribute::getFloat and setFloat
  are partial (they go through fast_atof_move and ostringstream). CFloatAttribute::getStringW is
  partial (its format is not confirmed).
- CAttributes: addStringAs* family (constructor and value handling hidden behind tail calls).
- CEnumAttribute family: layout conflict described above.
- CXMLReaderImpl: 12 (char) and 14 (wchar_t) queue entries are still unledgered. The parser
  step (read, vtable +0x0c) is implemented by derived readers.
- CFileSystem, CZipReader, CLimitReadFile, CXMLWriter, CFile: classes not in the port yet.
- Math: CMatrix4Base::mult (304 bytes, needed for operator*), plane3d::setPlane (3-point form;
  the 44-byte queue size does not match the ARM), isIdentity, getScale, getAngle,
  transformPlane, getIntersectionWithLimitedLine, buildShadowMatrix (garbled tail calls).
- Strings: wcsicmp, getUTF8charValue, iterateUTF8String (garbled); getTypeString for bool, int,
  rect, bbox, line2d, line3d and enum (literal addresses not in strings.csv).
- CFileList heapsink/heapsort are partial (element compare not verified).

## Wave 5 (202 new ledger rows: 155 reconstructed, 45 partial, 2 skipped)

Rows by family:
- `CAttributes::addStringAs*` and `addString(name, wide value)` (22 rows, `src/attributes_string_as.cpp`).
  The pseudocode for this family garbles the tail: the decompiler reads the `strlen` call as a
  noreturn tail, so the body looked like it only allocates. The ARM (`bl` to 0x30de54 is strlen,
  then the name is copied and the object is pushed) shows the real order: the typed attribute is
  built with its default value and the flag, appended to the current group (vector at group +0x48),
  then `setString(wide)` is called through IAttribute's vtable slot +0x94 on the appended element.
  Defaults come from the pseudocode stores: line2d (0,0)-(1,1), line3d (0,0,0)-(1,1,1), plane
  normal (0,1,0) with D = -0.0, box (-1,-1,-1)-(1,1,1), quaternion (0,0,0,1), colour (0,0,0,1),
  matrix identity with the byte at +0x40 set to 1. `addStringAsTexture` is partial (texture
  constructor), `addStringAsBool/Float/UserPointer` are partial (the value field is never written
  by the original). `addString(char, char)` (0x56a818) and the narrow CStringAttribute constructor
  (0x567d60) are not done; the Light and Binary variants (0x568124, 0x56840c) need the
  CLightAttribute constructor (0x566c90) and a CBinaryAttribute constructor, not in the port yet.
- `glitch::CTimer` (9 rows, `os/ctimer.hpp`, `src/ctimer.cpp`). Each queued body is a 4- or 8-byte
  branch. The targets come from the ARM listing (the listing address equals the ELF address; the
  pseudocode header adds 0x10000): tick -> os::Timer::tick (0x60b22c), isStopped (0x60aebc),
  getSpeed (0x60ae9c), setSpeed (0x60b194), startTimer (0x60b1dc), stopTimer (0x60af68), setTime
  (0x60b148), getTime (0x60aee4), getRealTime (0x60b0cc). The two destructors are skipped.
- `boost::intrusive_ptr` instances (10 rows). The template gained `operator=(T*)` for CImage
  (0x603414). Stand-ins were added to deps for IShader, IShaderCode, IBuffer, CImage,
  scene::CMeshBuffer (drop() at +0x04) and CVertexStreams (count at +0x00, direct delete, like
  CMaterial). The CLight destructors and operator= (0x5aa3c8, 0x5b9118, 0x5bb650) and
  intrusive_ptr<CVertexStreams>/<const CMaterialRenderer> (0x5a10fc, 0x65afc0) are partial: the
  original releases them with an inline Matrix4 pool return or a direct destructor call.
- `glitch::core::detail::SIDedCollection` (159 rows over five instances, `core/sided_collection.hpp`).
  The address map is at the top of the header. Layout (32-bit offsets, kept as comments):
  name map header at +0x00..+0x10 (count at +0x10), `vector<SEntry>` at +0x18..+0x20, next free
  id (uint16) at +0x24, live count (uint16) at +0x26. SEntry is the value plus its map iterator:
  8 bytes for a pointer value (ITexture, IShader, IShaderCode, CMaterialRenderer) and 20 bytes for
  SShaderParameterDef (16-byte value, iterator at +0x10). The name map node is 0x38 bytes: the
  key SName at +0x10 (name +0x00, managed +0x04) and the mapped SIdValue at +0x18 (id at +0x1c,
  inside the value, so the id is at node +0x34). The port uses std::map and std::vector with the
  same key order (strcmp), so idBegin/idEnd/removeAll visit names in the original order.
  Decisions: `remove(id, force)` only removes a value whose count (+0x04) is 1 unless forced;
  `remove` lowers the next free id and cuts trailing unset entries from the vector. `add` is a
  test helper (not a queued function). SShaderParameterDef values hold a shared-string
  reference at +0x00 that the port copies without counting, so its SEntry set/reset/copy and
  destructor are partial.
  Not done: the four `rename(unsigned short, char const*, bool)` entries (0x5bb3cc, 0x5dc444,
  0x5e7050, 0x6e1d88): their pseudocode was not read this wave.
- Skipped (compiler-generated): the CTimer destructors (0x6714a4, 0x6715fc).

Partial rows are listed in the ledger notes. The main causes: the CMatrix4 and CNumbers
copies that drop the flag byte, the CLight pool release, and the SShaderParameterDef
shared-string count.

Checked and not reconstructed this wave (reasons):
- `IAttributes::getEnum<E>` and `addEnum<E>` templates (0x5a03cc, 0x5e09cc, 0x5ba66c, ...):
  they call vtable slots +0xf4, +0x100 and +0x104 of IAttributes and `getStringsInternal` (the
  glitch::video enum string tables). The port's IAttributes interface has no virtuals yet.
- `CMatrix4<float>::isIdentity`, `getScale`, `transformPlane`, `buildShadowMatrix`: the
  pseudocode tail-calls `__aeabi_fadd`/`__aeabi_fmul` with garbled arguments. `operator*` needs
  `CMatrix4Base::mult` (304 bytes, not reconstructed).
- `CMatrix4<float>::CMatrix4(eConstructor)` (0x631c14, 0x6c0ce4): GCC `.clone` copies, so they are
  skipped; the constructor body is identity with the flag byte at +0x40 set to 1 (the same
  matrix as addStringAsMatrix uses). Its base constructor is not in the queue as a small body.
- `CFileSystem`, `CZipReader`, `CUnZipReader`, `CZipWriter`, `CXMLWriter`, `CXMLReaderImpl`
  text/parse helpers, `CLimitReadFile`, `CFile`, the process buffer heap, `Printer::logf` and
  `Randomizer`: queued, but not started in this wave. `Printer::logf` forwards a variadic call to
  a logger virtual (vtable +0x24) that the port's ILogger does not declare.

## Wave 6 (200 new ledger rows: 83 reconstructed, 93 partial, 24 skipped)

Count: 1047 ledger rows; 847 in the wave-5 snapshot (52bbcf12), so 200 are new this wave.
Build: host `42 of 42` and Windows `42 of 42` (ctest 100%).

Class layouts (offsets from the original; std members stand in for glitch strings and vectors):
- `CLimitReadFile` (`io/limit_read_file.hpp`): +0x0c name, +0x24 full name, +0x3c size, +0x40 start,
  +0x44 end, +0x48 wrapped file (cloned in the constructor, dropped in the destructor), +0x4c position.
- `CReadFile` (`io/read_file.hpp`, the port's stand-in for CFile + CReadFile): +0x0c FILE*, +0x10 size,
  +0x14 name, +0x2c obfuscation flag (the first four bytes are adjusted by ~pos - i).
- `CZipReader` (`io/zip_reader.hpp`): +0x08 archive file, +0x0c flagA, +0x0d flagB (both from the
  constructor; the ARM of findFile tests them), +0x14 entry vector. `SZipFileEntry` is 0x6c bytes:
  path +0x00, name +0x18, extra +0x30; the ARM of extractFilename also reads a short at +0x66.
- `CPakReader` (`io/pak_reader.hpp`): +0x08 archive file, +0x18 entry vector, +0x24/+0x25 flags.
  `SPakFileEntry` is 0x50 bytes: path +0x00, name +0x18, extra +0x30, offset +0x48, size +0x4c.
- `CZipWriter` (`io/zip_writer.hpp`): +0x08 write file, +0x0c flag, +0x24 names vector. The CRC-32
  table is `boost/crc_table.hpp` (polynomial 0xEDB88320, built by init_table at 0x6b50ec).
- `CXMLWriter` (`io/xml_writer.hpp`): +0x08 write file, +0x0c indent depth, +0x10 flag.
  `CXMLAttributesReader` / `CXMLAttributesWriter` (`io/xml_attributes.hpp`): +0x04 reader or writer,
  +0x08 flag, +0x0c element name (wide).
- `CFileSystem` (`io/file_system.hpp`): archive containers from +0x08 are not modelled (see blockers).
- `CUnZipReader` (`io/unzip_reader.hpp`): derives from CZipReader; the file system at +0x20 and the
  folder name (inline buffer at +0x24, pointers at +0x34/+0x38) are not referenced by the port.
- `IDevice` (`os/device.hpp`): the event queue from the ARM of run: begin pointer +0xb4, storage +0xb8,
  storage end +0xbc, end +0xc4; events are 0x18 bytes (six words). Not implemented (see blockers).
- `CProcessBufferHeap` (`core/process_buffer.hpp`): +0x00 start, +0x04 end, +0x08 top, +0x0c default
  size, +0x10 excess flag. Blocks are boundary tags of 32-bit words (positive allocated, negative free).
- `glitch::os::Randomizer` (`os/randomizer.hpp`): one static seed; reset gives 0x0f0f0f0f; the step is
  Schrage's method for multiplier 40692 modulo 0x7fffff07.
- `CMatrix4<float>` stand-in (`deps/glitch_core.hpp`): M[16] row-major at +0x00, flag at +0x40.

Decisions:
- `CStringAttribute` narrow constructor (0x567d60) keeps the name and flag and clears isWide; the
  value argument is never read by the decompile, so it is dropped (partial). `addString(name,
  const char*)` (0x56a818) therefore also drops its value.
- Null inputs where the original faults: `CEnumAttribute::setString` and `addString` take a null
  value as empty; `getEnum` with a null choice list gives -1.
- `glitch::core::wcsicmp` is qualified in the tests (`glitch::core::wcsicmp`): the CRT declares a
  global `wcsicmp` on Windows, so an unqualified call is ambiguous there.
- `randomString` (0x58bad8) draws `lrand48() % 62`. lrand48 is emulated with the drand48 step from
  the C library's default state, so the port does not depend on the platform's lrand48, and a seed the
  game sets with srand48 is not reflected.
- `CVector4DAttribute::getMatrix` (0x3276f8) reads the first four floats of the float storage as the
  original does, without the list-kind or size check (missing entries read as zero).
- `CAttributes::getEnum(name|index, choices)` compares the attribute's getString(): the original calls
  vtable +0x80 for the text, but the port labels +0x80 as getEnum (an int), so the slot is not
  reused.
- Colour packing in `CColorAttribute::setString` (0x32324c) follows the ARM: the first hex field is
  the top byte, then the fourth, third and second; the result goes through setColor (vtable +0xa0).

New partial rows and their causes (the ledger notes say the same per row):
- Literal names (wide strings not in strings.csv, and the literal pool address cannot be read: the
  ELF is not in the container; recovered/native/debug holds DWARF JSON only): getTypeString of
  CBoolAttribute, CIntAttribute, CEnumAttribute, CRectAttribute, CBBoxAttribute, CLine2dAttribute,
  CLine3dAttribute. The names bool/int/enum/rect/bbox/line2d/line3d are inferred from the class.
- Missing layouts: CEnumAttribute choice table (+0x3c, 24-byte entries), CLightAttribute and
  CTextureAttribute held references (the constructors keep the driver only, the light and texture
  arguments are not stored by the decompile), CStringWArrayAttribute constructor (array not kept).
- Dependencies still partial: stringw2stringc (keeps the low byte of each character) and
  fast_atof_move (used by the wide float getters), CZipReader::scanLocalHeader (no entries),
  deletePathFromFilename (inferred from the tail call), operator< on pak and zip entries (names only).
- Tests: `WideReader` has no read() in the port, so the wide XML float getters compile but are not
  exercised by a test.

Remaining (not reconstructed, with the reason):
- `CFileSystem::createXMLReader` / `createXMLReaderUTF8` / `createIXMLReader` (0x56c230..0x576270):
  need the IIrrXMLReader interface, which the port does not have.
- `CFileSystem` archive functions (addPakFileArchive, addFolderFileArchive, addZipFileArchive,
  createAndOpenFileFromArchives) and getObfuscatedFileName (0x56e064): need the archive containers and
  the ARM's several branches (not recovered).
- `CZipReader::openFile(int)` (0x576f18, 632 bytes) and `CUnzipReadFile` (ctor, dtor, getFileName):
  the unzip read-file class is not modelled. openFile(name) tail-calls openFile(int).
- `CZipWriter::close` (0x6b4fec) and `addNewFile` (0x6b581c): writer internals.
- `IDevice::run`, `postEventFromUser`, `postMouseEventFromUser`, `checkVersion` (0x671b24, 0x671a00,
  0x671aec, 0x671e84): the event queue above is not in the port's device.hpp.
- `CXMLAttributesWriter::write` (0x5723f8): needs writeGroup and the writeElement overloads (IXMLWriter
  +0x10 and +0x14 are not modelled). `CXMLReaderImpl` parse/read/convertTextData: the text buffer
  (+0x08 buffer, +0x10 begin, +0x14 count) is not modelled.
- `CMatrix4` mult, operator*, setbyproduct (needs setbyproduct_nocheck), mult34, transformPlane,
  getScale, buildShadowMatrix: the pseudocode tail-calls with garbled arguments; the ARM listing for
  getScale runs past its declared size. `CMatrixAttribute::getQuaternion` and
  `CQuaternionAttribute::getMatrix` need the quaternion conversions, which the port does not have.
- Texture string conversions (`CTextureAttribute::getString`, `getStringW`, `getString(char*)`,
  `setString`): toString and the driver texture lookup need the video driver interface.
- Binary attributes (`CStringAttribute::getBinary/setBinary`, `CAttributes::addBinary`,
  `addStringAsBinary`, `setAttribute(name, void*, int)`, the CStringAttribute(void*) constructor): the
  CBinaryAttribute data layout is not recovered.
- `CEnumAttribute::getInt`, `setInt`, `setEnum`, `getStringW`: they need the choice table, which is not
  in the layout (getStringW reads +0x34 and +0x38, which do not match the narrow text at +0x24).
- `CXMLWriter::writeElement` (0x576758, 0x576988), `CXMLAttributesReader::read` (0x571920): large,
  and they depend on the unmodelled writer and reader internals above.
- Shared-string heap (`SSharedString::operator=`, `SSharedStringHeapEntry::commit`,
  `registerSharedStringHeapInit`) and the glitch::core copyComponent / quantizeScaleOffset templates:
  not in the port, and the pseudocode is garbled.
- `IAttributes::getEnum<E>` / `addEnum<E>` and the `SIsValidSetMaterialParamaterOverload` enable_if
  templates belong to glitch::video material code outside this category's files.

## Wave 7 (240 new ledger rows: 119 reconstructed, 121 partial)

Scope: the `glitch::video::detail::IMaterialParameters` instances (enable_if
`SIsValidSetMaterialParamaterOverload`), which were the largest group of simple bodies (270 of
the 581 simple remaining). The earlier note that they belong to material code is overruled here:
the queue assigns them to this category and the brief asks for one template per family. Header:
`include/glitch-core-io/video/material_parameters.hpp`; tests: `tests/material_parameters_test.cpp`.

Owners and layouts (the three owners keep their tables differently, so the template takes a storage
policy; offsets are the original's, kept as comments):
- `CGlobalMaterialParameterManager`: SIDedCollection of 20-byte entries (vector at +0x18), value
  buffer pointer at +0x2c. An entry is set when its shared-string reference (+0x00) is non-null.
- `CMaterial`: block pointer at +0x04; block count (uint16) at +0x0e and 16-byte entries at +0x20 of
  the block; values inline at +0x20 of the material. Dirty-range markers at +0x0c and +0x10: every
  array setter sets them to -1, and an indexed setter does so only when the value changes.
- `CMaterialRenderer`: count (uint16) at +0x0e, entry table pointer at +0x20, value buffer pointer
  at +0x24. Entries are 16 bytes (SShaderParameterDef: type byte +0x06, count +0x08, offset +0x0c).
- Type codes (char at entry+6): int 1, vec2i 2, vec3i 3, vec4i 4, float 5, vec2f 6, vec3f 7,
  vec4f 8, SColor 16, SColorf 17. Element sizes 4, 8, 12, 16, 4, 8, 12, 16, 4, 16.

Decisions:
- Array forms: stride 0 or the element size means contiguous. The port uses a byte-step copy loop in
  place of the original's memcpy fast path (same bytes copied).
- The decompiler's `WARNING: Subroutine does not return` on memcpy is wrong: the ARM shows
  `bl memcpy` followed by a return. The ARM of the CGM array getter and setter (0x5c26dc, 0x5c0480)
  confirms the contiguous path returns 1.
- Return values of the memcpy path of some CMaterial and CMaterialRenderer array forms are a
  register (the entry count or the value-buffer pointer), not 1. Read as bool they are true; those
  rows say so in the notes.
- `CMaterial::setParameter(id, index, T const&)` writes only when the stored value differs (the
  original branches on the compare and returns 0 when equal). `ParamEquals<T>` does the compare:
  bitwise for integers, `==` per component for floats (fcmpeq), so NaN always writes.
- The Cvt family is partial: `SShaderParameterTypeInspection::Convertions` (19 words at ELF
  0x8e2c58, 76 bytes) is not in the container, so the conversion gate cannot be applied. Only the
  same-type path is implemented.

Not ledgered (blocked; the queue still lists them):
- `setParameterElement` (9 instances, 0x5beb84, 0x5becc4, 0x5c0aa8 and the CMat/CMR forms): gated on
  `SShaderParameterTypeInspection::ValueTypeBaseType` and `ValueTypeArraySize`, which are not in the
  container. The type-11 (matrix) branch allocates a CMatrix4 and is not recovered.
- `CMaterial::setParameterAt<SColorf>` (0x5cac8c, 48 bytes): the decompiled body is only
  `__aeabi_i2f` and `__aeabi_fmul` with a constant 0x3b808081 (1/255). Needs the ARM for the store.
- `intrusive_ptr<CLight>` and `intrusive_ptr<ITexture>` instances (48): they need the intrusive_ptr
  release and copy calls in the body and the type code of ITexture (the pseudocode does not test a
  char constant for it, so the code is unknown).

Open questions:
- The indexed `SColorf` setter on CMaterial calls `SColorf::equals` with a tolerance (value not
  recovered); the port compares exactly (partial row).
- The `PTR` getters' null check and the shared-count release are not checked against the ARM yet.


## Hex-Rays re-run (partial rows redone from the IDA Hex-Rays export)

Scope: 306 partial rows at the start. This pass re-read 75 of them from `recovered/native/hexrays-all/`
(notes start "Hex-Rays re-run" in `ledger.csv`). Result: 36 rows changed to reconstructed, 1 to skipped
(a compiler-generated destructor), and 38 stay partial. 269 partial rows remain in total: the 38 above,
and 231 not yet re-read (the wave-7 material-parameter instances, the SIDedCollection instances, the pak,
zip and file-system readers, and the rest of the CAttributes string families). A later pass should start
from `--redo-partial` and skip the addresses already noted.

Sources checked with `tools/decomp_asm.py` (the IDA listing in `recovered/native/ida-asm/`):
- Type-name literals are UTF-32LE data in the listing, each cross-referenced only from its own
  getTypeString. Corrected: CBBoxAttribute returns `box3d` (the port had `bbox`). `light`,
  `stringwarray` and the base default `unknown` are confirmed too.
- `fast_atof_table` (0x8be9a4) holds 16 floats: entries 0..9 as DCFS data, entries 10..15 as the
  bytes after them (nearest floats of 10^-10..10^-15). Entry 0 is 0.0, not 1.0.
- The wide-to-narrow range copy at 0x3209f8 stores the low byte of each element (STRB), so
  narrowing by truncation is confirmed (stringw2stringc, IAttribute::getString and setString).
- IAttribute slots: +0x20 getStringW, +0x90 setString(char), +0x94 setString(wchar_t),
  +0xec setBBox, +0xf8 setEnum, +0xfc setTexture, +0x108 getTypeString.
- The process buffer startup size is the immediate 0x40000 (`mov r0, #0x40000`).
- CColorAttribute::setString packing is confirmed from the listing: (first<<24) | (fourth<<16) |
  (third<<8) | second.

Changed to reconstructed (36): the getTypeString literals (bool, int, enum, position, rect, box3d,
plane, line2d, line3d, binary, texture, light, stringwarray, unknown), the base type-name accessors,
aabbox3d::addInternalBox (both corners folded in, invalid boxes included), CNumbersAttribute::setMatrix,
stringw2stringc, IAttribute::getString and setString(wchar_t), the process buffer size accessors and
processBufferHeapInit, CStringWArrayAttribute and CTextureAttribute constructors (both keep their
argument; the Ghidra decompile had dropped it), the narrow CStringAttribute constructor (it sets the
value through setString), addStringAsColor (it now also sets the text through setString(wchar_t)),
addString, addStringAsUserPointer, addStringAsBool, addStringAsFloat, addStringAsTexture, addTexture,
the array and texture setAttribute overloads, addArray.

Partial, with the reason in the ledger notes:
- CustomFree and the glitch allocator (intrusive_ptr releases of CMaterial and CMaterialRenderer).
- fast_atof_move reads past its table for 16 or more fraction digits; the port uses pow there. This
  keeps fast_atof_move, CFloatAttribute::setString and CStringAttribute::getFloat partial.
- Library digit generation (CStringAttribute::setFloat, CFloatAttribute::getStringW).
- Uninitialised fields and null inputs that the original never defines (CColorAttribute::setString on
  short text, CAttributes::pop on the root, CAttributes::setGroup out of range). The port picks a fixed
  behaviour there, which the rule against guessing does not allow to count as reconstructed.
- CLight stand-in: the original counts a light at +0x00 and the port's stand-in counts at +0x04; all
  light constructors, setters and the light getter stay partial for that reason, though they retain
  the light as the original does.
- enum: CEnumAttribute's setEnum and choice table (+0x3c) are not reconstructed, so the enum constructors
  and the enum setters stay partial. The compiler-generated ~CEnumAttribute is skipped.
- CVector4DAttribute::getMatrix reads four floats with no length check; the port zero-fills past the list.
- CFileSystem, CFile, CPakReader, CZipReader and the archive containers are not in the port yet.
- Box setter: setAttribute(name, aabbox) keeps its new-object branch partial until the class behind vtable
  off_972D78 is matched to a port class.

### Continuation (second pass over the partial rows)

Against the committed ledger (HEAD, 269 partial rows): 134 rows changed partial to reconstructed,
0 changed to skipped, 135 stay partial. Host build and tests pass (43/43).

Changed to reconstructed in this pass:
- IMaterialParameters Cvt family (120 rows, index and array forms): the conversion gate table at ELF
  0x8e2c58 (19 words, one per type code) and ValueTypeSize (20 bytes) are ported. Codes 0..18 are the
  valid range. DEVIATION: codes 19 and up are refused by convertible<Codec>(), while the original reads
  past the 19-entry table for them (undefined). If strict treatment is wanted, these 120 rows revert to
  partial.
- CMaterial indexed setters return 1 on every write (the earlier note that an equal value returns
  false was wrong; Hex-Rays and the listing at 0x5c64d4, 0x5c623c, 0x5c6564, 0x5c67b4 agree). The
  dirty-range markers reset to -1 on a changed indexed write and on every array write.
- SColorf::equals (0x5cabf8): tolerance 1e-6f (0x358637BD) on each channel.
- computeBoundingBox (7 instances): one aabbox3d<T> per component type, element 0 copied and the rest
  widened with strict compares.
- CMatrix4<float>::isIdentity (0x5ba19c): the flag at +0x40 is cached (now mutable, since the method
  is const). When clear, each diagonal must satisfy x + 1e-6 >= 1 and x - 1e-6 <= 1 (float arithmetic,
  as the listing's __aeabi_fadd/fsub show), and each off-diagonal |x| <= 1e-6. A full match sets the flag.
- CMemoryWriteFile::seek (0x6b4dac): only the relative branch moves; the listing branches straight to
  return 1 when the flag is clear, so an absolute seek is a no-op.
- CMemoryWriteFile::write (0x6b4e44): advances the position by the count and returns the count (the
  port returned true and did not advance).
- os::byteswap<float>(aabbox3d) (0x578e80): MinEdge then MaxEdge through the vector3d overload.
- CIrrXMLFileReadCallBack::getSize (0x572578): the wrapped IReadFile's getSize (slot +0x20). The return
  type is long, the IReadFile base type, 32 bits on the target platforms where the pseudocode says int.
- boost::detail::yield (0x56ee34): returns unsigned. Counts up to 3 are returned as they are; below 0x20
  or odd, sched_yield (std::this_thread::yield); larger even counts sleep 1000 ns. The original returns the
  syscall result (0 on success); the portable calls report no error, so 0 is returned.

Corrections to earlier notes:
- CReadFile::getPos and CWriteFile::getPos: the pseudocode does return ftell(...); the old "result
  dropped" note was wrong. The rows stay partial for the handle indirection (FILE* at handle+4, through
  +0x0c and +0x20) and the null case, which the port answers with 0.
- SIdValue (SIDedCollection): no string block is written. The constructor writes int 1 at +0 and the u16
  id at +4, so the record comes first.
- CMemoryWriteFile::write: see above (the position is advanced).

Still partial (135), with the main reason:
- SIDedCollection (36 rows, every instance): the port's entries and SIdValue do not match the original.
  The original's mapped value is the record (int 1 at +0, u16 id at +4), and getProperties returns that
  record at node+0x18. SShaderParameterDef entries are 20 bytes: a shared-string data pointer at +0 (count
  at its start), u16 at +4, bytes at +6 and +7, ints at +8, +12 and +16; the default entry is 0, 255,
  0xff, 0xff, -1, -1, 0. The other managers' entries are 8 bytes (value at +0, node at +4). Recovering
  these needs the SSharedStringHeapEntry::SData type, which the port does not have. Changing the layout
  also changes the instances already ledgered as reconstructed (size, get, idBegin and the rest use
  entries and ids), so it was not done in this pass.
- boost::intrusive_ptr releases (13 rows): the original counts at +0 for CMaterial, CMaterialRenderer,
  CVertexStreams and CLight (no IReferenceCounted base) and frees with CustomFree or LC_API_FREE_0. The
  CLight release also returns the matrix at +0x50 to glitch::memory::Matrix4Pool when the byte at +0x54
  is clear.
- Archives and file system (about 60 rows: CPakReader, CZipReader, CUnZipReader, CZipWriter destructors,
  CFileSystem, CFile, the file readers and writers): many classes are not in the port, and the zip
  destructors depend on close() and the central directory. The heapsink, heapsort and binary_search
  instances (6 pak and zip, 2 CFileList) need the name compare confirmed against operator<: the listing
  compares bytes as unsigned (char is unsigned on ARM), then the lengths. Not verified in this pass.
- CAttributes (10) and other attribute rows (7): the enum choice table and CAttributes slot typing. The 38
  rows Hex-Rays notes are not re-checked here.
- CLimitReadFile (init, both five-argument constructors, clone): the original keeps the names as char*
  at +0x20 and +0x38 and passes them on; the port keeps std::string names and passes null.
- IDevice::setEventReceiver: the logger call and the object at +0x18 are not modelled.
- Printer::logf (2 rows): the Logger's slot +0x24 is called with the level, the format and a pointer to
  the variadic area. The slot's signature is not recovered.
- CXMLReaderImpl destructors and getAttributeValueAsFloat (5 rows): not re-read in this pass.
- SSharedProcessBuffer::reset (null allocation is written through, undefined) and the scoped
  excess clone (its setter argument is uninitialised in the pseudocode).

Not ledgered: 0x5cac8c (setParameterAt<SColorf>) is in queue.csv but has no ledger row. Its logic is the
CvtCodec<SColor> path in video/material_parameters.hpp.

## glitch-core-io-8 slice (86 rows: 7 reconstructed, 28 partial, 42 skipped, 9 upstream)
- CLightAttribute ctor (0x566c90) now stores the light argument; the earlier partial note was wrong.
- New class CUnzipReadFile (io/unzip_read_file.hpp, src/unzip_read_file.cpp, test tests/unzip_read_file_test.cpp).
  Not yet in CMakeLists; the integrator must add src/unzip_read_file.cpp and the test.
- 42 rows are classes owned by glitch-video or glitch-scene-collada-gui (CImage, CGUIListBox, CMeshSceneNode, ...)
  and were skipped under the category lock. They need their owners' categories.

## glitch-core-io-2 (slice glitch-core-io-2)
- CMatrix4<float>::getScale, transformPlane, setRotationRadians and aabbox3d::intersectsWithLine_impl_1d /
  intersectsWithSegment are inline in deps/glitch_core.hpp. setRotationRadians writes only elements
  0,1,2,4,5,6,8,9,10 (the listing does not touch 3,7,11,12..15).
- dual_quaternion::fromQuatAndTrans is in src/dual_quaternion.cpp. operator= needs quaternion::operator=(CMatrix4).
- CColladaBinaryFileLoader C1/C2 constructor only; vtable off_9878B8 not reconstructed.
- Open SIDedCollection rename/insert rows and the SShaderParameterDef remove (0x5c0f70) are skipped; see ledger notes.

## glitch-core-io-4 (slice 4, this session)
- `SStreamItrWriter` (io/stream_itr_writer.hpp): layout from the listing: 8-byte swap buffer at +0x00,
  data pointer +0x10, count u16 +0x14, element size u16 +0x16, stride u16 +0x18. Swapped writes
  reverse each element (sizes 2, 4, 8); block writes ignore the swap flag.
- `plane3d::setPlane` (deps): normal = (c - a) x (b - a) normalized, D = -dot(a, normal). The normalize
  step is assumed (see the row).
- Blockers for the rest of this slice: CFileSystem archive containers (zip, pak, folder lists) and the
  obfuscation map are not in the header; the IrrXML reader factory (createIXMLReader) and
  video::getStringsInternal are not in the port; CEnumAttribute header puts the index at +0x38 while the
  listing uses +0x38 as the text pointer and the choice table at +0x3c (layout conflict); ISceneNode and
  the scene node base layouts are not in the port.
- Gameplay-owned rows (menus/HUD, camera, animation, renderer) are ledgered skipped with that reason.

## Slice glitch-core-io-1 (IMaterialParameters instances, 179 rows)
- 58 open rows added to material_parameters.hpp: 48 intrusive_ptr instances (setPointer, getPointer,
  setPointerArray, getPointerArray, and the Cvt forms), 9 setParameterElement, 1 setParameterAt<SColorf>.
  Address map is in the header. Partial rows keep their earlier notes.
- Pointer codes: CLight is code 18 only; ITexture is codes 12..15, and a non-null texture must be stored
  under 12 + (slotType & 3). ITexture gained slotType (+0x38) in deps/glitch_core.hpp for that gate.
- Open: ValueTypeBaseType / ValueTypeArraySize are still not in the container (setParameterElement uses
  a derived table); codes 9 and 10 unconfirmed; setArrayParameter (pointer arrays) is not in the repo;
  the matrix slot (type 11) is never released.

## glitch-core-io-5 (slice worker)
- Added SStreamItrLoader (include/glitch-core-io/io/stream_itr_loader.hpp), the mirror of SStreamItrWriter.
- CAttributes binary and by-name setters (setAttribute char/wchar/void*/line3d/triangle3d, addBinary) and CStringAttribute hex ctor.
- Skipped as other-category: gui, scene, collada, video, renderer copy helpers, input and animation rows. XML reader read/readAttributeFromXML need an IAttributes vtable slot map.

## SIDedCollection layout (dependency pass, sid_collection.hpp)
Header: `include/glitch-core-io/core/sid_collection.hpp` (namespace `glitch::core::detail::sid_layout`,
template `SIDedCollection<T, Props, Traits>`). Test: `tests/sid_collection_test.cpp` (passes under
ASan and UBSan; built into the scratch dir, not the repo). The existing `core/sided_collection.hpp` is
unchanged, so the 123 reconstructed rows still use it.

Confirmed from the ITexture instance (addresses are the ITexture ones unless noted):
- Header node at +0x00: left (leftmost) +0x08, right +0x0c, node count +0x10. idEnd returns this
  (0x5e83a0); idBegin loads +0x08 (0x5e8398). Ctor 0x5e840c.
- Vector begin +0x18, end +0x1c, storage end +0x20. nextId u16 +0x24 (0x5e8474), count u16 +0x26 (0x5e83a4).
- Entry stride 8 (value +0x00, node +0x04) for the four pointer instances (get: LSL #3 / ASR #3 at
  0x5e83ac, 0x5d7d40, 0x5e539c, 0x6e0788). SShaderParameterDef stride 20 (get 0x5b9da0, MLA #0x14;
  count by the multiply-by-inverse-of-5 trick).
- Node: pair at +0x10. SName: name +0x10, managed +0x14 (0x5e8498, 0x5e84b8, 0x5e855c). SIdValue at
  +0x18, 0x20 bytes (ctor 0x5e85b4): inline buffer +0x00..+0x0f, string start +0x10 (set to the value's own
  address, _M_allocate_block(16) allocates nothing), finish +0x14, int 39 at +0x18, id u16 at +0x1c (node +0x34,
  read by getId at 0x5e8ed8).
- getProperties returns node +0x18 (0x5e83e4): the caller's record starts at SIdValue +0x00, overlapping the string.
- insert (0x5ea53c): count++ first; id = nextId; insert_unique(name); managed flag set on the key after
  insertion; entries[id] replaced (addRef new, release old) or appended; nextId advanced past set entries.
  No test of the insert_unique bool.
- rename (0x5e9348): fails for an unset or out-of-range id; insert_unique(new name) and returns 0 when the bool
  is false; erases the old node; sets managed; entry points at the new node.
- remove (0x5e9e7c): refused when count != 1 unless forced; erase; reset; count--; nextId = min(nextId, id);
  trailing unset entries cut only when a set entry remains. An all-unset vector keeps its length (the loop
  returns before resize). The port's old remove popped every trailing entry, which differs.
- removeAll(bool) (0x5e9f78): in-order walk, successor taken before remove(id, force); returns uint16 count.
- ~SIDedCollection (0x5e97a0): vector destroyed (values released), then the map cleared; count set to 0.
- Ctor, get, getId, set, reset, operator< match the header.

Open questions (not coded as fact):
- SIdValue +0x18 = int 39 in every ctor and in insert/rename: meaning unknown.
- The string header overlaps the Props record that getProperties returns; the real Props layout (and its size,
  which must be under 0x1c) is not recovered per instance.
- insert does not test the bool of insert_unique: a duplicate name re-links to the existing node. Whether callers
  guarantee unique names is unknown.
- The third template argument (false in every instance) is dropped; nothing in the ITexture bodies reads it.
- SShaderParameterDef (20-byte entries) is not covered by the template. Its SEntry layout is confirmed from
  0x5b9fb8, 0x5ba010, 0x5bc5c4, 0x5bc620: value +0x00 (shared string data, count at its +0x00), u16 +0x04,
  bytes +0x06, +0x07, ints +0x08, +0x0c, iterator +0x10. Default entry 0, 0xff, 0xff, 0xff, -1, -1, node 0.
- Checked on ITexture only: insert, rename, remove, removeAll, getId, dtor, SName, SIdValue ctor. The other
  pointer instances were checked by listing for size/get/getProperties/ctor offsets, not their full bodies.

Ledger rows this header should unblock (re-verify each against the template before flipping status; the rows
currently point at the old sided_collection.hpp):
- insert: 0x5ea53c, 0x5e7110, 0x5dc548, 0x6e1bdc
- rename: 0x5e9348, 0x5e7050, 0x5dc444, 0x6e1d88
- remove: 0x5e9e7c, 0x5e65dc, 0x5d9f74, 0x6e1e54
- removeAll: 0x5e9f78, 0x5e66d8, 0x5da080, 0x6e1f50
- SIdValue ctor (pointer instances): 0x5e85b4, 0x5e85f0, 0x5e5490, 0x5e54a0, 0x5d7e34, 0x5d7e54, 0x6e08b0, 0x6e08b8
- getProperties (pointer instances): 0x5e83e4, 0x5e83f8, 0x5e53dc, 0x5e53f0, 0x5d7d9c, 0x5d7e20, 0x6e0860, 0x6e0874
- Not covered yet (SShaderParameterDef, 20-byte): SEntry 0x5b9fb8, 0x5b9fe4, 0x5ba010, 0x5ba064; set/reset
  0x5bc620, 0x5bc5c4; insert 0x5bc16c; rename 0x5bb3cc; remove 0x5c0f70; removeAll 0x5c1104; dtor 0x5bb520.

## Math stand-in (dependency worker, deps/glitch_core.hpp)

Header changes (all in `include/glitch-core-io/deps/glitch_core.hpp`, plus the new `core/matrix4_operators.hpp`):

- `vector3d<T>::normalize()` (0x35e8e0): when X*X+Y*Y+Z*Z != 0, multiplies by `1 / sqrt(v2)` (a reciprocal,
  not a division). Returns `*this`. Confirmed from the pseudocode (`v3 = 1.0 / sqrtf(v2)`, three multiplies).
- `plane3d<T>::setPlane` (0x561bdc): the normalize step is now confirmed: it calls `vector3d::normalize`, then
  `D = -dot(a, N)`. The earlier "assumed length division" note is resolved.
- `plane3d<T>::getIntersectionWithLine` (0x34033c): `nd == 0` returns false; `t = -(N.start + D) / nd`;
  `out = start + t*dir`.
- `plane3d<T>::getIntersectionWithLimitedLine` (0x40f0b4): line hit first, then `len2 >= |out-start|^2` and
  `len2 >= |out-end|^2`. `out` is written before the segment test, as in the listing.
- `triangle3d<T>::isOnSameSide(p1, p2, a, b)` (0x585bb8): the receiver is unused. With e = b-a, w = p1-a and
  z = p2-a, the result is `(e x w) . (e x z) >= 0`, written term by term as the listing does. Sum grouping
  `((t1*b1) + (t2*b2)) + (t3*b3)` is read from the parentheses in the listing.
- `triangle3d<T>::isPointInside` (0x585de8): `isOnSameSide(p, A, B, C) && isOnSameSide(p, B, A, C) &&
  isOnSameSide(p, C, A, B)`. Argument order checked against the call pattern.
- `triangle3d<T>::getIntersectionOfPlaneWithLine` (0x585e80): normal `N = (C-A) x (B-A)` in the listing's form,
  normalized; the parallel test is `fabs(N.dir) <= 1e-6` (double compare); `t = (N.A - N.start) / (N.dir)`.
- `triangle3d<T>::getIntersectionWithLine` (0x58615c): plane hit, then `isPointInside(out)`.
- `triangle3d<T>::getIntersectionWithLineSegment(segment, lengthSq, dir, box, out)` (0x586188): six early-out box
  tests (min/max on each axis, same pattern as the listing), then the plane-line hit, then the two squared
  distance tests. The name `lengthSq` is mine: the listing compares it with squared distances.
  Forward declarations of `line3d` and `aabbox3d` were added before `triangle3d` for the parameter types.
- `CMatrix4<T>::operator*` (0x35e998): declared in the deps header and defined in `core/matrix4_operators.hpp`.
  The definition returns `detail::mult(*this, other)`. The result flag is the flag from mult (the listing's
  `v20` is byte +0x40 of the mult output, written by mult's memmove).

Verification: `g++ -std=c++17 -Wall -fsyntax-only` passes on every tests/*.cpp and src/*.cpp (the test run
also linked and ran all tests). A known-answer program (normalize, setPlane, each new intersection, operator*)
gives zero failures.

Open (not written):
- `quaternion::operator=(CMatrix4)` is not in the queue. This blocks `dual_quaternion::operator=(CMatrix4)`
  (0x66d85c) and `CMatrixAttribute::getQuaternion` (0x561da0).
- `CSceneCollisionManager` rows (0x6c42a8, 0x6c5d40, 0x6c72f4, 0x6c7720) and `CTriangleSelector::TestWithLine`
  (0x5871c8) now have the triangle math they call. They are still blocked on ITriangleSelector and ISceneNode.
- `glitch-video` uses its own `deps/glitch_core.hpp` and does not include this header. Its CMatrix4, triangle3d,
  aabbox3d and vector3d rows still need the same types in that file.

## Rerun slice glitch-core-io-1 (XML reader, triangle, kd-tree, shared string)
- CXMLReaderImpl<char/wchar_t> now runs the IrrXML parser (readFile, parseCurrentNode, parseOpeningXMLElement,
  parseClosingXMLElement, parseComment, parseCDATA, setText, replaceSpecialCharacters, createSpecialCharacterList,
  read). The narrow and wide readers share templates in src/xml_reader.cpp. Layout corrected from the pseudocode:
  current read position P at +0x0c (was "unknown"), node name and node data at +0x24 in both (were +0x38 and +0x68),
  wide special character list at +0xb8, attributes at +0x64 (char) and +0xc4 (wide). read() is no longer pure.
- Special character table: each entry is the replacement character followed by the entity name with its ';'
  ("&amp;" gives '&'). Verified from the IDA data in ida-asm (asm_chunk_018).
- replaceSpecialCharacters keeps the original tail rule: the text after the last entity is copied only when at least
  two characters remain (ARM compare against len-1 at 0x57539c). A single trailing character is dropped.
- Deviations (malformed input only): NUL guards in the scan loops; the original runs past the terminator.
- Open: IFileReadCallBack::read returns void in the port; the original's result test in readFile is missing (partial).
- Open: parseOpeningXMLElement's push_back shows one argument in the pseudocode; the port pushes {name, value}.
- Blocked: CKdTree (5 rows, 0x5a24f8..0x5a5030) needs the class and distanceKdTree / lessThanPlane.
  SSharedStringHeapEntry::SData::release/get (0x6a4d9c, 0x6a5074) need the SharedStringHeap table.
- Tests: tests/xml_reader_parse_test.cpp (narrow and wide documents; entity replacement; empty element; CDATA; comment).

## Dependency slice dep-kdtree-sharedstr (CKdTree and SharedStringHeap layouts)

Headers: shared/include/glitch-shared/kd_tree.hpp and shared_string_heap.hpp (canonical, because
glitch-video and sid_collection use the same types); core-io copies in include/glitch-core-io/core/
(kd_tree.hpp differs only in its deps include). Tests: tests/kd_tree_helpers_test.cpp,
tests/shared_string_heap_test.cpp.

Confirmed from the pseudocode and listings (addresses in brackets):
- Element, 28 bytes: id uint at +0x00, aabbox3d<float> at +0x04 (min xyz +0x04..+0x0c, max xyz +0x10..+0x18).
  Centre = (min + max) * 0.5 per axis [lessThanPlane 0x5a20d4, distanceKdTree 0x5a2160/0x5a2268/0x5a2370].
- Node: vector begin/end/end-of-storage at +0x00/+0x04/+0x08 [addElemInternal 0x5a3120, removeElemInternal
  0x5a44b4]; split plane float +0x0c; lower child +0x10 (taken when lessThanPlane is true), upper child
  +0x14; axis byte +0x18 [addElemInternal, findKNearestElemsInternal 0x5a4e24]. The child axis is
  (axis + 1) % 3 and its plane is the centre of the box along that axis [addElemInternal].
- construct (0x5a2dd4) zeroes +0x00, +0x04, +0x08, +0x10, +0x14; the creator writes +0x0c and +0x18.
- Tree: the root node is the tree object at +0x00 [kdTreeClustering 0x5a6568 passes &p as this and as the
  node; findKNearest 0x5a5030 passes this as the node with no load]. Pool at +0x1c [addElemInternal].
  Query box aabbox3d at +0x38 [findFarthestElemInternal 0x5a24f8]. Element count int at +0x50
  [removeElemInternal: -= removed; the 1227133513 factors are the inverse of 7 mod 2^32 (7 * 1227133513 = -1)].
- addElemInternal(elem, node, uint depth, box): descends while the uint is nonzero, passing depth - 1 [asm
  0x5a3120: SUB R3, R10, #1 before the recursive BL]; a zero value appends to the node's vector.
  The kdTreeClustering call passes a nonzero value [0x5a6568].
- SKdDistance, 8 bytes: float distance at +0x00, element pointer at +0x04 [findKNearestElemsInternal;
  findKNearest reads the element at +0x04].
- SharedStringHeap is a pointer global (ELF 0x9f765c). The object is 0x24 bytes [initSharedStringHeap 0x6a5538]:
  maxLoadFactor float +0x08 (1.0f), rehash threshold +0x0c = ceil(mlf * count), bucket array +0x14,
  bucket count +0x18, cursor +0x1c, size +0x20 [release 0x6a4d9c, get 0x6a5074]. 0x6a5538 is
  initSharedStringHeap(bool): true builds that object and stores it in the global as its last act, false
  teardown-frees the buckets and the object and logs "Shared string objects not properly cleaned up" at
  ELL_ERROR when size is non-zero. The port has both directions (glitch::core::detail::initSharedStringHeap,
  glitch-core-io/src/shared_string_heap.cpp) and the global's owner, glitch::core::sharedStringHeapTable()
  (declared in glitch-shared/shared_string_heap.hpp): one process-wide table, created on first use.
- Record, 8 bytes [get, GlitchAlloc(8)]: SData pointer +0x00, next link +0x04. Bucket and chain pointers are
  the link (record + 4) [release frees link - 4].
- SData: uncommitted = {char* text, 0} [get]; committed = {0, text at +0x04} with allocation max(strlen+5, 8)
  [commit 0x6a4cb8]. release picks a1 + 1 when the word at +0x04 is nonzero, else *a1 [0x6a4d9c]. The word
  at +0x00 is the record's USE COUNT: commit zeroes it, and the handle callers take/drop it
  (SSharedString::operator= 0x5daf94 and CMaterialRenderer::getParameterID 0x5d308c both read it, add 1,
  store; operator= subtracts 1 and calls release only when that read zero). get never touches it, so both
  callers take their own use. The port's SSharedStringData::useCount is that word.
- Hash [get 0x6a5074, asm SXTAB at 0x6a50d8 and EOR]: h ^= (h << 6) + int8(c) + 0x9E3779B9 + (h >> 2) over the
  bytes, from h = 0; index = h % count [__aeabi_uidivmod at 0x6a5100].
- Prime table: 40 uint entries at ELF 0x8eafc0 (5, 11, 17, ..., 4294967291), read from the binary.
  init's count is the slot its binary search at 0x6a55b8..0x6a560c lands on for target 10; that search is
  NOT a bound scan ("first prime above 10" gives 11 by coincidence here - a simulator of the listing's exact
  sequence confirms 11, and the port transcribes the sequence, not a scan). Growth in get: new size =
  max(size + size/2, size + 1), divided by mlf (floor), first prime >= that value; rehash moves records.
- Insert [get]: the record goes at the head of its bucket; size++; the cursor moves down when the new slot is lower.
- get(text, create) returns 0 for a null or empty text. The lookup-only branch returns the stored SData.

Still open (not confirmed, not coded):
- SKdNode total size (the pool's requested size is set in a constructor not in the port). The 28-byte node
  and the 28-byte pool gap at +0x1c..+0x38 are consistent with the offsets but not proven.
- The distance type of SKdDistance's ordering (std::less on SKdDistance, operator< not recovered).
- The meaning of the uint depth in addElemInternal beyond "nonzero descends": the caller passes v10 + 1 and
  v45 [kdTreeClustering]; the origin of those values is in the clustering category.
- Empty committed text: release would read a null text (the word at +0x04 is zero). Not seen in any caller here.
- get's public wrapper returns the SData block (*node), not block + 4. The callers of get are not in this
  category; whether they read the text at +0x04 is open.
- The boost hash table find and rehash functions (0x6a4d04, 0x6a4f84, 0x6a4fd8, 0x6a4f18) are boost code; their
  instances here follow the layout above but are not ported as source.
- sizeof(SData) and the table's allocation are open: the table object size 0x24 is from operator new(0x24).

Rows this slice unblocks (once implemented in src/ by the owning category):
- CKdTree: 0x5a24f8 findFarthestElemInternal, 0x5a3120 addElemInternal, 0x5a44b4 removeElemInternal,
  0x5a4e24 findKNearestElemsInternal, 0x5a5030 findKNearest. Still needed from the standard library: the
  std::remove_if and heap helpers used by remove (0x5a4374) and findKNearest (0x5a37d4, 0x5a3814), which are
  not ledgered in this category.
- SSharedStringHeapEntry: 0x6a4d9c SData::release, 0x6a5074 SData::get, 0x6a4cb8 commit, 0x6a5538
  initSharedStringHeap(bool), 0x5daf94 glitch::core::SSharedString::operator=(char const*) - all in
  glitch-core-io/src/shared_string_heap.cpp, with the record/table layout in
  glitch-shared/shared_string_heap.hpp and the handle class in glitch-shared/shared_string.hpp. Release and
  get stay partial only because the table is a parameter of theirs (the original reads the global), so their
  original mangled symbols are not emitted. 0x6a4d04 find is the same chain search.
- glitch-video kdTreeClustering 0x5a6568 can use the CKdTree header (it calls addElemInternal, removeElemInternal
  and findKNearest); its ledger row says the clustering helper was blocked on core types.

## Shared value types (dedup pass, deps/glitch_core.hpp)
- `include/glitch-core-io/deps/glitch_core.hpp` is now a forwarder to `glitch-shared/glitch_core.hpp`. The glitch::core value types and glitch::video::SColor/SColorf come from shared.
- The core-io-only stand-ins (IReferenceCounted, IEventReceiver, IVideoDriver, ITexture, CLight, CVideoModeList, CMaterial, CMaterialRenderer, CVertexStreams, IShader, IShaderCode, IBuffer, CImage, CMeshBuffer) moved verbatim to `include/glitch-core-io/deps/glitch_core_objects.hpp`.
- `rect` members are now `UpperLeftCorner` / `LowerRightCorner` (position2d) as in shared. Uses in src/numbers_attribute.cpp and seven tests were renamed. No header used X1/Y1/X2/Y2.
- `core/sid_collection.hpp` is a forwarder to `glitch-shared/sid_collection.hpp`.
- Checked: all src and tests compile with g++ -std=c++17 -Wall -fsyntax-only, and all 57 tests build and pass under dep-build (no warnings).

## Engine unification wave u1-core (core domain: one definition each)

The tree is one program now, so every shared type has exactly one definition. This category is the canonical owner of the
core domain. The map of every stand-in in every category is `reports/decomp-reconstruction/unification/core.json`; the
ledger rows that changed are in `ledger.d/u1-core.csv` (this category, glitch-scene-collada-gui, net-session-online).

Canonical headers (include paths):
- `glitch-core-io/core/reference_counted.hpp`: `glitch::IReferenceCounted`, header-only (drop is inline). `glitch-shared/reference_counted.hpp`
  and `deps/glitch_core_objects.hpp` forward to it. Vtable +0x00 D1, +0x04 D0, +0x08 onDelete; counter at +0x04 (mutable, because drop is const).
- `glitch-core-io/boost/intrusive_ptr.hpp`: the counting `boost::intrusive_ptr` (TRACK-B decision 1). Added `intrusive_ptr(nullptr_t)`,
  `intrusive_ptr(T*, bool add_ref)`, converting copy, comparison with raw pointers and nullptr, `reset`, `swap`, `detach`. There are no move
  operations (the binary is C++03, so every copy counts). `intrusive_ptr(T*)` takes over the reference it is given (an IReferenceCounted object
  is born with count 1); types that keep the count at +0x00 (CMaterial, CMaterialRenderer, CVertexStreams, CLight) define their own
  `intrusive_ptr_add_ref/release` next to the class (ADL).
- `glitch-core-io/os/event_receiver.hpp`: `glitch::SEvent` (0x18 bytes: EventType +0x00, unused +0x04, payload +0x08 for GUI event, mouse input,
  key input, log text), `EEVENT_TYPE` (0 GUI, 1 mouse, 2 key, 3 log text), `EMOUSE_INPUT_EVENT` (0..7) and `glitch::IEventReceiver` (D1, D0, `onEvent` pure at +0x08).
  Evidence: TouchScreenWin32::onEvent 0x33d4b4, Application::onEvent 0x32a9c8, InputManagerEventReceiver::onEvent 0x34d92c,
  ZoomHandler::onEvent 0x382040, CGUIEnvironment::onEvent, IDevice::postEventFromUser 0x671a00 (six words copied), CLogger::vlogf 0x6a0990 (type 3).
  The game's own `::IEventReceiver` (onEvent(IEvent const*, EventManager const*)) is a different class: `dh2/IEventReceiver.hpp`.
- `glitch-core-io/os/logging.hpp`: `glitch::ELOG_LEVEL`, `glitch::ILogger` (reference counted, seven pure slots +0x0c..+0x24: getLogLevel,
  setLogLevel, log x4, vlogf; `logf` is the non-virtual tail call 0x6a0a48), `glitch::os::Printer` and `glitch::os::Timer`. The symbols spell
  `glitch::ELOG_LEVEL` and `glitch::ILogger`, not `glitch::os::`; `glitch::os` has using-declarations so the old spelling compiles. `CLogger` (scene queue) derives from `ILogger`.
- `glitch-shared/glitch_core.hpp`: the glitch::core value types, now with the original offsets in comments, and SColor's component accessors (`component(i)`,
  component 0 is the low byte; the channel names of bytes 0..2 are not recoverable). `rect` stays UpperLeftCorner / LowerRightCorner.
- `glitch-core-io/io/interfaces.hpp`: IReadFile, IWriteFile, IFileList, IFileSystem, IFileReadCallBack, IIrrXMLReader<CharT, Super> (IXMLReader,
  IXMLReaderUTF8), IXMLWriter, IAttributesReader/Writer, IAttributeExchangingObject, all in vtable slot order and pure as in the binary.
  `io/iattributes.hpp`: IAttributes with its 187 pure slots (generated from the CAttributes vtable; CAttributes overrides every one). `io/attributes.hpp`: IAttribute in slot order.
  Corrections from the binary: `IReadFile::read` returns the byte count (int32) and `readAsync` returns bool; `getFileName` and `getFullPath` return `const char*`;
  `IFileReadCallBack::read` returns the count; `CFileSystem::getWorkingDirectory` is a virtual over the static `char WorkingDirectory[1024]`;
  `CMemoryWriteFile` derives from IWriteFile, `CFileList` from IFileList, the XML readers from IIrrXMLReader, `CReadFile` has the virtual `isOpen` at +0x3c.
  IAttribute's +0x11c `setVector2d(vector2d<int>)` is CNumbersAttribute's own virtual; `CAttributes::setAttribute(name, vector2d<int>)` calls slot +0xcc (setVector2di).
- `glitch-shared/sid_collection.hpp`: the one SIDedCollection (`sid_layout::SIDedCollection<T, Props, Traits>`). It follows the old std::map implementation's
  natural-copy semantics (T is a counting `intrusive_ptr`, so SEntry::set/reset need no manual addRef) and the shared header's layout work (insert, rename).
  The mapped `SIdValue` derives from Props and adds the id (ITexture +0x1c, IShader +0x04, CMaterialRenderer +0x0a, IShaderCode +0x00, SShaderParameterDef +0x04: the SIdValue
  constructors and getId of each instance). `core/sided_collection.hpp` gives it the original instance names
  (`glitch::core::detail::SIDedCollection<T, ushort, false, Props, Traits>`, `sidedcollection::SValueTraits`, `SEmptyProperties`).
- `core/kd_tree.hpp` and `core/shared_string_heap.hpp` forward to the shared copies (they differed only by an include).
- `glitch-core-io/core/memory_hint.hpp`: `glitch::memory::E_MEMORY_HINT` (only the value 0 occurs in the binary).
- Game side, next to `dh2/EventManager.hpp`: `dh2/IEvent.hpp`, `EvAcceleration.hpp`, `EvTouchScreenMove.hpp`, `EvTouchScreenPress.hpp` (layouts from TouchScreenBase::ProcessEvents 0x33c568 and AccelerometerBase::moved 0x33d8dc).

Left alone on purpose: `collada_binary_file_loader.hpp` (CColladaBinaryFileLoader, a scene class whose unification row is `keep`). The glitch::video and glitch::scene stand-ins were replaced in wave U2 (below).

Tests: `u1_core_events_test`, `u1_core_io_interfaces_test`, `u1_core_sid_test`; the read-file fakes in the older tests derive from `tests/io_stub_files.hpp`
(inert implementations of the pure slots).

Open:
- `CFileSystem` archive functions (addZip/addFolder/addPakFileArchive, removeFileArchive, addObfuscationFileMap) are declared and answer false; `createAndOpenFile`
  lacks the nested-archive branch. The obfuscation map and the shared `CFile` handle are not modelled.
- CXMLAttributesReader::read (0x571920) and CXMLAttributesWriter::write (0x5723f8) are not reconstructed, so IAttributesReader/Writer keep an inert default for that one slot.
- `CMatrix4Base<float>` is not a class in the shared header (CMatrix4 holds the 16 values and the flag itself); its functions are free functions in `core/matrix4_base.hpp`.
- CTimer is not derived from ITimer, IDevice is partial (the pure slots are not declared); CAttributes and the attribute classes other than IAttribute keep the earlier models.
- `CMatrix4<float>`: the no-argument constructor leaves the 16 values uninitialised (value-initialisation gives zeros), while the binary's `CMatrix4(eConstructor)`
  (0x631c14, 0x6c0ce4) builds the identity and sets the flag. Whether the no-argument form defaults to the identity is not visible in the listings read, so it was not changed.
- The root `port/decomp-reconstruction/CMakeLists.txt` cannot be configured while `vendor-lua/src` and `vendor-box2d/src` exist: the per-category library loop then
  declares `dh2_vendor_lua` and `dh2_vendor_box2d` a second time. The u1-core tests were built and run from a private copy of the tree (junctions plus a root file with a
  `if(TARGET ...) continue()` guard), 74 of 74 core-io tests pass; the integrator needs to merge those two vendor targets.

## Engine unification wave U2 (video and scene stand-ins replaced)

- `deps/glitch_core_objects.hpp` is a forwarding header now. Its video and scene stand-ins are the canonical classes: glitch-video `buffer.hpp`, `image.hpp`, `light.hpp`, `material.hpp`, `material_renderer.hpp`, `shader_attributes.hpp`, `shader_code.hpp`, `texture.hpp`, `vertex_streams.hpp`, `video_driver.hpp`, `video_mode_list.hpp`, and glitch-scene-collada-gui `scene/CMeshBuffer.hpp`. The file stays because game code includes it (`game/include/dh2/HUDControls.hpp`).
- `tb/cprimitivestream.hpp` forwards to glitch-video `primitive_stream.hpp`. The io code uses the canonical members: `m_indexBuffer`, `m_offset`, `m_count`, `m_vertexStart` (the old unk_0c), `m_vertexEnd` (unk_10), `m_indexType`, `m_primitiveType`.
- The canonical IBuffer, ITexture, IShader and IShaderCode are abstract, and the canonical objects are born with count 0. A new object is wrapped with `boost::intrusive_ptr<T>(p, true)`. loadHeadersAndSkipData and loadVS wrap their table the same way.
- loadPS and loadVS create their buffers through the driver, `createBuffer(1 or 0, 4, bytes, new[](bytes), true)`, the calls the listings make (0x6b61fc, 0x6b73d8). With no driver the bytes are skipped and the stream has no buffer (PARTIAL).
- `src/tb_core-io-boost_intrusive_ptr_glitch_video_CVertexStreams_-0.cpp` is removed. The counting template in `boost/intrusive_ptr.hpp` releases the table.
- Tests: `tests/io_video_fakes.hpp` holds the concrete fakes (FakeBuffer, FakeTexture, FakeShader, FakeShaderCode) and TestNullDriver (a CNullDriver over an IDevice). Eight test files were updated: six of them use these fakes, the other two (r1 pack2 and CAttributes) changed only the birth count and member names.
