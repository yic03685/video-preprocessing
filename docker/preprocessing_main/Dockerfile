FROM yic/motion_model:preprocessing_base

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "preprocessing", "/bin/bash", "-c"]

RUN git clone https://github.com/yic03685/video-preprocessing.git

# Preprocess tool
WORKDIR /workspace/video-preprocessing

RUN cp -R /workspace/vox/* .

# Preprocess vox dataset
RUN pip install -r requirements.txt
RUN pip install packaging
RUN pip install opencv-python
RUN python -m pip install -U yt-dlp

RUN git clone https://github.com/1adrianb/face-alignment
WORKDIR /workspace/video-preprocessing/face-alignment
RUN pip install -r requirements.txt
RUN python setup.py install

# RUN python crop_vox.py --workers 40 --device_ids 0,1,2,3,4,5,6,7 --format .mp4 --dataset_version 2