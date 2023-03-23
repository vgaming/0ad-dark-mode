#!/usr/bin/env bash
{
set -euETo pipefail

### This script is used to create the Mod itself.
### See README.md for details

TARGET_ZIP_FILE="$1"

### Hardcoded parameter of what to override with
REPLACE_WITH="tropic_beach_volcanic.xml"
# REPLACE_WITH="blackness.xml"

test -e "mod.json"

### Copy terrain files, to replace all terrains with just 1 type
zipinfo -1 "$TARGET_ZIP_FILE" | grep '^art/terrains.*xml$' | grep -v terrains.xml | while read FILE; do
  echo "processing file: $FILE"
  mkdir -p -- "./$(dirname -- "$FILE")"
  cp -- "$REPLACE_WITH" "$FILE"
done

### Copy terrain cached files, see above
zipinfo -1 "$TARGET_ZIP_FILE" | grep '^art/terrains.*xmb$' | grep -v terrains.xml | while read FILE; do
  echo "processing file: $FILE"
  mkdir -p -- "./$(dirname -- "$FILE")"
  cp -- "$REPLACE_WITH".cached.xmb "$FILE"
done

### unfinished trees alteration
### trees that give 200 wood and allow 8 workers:
# tree200work8=(
# acacaia
# aleppo_pine
# bamboo
# baobab_2_young
# carob
# cedar_atlas_2_young
# cherry_blossom
# cretan_date_palm_tall
# cypress
# cypress_wild
# cypress_windswept
# date_palm
# date_palm_dead
# dead
# elm
# elm_dead
# euro_breech
# euro_breech_aut
# fir
# fir_winter
# juniper_prickly
# mangrove
# maple_autumn
# medit_fan_palm
# oak
# oak_aut
# oak_aut_new
# oak_dead
# oak_holly
# oak_holly_autumn
# oak_hungarian
# oak_hungarian_autumn
# oak_new
# palm_areca
# palm_doum
# palm_palmyra
# palm_tropic
# palm_tropical
# pine
# pine_black
# pine_black_dead
# pine_maritime
# pine_maritime_short
# pine_w
# poplar
# poplar_dead
# poplar_lombardy
# poplar_lombardy_autumn
# poplar_lombardy_dead
# senegal_date_palm
# tamarix
# temperate
# temperate_autumn
# temperate_winter
# toona
# tropic_rainforest
# )
# 
### trees that give 300 wood and allow 8 workers:
# tree300work8=(
# acacia_large
# cedar_atlas_4_dead
# euro_birch
# maple
# oak_large
# )

echo "done."

exit
}
