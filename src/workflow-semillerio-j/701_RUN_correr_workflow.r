# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio-j/711_CA_reparar_dataset.r")
source("~/dm2023b/src/workflow-semillerio-j/721_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow-semillerio-j/731_FE_historia.r")
source("~/dm2023b/src/workflow-semillerio-j/741_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio-j/751_HT_lightgbm.r")
source("~/dm2023b/src/workflow-semillerio-j/795_ZZ_final.r")
