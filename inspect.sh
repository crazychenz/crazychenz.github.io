#!/bin/bash

docker run -ti -v $(pwd):/home/user/work --rm crazychenz/jekyll_builder /bin/bash $@

