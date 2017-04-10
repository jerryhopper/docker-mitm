#!/bin/sh
set -e

MITMPROXY_PATH="/home/mitmproxy/.mitmproxy"

if [[ "$1" = "mitmdump" ]]; then
        mkdir -p "$MITMPROXY_PATH"
        chown -R mitmproxy:mitmproxy "$MITMPROXY_PATH"

        su-exec mitmdump -s /usr/local/bin/app/ingress-mitm.py
        # "$@"
else
        exec mitmdump -s /usr/local/bin/app/ingress-mitm.py 
        #"$@"
fi
