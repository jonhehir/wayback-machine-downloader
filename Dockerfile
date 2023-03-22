FROM ruby:3.2
COPY . /build
RUN cd build && \
    gem build wayback_machine_downloader.gemspec && \
    gem install *.gem
ENTRYPOINT [ "wayback_machine_downloader" ]
