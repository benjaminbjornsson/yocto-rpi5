### Initialize submodules
```
git submodule init
git submodule update
```

### Docker-Based Workflow on macOS

Since macOS cannot natively run Yocto builds, use the provided Docker image with a mounted volume:

```bash
docker build -t yocto-rpi5 .
docker run -it -v $(pwd):/workdir yocto-rpi5
Inside the container:

# Copy the pre-configured build directory to the container’s writable space
cp -r /workdir/build-rpi5 .

# Source the build environment
source /workdir/poky/oe-init-build-env build-rpi5
You can now run BitBake as usual:

bitbake core-image-base
