FROM	alpine:3.5
WORKDIR	/tmp
RUN     apk add --no-cache perl perl-dbi perl-dbd-mysql pcre
ADD     http://www.pro-bono-publico.de/projects/src/DEVEL.201704140812.tar.bz2 tac_plus.tar.bz2
RUN	apk add --no-cache --virtual .build-deps gcc make libc-dev pcre-dev && \
	tar xvfj tac_plus.tar.bz2 && cd /tmp/PROJECTS && \
	./configure --with-pcre=/usr/include tac_plus && make && make install && \
	cd / && rm -rf /tmp/* && \
	apk del .build-deps

CMD	["tac_plus","-f","/etc/tac_plus.conf"]
#CMD     ["tac_plus","-d","8","-f","/etc/tac_plus.conf"]

