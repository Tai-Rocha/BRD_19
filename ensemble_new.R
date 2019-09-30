################ Ensmble Models Luiza Project

library(modleR)
library(rJava)
library(dismo)
library(raster)

registros = read.table("./data/ocorrencias.csv", h = T, sep = ",")
registros

especies <- unique(registros$sp)

################ Ensemble Models rcp45_CanESM2  

for (i in 1:length(especies)){
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  ensemble_rcp45_CanESM2 <- ensemble_model(species_name = especie,
                 occurrences = occs,
                 which_models = c("raw_mean"),
                 scale_models = T,
                 final_dir = "final_models",
                 ensemble_dir = "ensemble",
                 proj_dir = "rcp45_CanESM2",
                 write_png = T,
                 models_dir = "./results"
                 )
}

################ Ensemble Models rcp45_HadGEM2

for (i in 1:length(especies)){
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  ensemble_rcp45_HadGEM2 <- ensemble_model(species_name = especie,
                                           occurrences = occs,
                                           which_models = c("raw_mean"),
                                           scale_models = T,
                                           final_dir = "final_models",
                                           ensemble_dir = "ensemble",
                                           proj_dir = "rcp45_HadGEM2",
                                           write_png = T,
                                           models_dir = "./results")
}

################ Ensemble Models rcp45_MIROC

for (i in 1:length(especies)){
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
   ensemble_rcp45_MIROC <- ensemble_model(species_name = especie,
                                          occurrences = occs,
                                          which_models = c("raw_mean"),
                                          scale_models = T,
                                          final_dir = "final_models",
                                          ensemble_dir = "ensemble",
                                          proj_dir = "rcp45_MIROC",
                                          write_png = T,
                                          models_dir = "./results")
}



################ Ensemble Models rcp85_CanESM2  

for (i in 1:length(especies)){
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  ensemble_rcp85_CanESM2 <- ensemble_model(species_name = especie,
                                           occurrences = occs,
                                           which_models = c("raw_mean"),
                                           scale_models = T,
                                           final_dir = "final_models",
                                           ensemble_dir = "ensemble",
                                           proj_dir = "rcp85_CanESM2",
                                           write_png = T,
                                           models_dir = "./results"
  )
}

################ Ensemble Models rcp85_HadGEM2

for (i in 1:length(especies)){
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  ensemble_rcp85_HadGEM2 <- ensemble_model(species_name = especie,
                                           occurrences = occs,
                                           which_models = c("raw_mean"),
                                           scale_models = T,
                                           final_dir = "final_models",
                                           ensemble_dir = "ensemble",
                                           proj_dir = "rcp85_HadGEM2",
                                           write_png = T,
                                           models_dir = "./results")
}

################ Ensemble Models rcp85_MIROC

for (i in 1:length(especies)){
  especie <- especies[i]
  occs <- registros[registros$sp == especie, c("lon", "lat")]
  ensemble_rcp85_MIROC <- ensemble_model(species_name = especie,
                                         occurrences = occs,
                                         which_models = c("raw_mean"),
                                         scale_models = T,
                                         final_dir = "final_models",
                                         ensemble_dir = "ensemble",
                                         proj_dir = "rcp85_MIROC",
                                         write_png = T,
                                         models_dir = "./results")
}