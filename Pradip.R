
my_file <-"C:/My_work/Personal/GDrive/Study/GyanVriksh_Course-master/Assignment/MBA Starting Salaries Data.csv"

dataFile <- read.csv(my_file)
dataFile$age
hist(dataFile$age)

gTotalMean <-mean(dataFile$gmat_tot)
gTotalMedian <-median(dataFile$gmat_tot)
gTotalMode <-mode(dataFile$gmat_tot)

gTotalMean
gTotalMedian
gTotalMode

#Histogram of salary
hist(dataFile$salary)

#summery of salary
summary(dataFile$salary)

#data of salary
gSalary <-dataFile$salary

#FD of salary
numClassforSal <- 1+ (3.322* log(length(gSalary)))
#classes = seq(0,max(gSalary), by=(max(gSalary)/numClassforSal))

classes = seq(0,max(gSalary), by=numClassforSal)

sal.cut= cut(gSalary, classes,right = FALSE)
sal.freq=table(sal.cut)

#salary frequency distribution
sal.freq

