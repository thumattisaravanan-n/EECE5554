#!/usr/bin/env python3

import matplotlib.pyplot as plt
import rosbag
import statistics
import numpy as np

bag = rosbag.Bag('/home/nikhil/Desktop/EECE5554/LAB1/src/gps_driver/straight_line.bag')
error_val = []

# open
abs_northing = 4689776.0
abs_easting = 327446.0

#occluded1
#abs_easting = 327975
#abs_northing = 4689574

# for topic, msg, t in bag.read_messages(topics=['/gps']):
#     time.append(t.to_sec())
#     altitude.append(msg.Altitude)

for topic, msg, t in bag.read_messages(topics=['/gps']):
    # easting.append(msg.UTM_northing)
    # northing.append(msg.UTM_easting)
    error_val.append(((abs_easting - msg.UTM_easting)**2 + (abs_northing - msg.UTM_northing)**2) ** 0.5)
    
    pass

bag.close()

#slope, intercept = np.polyfit(msg.UTM_easting, msg.UTM_northing, 1)
#plt.plot(msg.UTM_easting, slope*msg.UTM_easting + intercept, color='red')

#msg.UTM_easting = np.reshape(msg.UTM_easting, -1)
#msg.UTM_northing = np.reshape(msg.UTM_northing, -1)

# Calculate RMSE
#predicted_values = slope * msg.UTM_easting + intercept
#residuals = msg.UTM_northing - predicted_values
#RMSE = np.sqrt(np.mean(residuals**2))
print("RMSE:", RMSE)

mean_error = statistics.mean(error_val)  # Calculate the mean of error values

# Print the mean
print(f"Mean of error values: {mean_error}")

#plt.hist(time, bins=20, alpha=0.5, label='time')
plt.hist(error_val, bins=20, alpha=0.5, label='altitude')


plt.xlabel('Time (sec)')
plt.ylabel('Altitude (m)')
plt.title('Altitude vs Time')
plt.show()
