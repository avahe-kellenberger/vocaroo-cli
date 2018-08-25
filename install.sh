#!/usr/bin/env bash
set -e

temp_dir=$(mktemp -d)
cd ${temp_dir}

file=$(curl -L "https://raw.githubusercontent.com/avahe-kellenberger/vocaroo-cli/master/vocaroo.sh" -o "${temp_dir}")
install -dm755 vocaroo.sh /usr/local/bin/vocaroo
echo "Done."
