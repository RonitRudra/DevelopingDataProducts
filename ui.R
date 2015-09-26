# UI file
library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Iris(Plant) Species Predictor"),
    sidebarPanel(
        numericInput("SL","Sepal Length",value = 5.800,min = 4.300,max = 7.900,step = 0.001),
        numericInput("SW","Sepal Width",value = 3.000,min = 2.000,max = 4.300,step = 0.001),
        numericInput("PL","Petal Length",value = 4.350,min = 1.000,max = 6.900,step = 0.001),
        numericInput("PW","Pepal Width",value = 1.300,min = 0.100,max = 2.500,step = 0.001),
        submitButton("Submit")
        ),
    mainPanel(
        h2("This app predicts the species of the Iris plant based on data provided by you.."),
        h3("The output of the prediction algorithm will be any one of the following species of Iris:"),
        h4("1. Setosa"),
        h4("2. Versicolor"),
        h4("3. Virginica"),
        h3("The species depends on the 4 attributes whose values can be changed from the left sidebar."),
        h3("The Prediction Results are:"),
        verbatimTextOutput("prediction")
        )
    )
)