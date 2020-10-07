#TEST SET

## subject_test.txt file op

fileDir <- "data/UCI_HAR_Dataset/test/subject_test.txt"
conn <- file(fileDir, open = "r")
subject_test <- as.data.frame.numeric(lapply(readLines(conn), as.numeric))
subject_test <- cbind(subject_test, as.data.frame.character(rep("testing", nrow(subject_test))))
close(conn)
colnames(subject_test) <- c("subject_ID", "observation_engaged")

##y_test.txt file operation VERTICAL/ COLUMN

fileDir <- "data/UCI_HAR_Dataset/test/y_test.txt"
conn <- file(fileDir, open = "r")
y_test <- as.data.frame.numeric(lapply(readLines(conn), function(x) {
  activity_labels[as.numeric(x)]
}))
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
filtered_features <- c(1,2)
filtered_features <- c(filtered_features, grep("mean|std", colnames(test_data)))
test_data <- test_data[,filtered_features]

###INERTIA SIGNALS

#1
### body_acc_x_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/body_acc_x_test.txt"
conn <- file(fileDir, open = "r")
body_acc_x_test <- t(as.data.frame(lapply(readLines(conn),
                                           function(x) {
                                             retArray = c(numeric())
                                             for (i in unlist(strsplit(x, " "))) {
                                               retArray <- c(retArray, as.numeric(i))
                                             }
                                             retArray[!is.na(retArray)]
                                           })))
colnames(body_acc_x_test) <- c(1:ncol(body_acc_x_test))
rownames(body_acc_x_test) <- c(1:nrow(body_acc_x_test))
body_acc_x_test <- cbind(subject_test, body_acc_x_test)
close(conn)

#2
### body_acc_y_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/body_acc_y_test.txt"
conn <- file(fileDir, open = "r")
body_acc_y_test <- t(as.data.frame(lapply(readLines(conn),
                                           function(x) {
                                             retArray = c(numeric())
                                             for (i in unlist(strsplit(x, " "))) {
                                               retArray <- c(retArray, as.numeric(i))
                                             }
                                             retArray[!is.na(retArray)]
                                           })))
colnames(body_acc_y_test) <- c(1:ncol(body_acc_y_test))
rownames(body_acc_y_test) <- c(1:nrow(body_acc_y_test))
body_acc_y_test <- cbind(subject_test, body_acc_y_test)
close(conn)

#3
### body_acc_z_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/body_acc_z_test.txt"
conn <- file(fileDir, open = "r")
body_acc_z_test <- t(as.data.frame(lapply(readLines(conn),
                                           function(x) {
                                             retArray = c(numeric())
                                             for (i in unlist(strsplit(x, " "))) {
                                               retArray <- c(retArray, as.numeric(i))
                                             }
                                             retArray[!is.na(retArray)]
                                           })))
colnames(body_acc_z_test) <- c(1:ncol(body_acc_z_test))
rownames(body_acc_z_test) <- c(1:nrow(body_acc_z_test))
body_acc_z_test <- cbind(subject_test, body_acc_z_test)
close(conn)

#4
### body_gyro_x_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/body_gyro_x_test.txt"
conn <- file(fileDir, open = "r")
body_gyro_x_test <- t(as.data.frame(lapply(readLines(conn),
                                            function(x) {
                                              retArray = c(numeric())
                                              for (i in unlist(strsplit(x, " "))) {
                                                retArray <- c(retArray, as.numeric(i))
                                              }
                                              retArray[!is.na(retArray)]
                                            })))
colnames(body_gyro_x_test) <- c(1:ncol(body_gyro_x_test))
rownames(body_gyro_x_test) <- c(1:nrow(body_gyro_x_test))
body_gyro_x_test <- cbind(subject_test, body_gyro_x_test)
close(conn)

#5
### body_gyro_y_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/body_gyro_y_test.txt"
conn <- file(fileDir, open = "r")
body_gyro_y_test <- t(as.data.frame(lapply(readLines(conn),
                                            function(x) {
                                              retArray = c(numeric())
                                              for (i in unlist(strsplit(x, " "))) {
                                                retArray <- c(retArray, as.numeric(i))
                                              }
                                              retArray[!is.na(retArray)]
                                            })))
colnames(body_gyro_y_test) <- c(1:ncol(body_gyro_y_test))
rownames(body_gyro_y_test) <- c(1:nrow(body_gyro_y_test))
body_gyro_y_test <- cbind(subject_test, body_gyro_y_test)
close(conn)

#6
### body_gyro_z_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/body_gyro_z_test.txt"
conn <- file(fileDir, open = "r")
body_gyro_z_test <- t(as.data.frame(lapply(readLines(conn),
                                            function(x) {
                                              retArray = c(numeric())
                                              for (i in unlist(strsplit(x, " "))) {
                                                retArray <- c(retArray, as.numeric(i))
                                              }
                                              retArray[!is.na(retArray)]
                                            })))
colnames(body_gyro_z_test) <- c(1:ncol(body_gyro_z_test))
rownames(body_gyro_z_test) <- c(1:nrow(body_gyro_z_test))
body_gyro_z_test <- cbind(subject_test, body_gyro_z_test)
close(conn)

#7
### total_acc_x_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/total_acc_x_test.txt"
conn <- file(fileDir, open = "r")
total_acc_x_test <- t(as.data.frame(lapply(readLines(conn),
                                            function(x) {
                                              retArray = c(numeric())
                                              for (i in unlist(strsplit(x, " "))) {
                                                retArray <- c(retArray, as.numeric(i))
                                              }
                                              retArray[!is.na(retArray)]
                                            })))
colnames(total_acc_x_test) <- c(1:ncol(total_acc_x_test))
rownames(total_acc_x_test) <- c(1:nrow(total_acc_x_test))
total_acc_x_test <- cbind(subject_test, total_acc_x_test)
close(conn)

#8
### total_acc_y_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/total_acc_y_test.txt"
conn <- file(fileDir, open = "r")
total_acc_y_test <- t(as.data.frame(lapply(readLines(conn),
                                            function(x) {
                                              retArray = c(numeric())
                                              for (i in unlist(strsplit(x, " "))) {
                                                retArray <- c(retArray, as.numeric(i))
                                              }
                                              retArray[!is.na(retArray)]
                                            })))
colnames(total_acc_y_test) <- c(1:ncol(total_acc_y_test))
rownames(total_acc_y_test) <- c(1:nrow(total_acc_y_test))
total_acc_y_test <- cbind(subject_test, total_acc_y_test)
close(conn)

#9
### total_acc_z_test.txt
fileDir <- "data/UCI_HAR_Dataset/test/Inertial_Signals/total_acc_z_test.txt"
conn <- file(fileDir, open = "r")
total_acc_z_test <- t(as.data.frame(lapply(readLines(conn),
                                            function(x) {
                                              retArray = c(numeric())
                                              for (i in unlist(strsplit(x, " "))) {
                                                retArray <- c(retArray, as.numeric(i))
                                              }
                                              retArray[!is.na(retArray)]
                                            })))
colnames(total_acc_z_test) <- c(1:ncol(total_acc_z_test))
rownames(total_acc_z_test) <- c(1:nrow(total_acc_z_test))
total_acc_z_test <- cbind(subject_test, total_acc_z_test)
close(conn)
