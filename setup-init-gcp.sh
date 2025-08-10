#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

apt update -y && apt upgrade -y
cd $SCRIPT_DIR

# install python lib
apt install -y aria2 lnav jq yq
apt install -y libgoogle-perftools4 libtcmalloc-minimal4

# create /workspace/logs if not exist
mkdir -p /workspace/logs

# setup extension
git clone ssh://git@github.com:hoanganht91/sd-webui-controlnet.git /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet
git clone ssh://git@github.com:hoanganht91/sd-webui-segment-anything.git /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything
git clone ssh://git@github.com:hoanganht91/sd-webui-roop.git /workspace/stable-diffusion-webui/extensions/sd-webui-roop
git clone ssh://git@github.com:hoanganht91/sd-webui-adetailer.git /workspace/stable-diffusion-webui/extensions/sd-webui-adetailer
git clone ssh://git@github.com:hoanganht91/sd-webui-ootd.git /workspace/stable-diffusion-webui/extensions/sd-webui-ootd
git clone ssh://git@github.com:hoanganht91/sd-webui-rembg.git /workspace/stable-diffusion-webui/extensions/sd-webui-rembg
git clone ssh://git@github.com:hoanganht91/sd-webui-cvt.git /workspace/stable-diffusion-webui/extensions/sd-webui-cvt

$SCRIPT_DIR/setup-modeli.sh
$SCRIPT_DIR/setup-common.sh

# create and add config.yaml
if [ ! -f /workspace/config.yaml ]; then
    cp /workspace/stable-diffusion-webui/config.yaml /workspace/config.yaml
fi

# $SCRIPT_DIR/job_healthcheck.sh install
# $SCRIPT_DIR/sd-service.sh
