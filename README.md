# camera_publisher
This node publishes camera_feeds for usb cameras in ros format (sensor_msgs/Image). 

You can run one of the cameras by running the following command:
```
$ roslaunch camera_publisher camera_publisherX.launch
```
Where X should be replaced by a camera number that ranges from 0 to 4.

`camera_publisher0` is supposed to be the node that publishes images from a fisheye camera, while the other 4 can be of arbitrary types.

To also publish compressed jpeg images, you can add the following line to the launch file:
```xml
<param name="publish_compressed_jpeg" type="bool" value="true" />
```
This line should be added to the launch file that is going to start the node that is going to feed input images to [downward_target_tracker](https://github.com/AscendNTNU/downward_target_tracker). 
In our case [launch/camera_publisher0.launch](https://github.com/AscendNTNU/camera_publisher/blob/master/launch/camera_publisher0.launch) is assumed to be that node.
