#!/usr/bin/env bash

# Inital paths and filenames
INSTALL_PATH=$(readlink -e `type -p spotify`| rev | cut -d/ -f2- | rev)
XPUI_PATH="${INSTALL_PATH}/Apps"
XPUI_SPA="${XPUI_PATH}/xpui.spa"
XPUI_BAK="${XPUI_PATH}/xpui.bak"

# Detect client in PATH
if [[ ! -d "${INSTALL_PATH}" ]]; then
  echo -e "\nSpotify not found in PATH. Exiting...\n"
  exit; fi

# Check for backup file
if [[ ! -f "${XPUI_BAK}" ]]; then
  echo -e "Backup file not found.\nExiting...\n"
  exit 
fi

# Uninstall patch
echo "Removing patch..."
rm "${XPUI_SPA}"
mv "${XPUI_BAK}" "${XPUI_SPA}"

echo -e "SpotX patch removed and backup restored!\n"
