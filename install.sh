#!/usr/bin/env bash
set -e

temp_dir=$(mktemp -d)
cd "${temp_dir}"

curl -L "https://raw.githubusercontent.com/avahe-kellenberger/vocaroo-cli/master/vocaroo.sh" -o "${PWD}/vocaroo.sh"
curl -L "https://raw.githubusercontent.com/avahe-kellenberger/vocaroo-cli/master/ardour/vocaroo-ardour.sh" -o "${PWD}/vocaroo-ardour.sh"

install -Dm755 "${temp_dir}/vocaroo.sh" "/usr/local/bin/vocaroo"
install -Dm755 "${temp_dir}/vocaroo-ardour.sh" "/usr/local/bin/vocaroo-ardour"

cd "/"
trap 'rm -rf "${temp_dir}"' EXIT
echo "Done."
