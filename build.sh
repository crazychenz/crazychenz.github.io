#!/bin/bash

docker run -ti -v $(pwd):/home/user/godot --rm crazychenz/godot_builder /bin/bash -c "scons platform=linux -j8 $@"

