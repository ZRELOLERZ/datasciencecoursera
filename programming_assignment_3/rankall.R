rankall <- function(outcome, num = "best") {
  #num = best(1), worst(-1), rank
  
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  data.outcome <- NULL
  state.unique <- unique(data$State)
  
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
  resData <- data.frame(hospital = character(), state = character())
  for (state in state.unique) {
    hospitals <- as.data.frame(data[, c("Hospital.Name", data.outcome)][data$State == state & data[[data.outcome]] != "Not Available",])
    hospitals[[data.outcome]] <- as.double(hospitals[[data.outcome]])
    best.hospital <- hospitals[order(hospitals[, 2], hospitals[, 1]),]
    resIndex <- num
  
    if (num == "best") {
      resIndex = 1
      resData <- rbind(resData, data.frame(hospital = best.hospital[resIndex, 1], state = state)) 
    }
    else if (num == "worst") {
      resIndex = nrow(best.hospital)
      resData <- rbind(resData, data.frame(hospital = best.hospital[resIndex, 1], state = state))
    }
    else if (num > nrow(best.hospital)) {
      resData <- rbind(resData, data.frame(hospital = NA, state = state)) 
    }
    else {
      resIndex = num
      resData <- rbind(resData, data.frame(hospital = best.hospital[resIndex, 1], state = state))
    }
  }
  facs <- sapply(resData, is.factor)
  resData[facs] <- lapply(resData[facs], as.character)
  with(resData, resData[order(state, state),])
}

#TEST COMMANDS
#rankall("heart attack", 20)
#head(rankall("heart attack", 20), 10
#tail(rankall("pneumonia", "worst"), 3)
#tail(rankall("heart failure"), 10)