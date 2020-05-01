library(shiny)

function_ex <- "
function reload_page() {
  window.location.reload();
}
function example_logout() {
  $.ajax('https://colorado.rstudio.com/rsc/__logout__')
  setTimeout(reload_page, 500);
}"

ui <- fluidPage(

    titlePanel("Connect Logout Example"),
    tags$script(HTML(function_ex)),

    sidebarLayout(
        sidebarPanel(
        ),

        mainPanel(
            htmltools::tags$button("Logout", onclick = "location.href = '/rsc/connect/__logout__'"),
            htmltools::tags$a(href = "/rsc/connect/__logout__", tags$div("A div example", style = "width: 100px; height: 30px; background-color: red; color: black;")),
            htmltools::tags$button(
                "Hidden Logout",
                onclick = "example_logout();"
            )
        )
    )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
