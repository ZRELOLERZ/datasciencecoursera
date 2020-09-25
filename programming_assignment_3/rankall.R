bestHospital <- function(hospitals, stateName, rank) {
  # print("bestHospital")
  # print(stateName)
  # print(colnames(hospitals))
  hospitals <- hospitals[hospitals$State == stateName,]
  best.hospital <- hospitals[order(hospitals[, 2], hospitals[, 1]),]
  #print(hospitals)
  resIndex <- rank
  
  if (rank == "best") {
    resIndex = 1
  }
  else if (rank == "worst") {
    resIndex = nrow(best.hospital)
  }
  else if (rank > nrow(best.hospital)) {
    return(data.frame(state = c(stateName), hospital = c(NA)))
  }
  
  minDeath <- min(hospitals[2])
  hospitals.with.minDeath <- hospitals[hospitals[2] == minDeath,]
  best.hospital <- hospitals.with.minDeath[order(hospitals.with.minDeath[, 1]),]
  res <- data.frame(state = best.hospital[1,3], hospital = best.hospital[1,1])
  res
}

rankall <- function(outcome, num = "best") {
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  data.outcome <- NULL
  state.unique <- unique(data$State)
  check.state <- FALSE
  
  #VALIDITY CHECK
  
  #outcome
  if (outcome == "heart attack") {
    data.outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
  }
  else if (outcome == "heart failure") {
    data.outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
  }
  else if (outcome == "pneumonia") {
    data.outcome <- "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
  }
  else {
    stop("invalid outcome")
  }
  result <- data.frame(state = character(), hospital = character())
  hospitals <- as.data.frame(data[, c("Hospital.Name", data.outcome, "State")][data[[data.outcome]] != "Not Available",])
  hospitals[[data.outcome]] <- as.double(hospitals[[data.outcome]])
  #print(hospitals)
   for (state in state.unique) {
     res <- bestHospital(hospitals, stateName = state, rank = num)
     print("bestHospital")
     print(res)
     result <- rbind(result, res)
   }
  result
}