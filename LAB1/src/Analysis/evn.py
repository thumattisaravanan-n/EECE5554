#! /usr/bin/env python3

import matplotlib.pyplot as plt
import numpy as np
import rosbag
import math
import statistics
try:
    bag = rosbag.Bag('/home/nikhil/Desktop/EECE5554/LAB1/src/gps_driver/straight_line.bag')
except Exception as e:
    print("Error opening bag file: ", e)
    exit()

easting = []
northing = []
easting_F = []
northing_F= []
easting_L = []
northing_L = []

for topic, msg, t in bag.read_messages(topics=['/gps']):
    easting.append(msg.UTM_easting)
    northing.append(msg.UTM_northing)




easting_F.append(easting[1])
northing_F.append(northing[1]) 
easting_L.append(easting[-2])
northing_L.append(northing[-2])
easting = np.array(easting) - easting[0]
northing = np.array(northing) - northing[0]
easting_F = np.array(easting) - easting[0]
northing_F = np.array(northing) - northing[0]
easting_L = np.array(easting) - easting[0]
northing_L = np.array(northing) - northing[0]


print(statistics.median(easting))
print(statistics.median(northing))
print("Mean of Easting: ",statistics.mean(easting))
print("Mean of Northing: ",statistics.mean(northing))
# Calculate the direction vector
direction_vector = np.array([easting_L[-1] - easting_F[0], northing_L[-1] - northing_F[0]])
unit_vector = direction_vector / np.linalg.norm(direction_vector)

# Calculate the dot product of each point with the unit vector
dot_products = np.dot(np.array([easting, northing]).T, unit_vector)

# Calculate the projected points
projected_points = np.array([easting_F[0] + dot_products * unit_vector[0], northing_F[0] + dot_products * unit_vector[1]]).T
bag.close()


fig, ax = plt.subplots()
ax.scatter(easting, northing, marker='o', c='r', alpha=0.3)
# ax.scatter(projected_points[:, 0], projected_points[:, 1], marker='o', c='r', alpha=0.5)
ax.set_xlabel('UTM_easting (m)')
ax.set_ylabel('UTM_northing (m)')
#ax.set_title('UTM_northing vs UTM_easting for occluded_stationary ')
#ax.set_title('UTM_northing vs UTM_easting for open area_stationary ')
ax.set_title('UTM_northing vs UTM_easting')
ax.grid(linestyle='--', linewidth=0.5)

#ax.plot([easting_F[0], easting_L[-1]], [northing_F[0], northing_L[-1]], c='b',alpha=0.9, linestyle='--')
# ax.set_xlim(left=0)
# ax.set_ylim(bottom=0)
plt.show()
