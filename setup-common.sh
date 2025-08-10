#!/usr/bin/env bash

if ! command -v aria2c &> /dev/null; then
    echo "aria2c is not installed. Installing it..."
    apt update
    apt install -y aria2
fi

git clone https://github.com/hoanganht91/sd-webui-controlnet.git /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet
git clone https://github.com/hoanganht91/sd-webui-segment-anything.git /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything
git clone https://github.com/hoanganht91/sd-webui-roop.git /workspace/stable-diffusion-webui/extensions/sd-webui-roop
git clone https://github.com/hoanganht91/sd-webui-adetailer.git /workspace/stable-diffusion-webui/extensions/sd-webui-adetailer
git clone https://github.com/hoanganht91/sd-webui-ootd.git /workspace/stable-diffusion-webui/extensions/sd-webui-ootd
git clone https://github.com/hoanganht91/sd-webui-rembg.git /workspace/stable-diffusion-webui/extensions/sd-webui-rembg
git clone https://github.com/hoanganht91/sd-webui-cvt.git /workspace/stable-diffusion-webui/extensions/sd-webui-cvt

# Controlnet
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11f1e_sd15_tile.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11e_sd15_ip2p.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11e_sd15_shuffle.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11e_sd15_shuffle.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11f1p_sd15_depth.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_canny.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_inpaint.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_lineart.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_lineart.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_mlsd.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_mlsd.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_normalbae.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_normalbae.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_openpose.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_scribble.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_scribble.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_seg.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_seg.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15_softedge.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_softedge.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11p_sd15s2_lineart_anime.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15s2_lineart_anime.pth

aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o ip-adapter_sd15.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_sd15_plus.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o ip-adapter_sd15_plus.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/ip-adapter_xl.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models -o ip-adapter_xl.pth

# Lora
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Naruto.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o Naruto.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Naruto.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o Naruto.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/foodphoto.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o foodphoto.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/foodphoto.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o foodphoto.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/kda_v3.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o kda_v3.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/kda_v3.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o kda_v3.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/3DMM_V12.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o 3DMM_V12.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/3DMM_V12.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o 3DMM_V12.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/makina69_rose_v1.0.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o makina69_rose_v1.0.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/makina69_rose_v1.0.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o makina69_rose_v1.0.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/sontung-000006.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o sontung-000006.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/sontung-000006.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o sontung-000006.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/ngoctrinh-000008.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o ngoctrinh-000008.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/ngoctrinh-000008.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o ngoctrinh-000008.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Amee_V12.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o Amee_V12.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Amee_V12.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o Amee_V12.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Nezuko.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o Nezuko.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Nezuko.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o Nezuko.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/SamYang.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o SamYang.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/SamYang.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o SamYang.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Makima.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o Makima.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Makima.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o Makima.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Cute_VNFace.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o Cute_VNFace.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/Cute_VNFace.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o Cute_VNFace.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/add_detail.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o add_detail.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/add_detail.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o add_detail.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/GoodHands-beta2.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o GoodHands-beta2.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/GoodHands-beta2.jpeg -d /workspace/stable-diffusion-webui/models/Lora -o GoodHands-beta2.jpeg
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/FilmG3.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o FilmG3.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/FilmG3.png -d /workspace/stable-diffusion-webui/models/Lora -o FilmG3.png
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/InstantPhotoX3.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o InstantPhotoX3.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/epi_noiseoffset2.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o epi_noiseoffset2.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/bgw.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o bgw.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/vnman4.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o vnman4.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/evangelion_anime_style_offset.safetensors -d /workspace/stable-diffusion-webui/models/Lora -o evangelion_anime_style_offset.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/evangelion_anime_style_offset.jpg -d /workspace/stable-diffusion-webui/models/Lora -o evangelion_anime_style_offset.jpg

# VAE
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/kl-f8-anime2.ckpt -d /workspace/stable-diffusion-webui/models/VAE -o kl-f8-anime2.ckpt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors -d /workspace/stable-diffusion-webui/models/VAE -o vae-ft-mse-840000-ema-pruned.safetensors

# ESRGAN
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/embed/upscale/resolve/main/4x-UltraSharp.pth -d /workspace/stable-diffusion-webui/models/ESRGAN -o 4x-UltraSharp.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/4x_NMKD-Siax_200k.pth -d /workspace/stable-diffusion-webui/models/ESRGAN -o 4x_NMKD-Siax_200k.pth

# Roop
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/inswapper_128.onnx -d /workspace/stable-diffusion-webui/models/roop -o inswapper_128.onnx

# Adetailer
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Bingsu/adetailer/resolve/main/face_yolov8n.pt -d /workspace/stable-diffusion-webui/models/adetailer -o face_yolov8n.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Bingsu/adetailer/resolve/main/face_yolov8s.pt -d /workspace/stable-diffusion-webui/models/adetailer -o face_yolov8s.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Bingsu/adetailer/resolve/main/hand_yolov8n.pt -d /workspace/stable-diffusion-webui/models/adetailer -o hand_yolov8n.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Bingsu/adetailer/resolve/main/person_yolov8n-seg.pt -d /workspace/stable-diffusion-webui/models/adetailer -o person_yolov8n-seg.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Bingsu/adetailer/resolve/main/person_yolov8s-seg.pt -d /workspace/stable-diffusion-webui/models/adetailer -o person_yolov8s-seg.pt

# Segment anything
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/spaces/abhishek/StableSAM/resolve/main/sam_vit_h_4b8939.pth -d /workspace/stable-diffusion-webui/models/sam -o sam_vit_h_4b8939.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lkeab/hq-sam/resolve/main/sam_hq_vit_h.pth -d /workspace/stable-diffusion-webui/models/sam -o sam_hq_vit_h.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ShilongLiu/GroundingDINO/resolve/main/groundingdino_swint_ogc.pth -d /workspace/stable-diffusion-webui/extensions/sd-webui-segment-anything/models/grounding-dino -o groundingdino_swint_ogc.pth

# embeddings
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/FastNegativeV2.pt -d /workspace/stable-diffusion-webui/embeddings -o FastNegativeV2.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/negative_hand-neg.pt -d /workspace/stable-diffusion-webui/embeddings -o negative_hand-neg.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/verybadimagenegative_v1.3.pt -d /workspace/stable-diffusion-webui/embeddings -o verybadimagenegative_v1.3.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/annh/general/resolve/main/easynegative.safetensors -d /workspace/stable-diffusion-webui/embeddings -o easynegative.safetensors
