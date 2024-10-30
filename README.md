# Setup development environment


### Gitlab access
Make sure you have all webui repository on gitlab

### Clone stable diffusion webui and run setup script
```
sudo mkdir /workspace && sudo chown $(whoami):$(whoami) /workspace
cd /workspace && git clone https://github.com/heatmobcompany/stable-diffusion-webui
cd /workspace/stable-diffusion-webui 
git checkout pod_modeli
```

### Setup for the first time
```
./setup-init-gcp.sh
./webui.sh
```

### Run
```
# Run and setup environment
./webui.sh

# Run and skip setup environment
./webui.sh --api-log --skip-prepare-environment
```