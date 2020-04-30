#!/bin/bash

docker run -ti -v $(pwd):/home/user/work -p 127.0.0.1:4000:4000/tcp --rm crazychenz/jekyll_builder /bin/bash $@

