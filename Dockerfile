FROM python:3.7
MAINTAINER Ob Rzwo <obr2pd@gmail.com>
WORKDIR /opt/
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt -t ./pip/
# COPY . .
RUN mkdir ./web/

# ENTRYPOINT ["python", "-u"]
# CMD ["-m", "http.server", "8001"]

# ENTRYPOINT ["tail", "-f", "/dev/null"]

ENTRYPOINT ["cp", "/opt/pip/data/brython.js", "/opt/pip/data/brython_stdlib.js", "/opt/pip/data/demo.html", "/opt/web/"]

