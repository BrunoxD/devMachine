#!/bin/bash
# Execute with root privileges
# Install pip3 and upgrade it before this.

cp -r ./library-dependencies.txt /tmp/library-dependencies.txt
buildDeps='build-essential gcc gfortran python3-dev'

apt-get update \
    && apt-get install -y $buildDeps --no-install-recommends \
    && cat /tmp/library-dependencies.txt | egrep "^[^#].*$" | xargs apt-get install -y \
    && 
    for lib in `cat ./requirements.txt | egrep "^[^#].*$"`
		do
			echo $lib > /tmp/requirements.txt \
			&& cat /tmp/requirements.txt \
			&& CFLAGS="-Os -g0 -Wl,--strip-all -I/usr/include:/usr/local/include -L/usr/lib:/usr/local/lib" /usr/local/bin/pip install \
			    --no-cache-dir \
			    --compile \
			    --global-option=build_ext \
			    --global-option="-j 4" \
			    --upgrade \
				-r /tmp/requirements.txt
		done \
    && rm -r \
        /tmp/requirements.txt \
        /tmp/library-dependencies.txt