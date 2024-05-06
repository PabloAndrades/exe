library(xtable)
A <- matrix(sample(0:10, 4, replace = TRUE),2,2, TRUE)
B <- matrix(sample(0:10, 4, replace = TRUE),2,2, TRUE)



latex_matrix <- function(x){
  a <- xtable(x,align=rep("",ncol(x)+1), digits = 0)
  print(a, floating=FALSE, tabular.environment="pmatrix", 
        hline.after=NULL, include.rownames=FALSE, include.colnames=FALSE)
}

latex_matrix(A)
latex_matrix(B)     


