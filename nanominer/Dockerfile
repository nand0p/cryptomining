FROM ubuntu

COPY . .

#RUN mv -v /usr/bin/rm /rm
#RUN mv -v /usr/bin/ln /ln
#RUN mv -v /usr/bin/mkdir /mkdir
#RUN /rm -fv /usr/sbin/* /sbin/* /usr/bin/*
#RUN /bin/*
#RUN /ln -sfv /nanominer /bin/sh


#RUN mv -v /usr/bin/chmod /chmod
#RUN find /sbin -executable -type f -print -exec /chmod -c 0 {} \;
#RUN find /usr/sbin -executable -type f -print -exec /chmod -c 0 {} \;
#RUN find /usr/bin -executable -type f -print -exec /chmod -c 0 {} \;
#RUN find /bin -executable -type f -print -exec /chmod -c 0 {} \;

#RUN cat config.ini



ENTRYPOINT ./nanominer.sh

