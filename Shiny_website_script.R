install.packages('rsconnect')
library(rsconnect)
rsconnect::setAccountInfo(name='simondjs', token='5D65BC90D6E22D04F77EFD6547D18625', secret='oLxJ3IHvh8J22jHCkYrBfXd8IfVulLyn0e7ls1Hq')

rsconnect::deployApp('/Users/simonschulze/Desktop/R/Coding Club/Github local saves/tutorial-simondjs/Final_Tutorial.Rmd')
