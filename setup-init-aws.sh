#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

apt update -y && apt upgrade -y
# install ndvia drivers
cd /tmp && wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda_11.8.0_520.61.05_linux.run
sh cuda_11.8.0_520.61.05_linux.run --silent --override --toolkit
cd $SCRIPT_DIR

# install python lib
apt install -y aria2 lnav jq
apt install -y libgoogle-perftools4 libtcmalloc-minimal4
snap install yq

pip install --upgrade pip

# create /workspace/logs if not exist
mkdir -p /workspace/logs

# setup extension
git clone https://github.com/hoanganht91/sd-webui-controlnet.git /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet
git clone https://github.com/hoanganht91/sd-webui-segment-anything.git /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything
git clone https://github.com/hoanganht91/sd-webui-roop.git /workspace/stable-diffusion-webui/extensions/sd-webui-roop
git clone https://github.com/hoanganht91/sd-webui-adetailer.git /workspace/stable-diffusion-webui/extensions/sd-webui-adetailer
git clone https://github.com/hoanganht91/sd-webui-ootd.git /workspace/stable-diffusion-webui/extensions/sd-webui-ootd
git clone https://github.com/hoanganht91/sd-webui-rembg.git /workspace/stable-diffusion-webui/extensions/sd-webui-rembg
git clone https://github.com/hoanganht91/sd-webui-cvt.git /workspace/stable-diffusion-webui/extensions/sd-webui-cvt

$SCRIPT_DIR/setup-modeli.sh
$SCRIPT_DIR/setup-common.sh

# create and add config.yaml
if [ ! -f /workspace/config.yaml ]; then
    cp /workspace/stable-diffusion-webui/config.yaml /workspace/config.yaml
fi

$SCRIPT_DIR/job_healthcheck.sh install
$SCRIPT_DIR/sd-service.sh
