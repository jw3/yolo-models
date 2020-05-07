FROM buildpack-deps:bionic

WORKDIR /tmp
RUN wget https://pjreddie.com/media/files/yolov3.weights
RUN wget https://pjreddie.com/media/files/yolov3-tiny.weights
RUN wget https://pjreddie.com/media/files/darknet53.conv.74

FROM scratch

COPY --from=0 /tmp /opt/models
