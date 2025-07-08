# app/view/chart_server.R
box::use(
  reactable,
  shiny[moduleServer, renderText],
)

#server <- function(input, output, session) {
server <- function(id) {
  moduleServer(id, server <- function(input, output, session) {
    data <- rhino::rhinos
    output$tbl_name <- renderText(paste("You entered table name: ", input$name_txt))
    output$table_data <- reactable$renderReactable(reactable$reactable(data))
  })
}
