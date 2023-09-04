# jupyter base image
FROM jupyter/scipy-notebook:lab-4.0.5

# install python libraries
RUN mamba install --yes \
    'osmnx=1.6.0' \
    'pillow' \
    'pre-commit' \
    'python-igraph' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
