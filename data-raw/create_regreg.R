# some code to go from raw data csv to a nice RDA object
# create_regreg

regreg <- readr::read_csv("./data-raw/register.csv")

regreg$phase <- forcats::as_factor(regreg$phase)

devtools::use_data(regreg, overwrite = TRUE)

rm(regreg)
