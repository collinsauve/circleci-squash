FROM alpine

RUN addgroup --gid 2000 testgroup
RUN adduser --system --home /home/testuser --uid 1000 --disabled-password --ingroup testgroup testuser

COPY --chown=testuser:testgroup ./files/hello.txt /
COPY --chown=testuser:testgroup ./files/world.txt /

CMD cat /hello.txt && cat /world.txt