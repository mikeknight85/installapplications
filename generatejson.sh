#!/bin/bash

# Generate boostrap.json file


URL="https://installapplications.therestoftheowl.com"
ROOT="$(pwd -P)/server"


./generatejson.py \
    --base-url "$URL" \
    --output "$ROOT" \
    --item \
        item-name="installapplications-preflight.sh" \
        item-path="$ROOT/preflight/installapplications-preflight.sh" \
        item-stage="preflight" \
        item-type="rootscript" \
        item-url="$URL/preflight/installapplications-preflight.sh" \
        script-do-not-wait=False \
    --item \
        item-name="DEPNotify-1.1.0.pkg" \
        item-path="$ROOT/setupassistant/DEPNotify-1.1.0.pkg" \
        item-stage="setupassistant" \
        item-type="package" \
        item-url="$URL/setupassistant/DEPNotify-1.1.0.pkg" \
        script-do-not-wait=False \
    --item \
        item-name="caffeinate.py" \
        item-path="$ROOT/userland/caffeinate.py" \
        item-stage="userland" \
        item-type="rootscript" \
        item-url="$URL/userland/caffeinate.py" \
        script-do-not-wait=True \
    --item \
        item-name="munkitools-3.4.1.3557.pkg" \
        item-path="$ROOT/userland/munkitools-3.4.1.3557.pkg" \
        item-stage="userland" \
        item-type="package" \
        item-url="$URL/userland/munkitools-3.4.1.3557.pkg" \
        script-do-not-wait=False \
    --item \
        item-name="run_munki.py" \
        item-path="$ROOT/userland/run_munki.py" \
        item-stage="userland" \
        item-type="rootscript" \
        item-url="$URL/userland/run_munki.py" \
        script-do-not-wait=False
