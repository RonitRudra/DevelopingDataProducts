# Server file
library(e1071)
library(caret)
library(randomForest)
model <- train(Species~.,data=iris,method="rf")
pred <- function(a,b,c,d){
    data <- data.frame(Sepal.Length=a,Sepal.Width=b,Petal.Length=c,Petal.Width=d)
    levels(factor(predict(model,data)))
}

shinyServer(
    function(input,output){
        output$prediction <- renderPrint({pred(input$SL,input$SW,input$PL,input$PW)})    
    }
)
