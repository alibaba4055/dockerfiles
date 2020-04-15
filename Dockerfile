FROM nvidia/cuda

RUN apt-get update && apt-get install -y \
	  python-pip 
	 
RUN pip --no-cache-dir install \
	  scikit-learn \
	  numba\
	  faiss \
	  gpumap

ENV DISPLAY host.docker.internal:0
