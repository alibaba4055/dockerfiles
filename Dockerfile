FROM nvidia/cuda

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
	  python3-tk \
	  python3-h5py \
	  xvfb \
	  git
	 
RUN pip --no-cache-dir install \
	  scikit-learn \
	  numpy \
	  pandas \
	  numba\
	  faiss \
	  gpumap


COPY xvfb-run.sh /usr/bin/
RUN chmod +x /usr/bin/xvfb-run.sh

ENV DISPLAY host.docker.internal:0
