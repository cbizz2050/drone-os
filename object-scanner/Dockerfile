# Start FROM Nvidia PyTorch image https://ngc.nvidia.com/catalog/containers/nvidia:pytorch:21.12-py3
FROM nvcr.io/nvidia/pytorch:21.12-py3

MAINTAINER cbizz <cbizz2050@protonmail.com>

# Install linux packages
RUN apt update && apt install -y zip htop screen libgl1-mesa-glx

# Install python dependencies
COPY ./yolov4/requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip uninstall -y nvidia-tensorboard nvidia-tensorboard-plugin-dlprof
RUN pip install --no-cache -r requirements.txt coremltools onnx gsutil notebook wandb>=0.12.2 matplotlib
RUN pip install --no-cache -U torch torchvision numpy Pillow
# RUN pip install --no-cache torch==1.10.0+cu113 torchvision==0.11.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

RUN mkdir -p /home/drone/object-scanner/yolov4
COPY . /home/drone/object-scanner/
WORKDIR /home/drone/object-scanner

# Downloads to user config dir
#ADD https://ultralytics.com/assets/Arial.ttf /root/.config/Ultralytics/


# TODO: Disable udev rule 
# /lib/udev/rules.d/40-vm-hotadd.rules
# The rule generally takes a form where it detects the addition of a memory block and changes the 'state' attribute to online. For example, in RHEL8, the rule looks like this:
# SUBSYSTEM=="memory", ACTION=="add", PROGRAM="/bin/uname -p", RESULT!="s390*", ATTR{state}=="offline", ATTR{state}="online"
# This rule must be disabled by copying the file to /etc/udev/rules.d and commenting out, removing, or changing the hot-pluggable memory rule in the /etc copy so that it does not apply to POWER9 NVIDIA systems. For example, on RHEL 7.5 and earlier:
# sudo cp /lib/udev/rules.d/40-redhat.rules /etc/udev/rules.d
# sudo sed -i '/SUBSYSTEM=="memory", ACTION=="add"/d' /etc/udev/rules.d/40-redhat.rule
# https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#post-installation-actions
# https://docs.nvidia.com/deeplearning/frameworks/user-guide/index.html#runcont