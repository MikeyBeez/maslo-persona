#! /bin/bash
#
# Run the docker container. Stop any previously running copies.
#
./stop.sh

# Just for fun, we will export the roscore port 11311 out of the
# container.   That way, if you run roscore inside the container,
# and you can `rostopic list` outside of it!
docker run --name="myhead" \
    -p 8080:8080 -it myhead
