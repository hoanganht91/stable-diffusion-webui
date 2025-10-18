#!/usr/bin/env bash

git clone https://github.com/hoanganht91/sd-webui-controlnet.git /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet
git clone https://github.com/hoanganht91/sd-webui-segment-anything.git /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything
git clone https://github.com/hoanganht91/sd-webui-roop.git /workspace/stable-diffusion-webui/extensions/sd-webui-roop
git clone https://github.com/hoanganht91/sd-webui-adetailer.git /workspace/stable-diffusion-webui/extensions/sd-webui-adetailer
git clone https://github.com/hoanganht91/sd-webui-ootd.git /workspace/stable-diffusion-webui/extensions/sd-webui-ootd
git clone https://github.com/hoanganht91/sd-webui-rembg.git /workspace/stable-diffusion-webui/extensions/sd-webui-rembg
git clone https://github.com/hoanganht91/sd-webui-cvt.git /workspace/stable-diffusion-webui/extensions/sd-webui-cvt

# setup checkpoint
#aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/chilloutmix_NiPrunedFp32.safetensors -d /workspace/stable-diffusion-webui/models/Stable-diffusion -o chilloutmix_NiPrunedFp32.safetensors
#aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/kencanmix_v20Beta.safetensors -d /workspace/stable-diffusion-webui/models/Stable-diffusion -o kencanmix_v20Beta.safetensors
#aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/beautifulRealistic_v40.safetensors -d /workspace/stable-diffusion-webui/models/Stable-diffusion -o beautifulRealistic_v40.safetensors
#aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/photon_v1.safetensors -d /workspace/stable-diffusion-webui/models/Stable-diffusion -o photon_v1.safetensors
#aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/cyberrealistic_v40-inpainting.safetensors -d /workspace/stable-diffusion-webui/models/Stable-diffusion -o cyberrealistic_v40-inpainting.safetensors
#aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/vnf19.safetensors -d /workspace/stable-diffusion-webui/models/Stable-diffusion -o vnf19.safetensors
#aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/realisticVisionV60B1_v51VAE_2G.safetensors -d /workspace/stable-diffusion-webui/models/Stable-diffusion -o realisticVisionV60B1_v51VAE_2G.safetensors

# setup lora
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/vnfs_lr.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o vnfs_lr.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/suanbei_v7-000002.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o suanbei_v7-000002.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/vnman4.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o vnman4.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/bgw.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o bgw.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/chouchou-000005.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o chouchou-000005.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/bg_deco_v.0.2.8-000005.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o bg_deco_v.0.2.8-000005.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/weight_slider-LECO-v1.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o weight_slider-LECO-v1.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/lora_office_3.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o lora_office_3.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/microwaistV05.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o microwaistV05.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/age_slider_v20.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o age_slider_v20.safetensors

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/GS-DeFeminize-neg.pt -d /workspace/stable-diffusion-webui/models/Lora -o GS-DeFeminize-neg.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/GS-DeMasculate-neg.pt -d /workspace/stable-diffusion-webui/models/Lora -o GS-DeMasculate-neg.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/GS-Masculine.pt -d /workspace/stable-diffusion-webui/models/Lora -o GS-Masculine.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/GS-Womanly.pt -d /workspace/stable-diffusion-webui/models/Lora -o GS-Womanly.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/skin_tone_slider_v1.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o skin_tone_slider_v1.safetensors

# setup controlnet
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/ip-adapter-faceid-plusv2_sd15.bin -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o ip-adapter-faceid-plusv2_sd15.bin

# setup sam2
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/sam2_hiera_large.pt -d /workspace/stable-diffusion-webui/models/sam -o sam2_hiera_large.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/sam2_hiera_base_plus.pt -d /workspace/stable-diffusion-webui/models/sam -o sam2_hiera_base_plus.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/sam2_hiera_small.pt -d /workspace/stable-diffusion-webui/models/sam -o sam2_hiera_small.pt
