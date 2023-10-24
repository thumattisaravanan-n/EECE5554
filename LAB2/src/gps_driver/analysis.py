#!/usr/bin/env python3

import bagpy
from matplotlib.axis import Axis
import matplotlib.pyplot as plt
import numpy as np
from numpy import sin, cos, pi, linspace
import matplotlib.pyplot as plt
from bagpy  import bagreader
import pandas as pd
import math  
import statistics



movbgfree=bagreader('/home/nikhil/Desktop/EECE5554/LAB2/src/data/2023-10-16-15-38-09.bag')
statbgfree=bagreader('/home/nikhil/Desktop/EECE5554/LAB2/src/data/2023-10-16-15-22-04.bag')
movbgoccl=bagreader('/home/nikhil/Desktop/EECE5554/LAB2/src/data/2023-10-16-15-13-36.bag')
statbgoccl=bagreader('/home/nikhil/Desktop/EECE5554/LAB2/src/data/2023-10-16-15-00-42.bag')

movfree = movbgfree.message_by_topic('/gps')
statfree = statbgfree.message_by_topic('/gps')
movoccl = movbgoccl.message_by_topic('/gps')
statoccl = statbgoccl.message_by_topic('/gps')

df_movfree = pd.read_csv(movfree)
df_statfree = pd.read_csv(statfree)
df_movoccl = pd.read_csv(movoccl)
df_statoccl = pd.read_csv(statoccl)

df_statfree['utm_northing_std']= df_statfree['utm_northing']- df_statfree['utm_northing'].min()
df_statfree['utm_easting_std']= df_statfree['utm_easting']- df_statfree['utm_easting'].min()

df_statoccl['utm_northing_std']= df_statoccl['utm_northing']- df_statoccl['utm_northing'].min()
df_statoccl['utm_easting_std']= df_statoccl['utm_easting']- df_statoccl['utm_easting'].min()

df_movfree['utm_northing_std']= df_movfree['utm_northing']- df_movfree['utm_northing'].min()
df_movfree['utm_easting_std']= df_movfree['utm_easting']- df_movfree['utm_easting'].min()

df_movoccl['utm_northing_std']= df_movoccl['utm_northing']- df_movoccl['utm_northing'].min()
df_movoccl['utm_easting_std']= df_movoccl['utm_easting']- df_movoccl['utm_easting'].min()

#print(df_movfree['utm_northing'].min())
#print(np.where( df_movfree['utm_northing'] == df_movfree['utm_northing'].min()))
#trueeasting=328121.11-df_statfree['utm_easting'].min()
#truenorthing=4689434.40-df_statfree['utm_northing'].min()


#plot 1 with circle around - stationary open space

'''
df_statfree[['utm_easting_std','utm_northing_std']].plot.scatter(x='utm_easting_std',y='utm_northing_std')
plt.xlabel("utm_easting_std in metres")
plt.ylabel("utm_northing_std in metres")
#mean stationary open
x1 = statistics.mean(df_statfree['utm_easting_std'])
y1 = statistics.mean(df_statfree['utm_northing_std'])
df_statfree['distance'] = np.sqrt((df_statfree['utm_easting_std'] - x1)**2 + (df_statfree['utm_northing_std'] - y1)**2)

# Find the maximum distance
max_distance = df_statfree['distance'].max()

c=plt.Circle((x1,y1), radius=max_distance, color='red', alpha=.3)
plt.axis("equal")
angles = linspace(0 * pi, 2 * pi, 100 )
r=max_distance
xs = x1+r*cos(angles)
ys = y1+r*sin(angles)
plt.gca().add_artist(c)
plt.show()
'''


#plot 2 - stationaty occluded


df_statoccl[['utm_easting_std','utm_northing_std']].plot.scatter(x='utm_easting_std',y='utm_northing_std')
plt.xlabel("utm_easting_std in metres")
plt.ylabel("utm_northing_std in metres")
x2 = statistics.mean(df_statoccl['utm_easting_std'])
y2 = statistics.mean(df_statoccl['utm_northing_std'])
df_statoccl['distance'] = np.sqrt((df_statoccl['utm_easting_std'] - x2)**2 + (df_statoccl['utm_northing_std'] - y2)**2)

# Find the maximum distance
max_distance = df_statoccl['distance'].max()

x_min = df_statfree['utm_easting_std'].min() - max_distance
x_max = df_statfree['utm_easting_std'].max() + max_distance
y_min = df_statfree['utm_northing_std'].min() - max_distance
y_max = df_statfree['utm_northing_std'].max() + max_distance

plt.xlim(x_min, x_max)
plt.ylim(y_min, y_max)

c=plt.Circle((x2,y2), radius=max_distance, color='red', alpha=.2)
angles = linspace(0 * pi, 2 * pi, 100 )
r=max_distance
xs = x2+r*cos(angles)
ys = y2+r*sin(angles)
plt.axis("equal")
plt.gca().add_artist(c)
plt.show()




#plot 3 - moving open space


'''
df_movfree[['utm_easting_std','utm_northing_std']].plot.scatter(x='utm_easting_std',y='utm_northing_std')
plt.xlabel("utm_easting_std in metres")
plt.ylabel("utm_northing_std in metres")
plt.show()
'''

'''
#slope, intercept, r_value, p_value, std_err = linregress(df_movfree['utm_easting_std'], df_movfree['utm_northing_std'])
#plt.plot(df_movfree['utm_easting_std'], df_movfree['utm_northing_std'], label='',color='black')
'''



#plot 4 - moving occluded

'''
df_movoccl[['utm_easting_std', 'utm_northing_std']].plot.scatter(x='utm_easting_std',y='utm_northing_std')
plt.xlabel("utm_easting_std in metres")
plt.ylabel("utm_northing_std in metres")
plt.show()
'''

'''

actual_utmN = pd.read_csv('/home/sriram/EECE5554/LAB2/src/data/utmN.csv') 
utmN = actual_utmN['actutmN']
predictedn=actual_utmN['utm_northing']

utme = actual_utmN['actutmE']
predictede=actual_utmN['utm_easting']


MSEN = np.square(np.subtract(utmN,predictedn)).mean()   
rsmeN = math.sqrt(MSEN)  
print("Root Mean Square Error:\n")  
print(rsmeN)

MSEE = np.square(np.subtract(utme,predictede)).mean()   
rsmee = math.sqrt(MSEE)  
print("Root Mean Square Error:\n")  
print(rsmee)
#stationary point latitude and logitude from google maps 42.33823011936888, -71.0864318171969 
#328121.11m east and utm-northing as 4689434.40m

#plt.scatter( (df_statfree['utm_northing_std'].min() + df_statfree['utm_northing_std'].max())/2 , (df_statfree['utm_easting_std'].min() + df_statfree['utm_easting_std'].max())/2, s=10000 ,  facecolors='none', edgecolors='blue' ) 
#plt.xlim( df_statfree['utm_northing_std'] , df_statfree['utm_northing_std'])
#plt.ylim( df_statfree['utm_easting_std'], df_statfree['utm_easting_std'])
#plt.show()
'''

'''fig, ax = bagpy.create_fig(1)
ax[0].scatter(x = 'Latitude_std', y = 'Longitude_std', data  = df_mov, s= 1, label = 'Latitude vs Longitude while walking')
ax[0].set(xlabel="Latitude_std",ylabel="Longitude_std")
'''

#plt.show()
