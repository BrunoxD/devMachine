#!/bin/bash
# Execute with root privileges

cp -r ./library-dependencies.txt /tmp/library-dependencies.txt
cp -r ./requirements.txt /tmp/requirements.txt
buildDeps='build-essential gcc gfortran python3.6-dev'

apt-get update \
    && apt-get install -y $buildDeps --no-install-recommends \
    && cat /tmp/library-dependencies.txt | egrep "^[^#].*$" | xargs apt-get install -y \
    && CFLAGS="-Os -g0 -Wl,--strip-all -I/usr/include:/usr/local/include -L/usr/lib:/usr/local/lib" \
        pip3 install \
        --no-cache-dir \
        --compile \
        --global-option=build_ext \
        --global-option="-j 4" \
        --upgrade \
        -r /tmp/requirements.txt \
    && rm -r \
        /tmp/requirements.txt \
        /tmp/library-dependencies.txt
