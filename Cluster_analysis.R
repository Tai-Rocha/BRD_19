########################################################
# Data prepare for cluster analysis for binary outputs
# 13 December 2019
# Author: Tainá Rocha
#########################################################

# Library
library(ggplot2)
library(pvclust)
library(rgdal)


############################################################  CanESM2 45 
##########  Data import

matrix_can45_ <- read.csv("./inputs_cluster/can_45.csv", sep = ",")

matrix_can45 <- matrix_can45_[,-1]

# Cluster analysis throught pvclust

cluster.upgma.jac.can.45 <-pvclust(matrix_can45, method.hclust ="average", method.dist = "binary", nboot=1000)
  plot(cluster.upgma.jac.can.45, main="CanESM_45")
    
## Save plot
   tiff(filename="CanESM_45.tif", res=150, units="cm", width=15, height=10, pointsize=12,
         bg="white")
    dev.off()
    
############################################################### CanESM2 85
##########  Data import
    
matrix_can85_ <- read.csv("./inputs_cluster/can_85.csv", sep = ",")
    
matrix_can85 <- matrix_can85_[,-1]
    
# Cluster analysis throught pvclust
    
cluster.upgma.jac.can.85 <-pvclust(matrix_can85, method.hclust ="average", method.dist = "binary", nboot=1000)
plot(cluster.upgma.jac.can.85, main="CanESM_85")
    
## Save plot
tiff(filename="CanESM_85.tif", res=150, units="cm", width=15, height=10, pointsize=12,
      bg="white")
      dev.off()
    
      
      
      
###########################################################  HadGEM2 45 
##########  Data import
      
matrix_had45_ <- read.csv("./inputs_cluster/hadgem_45.csv", sep = ",")
      
matrix_had45 <- matrix_had45_[,-1]
      
# Cluster analysis throught pvclust
      
  cluster.upgma.jac.had.45 <-pvclust(matrix_had45, method.hclust ="average", method.dist = "binary", nboot=1000)
        plot(cluster.upgma.jac.had.45, main="HadGEM2_45")
      
## Save plot
tiff(filename="HadGEM2_45.tif", res=150, units="cm", width=15, height=10, pointsize=12,
     bg="white")
    dev.off()
      
############################################################### HadGEM2 85
##########  Data import
      
matrix_had85_ <- read.csv("./inputs_cluster/hadgem_85.csv", sep = ",")
      
matrix_had85 <- matrix_had85_[,-1]
      
# Cluster analysis throught pvclust
      
cluster.upgma.jac.had.85 <-pvclust(matrix_had85, method.hclust ="average", method.dist = "binary", nboot=1000)
plot(cluster.upgma.jac.had.85, main="HadGEM2_85")
      
## Save plot
tiff(filename="HadGEM2_85.tif", res=150, units="cm", width=15, height=10, pointsize=12,
    bg="white")
    dev.off()
    
    
############################################################  MIROC 45 
##########  Data import
    
matrix_miroc45_ <- read.csv("./inputs_cluster/miroc_45.csv", sep = ",")
    
matrix_miroc45 <- matrix_miroc45_[,-1]
    
# Cluster analysis throught pvclust
    
cluster.upgma.jac.miroc.45 <-pvclust(matrix_miroc45, method.hclust ="average", method.dist = "binary", nboot=1000)
plot(cluster.upgma.jac.miroc.45, main="MIROC_45")
    
## Save plot
tiff(filename="MIROC_45.tif", res=150, units="cm", width=15, height=10, pointsize=12,
    bg="white")
    dev.off()
    
############################################################### MIROC 85
##########  Data import
    
matrix_miroc85_ <- read.csv("./inputs_cluster/miroc_85.csv", sep = ",")
    
matrix_miroc85 <- matrix_miroc85_[,-1]
    
# Cluster analysis throught pvclust
    
cluster.upgma.jac.miroc.85 <-pvclust(matrix_miroc85, method.hclust ="average", method.dist = "binary", nboot=1000)
plot(cluster.upgma.jac.miroc.85, main="MIROC_85")
    
## Save plot
tiff(filename="MIROC_85.tif", res=150, units="cm", width=15, height=10, pointsize=12,
    bg="white")
    dev.off()    
    