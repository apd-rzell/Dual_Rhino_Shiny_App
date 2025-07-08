# app/shiny_app.R
#
library(dataiku)

dkuSourceLibR('rhino_shiny_template/app/view/chart_server.R')
dkuSourceLibR('rhino_shiny_template/app/view/chart_ui.R')

shinyApp(ui, server)