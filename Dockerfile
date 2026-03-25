FROM ubuntu:jammy 
RUN apt-get -y update && apt-get -y upgrade
# RUN apt update -y && apt install -y software-properties-common
# RUN add-apt-repository ppa:deadsnakes/ppa && apt update
RUN apt install -y python3 pip git
RUN pip install hatch==1.15.0
RUN pip install "virtualenv<20.22"
RUN hatch python install 3.13

RUN apt-get update && apt-get install -y \
    xfce4 \
    tigervnc-standalone-server \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 5901

WORKDIR /root/
RUN mkdir dev
# RUN git clone https://github.com/rob450-soccer/passing.git && \
#     git clone https://gitlab.com/robocup-sim/rcssservermj.git
# WORKDIR /root/
CMD ["/bin/bash"]


