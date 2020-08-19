# Portions Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.


FROM ideonate/streamlit-base

    
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

