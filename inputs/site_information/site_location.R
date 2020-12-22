#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Plot the locations of the five sites across the gradient
#
# By Bin Wang
# September 2020
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#Helpful guide:https://www.nceas.ucsb.edu/~frazier/RSpatialGuides/ggmap/ggmapCheatsheet.pdf

library(ggmap)

#downloading the raster:
MapImage <- get_map(location = c(left=-118.00, bottom=33.0, right=-116.0, top=34.0),
                    zoom=11, color = "color",source="stamen",maptype = "terrain", force=TRUE)

#site locations
Longitude = c(-116.38, -116.45, -117.70, -116.77, -116.75)
Latitude  = c(33.648,  33.610,  33.737,  33.683,  33.823)
data = data.frame(Longitude, Latitude)

#flux tower sites
#desert, Desert Chaparral (US-SCc), Pinyon/Juniper (US-SCw), Oak/Pine Forest (US-SCf), Coastal Sage (US-SCs),Grassland (US-SCg)
longitude = c(-116.37214, -116.4505, -116.455, -117.69460, -116.772,  -116.455) 
latitude  = c(33.651810,  33.6094,   33.605,   33.736548,  33.808,     33.605)
data_tower = data.frame(longitude,latitude) 

#Plotting the map
ggmap(MapImage) +
  geom_point(aes(x = longitude, y = latitude), data = data_tower, alpha = .5, color="blue", size = 3) +
  geom_point(aes(x = Longitude, y = Latitude), data = data, alpha = .5, color="red", size = 3) +
  annotate('text', x=-116.75, y=33.85, label = 'Subalpine', color = "black", size = 6) +
  annotate('text', x=-116.77, y=33.68, label = 'Pine-Oak',  color = "black", size = 6) +
  annotate('text', x=-116.45, y=33.58, label = 'Scrubland', color = "black", size = 6) +
  annotate('text', x=-116.38, y=33.70, label = 'Desert',    color = "black", size = 6) +
  annotate('text', x=-117.70, y=33.80, label = 'Grassland', color = "black", size = 6)

