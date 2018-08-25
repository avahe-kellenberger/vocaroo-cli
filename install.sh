#!/usr/bin/env bash
set -e

temp_dir=$(mktemp -d)
cd "${temp_dir}"

curl -L "https://raw.githubusercontent.com/avahe-kellenberger/vocaroo-cli/master/vocaroo.sh" -o "${PWD}/vocaroo.sh"
install -Dm755 "${temp_dir}/vocaroo.sh" "/usr/local/bin/vocaroo"

cd "/"
trap 'rm -rf "${temp_dir}"'
echo "Done."
