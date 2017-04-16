FROM jekyll/jekyll:pages

MAINTAINER Ashish Pandey "ashishapy@gmail.com"

COPY . /srv/jekyll/
RUN chown jekyll:jekyll -R /srv/

ENTRYPOINT ["jekyll","serve", "--watch", "--incremental"]