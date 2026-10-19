#!/usr/bin/env python3
"""Ledger library functions by upstream name.

Reads queue.csv and appends `upstream` rows to ledger.csv for functions whose
demangled name matches a known open-source library naming pattern. Only rows
that are in queue.csv are written; addresses already in ledger.csv are skipped.

Usage: python3 map_upstream.py [--dry-run]
"""
import csv
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
QUEUE = os.path.join(HERE, "queue.csv")
LEDGER = os.path.join(HERE, "ledger.csv")

# (library label, version evidence, compiled regex on the bare function name)
LIBS = [
    ("libpng", "1.2.32",
     re.compile(r"^(png_[A-Za-z0-9_]+|png_[a-z_]+)$")),
    ("zlib", "1.2.3",
     re.compile(r"^(inflate[A-Za-z0-9_]*|deflate[A-Za-z0-9_]*|adler32[A-Za-z0-9_]*|crc32[A-Za-z0-9_]*|"
                r"fixedtables|updatewindow|inflate_fast|zcalloc|zcfree|lm_init|longest_match|fill_window|"
                r"flush_pending|read_buf|_tr_[a-z_]+|send_bits|bi_[a-z]+|gen_codes|build_tree|"
                r"scan_tree|send_tree|pqdownheap|gen_bitlen|compress_block|init_block|build_bl_tree|"
                r"send_all_trees|detect_data_type|static_init|copy_block)$")),
    ("libjpeg (IJG)", "not confirmed (6b-era API)",
     re.compile(r"^(jpeg_[A-Za-z0-9_]+|jinit_[A-Za-z0-9_]+|jdiv_round_up|jround_up|jcopy_[a-z_]+|"
                r"finish_pass_[a-z0-9_]+|process_data_[a-z0-9_]+|start_pass_[a-z0-9_]+|"
                r"jpeg_[a-z_]+|h2v[0-9]_[a-z_]+|ycc_rgb_[a-z_]+|jzero_far|jcopy_sample_rows|"
                r"read_markers|next_marker|first_marker|get_dqt|get_dht|get_sof|get_sos|"
                r"get_app0|get_comment|get_soi|get_sof|skip_variable|examine_app0|read_restart_marker|"
                r"jdiv_[a-z_]+|prepare_range_limit_table|jpeg_fill_bit_buffer|"
                r"decode_mcu[A-Za-z0-9_]*|sep_upsample|fullsize_upsample|int_upsample|"
                r"noop_[a-z_]+|null_convert|grayscale_convert|jsimd_[a-z_0-9]+|"
                r"latch_quant_tables|start_input_pass|start_output_pass|process_restart)$")),
    ("FreeType", "not confirmed (vendored copy is 2.3.7)",
     re.compile(r"^(FT_[A-Za-z0-9_]+|ft_[A-Za-z0-9_]+|tt_[A-Za-z0-9_]+|cff_[A-Za-z0-9_]+|"
                r"t1_[A-Za-z0-9_]+|af_[A-Za-z0-9_]+|psh_[A-Za-z0-9_]+|pfr_[A-Za-z0-9_]+|"
                r"ps_[A-Za-z0-9_]+|raccess_[A-Za-z0-9_]+|gray_[A-Za-z0-9_]+|Direct_Move[A-Za-z0-9_]*|"
                r"Vertical_Sweep[A-Za-z0-9_]*|Horizontal_Sweep[A-Za-z0-9_]*|cid_[A-Za-z0-9_]+|"
                r"pcf_[A-Za-z0-9_]+|t42_[A-Za-z0-9_]+|bdf_[A-Za-z0-9_]+|sfnt_[A-Za-z0-9_]+|"
                r"winfnt_[A-Za-z0-9_]+|smooth_[A-Za-z0-9_]+|ft_smooth_[A-Za-z0-9_]+|"
                r"pshinter_[A-Za-z0-9_]+|psh_globals_[a-z_]+|lzw[A-Za-z0-9_]*|ftlzw[A-Za-z0-9_]*)$")),
    ("GLU tessellator (SGI libtess)", "GLU 1.3-era libtess",
     re.compile(r"^(__gl_[A-Za-z0-9_]+|glu[A-Z][A-Za-z0-9_]*|gluNewTess|gluDeleteTess)$")),
]

