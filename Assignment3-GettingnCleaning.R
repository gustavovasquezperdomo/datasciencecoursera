# This file is to solve the assignment of the week 3 in GettingnCleaningData


setwd("C:/Users/UER/Documents/homework")


list.files()
i=1

# loading activity and feature names
setwd("C:/Users/UER/Documents/homework/UCI_Dataset")
activity_name <- read.table("activity_labels.txt")
feature_name  <- read.table("features.txt")

# Loading data_test and adding the column names to the data test
setwd("C:/Users/UER/Documents/homework/UCI_Dataset/test/")
data_test <- cbind(read.table("subject_test.txt"), read.table("y_test.txt"), read.table("X_test.txt"))
colnames(data_test) <- c("subject", "activity", 1:561)

# Binding subject and y train 
setwd("C:/Users/UER/Documents/homework/UCI_Dataset/train/")
data_train <- cbind(read.table("subject_train.txt"), read.table("y_train.txt"), read.table("X_train.txt"))
colnames(data_train) <- c("subject", "activity", 1:561)


setwd("C:/Users/UER/Documents/homework/UCI_Dataset/test/Inertial Signals")
file_list <- list.files()
for (i in length(file_list)){
  col_names <- c(colnames(data_test), rep(file_list[i], 128))  
  data_test <- cbind(data_test, read.table(file_list[i]))
  colnames(data_test) <- col_names
}

setwd("C:/Users/UER/Documents/homework/UCI_Dataset/Inertial Signals")
file_list <- list.files()
for (i in length(file_list)){
  col_names <- c(colnames(data_train), rep(file_list[i], 128))
  data_train <- cbind(data_train, read.table(file_list[i]))
  colnames(data_train) <- col_names # adding colnames to data train
}

colnames(data_test) <- colnames(data_train) # Copying colnames from data train to data tes
total_data <- rbind(data_test, data_train)


library(reshape2)
total_raw <- melt(total_data, id=1:563, na.rm=T)
toatl_raw$meassures_xyz <- as.real(str_)

  