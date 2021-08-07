FROM jekyll/minimal
WORKDIR /src
ENTRYPOINT jekyll serve \
  --config _config.yml