source('libraries.R')
library(shiny)
library(waiter)
library(shinyFeedback)
library(shinyWidgets)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  useSweetAlert(),
 
    # Application title
    titlePanel("'Automatic' MCA interpretion"),

    
    sidebarLayout(
        sidebarPanel(tags$style(type="text/css",
                                ".shiny-output-error { visibility: hidden; }",
                                ".shiny-output-error:before { visibility: hidden; }"
        ),
        checkboxInput("help","Show help",value=FALSE),
        textOutput("help"),
          tags$h3("Load data"),
          tags$hr(),
          fileInput("file1", "Choose Excel File",
                    accept = c(
                      "text/csv",
                      "text/comma-separated-values,text/plain",
                      ".csv",".xlsx",".xls")),
        
        checkboxInput("show_scree","Show scree plot",value=T),
        
        
          
          numericInput("num_axes","Select number of axes",value=5),
        useWaitress(),
                  actionButton("run","Run interca",class="btn-primary")
   
        
        ),

        # Show a plot of the generated distribution
        mainPanel(
          tabsetPanel(
            
            tabPanel("Results",fluidRow(column(3,checkboxInput("show_coords","Show coordinates")),
                                        column(3,checkboxInput("show_ecoords","Show interpretive coordinates")),
                                        column(3,checkboxInput("show_ctr","Show ctr")),
                                        column(3,checkboxInput("show_cor","Show cor"))
                                        
                                        
                                        ),
                    
                     textOutput("show_coords_label"),     DT::dataTableOutput("results_coords"),
                     textOutput("show_ecoords_label"),DT::dataTableOutput("results_ecoords"),
                     renderText("show_ctr_label"),DT::dataTableOutput("results_ctr"),
                     renderText("show_cor_label"),DT::dataTableOutput("results_cor"),
                     conditionalPanel("input$show_scree==T",plotOutput("scree")),
                     
                     ),
            tabPanel("Interpretive axis",
                     fluidRow(
                       
                       column(6,useShinyFeedback(),
                              numericInput("which.axis","Select which axis to render",value=NA),
                              textOutput("validation"),
                              checkboxInput("cb_slider_axis","Manual filtering",value = T),
                              sliderInput("slider_axis","Filter points",value = 50,min=0,max=100),
                              actionButton("do_axis","Create axis and table",class="btn-success"),
                              downloadButton("report", "Generate report",class="btn-info")),
                       column(6,DT::dataTableOutput("slider_axis_table"))
                       
                     )
                     ,
                     plotOutput("axis")
                     
                     ),
            tabPanel("Interpretive plane",
                     fluidRow(
                       column(6,  numericInput("which.xaxis","Select which axis will be the x-axis",value=NA),
                              numericInput("which.yaxis","Select which axis will be the y-axis",value=NA),
                              checkboxInput("cb_slider_plane","Manual filtering",value = T),
                              sliderInput("slider_plane","Filter points",value = 50,min=0,max=100),
                              actionButton("do_plane","Create plane and table",class="btn-success"),
                              downloadButton("report_plane", "Generate report",class="btn-info")),
                       column(6,DT::dataTableOutput("slider_plane_table"))
                     )
                   ,
                     
                     
                     plotOutput("plane")
                     
                     ),
            tabPanel("Data",DT::dataTableOutput("contents"))
          )
          
        )
    )
))
