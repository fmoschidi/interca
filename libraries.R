#Checking and Installing and loading all required packages for all scripts
if(require("ggplot2")==F){
  install.packages("ggplot2",dependencies = TRUE)
}
if(require("plotly")==F){
  install.packages("plotly",dependencies = TRUE)
}
if(require("egg")==F){
  install.packages("egg",dependencies = TRUE)
}
if(require("tidyverse")==F){
  install.packages("tidyverse",dependencies = TRUE)
}
if(require("ggrepel")==F){
  install.packages("ggrepel",dependencies = TRUE)
}
if(require("shiny")==F){
  install.packages("shiny",dependencies = TRUE)
}
if(require("ca")==F){
  install.packages("ca",dependencies = TRUE)
}
if(require("FactoMineR")==F){
  install.packages("FactoMineR",dependencies = TRUE)
}
if(require("DT")==F){
  install.packages("DT",dependencies = TRUE)
}
if(require("this.path")==F){
  install.packages("this.path",dependencies = TRUE)
}
if(require("CAinterprTools")==F){
  install.packages("CAinterprTools",dependencies = TRUE)
}
if(require("factoextra")==F){
  install.packages("factoextra",dependencies = TRUE)
}
if(require("soc.ca")==F){
  install.packages("soc.ca")
}
if(require("pander")==F){
  install.packages("pander")
}
if(require("shinyFeedback")==F){
  install.packages("shinyFeedback")
}
if(require("waiter")==F){
  install.packages("waiter")
}
if(require("shinyWidgets")==F){
  install.packages("shinyWidgets")
}
if(require("readxl")==F){
  install.packages("readxl")
}
if(require("writexl")==F){
  install.packages("writexl")
}
if(require("readr")==F){
  install.packages("readr")
}
if(require("openxlsx")==F){
  install.packages("openxlsx")
}

#Loading libraries (please ensure that they are installed in your system )
library(tidyverse)
library(ggrepel)
library(ggplot2)
library(FactoMineR)
library(ca)
library(plotly)
library(this.path)
library(egg)
library(soc.ca)
library(factoextra)
library(CAinterprTools)
library(DT)
library(shiny)
library(readxl)
library(pander)
library(shinyFeedback)
library(waiter)
library(shinyWidgets)
library(writexl)
library(readr)
library(openxlsx)
(.packages())
# Get the directory from the path of the current file.
cur_dir2 = dirname(this.path())

# Set the working directory.
setwd(cur_dir2)
#acknowledgements and references
# Copyright (c) 2021 tidyverse authors

# # Permission is hereby granted, free of charge, to any person obtaining a copy of 
# this software and associated documentation files (the "Software"), to deal in the Software without restriction, 
# including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
# copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

#S. Lê, J. Josse, and F. Husson, “FactoMineR: 
#An R Package for Multivariate Analysis,” Journal 
#of Statistical Software, vol. 25, pp. 1–18, Mar. 2008, doi: 10.18637/jss.v025.i01.
#   The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

# Slowikowski, K., Schep, A., Hughes, S., Lukauskas, S., Irisson, J. O., Kamvar, Z. N., ... & Slowikowski, M. K. (2018). 
# Package ggrepel. Automatically position non-overlapping text labels with ‘ggplot2.

# Wickham, H., Chang, W., & Wickham, M. H. (2016). Package ‘ggplot2’. Create 
# elegant data visualisations using the grammar of graphics. Version, 2(1), 1-189.
# 
# Wickham, H., Bryan, J., Kalicinski, M., Valery, K., Leitienne, C., Colbert, B., 
# ... & Bryan, M. J. (2019). Package ‘readxl’. Computer Software]
# https://readxl. tidyverse. org.
# Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R, Grolemund G, Hayes A, Henry L, Hester J, Kuhn M, Pedersen TL, Miller E, Bache SM, Müller K, Ooms J, Robinson D, Seidel DP, Spinu V, Takahashi K, Vaughan D, Wilke C, Woo K, Yutani H (2019). “Welcome to the tidyverse.” Journal of Open Source Software, 4(43), 1686. doi:10.21105/joss.01686.
# To cite the package 'ca' in publications please use:
#   
#   Nenadic O, Greenacre M (2007). “Correspondence Analysis in R, with two- and three-dimensional graphics: The ca package.” Journal of Statistical Software, 20(3), 1-13. http://www.jstatsoft.org.
# Sievert C (2020). Interactive Web-Based Data Visualization with R, plotly, and shiny. Chapman and Hall/CRC. ISBN 9781138331457, https://plotly-r.com.
# Auguie, B., 2019. Extensions for 'ggplot2': Custom geom, custom themes, plot alignment, labelled panels, symmetric scales, and fixed panel size [R package egg version 0.4.5]. The Comprehensive R Archive Network. Available at: https://cran.r-project.org/web/packages/egg/index.html [Accessed August 31, 2022]. 
# 
# Anon, Package soc.ca. CRAN. Available at: https://cran.r-project.org/web/packages/soc.ca/index.html [Accessed August 31, 2022]. 
# 
# 
# https://cran.r-project.org/web/packages/this.path/index.html YEAR: 2022 COPYRIGHT HOLDER: Andrew Simmons(this.path package)
# Kassambara, A., & Mundt, F. (2021). Factoextra: Extract and Visualize the Results of Multivariate Data Analyses; R Package Version 1.0. 7. 2020.
# Alberti, G. (2015). CAinterprTools: An R package to help interpreting Correspondence Analysis’ results. SoftwareX, 1, 26-31.
# Xie, Y., Cheng, J., & Tan, X. (2018). DT: a wrapper of the JavaScript library ‘DataTables’. R package version 0.4.
# Chang, W., Cheng, J., Allaire, J. J., Xie, Y., & McPherson, J. (2015). Package ‘shiny’. See http://citeseerx. ist. psu. edu/viewdoc/download.