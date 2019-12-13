#######################################
## Cluster analisys for 19 species BRD
#######################################

library(pvclust)
library(vegan)
library(raster)
library(ggplot2)
library(rgdal)
library(betapart)


########### List and stack outputs CanESM2_45
sps <- list.files('/home/jbrj/Documentos/BRD_19/CanESM2_45/', pattern = "tif", full.names = T)
sps_19 <- stack(sps)

########### Create a matrix for species in a format to performe cluster analysis

can_45= matrix(NA, ncol = 19, nrow = 224)
colnames(can_45) <- names(sps_19)

for (i in 1:ncol(can_45)) {
  can_45[,i] <- getValues(sps_19[[i]])
}

write.csv(can_45,file="can_45.csv", sep = ",")
write.table(can_45,file="can_45.txt", sep = ",") 
