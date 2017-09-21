FROM        perl:latest
MAINTAINER  Nick Langridge

RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN git clone https://github.com/nicklangridge/docker-test.git
RUN cpanm --installdeps docker-test

EXPOSE 8080

WORKDIR docker-test
CMD hypnotoad server.pl
