#' VMS data from the ICES VMS and Logbook Database
#'
#' VMS data from the ICES VMS and Logbook Database
#'
#' @name vms
#' @format csv file
#' @tafOriginator ICES
#' @tafYear 2020
#' @tafAccess Restricted
#' @tafSource script

library(icesTAF)
library(icesVMS)
library(icesVocab)

# find the ecoregion of interest
ecoregions <-
  gsub(
    " Ecoregion", "",
    getCodeList("Ecoregion")$Description
  )

baltic_eco <- grep("Baltic", ecoregions, value = TRUE)

# download
# note to access download a token for the current R session using
# update_token({ices username})

vms <- get_vms(ecoregion = baltic_eco)

# save
write.taf(vms)
