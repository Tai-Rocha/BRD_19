################ Final Models Luiza Project

library(modleR)
library(rJava)
library(dismo)
library(raster)

registros = read.table("./data/ocorrencias.csv", h = T, sep = ",")
registros

especies <- unique(registros$sp)


################ Final Models present

for (i in 1:length(especies)) {
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  final_model(species_name = especie,
              select_partitions = TRUE,
              threshold = c("spec_sens"),
              scale_models = FALSE,
              select_par = "TSS",
              select_par_val = 0.6,
              consensus_level = 0.5,
              models_dir = "./results",
              final_dir = "final_models",
              proj_dir = "present",
              which_models = c("raw_mean"),
              uncertainty = T, 
              overwrite = T)
}

################ Final Models rcp45_CanESM2  

for (i in 1:length(especies)) {
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  final_model(species_name = especie,
              select_partitions = TRUE,
              threshold = c("spec_sens"),
              scale_models = FALSE,
              select_par = "TSS",
              select_par_val = 0,
              consensus_level = 0.5,
              models_dir = "./results",
              final_dir = "final_models",
              proj_dir = "rcp45_CanESM2",
              which_models = c("raw_mean"),
              uncertainty = T, 
              overwrite = T)
}


################ Final Models rcp45_HadGEM2  


for (i in 1:length(especies)) {
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  final_model(species_name = especie,
              select_partitions = TRUE,
              threshold = c("spec_sens"),
              scale_models = FALSE,
              select_par = "TSS",
              select_par_val = 0,
              consensus_level = 0.5,
              models_dir = "./results",
              final_dir = "final_models",
              proj_dir = "rcp45_HadGEM2",
              which_models = c("raw_mean"),
              uncertainty = T, 
              overwrite = T)
}


################ Final Models rcp45_MIROC

for (i in 1:length(especies)) {
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  final_model(species_name = especie,
              select_partitions = TRUE,
              threshold = c("spec_sens"),
              scale_models = FALSE,
              select_par = "TSS",
              select_par_val = 0,
              consensus_level = 0.5,
              models_dir = "./results",
              final_dir = "final_models",
              proj_dir = "rcp45_MIROC",
              which_models = c("raw_mean"),
              uncertainty = T, 
              overwrite = T)
}

################ Final Models rcp85_CanESM2  

for (i in 1:length(especies)) {
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  final_model(species_name = especie,
              select_partitions = TRUE,
              threshold = c("spec_sens"),
              scale_models = FALSE,
              select_par = "TSS",
              select_par_val = 0,
              consensus_level = 0.5,
              models_dir = "./results",
              final_dir = "final_models",
              proj_dir = "rcp85_CanESM2",
              which_models = c("raw_mean"),
              uncertainty = T, 
              overwrite = T)
}


################ Final Models rcp85_HadGEM2  


for (i in 1:length(especies)) {
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  final_model(species_name = especie,
              select_partitions = TRUE,
              threshold = c("spec_sens"),
              scale_models = FALSE,
              select_par = "TSS",
              select_par_val = 0,
              consensus_level = 0.5,
              models_dir = "./results",
              final_dir = "final_models",
              proj_dir = "rcp85_HadGEM2",
              which_models = c("raw_mean"),
              uncertainty = T, 
              overwrite = T)
}


################ Final Models rcp85_MIROC

for (i in 1:length(especies)) {
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  final_model(species_name = especie,
              select_partitions = TRUE,
              threshold = c("spec_sens"),
              scale_models = FALSE,
              select_par = "TSS",
              select_par_val = 0,
              consensus_level = 0.5,
              models_dir = "./results",
              final_dir = "final_models",
              proj_dir = "rcp85_MIROC",
              which_models = c("raw_mean"),
              uncertainty = T, 
              overwrite = T)
}
