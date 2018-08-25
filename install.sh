#!/usr/bin/env bash
set -e

temp_dir=$(mktemp -d)
cd ${temp_dir}

file=$(curl -L "https://ptpb.pw/z6D-" -o "${temp_dir}")
install -dm755 vocaroo.sh /usr/local/bin/vocaroo
echo "Done."