# Names that match the regexes but belong to game code or other libraries.
EXCLUDE = re.compile(r"^(start_page|start_packet|start_decoder|start_page_no_capturepattern)$")

# Ghidra could not decompile these, so the name is the only evidence. Left unledgered.
UNDECOMPILED = {"74eb6c"}

# TinyXML class methods: the scope is the TiXml* class in the demangled name.
TINYXML_CLASS = re.compile(r"^(TiXml[A-Za-z]+)::(.+)$")
TINYXML_SKIP_ADDR = {"5149ac", "515a6c"}  # TiXmlPrinterDH destructors, ledgered by hand


def bare_name(demangled):
    head = demangled.split("(")[0].strip()
    return head.split("::")[-1]


def classify_tinyxml(demangled):
    head = demangled.split("(")[0].strip()
    m = TINYXML_CLASS.match(head)
    if not m:
        return None
    cls, meth = m.group(1), m.group(2)
    if cls == "TiXmlPrinterDH":
        return None  # game subclass, reconstructed by hand
    if meth.startswith("~") or meth == cls:
        return "TinyXML 2.5.x (ctor/dtor)", "2.5.x", demangled.split("(")[0], "skipped"
    return "TinyXML 2.5.x", "2.5.x", demangled.split("(")[0], "upstream"


# SGI libtess (GLU tessellator) block: static helpers and default callbacks are
# named by their upstream tess.c/mesh.c/geom.c/sweep.c/dict.c/priorityq.c/render.c functions.
GLU_BLOCK = (0x7AED38, 0x7E15C4)
GLU_CALLBACK = re.compile(r"^(no[A-Z][A-Za-z]*|__gl_no[A-Z][A-Za-z]*)$")


def classify_glu_block(addr_hex, demangled):
    a = int(addr_hex, 16)
    if not (GLU_BLOCK[0] <= a <= GLU_BLOCK[1]):
        return None
    name = bare_name(demangled)
    return ("GLU tessellator (SGI libtess)", "GLU 1.3-era libtess", name)


# Second-pass name families seen in the queue after the first regex pass.
FT_FAMILY = re.compile(
    r"^(T1_|T42_|TT_|Ins_|BDF_|PCF_|FNT_|PS_Conv_|_bdf_|afm_|t2_|Round_|Current_|Move_|Read_CVT|Write_CVT|"
    r"Load_SBit|Load_|parse_|check_|Bezier_|Line_|Conic_|Cubic_|Split_|Compute_|Dual_|Project|Normalize|"
    r"Insert_Y_Turn|IsMacResource|SetSuperRound|SkipCode|Sort$|Render_Single_Pass|Get_Interface|Get_Kerning|"
    r"End_Profile|New_Profile|Insert_|find_sbit_range|find_unicode_charmap|find_variant_selector_charmap|"
    r"fnt_|destroy_charmaps|destroy_face|destroy_size|open_face|by_encoding|compare_uni_maps|"
    r"compare_kern_pairs|_iup_worker|skip_|read_binary_data|read_pfb_tag|t1_|get_sfnt_table|"
    r"psnames_get_service|self_destruct|update_box|memory_stream_close|format_message|"
    r"load_post_names|load_truetype_glyph|check_points|t1_|afm_compare_kern_pairs|check_type1_format|"
    r"Ins_|Compute_Funcs|Compute_Point_Displacement|Vertical_|Horizontal_|Direct_|ft_gzip_|"
    r"fill_dc_scans|output_message|error_exit|ycc|out_of_memory|hash_|self|init_error_limit|"
    r"emit_|write_|encode_mcu_|forward_DCT|add_huff_table|huft_build|alloc_|free_pool|"
    r"do_barray_io|do_sarray_io|access_virt_|request_virt_|realize_virt_|longest_match_fast|zError|"
    r"zlibVersion|zlibCompileFlags|get_crc_table|null_method|dummy_consume_data|"
    r"consume_|compress_|decompress_|finish_|start_pass|pass2_|quantize|prescan_quantize|new_color_map|"
    r"create_colorindex|fill_inverse_cmap|per_scan_setup|post_process_|pre_process_|reset_|"
    r"save_marker|select_scan_parameters|output_pass_setup|prepare_for_|use_merged_upsample|"
    r"merged_|sep_|fullsize_|int_downsample|expand_bottom_edge|examine_app14|get_interesting_appn|"
    r"cmyk_ycck|ycck_cmyk|rgb_gray|rgb_ycc|build_ycc_rgb|color_quantize|dump_buffer|skip_procedure|"
    r"skip_literal_string|skip_spaces|skip_string|consume_markers|decompress_data|"
    r"rgb_ycc_start|init_|dump_|compute_|do_|quantize|hash_bucket|"
    r"Set_|Get_|Vary_|TT_|Hint|MulFix|DotFix)")
