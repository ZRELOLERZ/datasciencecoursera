library(writexl)
library(dplyr)
###############################################
############# TRAINING SET ####################
###############################################

#subject_train.txt file operation VERTICAL/ COLUMN
fileDir <- "data/UCI_HAR_Dataset/train/subject_train.txt"
conn <- file(fileDir, open = "r")
subject_train <- as.data.frame.numeric(unlist(lapply(readLines(conn), as.numeric)))
subject_train <- cbind(subject_train, as.data.frame.character(rep("TRAINING", nrow(subject_train))))
close(conn)
colnames(subject_train) <- c("subject_ID", "observation_engaged")

#y_train.txt file operation VERTICAL/ COLUMN
activity_labels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
fileDir <- "data/UCI_HAR_Dataset/train/y_train.txt"
conn <- file(fileDir, open = "r")
y_train <- as.data.frame.numeric(unlist(lapply(readLines(conn), function(x) {
  activity_labels[as.numeric(x)]  
})))
colnames(y_train) <- c("activity_type")
close(conn)

#features.txt file operation HORIZONTAL
fileDir <- "data/UCI_HAR_Dataset/features.txt"
conn <- file(fileDir, open = "r")
features <- as.data.frame.character(lapply(readLines(conn),
                                           function(x) {
                                             #split and flatten line
                                             splitLine <-
                                               unlist(strsplit(x, " "))
                                             #return second column only
                                             splitLine[2]
                                           }))
close(conn)
colnames(features) <- c("features")

#VERTICAL
#X_train.txt file operation
fileDir <- "data/UCI_HAR_Dataset/train/X_train.txt"
conn <- file(fileDir, open = "r")
x_train <- t(as.data.frame(lapply(readLines(conn),
                                  function(x) {
                                    retArray = c(numeric())
                                    for (i in unlist(strsplit(x, " "))) {
                                      retArray <- c(retArray, as.numeric(i))
                                    }
                                    retArray[!is.na(retArray)]
                                  })))
close(conn)
colnames(x_train) <- features[,1]
rownames(x_train) <- c(1:nrow(x_train))

###BIND EVERYTHING
train_data <- cbind(subject_train, y_train, x_train)

##filter columns by std and mean
filtered_features <- c(1,2,3)
filtered_features <- c(filtered_features, grep("mean|std", colnames(train_data)))
train_data <- train_data[, filtered_features]

###############################################
############## TESTING SET ####################
###############################################

## subject_test.txt file op

fileDir <- "data/UCI_HAR_Dataset/test/subject_test.txt"
conn <- file(fileDir, open = "r")
subject_test <- as.data.frame.numeric(unlist(lapply(readLines(conn), as.numeric)))
subject_test <- cbind(subject_test, as.data.frame.character(rep("TESTING", nrow(subject_test))))
close(conn)
colnames(subject_test) <- c("subject_ID", "observation_engaged")

##y_test.txt file operation VERTICAL/ COLUMN

fileDir <- "data/UCI_HAR_Dataset/test/y_test.txt"
conn <- file(fileDir, open = "r")
y_test <- as.data.frame.numeric(unlist(lapply(readLines(conn), function(x) {
  activity_labels[as.numeric(x)]
})))
colnames(y_test) <- c("activity_type")
close(conn)

#X_test.txt file operation
fileDir <- "data/UCI_HAR_Dataset/test/x_test.txt"
conn <- file(fileDir, open = "r")
x_test <- t(as.data.frame(lapply(readLines(conn),
                                  function(x) {
                                    retArray = c(numeric())
                                    for (i in unlist(strsplit(x, " "))) {
                                      retArray <- c(retArray, as.numeric(i))
                                    }
                                    retArray[!is.na(retArray)]
                                  })))
close(conn)
colnames(x_test) <- features[,1]
rownames(x_test) <- c(1:nrow(x_test))

###BIND EVERYTHING
test_data <- cbind(subject_test, y_test, x_test)

##filter columns by std and mean
filtered_features <- c(1,2,3)
filtered_features <- c(filtered_features, grep("mean|std", colnames(test_data)))
test_data <- test_data[,filtered_features]

############################################################
########### JOINING TRAINING AND TESTING DATA ##############
############################################################

final_dataset <- rbind(train_data, test_data)


############################################################
################### SUMMARY OPERATION ######################
############################################################

summary_data <- final_dataset %>% 
  group_by(subject_ID, activity_type, observation_engaged) %>%
  summarise_at(c(1:(ncol(final_dataset)-3)), mean)


###########################################################
################# WRITE OUT DATA TO FILE ##################
###########################################################

write_xlsx(final_dataset, "train_and_test_dataset.xlsx")
write_xlsx(summary_data, "dataset_summmary.xlsx")
write.table(summary_data, "summary_data.txt", row.names = FALSE)
