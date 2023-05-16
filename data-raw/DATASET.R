## code to prepare `DATASET` dataset goes here

library(dplyr)
library(ggplot2)
library(here)
library(readxl)
library(sf)

# Load datasets

load(paste0(here(), "/data-raw/Barcelona_Polygons.RData"))
load(paste0(here(), "/data-raw/Madrid_Polygons.RData"))
load(paste0(here(), "/data-raw/Valencia_Polygons.RData"))

load(paste0(here(), "/data-raw/Barcelona_Sale.RData"))
load(paste0(here(), "/data-raw/Madrid_Sale.RData"))
load(paste0(here(), "/data-raw/Valencia_Sale.RData"))

load(paste0(here(), "/data-raw/Barcelona_POIS.RData"))
load(paste0(here(), "/data-raw/Madrid_POIS.RData"))
load(paste0(here(), "/data-raw/Valencia_POIS.RData"))

# Rename geometry columns
Barcelona_Polygons <- Barcelona_Polygons |>
  rename(geometry = WKT)

Madrid_Polygons <- Madrid_Polygons |>
  rename(geometry = WKT)

Valencia_Polygons <- Valencia_Polygons |>
  rename(geometry = WKT)

# Read data on properties by district
properties_by_district <- readxl::read_xlsx(paste0(here(), "/data-raw/Ads-by-District.xlsx"))

# Summarize districts, which are groups of geometries
Barcelona_Districts <- Barcelona_Polygons |>
  mutate(District = as.numeric(substr(LOCATIONID,23,24))) |>
  group_by(District) |>
  summarise(District = unique(District)) |>
  mutate(CITY = "Barcelona")

Madrid_Districts <- Madrid_Polygons |>
  mutate(District = as.numeric(substr(LOCATIONID,23,24))) |>
  group_by(District) |>
  summarise(District = unique(District)) |>
  mutate(CITY = "Madrid")

Valencia_Districts <- Valencia_Polygons |>
  mutate(District = as.numeric(substr(LOCATIONID,23,24))) |>
  group_by(District) |>
  summarise(District = unique(District)) |>
  mutate(CITY = "Valencia")


Districts <- rbind(Barcelona_Districts,
                   Madrid_Districts,
                   Valencia_Districts)

properties_by_district <- properties_by_district |>
  left_join(Districts,
            by = c("CITY", "District")) |>
  st_as_sf()


properties_by_district <- properties_by_district[!st_is_empty(properties_by_district),,drop=FALSE]

ggplot() +
  geom_sf(data = properties_by_district |>
            filter(CITY == "Barcelona") |>
            mutate(p = N/N_CADASTRE),
          aes(fill = p)) +
  scale_fill_fermenter(direction = 1)

ggplot() +
  geom_sf(data = properties_by_district |>
            filter(CITY == "Madrid") |>
            mutate(p = N/N_CADASTRE),
          aes(fill = p)) +
  scale_fill_fermenter(direction = 1)

ggplot() +
  geom_sf(data = properties_by_district |>
            filter(CITY == "Valencia") |>
            mutate(p = N/N_CADASTRE),
          aes(fill = p)) +
  scale_fill_fermenter(direction = 1)


# Save data
usethis::use_data(Barcelona_Polygons, overwrite = TRUE)
usethis::use_data(Barcelona_POIS, overwrite = TRUE)
usethis::use_data(Barcelona_Sale, overwrite = TRUE)

usethis::use_data(Madrid_Polygons, overwrite = TRUE)
usethis::use_data(Madrid_POIS, overwrite = TRUE)
usethis::use_data(Madrid_Sale, overwrite = TRUE)

usethis::use_data(Valencia_Polygons, overwrite = TRUE)
usethis::use_data(Valencia_POIS, overwrite = TRUE)
usethis::use_data(Valencia_Sale, overwrite = TRUE)

usethis::use_data(properties_by_district, overwrite = TRUE)
