library(mapdeck)
library(sf)
library(tidyverse)
library(shiny)
library(shinydashboard)

df_acc <- read_rds("./data/distancias_radio.RDS")
token_ <- "pk.eyJ1IjoiZ3Jvc2F0aSIsImEiOiJjazg3dm03Ym8wMWxtM3JzOGFwdDM3MmF2In0.7vM2hlzcHO-bTJxaaiv-GA"
set_token(token_)
