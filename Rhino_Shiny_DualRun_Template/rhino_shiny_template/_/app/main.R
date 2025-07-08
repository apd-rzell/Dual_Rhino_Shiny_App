# app/main.R
#
box::use(
  shiny[bootstrapPage, moduleServer, NS, shinyApp],
)

box::use(
  view/chart_ui,
  view/chart_server,  # Add new hist module
)

ui <- chart_ui$ui
server <- chart_server$server