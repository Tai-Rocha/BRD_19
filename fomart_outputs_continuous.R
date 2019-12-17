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
canesm_45_continuo  <- list.files('/home/jbrj/Documentos/BRD_19/CanESM2_45_continuo/', pattern = "tif", full.names = T)
canesm_45_cont<- stack(canesm_45_continuo)

########### Create a matrix for species in a format to performe cluster analysis

can_45_cont= matrix(NA, ncol = 19, nrow = 224)
colnames(can_45_cont) <- names(canesm_45_cont)

for (i in 1:ncol(can_45_cont)) {
  can_45_cont[,i] <- getValues(canesm_45_cont[[i]])
}

write.csv(can_45_cont,file="canesm_45_cont.csv", sep = ",")
write.table(can_45_cont,file="canesm_45_cont.txt", sep = ",") 

############################################################### CanESM2 85

############ List

canesm_85_continuo  <- list.files('/home/jbrj/Documentos/BRD_19/CanESM2_85_continuo/', pattern = "tif", full.names = T)
canesm_85_cont<- stack(canesm_85_continuo)

########### Create a matrix for species in a format to performe cluster analysis

can_85_cont= matrix(NA, ncol = 19, nrow = 224)
colnames(can_85_cont) <- names(canesm_85_cont)

for (i in 1:ncol(can_85_cont)) {
  can_85_cont[,i] <- getValues(canesm_85_cont[[i]])
}

write.csv(can_85_cont,file="canesm_85_cont.csv", sep = ",")
write.table(can_85_cont,file="canesm_85_cont.txt", sep = ",") 




############################################################  HadGEM2 45 

########### List 
hadgem_45_continuo  <- list.files('/home/jbrj/Documentos/BRD_19/HadGEM2_45_continuo/', pattern = "tif", full.names = T)
hadgem_45_cont<- stack(hadgem_45_continuo)

########### Create a matrix for species in a format to performe cluster analysis

had_45_cont= matrix(NA, ncol = 19, nrow = 224)
colnames(had_45_cont) <- names(hadgem_45_cont)

for (i in 1:ncol(had_45_cont)) {
  had_45_cont[,i] <- getValues(hadgem_45_cont[[i]])
}

write.csv(had_45_cont,file="hadgem_45_cont.csv", sep = ",")
write.table(had_45_cont,file="hadgem_45_cont.txt", sep = ",") 

############################################################### HadGEM2 85

############ List

########### List 
hadgem_85_continuo  <- list.files('/home/jbrj/Documentos/BRD_19/HadGEM2_85_continuo/', pattern = "tif", full.names = T)
hadgem_85_cont<- stack(hadgem_85_continuo)

########### Create a matrix for species in a format to performe cluster analysis

had_85_cont= matrix(NA, ncol = 19, nrow = 224)
colnames(had_85_cont) <- names(hadgem_85_cont)

for (i in 1:ncol(had_85_cont)) {
  had_85_cont[,i] <- getValues(hadgem_85_cont[[i]])
}

write.csv(had_85_cont,file="hadgem_85_cont.csv", sep = ",")
write.table(had_85_cont,file="hadgem_85_cont.txt", sep = ",") 



############################################################  MIROC 45 

########### List 
miroc_45_continuo  <- list.files('/home/jbrj/Documentos/BRD_19/MIROC_45_continuo/', pattern = "tif", full.names = T)
miroc_45_cont<- stack(miroc_45_continuo)

########### Create a matrix for species in a format to performe cluster analysis

miroc_45= matrix(NA, ncol = 19, nrow = 224)
colnames(miroc_45) <- names(miroc_45_cont)

for (i in 1:ncol(miroc_45)) {
  miroc_45[,i] <- getValues(miroc_45_cont[[i]])
}

write.csv(miroc_45,file="miroc_45_cont.csv", sep = ",")
write.table(miroc_45,file="miroc_45_cont.txt", sep = ",") 

############################################################### MIROC 85

########### List 
miroc_85_continuo  <- list.files('/home/jbrj/Documentos/BRD_19/MIROC_85_continuo/', pattern = "tif", full.names = T)
miroc_85_cont<- stack(miroc_85_continuo)

########### Create a matrix for species in a format to performe cluster analysis

miroc_85= matrix(NA, ncol = 19, nrow = 224)
colnames(miroc_85) <- names(miroc_85_cont)

for (i in 1:ncol(miroc_85)) {
  miroc_85[,i] <- getValues(miroc_85_cont[[i]])
}

write.csv(miroc_85,file="miroc_85_cont.csv", sep = ",")
write.table(miroc_85,file="miroc_85_cont.txt", sep = ",") 


