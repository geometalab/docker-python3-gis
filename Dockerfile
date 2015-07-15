FROM buildpack-deps:jessie

MAINTAINER njordan.hsr@gmail.com

ENV LANG en_US.utf8

# install geodjango dependencies: https://docs.djangoproject.com/en/1.8/ref/contrib/gis/install/geolibs/
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y\
    python3\
    python3-pip\
    python3-dev\
    binutils\
    libgeos-dev\
    libproj-dev\
    gdal-bin\
    libsqlite3-dev\
    libspatialite-dev\
    libgeoip1\
    gdal-bin\
    python-gdal\
    gettext\
    virtualenv

RUN pip3 install -U pip
RUN pip3 install -U honcho
