FROM jekyll/minimal:3.8
WORKDIR /src
ENTRYPOINT jekyll serve \
  --config _config.yml