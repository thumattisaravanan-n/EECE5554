import rosbag
import matplotlib.pyplot as plt
import numpy as np
import bagpy
from bagpy import bagreader
import pandas as pd

# Specify the paths to your bag files
bag_file_1 = '/home/nikhil/Desktop/EECE5554/LAB2/src/data/2023-10-16-15-38-09.bag'
bag_file_2 = '/home/nikhil/Desktop/EECE5554/LAB2/src/data/2023-10-16-15-13-36.bag'

# Function to create a scatterplot from a bag file
def create_scatterplot(bag_file, title):

    utm_northing = []
    utm_easting = []

    with rosbag.Bag(bag_file, 'r') as bag:
        first_point = None
        for topic, msg, t in bag.read_messages(topics=['/gps']):
            utm_northing.append(msg.utm_northing)
            utm_easting.append(msg.utm_easting)
            if first_point is None:
                first_point = (msg.utm_easting, msg.utm_northing)

    utm_easting = [e - first_point[0] for e in utm_easting]
    utm_northing = [n - first_point[1] for n in utm_northing]

    utm_northing_list = []
    utm_easting_list = []

    with rosbag.Bag(bag_file, 'r') as bag:
        first_point = None
        for topic, msg, t in bag.read_messages(topics=['/gps']):
            utm_northing_list.append(msg.utm_northing)
            utm_easting_list.append(msg.utm_easting)
            if first_point is None:
                first_point = (msg.utm_easting, msg.utm_northing)

        utm_easting_list = [e - first_point[0] for e in utm_easting_list]
        utm_northing_list = [n - first_point[1] for n in utm_northing_list]
        x_min = min(utm_easting_list)
        x_max = max(utm_easting_list)
        y_min = min(utm_northing_list)
        y_max = max(utm_northing_list)

        x_min_index = utm_easting_list.index(x_min)
        y_at_x_min = utm_northing_list[x_min_index]
        corner_1 = [x_min, y_at_x_min]

        y_max_index = utm_northing_list.index(y_max)
        x_at_y_max = utm_easting_list[y_max_index]
        corner_2 = [x_at_y_max, y_max]

        x_max_index = utm_easting_list.index(x_max)
        y_at_x_max = utm_northing_list[x_max_index]
        corner_3 = [x_max, y_at_x_max]

        y_min_index = utm_northing_list.index(y_min)
        x_at_y_min = utm_easting_list[y_min_index]
        corner_4 = [x_at_y_min, y_min]

    corners = np.array([corner_1, corner_2, corner_3, corner_4])
    corners_modified = np.array([corner_1, corner_2, corner_3, corner_4, corner_1])
    print(corners)
    
    plt.figure(figsize=(8, 6))
    plt.scatter(utm_easting, utm_northing, label='UTM Data', s=5)
    plt.plot(corners_modified[:, 0], corners_modified[:, 1], 'k-')
    plt.xlabel('Scaled UTM Easting')
    plt.ylabel('Scaled UTM Northing')
    plt.title(title)
    plt.grid(True)
    plt.legend()
    plt.show()

create_scatterplot(bag_file_1, 'UTM Northing vs UTM Easting for Walking')
create_scatterplot(bag_file_2, 'UTM Northing vs UTM Easting for Walking Occluded')

def median_absolute_deviation(data):
 
    median = np.median(data)
    absolute_deviations = np.abs(data - median)
    median_absolute_deviation = np.median(absolute_deviations)
    return median_absolute_deviation

stationary_bag = bagreader(bag_file_1)
stationary_occluded_bag = bagreader(bag_file_2)

stationary_data = stationary_bag.message_by_topic("/gps")
stationary_occluded_data = stationary_occluded_bag.message_by_topic("/gps")

stationary_readings = pd.read_csv(stationary_data)
stationary_occluded_readings = pd.read_csv(stationary_occluded_data)

