# ctest wrapper for the armdiff chain harness (needs: Windows py -3 with unicorn+capstone, the Android NDK, the original
# libDungeonHunter2.so and the pushed game data; see ../README.md). Standalone so the port CMake is not touched:
#   cmake -S tools/trackb/armdiff/chains -B build/own-chain/ctest && ctest --test-dir build/own-chain/ctest
cmake_minimum_required(VERSION 3.20)
project(dh2_armdiff_chains NONE)
enable_testing()
find_program(PY NAMES py python3 python REQUIRED)
set(CHAIN ${CMAKE_CURRENT_SOURCE_DIR}/../chain.py)
foreach(c charprops_load_base charprops_all_rows combat_cf char_stats char_buffs char_skills char_levelup melee_hit ai_aggro ai_targets ai_update inventory_ops equip_gear item_instances
          loot_tables loot_deep pydata_ai_factions pydata_read_all savegame_sections quest_savegame)
  add_test(NAME armdiff-chain/${c} COMMAND ${PY} -3 ${CHAIN} ${c})
endforeach()
# negative controls: the harness must report a difference
foreach(c control_flipped_byte control_mutated_function)
  add_test(NAME armdiff-chain/${c} COMMAND ${PY} -3 ${CHAIN} ${c})
  set_tests_properties(armdiff-chain/${c} PROPERTIES WILL_FAIL TRUE)
endforeach()
