library(shiny)
  
source("data_wrangling.R")

ui <- fluidPage(
  
  titlePanel("Example ShinyApp Using the American Community Survey Data"),
  
  sidebarLayout(
    
    sidebarPanel(
    
      selectInput("variable", "Graph Type:",
        c("Scatterplot" = "scater", "Bar Graph" = "bar")
      )),
      
      mainPanel(
        plotOutput("plot2")
      )
    
   )
  
)
 
server <- function(input, output) {
  
  output$plot2 <- renderPlot({
    
    if ((input$variable == "bar")) {
      first_graph
    }
    
    else if ((input$variable == "scater")) {
      
    }
    
  }, res=96)
  
}

shinyApp(ui = ui, server = server)