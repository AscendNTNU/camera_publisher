# camera_publisher
This node publishes camera_feeds for usb cameras in ros format (sensor_msgs/Image). 

## usage
```
$ roslaunch camera_publisher camera_publisher.launch
```
Edit the launch file to use the correce camera index

To also publish compressed jpeg images, you can add the following line to the launch file:
```xml
<param name="publish_compressed_jpeg" type="bool" value="true" />
```

## dependencies

+ libv4l-dev
+ v4l-utils
