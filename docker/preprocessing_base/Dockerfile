FROM runpod/pytorch:3.8-1.13.1-116

# Make python 3.10 as default and create an environment
RUN : \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        python3-apt \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        build-essential \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        wget \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ffmpeg \    
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        zip \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        unzip \    
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        libsm6 \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        libxext6 \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        libxrender-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && :

# install conda because of pytorch3d
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && /bin/bash ~/miniconda.sh -b -p /opt/conda
ENV PATH=$CONDA_DIR/bin:$PATH

WORKDIR /workspace

RUN conda create --name preprocessing -y python=3.7

ENV PYTORCH_CUDA_ALLOC_CONF "max_split_size_mb:512"

RUN wget www.robots.ox.ac.uk/~vgg/data/voxceleb/data/vox2_dev_txt.zip
RUN unzip vox2_dev_txt.zip -d vox