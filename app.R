library(shiny)

ui <- fluidPage(

    titlePanel("Connect Logout Example"),

    sidebarLayout(
        sidebarPanel(
        ),

        mainPanel(
            htmltools::tags$button("Logout", onclick = "location.href = '/rsc/connect/__logout__'"),
            htmltools::tags$a(href = "/rsc/connect/__logout__", tags$div("A div example", style = "width: 100px; height: 30px; background-color: red; color: black;"))
        )
    )
)

server <- function(input, output) {

}

shinyApp(ui = ui, server = server)
