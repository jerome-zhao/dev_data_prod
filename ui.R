library(shiny)




shinyUI(pageWithSidebar(
  headerPanel("Sample Size"),
  sidebarPanel(
    sliderInput('num', 'Number of Samples',value = 20, min = 10, max = 48, step = 1,)
  ),
  mainPanel(
    h4('Documentation:'),
    h5('This app works on the diamond data set.'),
    h5('The data can be loaded in R using data(diamond) command.'),
    h5('This app shows the change of linear regression coefficients along with the size change of sample data.'),
    h5('On the left panel, user can adjust the sample data size'),
    h5('The change of linear model and its coefficients can be found on the right side as below.'),
    h4('-------------'),
    plotOutput('newHist'),
    h4('The intercept is'),
    verbatimTextOutput("intercept"),
    h4('The slope is'),
    verbatimTextOutput("slope")
  )
))