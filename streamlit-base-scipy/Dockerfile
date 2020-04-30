# Portions Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.


FROM ideonate/streamlit-base

ARG PYTHON_VERSION=default


# Install all OS dependencies for notebook server that starts but lacks all
# features (e.g., download as all possible file formats)
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -yq --no-install-recommends \
    wget \
    bzip2 \
    ca-certificates \
    sudo \
    locales \
    fonts-liberation \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

# Configure environment
ENV CONDA_DIR=/opt/conda \
    SHELL=/bin/bash \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8
ENV PATH=$CONDA_DIR/bin:$PATH

# Install conda as jovyan and check the md5 sum provided on the download site
ENV MINICONDA_VERSION=4.8.2 \
    MINICONDA_MD5=87e77f097f6ebb5127c77662dfc3165e \
    CONDA_VERSION=4.8.2

RUN cd /tmp && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda3-py37_${MINICONDA_VERSION}-Linux-x86_64.sh && \
    echo "${MINICONDA_MD5} *Miniconda3-py37_${MINICONDA_VERSION}-Linux-x86_64.sh" | md5sum -c - && \
    /bin/bash Miniconda3-py37_${MINICONDA_VERSION}-Linux-x86_64.sh -f -b -p $CONDA_DIR && \
    rm Miniconda3-py37_${MINICONDA_VERSION}-Linux-x86_64.sh && \
    echo "conda ${CONDA_VERSION}" >> $CONDA_DIR/conda-meta/pinned && \
    conda config --system --prepend channels conda-forge && \
    conda config --system --set auto_update_conda false && \
    conda config --system --set show_channel_urls true && \
    conda config --system --set channel_priority strict && \
    if [ ! $PYTHON_VERSION = 'default' ]; then conda install --yes python=$PYTHON_VERSION; fi && \
    conda list python | grep '^python ' | tr -s ' ' | cut -d '.' -f 1,2 | sed 's/$/.*/' >> $CONDA_DIR/conda-meta/pinned && \
    conda install --quiet --yes conda && \
    conda install --quiet --yes pip && \
    conda update --all --quiet --yes && \
    conda clean --all -f -y

# Install Tini
RUN conda install --quiet --yes 'tini=0.18.0' && \
    conda list tini | grep tini | tr -s ' ' | cut -d ' ' -f 1,2 >> $CONDA_DIR/conda-meta/pinned && \
    conda clean --all -f -y
    
# ffmpeg for matplotlib anim & dvipng for latex labels
#RUN apt-get install -y --no-install-recommends ffmpeg dvipng && \
#    rm -rf /var/lib/apt/lists/*

RUN conda install --quiet --yes \
    'beautifulsoup4=4.8.*' \
    'conda-forge::blas=*=openblas' \
    'bottleneck=1.3.*' \
    'cloudpickle=1.3.*' \
    'cython=0.29.*' \
    'dask=2.14.*' \
    'dill=0.3.*' \
    'h5py=2.10.*' \
    'hdf5=1.10.*' \
    'ipympl=0.5.*'\
    'matplotlib-base=3.2.*' \
    'numba=0.48.*' \
    'numexpr=2.7.*' \
    'pandas=1.0.*' \
    'patsy=0.5.*' \
    'protobuf=3.11.*' \
    'pytables=3.6.*' \
    'scikit-image=0.16.*' \
    'scikit-learn=0.22.*' \
    'scipy=1.4.*' \
    'seaborn=0.10.*' \
    'sqlalchemy=1.3.*' \
    'statsmodels=0.11.*' \
    'sympy=1.5.*' \
    'vincent=0.4.*' \
    'xlrd' \
    && \
    conda clean --all -f -y 

