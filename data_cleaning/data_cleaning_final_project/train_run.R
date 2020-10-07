#TRAINING SET

#subject_train.txt file operation VERTICAL/ COLUMN
fileDir <- "data/UCI_HAR_Dataset/train/subject_train.txt"
conn <- file(fileDir, open = "r")
subject_train <- as.data.frame.numeric(lapply(readLines(conn), as.numeric))
subject_train <- cbind(subject_train, as.data.frame.character(rep("training", nrow(subject_train))))
close(conn)
colnames(subject_train) <- c("subject_ID", "observation_engaged")

#y_train.txt file operation VERTICAL/ COLUMN
activity_labels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
fileDir <- "data/UCI_HAR_Dataset/train/y_train.txt"
conn <- file(fileDir, open = "r")
y_train <- as.data.frame.numeric(lapply(readLines(conn), function(x) {
  activity_labels[as.numeric(x)]  
}))
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
filtered_features <- c(1,2)
filtered_features <- c(filtered_features, grep("mean|std", colnames(train_data)))
train_data <- train_data[, filtered_features]
###INERTIA SIGNALS

#1
### body_acc_x_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/body_acc_x_train.txt"
conn <- file(fileDir, open = "r")
body_acc_x_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(body_acc_x_train) <- c(1:ncol(body_acc_x_train))
rownames(body_acc_x_train) <- c(1:nrow(body_acc_x_train))
body_acc_x_train <- cbind(subject_train, body_acc_x_train)
close(conn)

#2
### body_acc_y_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/body_acc_y_train.txt"
conn <- file(fileDir, open = "r")
body_acc_y_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(body_acc_y_train) <- c(1:ncol(body_acc_y_train))
rownames(body_acc_y_train) <- c(1:nrow(body_acc_y_train))
body_acc_y_train <- cbind(subject_train, body_acc_y_train)
close(conn)

#3
### body_acc_z_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/body_acc_z_train.txt"
conn <- file(fileDir, open = "r")
body_acc_z_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(body_acc_z_train) <- c(1:ncol(body_acc_z_train))
rownames(body_acc_z_train) <- c(1:nrow(body_acc_z_train))
body_acc_z_train <- cbind(subject_train, body_acc_z_train)
close(conn)

#4
### body_gyro_x_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/body_gyro_x_train.txt"
conn <- file(fileDir, open = "r")
body_gyro_x_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(body_gyro_x_train) <- c(1:ncol(body_gyro_x_train))
rownames(body_gyro_x_train) <- c(1:nrow(body_gyro_x_train))
body_gyro_x_train <- cbind(subject_train, body_gyro_x_train)
close(conn)

#5
### body_gyro_y_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/body_gyro_y_train.txt"
conn <- file(fileDir, open = "r")
body_gyro_y_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(body_gyro_y_train) <- c(1:ncol(body_gyro_y_train))
rownames(body_gyro_y_train) <- c(1:nrow(body_gyro_y_train))
body_gyro_y_train <- cbind(subject_train, body_gyro_y_train)
close(conn)

#6
### body_gyro_z_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/body_gyro_z_train.txt"
conn <- file(fileDir, open = "r")
body_gyro_z_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(body_gyro_z_train) <- c(1:ncol(body_gyro_z_train))
rownames(body_gyro_z_train) <- c(1:nrow(body_gyro_z_train))
body_gyro_z_train <- cbind(subject_train, body_gyro_z_train)
close(conn)

#7
### total_acc_x_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/total_acc_x_train.txt"
conn <- file(fileDir, open = "r")
total_acc_x_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(total_acc_x_train) <- c(1:ncol(total_acc_x_train))
rownames(total_acc_x_train) <- c(1:nrow(total_acc_x_train))
total_acc_x_train <- cbind(subject_train, total_acc_x_train)
close(conn)

#8
### total_acc_y_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/total_acc_y_train.txt"
conn <- file(fileDir, open = "r")
total_acc_y_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(total_acc_y_train) <- c(1:ncol(total_acc_y_train))
rownames(total_acc_y_train) <- c(1:nrow(total_acc_y_train))
total_acc_y_train <- cbind(subject_train, total_acc_y_train)
close(conn)

#9
### total_acc_z_train.txt
fileDir <- "data/UCI_HAR_Dataset/train/Inertial_Signals/total_acc_z_train.txt"
conn <- file(fileDir, open = "r")
total_acc_z_train <- t(as.data.frame(lapply(readLines(conn),
                                         function(x) {
                                           retArray = c(numeric())
                                           for (i in unlist(strsplit(x, " "))) {
                                             retArray <- c(retArray, as.numeric(i))
                                           }
                                           retArray[!is.na(retArray)]
                                         })))
colnames(total_acc_z_train) <- c(1:ncol(total_acc_z_train))
rownames(total_acc_z_train) <- c(1:nrow(total_acc_z_train))
total_acc_z_train <- cbind(subject_train, total_acc_z_train)
close(conn)