FROM ubuntu:16.04
RUN apt-get update && apt-get install && apt-get install python3  python3-pip -y \
    &&  apt-get install libboost-all-dev -y \
    && apt-get install g++ libeigen3-dev libopencv-dev libboost-all-dev  -y \
    && apt-get install libzmqpp-dev libgnuplot-iostream-dev -y \
    && apt-get install  libjsoncpp-dev python3-boto python3-zmq python3-numpy python3-simplejson -y \
    && apt-get install  python3-pandas gnuplot-qt libseccomp-dev -y \
    && apt-get install python3-flask rsyslog  supervisor -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && rm -rf /var/lib/apt/lists/* && apt-get autoremove -y

RUN pip3 install ujson  --upgrade && pip3 install scikit-learn==0.20.1