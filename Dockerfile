FROM alpine

RUN echo "I'm a layer"
RUN echo "I'm also a layer"

CMD echo "I ran"