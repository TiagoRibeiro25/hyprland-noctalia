-- Environmental variables (for reference https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/)
-- if you use UWSM, define your variables in ~/.config/uwsm/env
-- if you don't use UWSM, define your variables here (e.g. hl.env("QT_QPA_PLATFORM", "wayland"))

-- if you have an NVIDIA GPU uncomment the following lines:

hl.env("GBM_BACKEND", "nvidia-drm") -- force GBM as a backend
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia") -- force GBM as a backend
hl.env("LIBVA_DRIVER_NAME", "nvidia") -- Hardware acceleration on NVIDIA GPUs
hl.env("__GL_GSYNC_ALLOWED", "1") -- Controls if G-Sync capable monitors should use Variable Refresh Rate (VRR)

hl.env("AQ_DRM_DEVICES", "/dev/dri/nvidia:/dev/dri/intel")

hl.env("GTK_IM_MODULE", "simple")

hl.env("MANGOHUD", "1")
hl.env("MANGOHUD_CONFIG", "no_display,fps_limit=120")

hl.env("__GL_SHADER_DISK_CACHE_SIZE", "21474836480") -- 20GB
hl.env("__GL_SHADER_DISK_CACHE_SKIP_CLEANUP", "1") -- Don't clean
hl.env("MESA_SHADER_CACHE_MAX_SIZE", "20GB")

hl.env("PROTON_USE_NTSYNC", "1")


