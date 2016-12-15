FROM scratch
MAINTAINER Reza Qorbani <reza@qorbani.com>

COPY ./jq /bin/jq

CMD [ "/bin/jq" ]
