#!/bin/bash
#
# Copyright (c) 2021 PS-Micro, Co. Ltd.
#
# SPDX-License-Identifier: Apache-2.0
#

echo "### Gmapping Save Map ###"

# get necessary environment variables
source /opt/ros/melodic/setup.bash --extend
source ~/catkin_ws/devel/setup.bash --extend

# save current path
current_path=`pwd`

# save map
roscd ares_lesson_9_gmapping/maps
rosrun map_server map_saver -f map

# get back to the old path
cd ${current_path}
unset current_path

echo "### Finish ###"