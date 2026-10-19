# Irrlicht provenance of the glitch engine (Dungeon Hunter 2, armeabi-v7a)

Date 2026-10-16. Research only, no source edits. Scratch: %TEMP%\irr-hunt (upstream zips 1.4.2, 1.5, 1.5.1, 1.6.1, 1.7.3, 1.8.4 from sourceforge, zlib licence) and the session scratchpad (nm.txt, str.txt, cmp1-3.py, classify.py).

## Best candidate: Irrlicht 1.5.x line (SVN trunk of late 2008 to early 2009), heavily forked
Confidence: medium-high for "1.5-era", low for the exact revision.

Evidence (reference .so: 11,978 glitch:: symbols across core/scene/video/io/gui/collada/ps plus res/memory/debugger):
- Class-name overlap: of 474 glitch class/enum/function names tested, 239 occur in 1.4.2, 250 in 1.5.1, 246 in 1.6.1, 246 in 1.7.3, 248 in 1.8.4. Class::method pairs shared (3,019 glitch pairs): 1.4.2 1,490; 1.5.0 and 1.5.1 1,591 (identical); 1.6.1 1,552; 1.7.3 1,547; 1.8.4 1,570. 1.5.x is the peak.
- Added in 1.5 and present in glitch: IGUITable and all CGUITable methods (addColumn, setColumnOrdering ...), EGUI_COLUMN_ORDERING / EGUI_ORDERING_MODE, ISceneNodeAnimatorCameraFPS/Maya as interfaces, CGUITabControl tab-height / extra-width / vertical-alignment methods, CAnimatedMeshSceneNode::clone, CFileSystem::getFileBasename (104 pairs total). So newer than 1.4.2.
- Removed or changed in 1.6 and still old in glitch: CFileSystem::addZipFileArchive / addPakFileArchive / addFolderFileArchive, CZipReader / CPakReader / CUnZipReader / CMemoryReadFile as concrete reader classes (42 pairs in 1.5.1 but not 1.6.1), core::position2d still a class. 1.6 introduced IFileArchive and removeFileArchive, absent from glitch. So older than 1.6.
- 1.7 additions absent from glitch: FogColor, Attract, NullDriver strings.
- Strings: GUIElementTypeNames in the binary is the 1.4/1.5 list (button, checkBox, comboBox, contextMenu, menu, editBox, fileOpenDialog, colorSelectDialog, inOutFader, listBox, meshViewer, messageBox, modalScreen, scrollBar, spinBox, staticText, tabControl, toolBar, window; image and tab dropped), skin types windowsClassic / windowsMetallic / burning, attribute names Texture, UseAlphaChannel, ScaleImage, DrawFlags, TabHeight, TextColor. Messages are Irrlicht's with "Irrlicht" renamed ("Found unknown element in glitch GUI file"); "Found unknown element in irrlicht scene file" was left verbatim.
- Counter-evidence: core::fast_atof_move (0x322bc8) is the 1.4.2 form (no null check, exponent parsed only inside the decimal branch, lowercase 'e' only), not the 1.5 rewrite. Either the snapshot predates that rewrite or Gameloft kept its own copy. A secondhand Irrlicht forum post (2013, https://irrlicht.sourceforge.io/forum/viewtopic.php?p=278700) says Gameloft's engine started from Irrlicht "1.3" and was heavily modified; this is hearsay and 1.3 itself cannot be right (IGUITable is 1.5-era), but it fits a trunk snapshot that was then patched. The exact SVN revision cannot be pinned without SVN history; tagged 1.5 and 1.5.1 are indistinguishable by our probes.

Spot checks (Hex-Rays vs 1.5.1 source):
1. CSceneNodeAnimatorRotation::animateNode 0x6cd594: same algorithm (diff = t - start; if diff: rot += Rotation*(diff/10); start = t). Types changed: rotation is a 4-float quaternion-sized value and the ctor takes (u32, quaternion).
2. CMemoryReadFile::read 0x56ecc4: identical to upstream line for line (clamp to Len-Pos, memcpy, advance Pos). Verbatim.
3. CZipReader::findFile 0x578520: identical flow (entry, optional make_lower, optional deletePathFromFilename, binary_search); core::string replaced by std::basic_string with SAllocator.
4. quaternion::normalize 0x35c8f0 and CMatrix4<float>::getTransposed 0x31f790 (copies the definitelyIdentityMatrix byte at +64): same semantics as 1.4.2/1.5.1; reciprocal_squareroot became 1.0f/sqrtf.
5. fast_atof_move: matches the 1.4.2 form, see above.
Pattern: algorithms are upstream's; storage types (std::string, SAllocator, intrusive_ptr, quaternion rotations, vertex streams) are Gameloft's.

## Did glitch leak?
Web searches (glitch::scene gameloft, glitch engine github, source leak) found nothing: no repo, no leak, no write-up. Only the secondhand forum remark above. Nothing was downloaded other than zlib-licensed Irrlicht releases.

## How much could be sourced from upstream
Method: every ledger row demangled via the .so symtab; class looked up in 1.5.1; a row counts as "upstream method name" if the class and the method/ctor/dtor name exist upstream. This is a name-level upper bound; the spot checks show bodies are usually edited for types and allocators, so read it as "start from upstream and patch", not copy-paste.

| category | rows | class-level near-verbatim (>=80% of method names upstream) | forked (40-80%) | heavily forked | glitch-original (no upstream class) | rows with upstream method name |
|---|---|---|---|---|---|---|
| glitch-core-io | 1,336 | 569 (43%) | 305 | 99 | 340 | 702 (53%) |
| glitch-scene-collada-gui | 4,735 | 1,443 (30%) | 320 | 64 | 2,899 (61%) | 1,562 (33%) |
| glitch-video | 1,701 | 97 (6%) | 10 | 323 | 1,219 (72%) | 164 (10%) |

- Near-verbatim candidates: the whole gui:: namespace (about 712 rows; CGUI* widgets, table, skin, font), io:: attributes / XML / zip / pak / memory-file classes (about 494), scene:: animators, billboards, simple particle emitters/affectors, CCameraSceneNode, CMeshCache, CSkyBoxSceneNode, CTerrainSceneNode, COctTreeTriangleSelector (about 695), core:: math templates vector2d/3d, plane3d, line, triangle, rect, quaternion, plus fast_atof and string helpers.
- Heavily forked: all of video:: (Gameloft replaced CNullDriver/COpenGLES with CCommonGLDriver, CProgrammableGLDriver, a shader/technique/vertex-stream/material system and process buffers; only the CImage loaders, SColor family, CFPSCounter and some enums are close), CMesh/CMeshBuffer/CSceneManager (vertex streams, batching), core:: allocators, kd-tree, quantization.
- No upstream equivalent: collada:: (2,230 rows: CColladaDatabase, skinned mesh, animation tracks, CRes*), ps:: (324 rows, GNPS particle system), res::, debugger::, memory::, boost/STL instantiations.
Overall: about 2,100 of 7,772 rows (27%) sit in classes whose method set is mostly upstream; about 2,430 rows (31%) have a same-named upstream method; about 4,450 (57%) are glitch-original.

## Recommendation
1. Vendor irrlicht-1.5.1 (1.5.0 is identical for our purposes) read-only at port/decomp-reconstruction/vendor/irrlicht-1.5.1/ (include/ and source/Irrlicht/ only, about 10 MB without media), with its licence file, as a REFERENCE, not compiled in. Optionally keep 1.4.2 beside it for fast_atof and other old behaviour.
2. Use irrlicht-class-map.csv (530 classes; columns: glitch class, irrlicht class, upstream .h/.cpp in 1.5.1, match level, ledger rows, rows with upstream method name). Work order by payoff: gui:: (712 rows), io:: attributes and readers, scene:: animators / particle affectors and emitters / camera / terrain, core:: math. For each, diff the Hex-Rays body against the upstream method and transcribe the upstream shape with glitch types (SAllocator strings, quaternion, intrusive_ptr). The binary's layout and mangled symbols still win (decisions 9 and 10); upstream only supplies algorithm and field names.
3. Do not map video:: , collada:: or ps:: to Irrlicht; those remain pure reconstruction. Irrlicht 1.6+ drivers will not help.
4. Treat fast_atof and similar core helpers as 1.4.2-era code; a later Irrlicht would give wrong exponent parsing.
