#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(mapdeck)
library(sf)
library(tidyverse)
library(shiny)
library(shinydashboard)

shinyServer(
    
    function(input, output) {
        
        ## initialise a map
        output$map <- renderMapdeck({
            mapdeck(style = mapdeck_style("street")) %>%
                add_polygon(data = filter(df_acc, TIPO=='supermarket'),
                            fill_colour = "tiempo_Q2_cut",
                            fill_opacity = 0.5,
                            tooltip=c("print"),
                            auto_highlight = TRUE,
                            legend=TRUE,
                            legend_options=list(title='Minutos'),
                            na_colour = "#DADDE5"
                )
            
        })
        
        ## use an observer to add and remove layers
        observeEvent({input$supermarket},{
            
            mapdeck_update(map_id = "map") %>%
                add_polygon(
                    data = filter(df_acc, TIPO=='supermarket'),
                    fill_colour = "tiempo_Q2_cut",
                    fill_opacity = 0.5,
                    tooltip=c("print"),
                    auto_highlight = TRUE,
                    legend=TRUE,
                    legend_options=list(title='Minutos'),
                    na_colour = "#DADDE5"
                )
        }
        )
        observeEvent({input$grocery_or_supermarket},{
            
            mapdeck_update(map_id = "map") %>%
                add_polygon(
                    data = filter(df_acc, TIPO=='grocery_or_supermarket'),
                    fill_colour = "tiempo_Q2_cut",
                    fill_opacity = 0.5,
                    tooltip=c("print"),
                    auto_highlight = TRUE,
                    legend=TRUE,
                    legend_options=list(title='Minutos'),
                    na_colour = "#DADDE5"
                )
        }
        )
        
        observeEvent({input$convenience_store},{
            
            mapdeck_update(map_id = "map") %>%
                add_polygon(
                    data = filter(df_acc, TIPO=='convenience_store'),
                    fill_colour = "tiempo_Q2_cut",
                    fill_opacity = 0.5,
                    tooltip=c("print"),
                    auto_highlight = TRUE,
                    legend=TRUE,
                    legend_options=list(title='Minutos'),
                    na_colour = "#DADDE5"
                )
        }
        )
        
        observeEvent({input$atm},{
            
            mapdeck_update(map_id = "map") %>%
                add_polygon(
                    data = filter(df_acc, TIPO=='atm'),
                    fill_colour = "tiempo_Q2_cut",
                    fill_opacity = 0.5,
                    tooltip=c("print"),
                    auto_highlight = TRUE,
                    legend=TRUE,
                    legend_options=list(title='Minutos'),
                    na_colour = "#DADDE5"
                )
        }
        )
        
        
        observeEvent({input$bank},{
            
            mapdeck_update(map_id = "map") %>%
                add_polygon(
                    data = filter(df_acc, TIPO=='bank'),
                    fill_colour = "tiempo_Q2_cut",
                    fill_opacity = 0.5,
                    tooltip=c("print"),
                    auto_highlight = TRUE,
                    legend=TRUE,
                    legend_options=list(title='Minutos'),
                    na_colour = "#DADDE5"
                )
        }
        )
    }
    
    
    
)
