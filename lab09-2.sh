#!/bin/bash
usage() {
  echo "Usage: $0 -d DIRECTORY [-e EXTENSION] [-s SIZE]"
  echo "  -d DIRECTORY    Specify the directory to search in"
  echo "  -e EXTENSION    Search files with a specific extension (optional)"
  echo "  -s SIZE         Search files with a specific size in kilobytes (optional)"
  exit 1
}


if [ "$#" -eq 0 ]; then
  usage
fi

# Default values
DIRECTORY=""
EXTENSION=""
SIZE=""


while getopts ":d:e:s:" opt; do
  case $opt in
    d)
      DIRECTORY="$OPTARG"
      ;;
    e)
      EXTENSION="$OPTARG"
      ;;
    s)
      SIZE="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      usage
      ;;
  esac
done


if [ -z "$DIRECTORY" ]; then
  echo "Error: Directory must be provided." >&2
  usage
fi


find "$DIRECTORY" -type f \
  \( -name "*.$EXTENSION" -o -z "$EXTENSION" \) \
  \( -size +"$SIZE"k -o -z "$SIZE" \) \
  -exec ls -lh {} \;

echo "Search completed."

