#!/bin/bash -xve

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_ros/
cd ~/catkin_ws
echo $PYTHONPATH
export PYTHONPATH=$PYTHONPATH:/home/travis/virtualenv/python2.7.14/lib/python2.7/site-packages
catkin_make
