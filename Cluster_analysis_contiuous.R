#########################################
# Data prepare for cluster analysis
# 17 December 2019# Author: Tainá Rocha
#########################################

# Library
library(ggplot2)
library(pvclust)
library(rgdal)


############################################################  CanESM2 45 
##########  Data import

matrix_can45_continuo <- read.csv("./inputs_cluster/canesm_45_cont.csv", sep = ",")

matrix_can45_cont <- matrix_can45_continuo[,-1]

# Cluster analysis throught pvclust

cluster.upgma.euclidian.can.45 <-pvclust(matrix_can45_cont, method.hclust ="average", method.dist = "euclidean", nboot=1000)
plot(cluster.upgma.euclidian.can.45, main="CanESM_45")

## Save plot
tiff(filename="CanESM_45_continuo.tif", res=150, units="cm", width=15, height=10, pointsize=12,
     bg="white")
dev.off()

############################################################### CanESM2 85
##########  Data import

matrix_can85_continuo <- read.csv("./inputs_cluster/canesm_85_cont.csv", sep = ",")

matrix_can85_cont <- matrix_can85_continuo[,-1]

# Cluster analysis throught pvclust

cluster.upgma.euclidian.can.85 <-pvclust(matrix_can85_cont, method.hclust ="average", method.dist = "euclidean", nboot=1000)
plot(cluster.upgma.euclidian.can.85, main="CanESM_85")

## Save plot
tiff(filename="CanESM_85_continuo.tif", res=150, units="cm", width=15, height=10, pointsize=12,
     bg="white")
dev.off()


###########################################################  HadGEM2 45 
##########  Data import

matrix_had45_continuo <- read.csv("./inputs_cluster/hadgem_45_cont.csv", sep = ",")

matrix_had45_cont <- matrix_had45_continuo[,-1]

# Cluster analysis throught pvclust

cluster.upgma.euclidian.had.45 <-pvclust(matrix_had45_cont, method.hclust ="average", method.dist = "euclidean", nboot=1000)
plot(cluster.upgma.euclidian.had.45, main="HadGEM2_45")

## Save plot
tiff(filename="HadGEM2_45.tif", res=150, units="cm", width=15, height=10, pointsize=12,
     bg="white")
dev.off()

############################################################### HadGEM2 85
##########  Data import

matrix_had85_continuo <- read.csv("./inputs_cluster/hadgem_85_cont.csv", sep = ",")

matrix_had85_cont <- matrix_had85_continuo[,-1]

# Cluster analysis throught pvclust

cluster.upgma.euclidian.had.85 <-pvclust(matrix_had85_cont, method.hclust ="average", method.dist = "euclidean", nboot=1000)
plot(cluster.upgma.euclidian.had.85, main="HadGEM2_85")

## Save plot
tiff(filename="HadGEM2_85.tif", res=150, units="cm", width=15, height=10, pointsize=12,
     bg="white")
dev.off()


############################################################  MIROC 45 
##########  Data import

matrix_miroc45_continuo <- read.csv("./inputs_cluster/miroc_45_cont.csv", sep = ",")

matrix_miroc45_cont <- matrix_miroc45_continuo[,-1]

# Cluster analysis throught pvclust

cluster.upgma.euclidian.miroc.45 <-pvclust(matrix_miroc45_cont, method.hclust ="average", method.dist = "euclidean", nboot=1000)
plot(cluster.upgma.euclidian.miroc.45, main="MIROC_45")

## Save plot
tiff(filename="MIROC_45.tif", res=150, units="cm", width=15, height=10, pointsize=12,
     bg="white")
dev.off()

############################################################### MIROC 85
##########  Data import

matrix_miroc85_continuo <- read.csv("./inputs_cluster/miroc_85_cont.csv", sep = ",")

matrix_miroc85_cont <- matrix_miroc85_continuo[,-1]

# Cluster analysis throught pvclust

  cluster.upgma.euclidian.miroc.85 <-pvclust(matrix_miroc85_cont, method.hclust ="average", method.dist = "euclidean", nboot=1000)
  plot(cluster.upgma.euclidian.miroc.85, main="MIROC_85")

## Save plot
tiff(filename="MIROC_85.tif", res=150, units="cm", width=15, height=10, pointsize=12,
     bg="white")
dev.off()    
