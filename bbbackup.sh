#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

exec >> "$SCRIPT_DIR"/output.log 2>&1
# shellcheck disable=SC2164
cd "$SCRIPT_DIR"

# execute backup script to do a backup to the defined folder (see bbbackup.cfg which folder and which config the app will run with)
poetry run python bbbackup.py --configuration "$SCRIPT_DIR"/bbbackup.cfg --backup