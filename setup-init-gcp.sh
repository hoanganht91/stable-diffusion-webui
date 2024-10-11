#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo apt update -y
cd $SCRIPT_DIR

# install python lib
sudo apt install -y aria2 lnav jq yq
sudo apt install -y libgoogle-perftools4 libtcmalloc-minimal4

pip install --upgrade pip

# create /workspace/logs if not exist
mkdir -p /workspace/logs

# setup extension
git clone ssh://git@gitlab.dev.heatmob.net:2222/heatmob/ai-dev/sd-webui-controlnet.git /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet
git clone ssh://git@gitlab.dev.heatmob.net:2222/heatmob/ai-dev/sd-webui-segment-anything.git /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything
git clone ssh://git@gitlab.dev.heatmob.net:2222/heatmob/ai-dev/sd-webui/sd-webui-roop.git /workspace/stable-diffusion-webui/extensions/sd-webui-roop
git clone ssh://git@gitlab.dev.heatmob.net:2222/heatmob/ai-dev/sd-webui/sd-webui-adetailer.git /workspace/stable-diffusion-webui/extensions/sd-webui-adetailer
git clone ssh://git@gitlab.dev.heatmob.net:2222/heatmob/ai-dev/sd-webui/sd-webui-ootd.git /workspace/stable-diffusion-webui/extensions/sd-webui-ootd
git clone ssh://git@gitlab.dev.heatmob.net:2222/heatmob/ai-dev/sd-webui/sd-webui-cvt.git /workspace/stable-diffusion-webui/extensions/sd-webui-cvt

$SCRIPT_DIR/setup-modeli.sh
$SCRIPT_DIR/setup-common.sh

# create and add config.yaml
if [ ! -f /workspace/config.yaml ]; then
    cp /workspace/stable-diffusion-webui/config.yaml /workspace/config.yaml
fi

# $SCRIPT_DIR/job_healthcheck.sh install
# $SCRIPT_DIR/sd-service.sh
