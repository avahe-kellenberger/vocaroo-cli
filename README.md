# vocaroo-cli

`vocaroo-cli` is a simple tool for uploading sound files to [vocaroo.com]("https://vocaroo.com/?upload").

## Installation

Run the command to install.

```sh
$ curl -Lo- "https://raw.githubusercontent.com/avahe-kellenberger/vocaroo-cli/master/install.sh" | sudo bash
```

## Usage

```sh
vocaroo /path/to/file
```

**Note: Please only upload sound files, and do not abuse this tool or vocaroo.com.**

Disclaimer: I am in no way affiliated with [vocaroo.com](https://vocaroo.com/)

Special thanks to **Sapphirus** ([Github](https://github.com/SapphirusBeryl)) for assisting with the main curl command to upload files, and to **Anthony** ([Github](https://github.com/adedomin)), the bash specialist, for pretty much everything else.

## Uninstall

All files are stored in `/usr/local/bin/vocaroo/`

Run the command to uninstall

```sh
sudo rm -rf "/usr/local/bin/vocaroo"
```

**If you have complaints or suggestions, feel free to open an issue with the project.**
