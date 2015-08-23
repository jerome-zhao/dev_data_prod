library(UsingR)

data(diamond)

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({

      
      
      num <- input$num
      diamond_sample <- diamond[1:num,]
      plot(diamond_sample)
      fit <- lm(price ~ carat, data = diamond_sample)
      abline(fit, lwd=2)
      output$intercept <- renderPrint({as.numeric(coef(fit)[1])})
      output$slope <- renderPrint({as.numeric(coef(fit)[2])})
      
    })
  }
)