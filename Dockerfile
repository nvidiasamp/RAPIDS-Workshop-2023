ARG RAPIDS_VERSION=22.08
ARG CUDA_VERSION=11.0
ARG LINUX_VERSION=ubuntu18.04
ARG PYTHON_VERSION=3.8
FROM nvcr.io/nvidia/rapidsai/rapidsai:${RAPIDS_VERSION}-cuda${CUDA_VERSION}-base-${LINUX_VERSION}-py${PYTHON_VERSION}

SHELL ["/bin/bash", "-c"]

COPY . .

RUN source activate rapids && mamba env update --file environment_for_docker.yml
