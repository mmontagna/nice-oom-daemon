FROM python:3.7

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY . .

RUN python setup.py install

CMD [ "nice-oom-daemon" , "--stop-signal", "sigint=50", "sigterm=50", "sigkill=5", "--grace-period", "5"]