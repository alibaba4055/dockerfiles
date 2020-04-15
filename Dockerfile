FROM nvidia/cuda

RUN apt-get update && apt-get install -y \
	  python-pip \
	  python3-tk \
	  python3-h5py \
	  xvfb \
	  git
	 
RUN pip --no-cache-dir install \
	  scikit-learn \
	  numba\
	  faiss \
	  gpumap


COPY xvfb-run.sh /usr/bin/
RUN chmod +x /usr/bin/xvfb-run.sh

ENV DISPLAY host.docker.internal:0
