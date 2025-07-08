# app/view/chart_ui.R
box::use(
  reactable,
  shiny[h3, NS, fluidPage, textInput, textOutput],
)

ui <- function(id) {
  ns <- NS(id)
  #id <- "pg1"
  fluidPage(id = id,
            textInput(ns("name_txt"), "Table name?"),            
            h3(textOutput(ns("tbl_name"))),
            reactable$reactableOutput(ns("table_data"))
  )
}