FT_EXCLUDE = re.compile(r"^(OutputDebugStringA|Sort|Normalize|Project|Project_x|Project_y|Dual_Project|SkipCode|"
                        r"Compute_Funcs|Compute_Point_Displacement|Compute_|Set_|Get_|do_|init_|dump_|compute_|"
                        r"hash_bucket|self|null_method|self_destruct|hash_free|hash_insert|"
                        r"update_box|ycc|ycck_cmyk|rgb_gray|rgb_ycc)$")


def classify_second_pass(addr_hex, demangled):
    name = bare_name(demangled)
    if FT_EXCLUDE.match(name) or not FT_FAMILY.match(name):
        return None
    lib = "FreeType" if re.match(r"^(T1_|T42_|TT_|Ins_|BDF_|PCF_|FNT_|PS_Conv_|_bdf_|afm_|t2_|Round_|Current_|Move_|Read_CVT|Write_CVT|Load_SBit|Load_|parse_|check_|Bezier_|Line_|Conic_|Cubic_|Split_|Compute_|Dual_|Insert_|find_|fnt_|destroy_|open_face|compare_|_iup|read_binary|read_pfb|get_sfnt|psnames|memory_stream|format_message|load_|check_type|Vertical_|Horizontal_|Direct_|ft_gzip_|t1_|Render_Single|Get_Interface|Get_Kerning|End_Profile|New_Profile|SetSuperRound|IsMacResource|Insert_Y|skip_|t42|Vary_|TT_|MulFix|DotFix|Hint|Project|Sort|Normalize|Dual|Current|Compute|SkipCode|OutputDebug|Read_CVT|Write_CVT|Move_CVT|Set_|Get_)", name) else None
    if name.startswith("zlib") or name in ("zError", "longest_match_fast", "huft_build", "get_crc_table"):
        lib = "zlib"
    if name in ("emit_2bytes", "emit_bits", "emit_byte", "emit_dht", "emit_dqt", "emit_eobrun", "emit_marker",
                "emit_message", "emit_restart", "emit_sof", "write_frame_header", "write_marker_byte",
                "write_marker_header", "write_scan_header", "write_tables_only", "write_file_header",
                "write_file_trailer", "dump_buffer", "encode_mcu_huff", "encode_mcu_gather", "output_message",
                "error_exit", "format_message", "reset_error_mgr", "init_error_limit", "out_of_memory",
                "alloc_barray", "alloc_large", "alloc_sarray", "alloc_small", "free_pool", "self_destruct",
                "do_barray_io", "do_sarray_io", "access_virt_barray", "access_virt_sarray",
                "request_virt_barray", "request_virt_sarray", "realize_virt_arrays", "add_huff_table",
                "forward_DCT", "forward_DCT_float", "fill_dc_scans", "fill_inverse_cmap", "per_scan_setup",
                "pass2_fs_dither", "pass2_no_dither", "prescan_quantize", "quantize_fs_dither",
                "quantize_ord_dither", "quantize3_ord_dither", "new_color_map_1_quant", "new_color_map_2_quant",
                "create_colorindex", "color_quantize", "color_quantize3", "decompress_onepass", "decompress_smooth_data",
                "decompress_data", "compress_data", "compress_first_pass", "compress_output",
                "consume_data", "consume_markers", "consume_markers", "dummy_consume_data", "finish_input_pass",
                "finish_output_pass", "finish_pass1", "finish_pass2", "finish_pass_", "start_pass",
                "prepare_for_output_pass", "prepare_for_pass", "pass_startup", "post_process_1pass",
                "post_process_2pass", "post_process_prepass", "pre_process_context", "pre_process_data",
                "reset_input_controller", "reset_marker_reader", "save_marker", "select_scan_parameters",
                "output_pass_setup", "use_merged_upsample", "merged_1v_upsample", "merged_2v_upsample",
                "sep_downsample", "fullsize_downsample", "fullsize_smooth_downsample", "int_downsample",
                "rgb_ycc_convert", "rgb_gray_convert", "rgb_ycc_start", "ycc_rgb_convert", "ycck_cmyk_convert",
                "cmyk_ycck_convert", "build_ycc_rgb_table", "null_method", "write_file_header",
                "examine_app14", "get_interesting_appn", "expand_bottom_edge", "t2_hints_open", "t2_hints_stems",
                "null_method", "emit_eobrun", "encode_mcu_AC_first", "encode_mcu_AC_refine",
                "encode_mcu_DC_first", "encode_mcu_DC_refine", "encode_mcu_huff", "emit_sof",
                "jpeg_fill_bit_buffer", "compress_output", "huft_build", "update_box"):
        lib = "libjpeg (IJG)" if name not in ("huft_build",) else "zlib"
    if name in ("compress_first_pass", "compress_output", "compress_data"):
        lib = "libjpeg (IJG)"
    if name in ("compare_kern_pairs", "afm_compare_kern_pairs", "by_encoding", "compare_uni_maps"):
        lib = "FreeType"
    if name in ("psnames_get_service",):
        lib = "FreeType"
    return lib, "2nd-pass name family", name


