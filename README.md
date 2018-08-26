# vocaroo-cli

`vocaroo-cli` is a simple tool for uploading sound files to [vocaroo.com]("https://vocaroo.com/?upload").

**Disclaimer: I am in no way affiliated with [vocaroo.com](https://vocaroo.com/)**
**Please only upload sound files, and do not abuse this tool or their site.**
## Installation

Run the command to install:

```sh
$ curl -Lo- "https://raw.githubusercontent.com/avahe-kellenberger/vocaroo-cli/master/install.sh" | sudo bash
```

## Usage

**This command will upload your file, and print the URL in your shell.**

```sh
vocaroo /path/to/file
```

_Special thanks to **Sapphirus** ([Github](https://github.com/SapphirusBeryl)) for assisting with the main curl command to upload files, and to **Anthony** ([Github](https://github.com/adedomin)), for assisting with bash commands._

## Ardour Plugin
**This plugin will automatically upload your exported audio file, and open it in your browser.**

Open Ardour and navigate to:
```sh
1. Session > Export > Export to Audio File(s)...
2. Click "Edit" on the right-hand side of the "Format" drop-down selector
3. In the "Command to run post-export" box, paste the following command:
```
`vocaroo-ardour %f`

## Uninstall
All files are stored in `/usr/local/bin/vocaroo/`
Run the command to uninstall
```sh
sudo rm -rf "/usr/local/bin/vocaroo"
```

**If you have complaints or suggestions, feel free to open an issue with the project.**
