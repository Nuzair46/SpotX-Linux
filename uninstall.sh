#!/usr/bin/env bash

# Script flags
PATH_FLAG=''

while getopts 'P:' flag; do
  case "${flag}" in
    P) 
      PATH_FLAG="${OPTARG}"
      INSTALL_PATH="${PATH_FLAG}" ;;
    *) 
      echo "Error: Flag not supported."
      exit ;;
  esac
done

# Locate install directory
if [ -z ${INSTALL_PATH+x} ]; then
  INSTALL_PATH=$(readlink -e `type -p spotify` 2>/dev/null | rev | cut -d/ -f2- | rev)
  if [[ -d "${INSTALL_PATH}" && "${INSTALL_PATH}" != "/usr/bin" ]]; then
    echo "Spotify directory found in PATH: ${INSTALL_PATH}"
  elif [[ ! -d "${INSTALL_PATH}" ]]; then
    echo -e "\nSpotify not found in PATH. Searching for Spotify directory..."
    INSTALL_PATH=$(timeout 10 find / -type f -path "*/spotify*Apps/*" -name "xpui.spa" -size -7M -size +3M -print -quit 2>/dev/null | rev | cut -d/ -f3- | rev)
    if [[ -d "${INSTALL_PATH}" ]]; then
      echo "Spotify directory found: ${INSTALL_PATH}"
    elif [[ ! -d "${INSTALL_PATH}" ]]; then
      echo -e "Spotify directory not found. Set directory path with -P flag.\nExiting...\n"
      exit; fi
  elif [[ "${INSTALL_PATH}" == "/usr/bin" ]]; then
    echo -e "\nSpotify PATH is set to /usr/bin, searching for Spotify directory..."
    INSTALL_PATH=$(timeout 10 find / -type f -path "*/spotify*Apps/*" -name "xpui.spa" -size -7M -size +3M -print -quit 2>/dev/null | rev | cut -d/ -f3- | rev)
    if [[ -d "${INSTALL_PATH}" && "${INSTALL_PATH}" != "/usr/bin" ]]; then
      echo "Spotify directory found: ${INSTALL_PATH}"
    elif [[ "${INSTALL_PATH}" == "/usr/bin" ]] || [[ ! -d "${INSTALL_PATH}" ]]; then
      echo -e "Spotify directory not found. Set directory path with -P flag.\nExiting...\n"
      exit; fi; fi
else
  if [[ ! -d "${INSTALL_PATH}" ]]; then
    echo -e "Directory path set by -P was not found.\nExiting...\n"
    exit; fi; fi

# XPUI paths
XPUI_PATH="${INSTALL_PATH}/Apps"
XPUI_SPA="${XPUI_PATH}/xpui.spa"
XPUI_BAK="${XPUI_PATH}/xpui.bak"

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
