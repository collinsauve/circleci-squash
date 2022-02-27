FROM alpine

COPY ./files/hello.txt /
COPY ./files/world.txt /

CMD cat /hello.txt && cat /world.txt