def classify(demangled):
    t = classify_tinyxml(demangled)
    if t:
        return t[0], t[1], t[2]
    name = bare_name(demangled)
    if EXCLUDE.match(name):
        return None
    for label, version, rx in LIBS:
        if rx.match(name):
            return label, version, name
    return None


def main():
    dry = "--dry-run" in sys.argv
    queue = list(csv.DictReader(open(QUEUE, newline="")))
    done = set()
    if os.path.exists(LEDGER):
        done = {r["elf_address"].lower().removeprefix("0x") for r in csv.DictReader(open(LEDGER, newline=""))}
    rows, counts = [], {}
    for r in queue:
        addr = r["elf_address"].lower()
        if addr in done:
            continue
        if addr in UNDECOMPILED or addr in TINYXML_SKIP_ADDR:
            continue
        hit = classify_tinyxml(r["demangled"])
        if hit:
            label, version, name, status = hit
            note = f"{version}: {name}"
            if status == "skipped":
                note = f"TinyXML 2.5.x: compiler-generated ctor/dtor of {name.split('::')[0]}"
            elif status == "upstream":
                note = f"TinyXML {version}: {name} (name-matched upstream method)"
            counts[label] = counts.get(label, 0) + 1
            rows.append(["0x" + addr, name, status, "", note])
            continue
        hit = classify_glu_block(addr, r["demangled"]) or classify(r["demangled"])
        if not hit and r["owner"] == "lib-image-zip-font":
            sp = classify_second_pass(addr, r["demangled"])
            if sp:
                hit = (sp[0], sp[1], sp[2])
        if not hit:
            continue
        label, version, name = hit
        counts[label] = counts.get(label, 0) + 1
        rows.append(["0x" + addr, name, "upstream", "",
                     f"{label} {version}: {name} (name-matched upstream symbol)"])
    for k, v in counts.items():
        print(f"{v:5d}  {k}")
    print("total", len(rows))
    if dry:
        return
    new = not os.path.exists(LEDGER)
    with open(LEDGER, "a", newline="") as f:
        w = csv.writer(f)
        if new:
            w.writerow(["elf_address", "symbol", "status", "source_file", "notes"])
        w.writerows(rows)


if __name__ == "__main__":
    main()
