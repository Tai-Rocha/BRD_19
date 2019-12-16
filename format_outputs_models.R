#######################################
# Data prepare for cluster analysis
# 13 December 2019
# Author: Tainá Rocha
#######################################
      
library(raster)
library(ggplot2)
library(rgdal)

############################################################  CanESM2 45 

########### List 
canesm_45_sps_19  <- list.files('/home/jbrj/Documentos/BRD_19/CanESM2_45/', pattern = "tif", full.names = T)
canesm_45<- stack(canesm_45_sps_19)

########### Create a matrix for species in a format to performe cluster analysis

can_45= matrix(NA, ncol = 19, nrow = 224)
colnames(can_45) <- names(canesm_45)

for (i in 1:ncol(can_45)) {
  can_45[,i] <- getValues(canesm_45[[i]])
}

write.csv(can_45,file="can_45.csv", sep = ",")
write.table(can_45,file="can_45.txt", sep = ",") 

############################################################### CanESM2 85

############ List

canesm_85_sps_19 <- list.files('/home/jbrj/Documentos/BRD_19/CanESM2_85/', pattern = "tif", full.names = T)
canesm_85 <- stack(canesm_85_sps_19)

########### Create a matrix for species in a format to performe cluster analysis

can_85= matrix(NA, ncol = 19, nrow = 224)
colnames(can_85) <- names(canesm_85)

for (i in 1:ncol(can_85)) {
  can_85[,i] <- getValues(canesm_85[[i]])
}

write.csv(can_85,file="can_85.csv", sep = ",")
write.table(can_85,file="can_85.txt", sep = ",") 



############################################################  HadGEM2 45 

########### List 
hadgem_45_sps_19  <- list.files('/home/jbrj/Documentos/BRD_19/HadGEM2_45/', pattern = "tif", full.names = T)
hadgem_45<- stack(hadgem_45_sps_19)

########### Create a matrix for species in a format to performe cluster analysis

had_45= matrix(NA, ncol = 19, nrow = 224)
colnames(had_45) <- names(hadgem_45)

for (i in 1:ncol(had_45)) {
  had_45[,i] <- getValues(hadgem_45[[i]])
}

write.csv(had_45,file="hadgem_45.csv", sep = ",")
write.table(had_45,file="hadgem_45.txt", sep = ",") 

############################################################### HadGEM2 85

############ List

hadgem_85_sps_19 <- list.files('/home/jbrj/Documentos/BRD_19/HadGEM2_85/', pattern = "tif", full.names = T)
hadgem_85 <- stack(hadgem_85_sps_19)

########### Create a matrix for species in a format to performe cluster analysis

had_85= matrix(NA, ncol = 19, nrow = 224)
colnames(had_85) <- names(hadgem_85)

for (i in 1:ncol(had_85)) {
  had_85[,i] <- getValues(hadgem_85[[i]])
}

write.csv(had_85,file="hadgem_85.csv", sep = ",")
write.table(had_85,file="hadgem_85.txt", sep = ",")

  


############################################################  MIROC 45 

########### List 
miroc_45_sps_19  <- list.files('/home/jbrj/Documentos/BRD_19/MIROC_45/', pattern = "tif", full.names = T)
miroc_45<- stack(miroc_45_sps_19)

########### Create a matrix for species in a format to performe cluster analysis

mir_45= matrix(NA, ncol = 19, nrow = 224)
colnames(mir_45) <- names(miroc_45)

for (i in 1:ncol(mir_45)) {
  mir_45[,i] <- getValues(miroc_45[[i]])
}

write.csv(mir_45,file="miroc_45.csv", sep = ",")
write.table(mir_45,file="miroc_45.txt", sep = ",") 

############################################################### MIROC 85

############ List

miroc_85_sps_19 <- list.files('/home/jbrj/Documentos/BRD_19/MIROC_85/', pattern = "tif", full.names = T)
miroc_85 <- stack(miroc_85_sps_19)

########### Create a matrix for species in a format to performe cluster analysis

mir_85= matrix(NA, ncol = 19, nrow = 224)
colnames(mir_85) <- names(miroc_85)

for (i in 1:ncol(mir_85)) {
  mir_85[,i] <- getValues(miroc_85[[i]])
}

write.csv(mir_85,file="miroc_85.csv", sep = ",")
write.table(mir_85,file="miroc_85.txt", sep = ",")