median_absolute_deviation__stationary_northing = median_absolute_deviation(stationary_readings['utm_northing'])
median_absolute_deviation__stationary_easting = median_absolute_deviation(stationary_readings['utm_easting'])
print("Median Absolute Deviation for Northing of Stationary Position: " + str(median_absolute_deviation__stationary_northing))
print("Median Absolute Deviation for Easting of Stationary Position: " + str(median_absolute_deviation__stationary_easting))

median_absolute_deviation__stationary_occluded_northing = median_absolute_deviation(stationary_occluded_readings['utm_northing'])
median_absolute_deviation__stationary_occluded_easting = median_absolute_deviation(stationary_occluded_readings['utm_easting'])
print("Median Absolute Deviation for Northing of Stationary Occluded Position: " + str(median_absolute_deviation__stationary_occluded_northing))
print("Median Absolute Deviation for Easting of Stationary Occluded Position: " + str(median_absolute_deviation__stationary_occluded_easting))

#Data Normalization
stationary_readings['utm_easting'] -= stationary_readings['utm_easting'].min()
stationary_readings['utm_northing'] -= stationary_readings['utm_northing'].min()

stationary_occluded_readings['utm_easting'] -= stationary_occluded_readings['utm_easting'].min()
stationary_occluded_readings['utm_northing'] -= stationary_occluded_readings['utm_northing'].min()


hist, x_edges, y_edges = np.histogram2d(stationary_readings['utm_easting'], stationary_readings['utm_northing'], bins=50)

# Create a 2D histogram plot
plt.figure(figsize=(6, 6))
plt.imshow(hist.T, origin='lower', extent=[x_edges.min(), x_edges.max(), y_edges.min(), y_edges.max()], cmap='viridis')
plt.colorbar(label='Frequency')
plt.xlabel('UTM Easting')
plt.ylabel('UTM Northing')
plt.title('2D Histogram of Stationary Data')
plt.tight_layout()
plt.show()

# Create a 2D histogram
hist, x_edges, y_edges = np.histogram2d(stationary_occluded_readings['utm_easting'], stationary_occluded_readings['utm_northing'], bins=50)

plt.figure(figsize=(6, 6))
plt.imshow(hist.T, origin='lower', extent=[x_edges.min(), x_edges.max(), y_edges.min(), y_edges.max()], cmap='viridis')
plt.colorbar(label='Frequency')
plt.xlabel('UTM Easting')
plt.ylabel('UTM Northing')
plt.title('2D Histogram of Stationary Occluded Data')
plt.tight_layout()
plt.show()

# Create a figure with two subplots (one row, two columns)
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

# Plot UTM Easting Histogram
ax1.hist(stationary_readings['utm_easting'], bins=20, color='blue', alpha=0.7, edgecolor='black')
ax1.set_title('UTM Easting (Stationary Data)')
ax1.set_xlabel('Easting Values')
ax1.set_ylabel('Frequency')

# Plot UTM Northing Histogram
ax2.hist(stationary_readings['utm_northing'], bins=20, color='green', alpha=0.7, edgecolor='black')
ax2.set_title('UTM Northing (Stationary Data)')
ax2.set_xlabel('Northing Values')
ax2.set_ylabel('Frequency')

plt.show()


# Create a figure with two subplots (one row, two columns)
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

# Plot UTM Easting Histogram
ax1.hist(stationary_occluded_readings['utm_easting'], bins=20, color='blue', alpha=0.7, edgecolor='black')
ax1.set_title('UTM Easting (Stationary Occluded Data)')
ax1.set_xlabel('Easting Values')
ax1.set_ylabel('Frequency')

# Plot UTM Northing Histogram
ax2.hist(stationary_occluded_readings['utm_northing'], bins=20, color='green', alpha=0.7, edgecolor='black')
ax2.set_title('UTM Northing (Stationary Occluded Data)')
ax2.set_xlabel('Northing Values')
ax2.set_ylabel('Frequency')

plt.show()