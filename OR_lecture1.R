
library(Rglpk)

library(lpSolve)
obj.fun=c(20,60)
cons=matrix(c(30,20,5,10,1,1),ncol = 2,byrow = TRUE)
con.dir=c("<=","<=",">=")
rhs=c(2700,850,95)
types=c("I","I")
##solving model
prod.sol=lp("max",obj.fun,cons,con.dir,rhs,types,compute.sens = TRUEs)
prod.sol$duals
prod.sol$solution
prod.sol$objval


##Question 2

obj.fun=c(5,2,-1)
cons=matrix(c(4,2,1,3,2,2,1,1,1),ncol = 3,byrow = TRUE)
con.dir=c("<=","<=","<=")
rhs=c(8,10,4)

##solving model
prod.sol=lp("max",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval


##Exercise
obj.fun=c(120,190,180)
cons=matrix(c(0.3,0.3,0.3,0.25,.5,.45,.3,0,0,0,.6,.5),ncol = 3,byrow = TRUE)
con.dir=c("<=","<=","<=")
rhs=c(800,800,570,540)

##solving model
prod.sol=lp("max",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval

##Exercise2

obj.fun=c(1,-3,2)
cons=matrix(c(3,-1,2,-4,3,8,-1,2,0),ncol = 3,byrow = TRUE)
con.dir=c("<=","<=","<=")
rhs=c(7,10,6)

##solving model
prod.sol=lp("min",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval

##Exercise3

obj.fun=c(30,20)
cons=matrix(c(2,1,1,1,1,0),ncol = 2,byrow = TRUE)
con.dir=c("<=","<=","<=")
rhs=c(100,80,40)

##solving model
prod.sol=lp("max",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval

## ASSIGNMENT 4
obj.fun=c(50,40,60)
cons=matrix(c(2,1,2,3,2,2,1,0,0),ncol = 3,byrow = TRUE)
con.dir=c("<=","<=",">=")
rhs=c(120,150,20)

##solving model
prod.sol=lp("max",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval

##Question 5

obj.fun=c(3,4)
cons=matrix(c(2,-3,1,2,1,1),ncol = 2,byrow = TRUE)
con.dir=c("<=",">=",">=")
rhs=c(6,10,6)

##solving model
prod.sol=lp("min",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval


###LAB SESSION
obj.fun=c(2,-1,1)
cons=matrix(c(1,-1,3,2,1,0,1,-1,-1),ncol = 3,byrow = TRUE)
con.dir=c("<=","<=","<=")
rhs=c(4,5,7)

##solving model
prod.sol=lp("max",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval

###LAB SESSION 2
obj.fun=c(8,5)
cons=matrix(c(1,1,9,5),ncol = 2,byrow = FALSE)
con.dir=c("<=","<=")
rhs=c(6,45)
types=c("I","I")
max=TRUE
##solving model
prod.sol=Rglpk_solve_LP(obj.fun,cons,con.dir,rhs,types=types,max=max)


###LAB SESSION 3
obj.fun=c(170,160,175,180,195)
cons=matrix(c(1,0,0,0,0,1,1,0,0,0,1,1,1,0,0,0,1,1,0,0,0,0,1,1,0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,1,0,0,0,0,1),ncol = 5,byrow = TRUE)
con.dir=c(">=",">=",">=",">=",">=",">=",">=",">=",">=")
rhs=c(48,79,87,64,73,82,43,52,15)

##solving model
prod.sol=lp("min",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval

###LAB SESSION 4
obj.fun=c(1,-4)
cons=matrix(c(2,-1,1,2,1,-1),ncol = 2,byrow = TRUE)
con.dir=c("<=",">=",">=")
rhs=c(3,1,1)

##solving model
prod.sol=lp("max",obj.fun,cons,con.dir,rhs,compute.sens = TRUE)
prod.sol$duals
prod.sol$solution
prod.sol$objval


