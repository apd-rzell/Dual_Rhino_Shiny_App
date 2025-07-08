
# Shiny entry point. Do not edit.
#shiny::runApp("project-lib-versioned/R/rhino_shiny_template/app/view")

# Custom entry point
cat("Initializing app...")
library(dataiku)

# --- Source UI and server files ---
dkuSourceLibR('rhino_shiny_template/app/view/chart_ui.R')
dkuSourceLibR('rhino_shiny_template/app/view/chart_server.R')

#source("/project-lib-versioned/R/rhino_shiny_template/app/view/chart_ui.R")
#source("/project-lib-versioned/R/rhino_shiny_template/app/view/chart_server.R")

# --- Launch Shiny app ---
cat("App initialized successfully!")

shinyApp(ui = ui, server = server)
