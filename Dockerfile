FROM ubuntu:13.10
DESIGN Lutfiadji Mazda, lutfidev29@gmail.com

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    ca-certificates \
    gcc \
    git \
    libpq-dev \
    make \
    python-pip \
    python2.7 \
    python2.7-dev \
    ssh \
    && apt-get autoremove \
    && apt-get clean

RUN pip install -U "setuptools==3.4.1" \
    pip install -U "pip==1.5.4" \
    pip install -U "Mercurial==2.9.1" \
    pip install -U "virtualenv==1.11.4" \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

CMD ["cat", "/etc/os-release"]
ENTRYPOINT ["/usr/bin/python2.7-build"]