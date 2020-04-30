#!/bin/bash

docker run -ti -v $(pwd):/home/user/work -p 0.0.0.0:4000:4000/tcp --rm crazychenz/jekyll_builder /bin/bash -c \
    'export LC_ALL=C.UTF-8; export GEM_HOME=/home/user/gems ; PATH=/home/user/gems/bin:$PATH ; bundler exec jekyll serve --host 0.0.0.0 --verbose --watch --trace'

