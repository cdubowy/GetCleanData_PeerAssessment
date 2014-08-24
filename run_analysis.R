library("reshape2")

#load in test data
setwd("test")
X.test <- read.table("X_test.txt")
y.test <- read.table("y_test.txt")
subject.test <- read.table("subject_test.txt")

#use cbind to create complete train data frame
test <- cbind(subject.test, y.test, X.test)

#load in train data
setwd("../train")
X.train <- read.table("X_train.txt")
y.train <- read.table("y_train.txt")
subject.train <- read.table("subject_train.txt")

#use cbind to create complete train data frame
train <- cbind(subject.train, y.train, X.train)

#merge test and train data frames 
all <- rbind(test, train)

#convert subject and activity codes to factors
all[,1] <- factor(all[,1]) 
activity.labels <- read.table("../activity_labels.txt")
all[,2] <- factor(all[,2], labels = as.character(activity.labels[,2]))

#add appropriate column labels
features <- read.table("../features.txt")
column.labels <- c("subject", "activity.code", as.character(features[,2]))
names(all) <- column.labels

#keep only id variables and variables with 'mean' or 'std' in their names
keep <- c(1, 2, grep("mean\\(|std\\(", names(all)))
all <- all[,keep]

#use melt and cast to create tidy data set
melted <- melt(all, id.vars = c(1,2))
tidy <- dcast(melted, subject + activity.code ~ variable, mean)

