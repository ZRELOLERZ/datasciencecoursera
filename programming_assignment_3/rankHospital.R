rankhospital <- function(state, outcome, num = "best") {
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  data.outcome <- NULL
  state.unique <- unique(data$State)
  
  #VALIDITY CHECK
  #state
  for (uniqueState in state.unique) {
    if (uniqueState == state) {
      check.state <- TRUE
      break()
    }
  }
  
  if (!check.state) {
    stop("invalid state")
  }
  
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
  
  hospitals <- as.data.frame(data[, c("Hospital.Name", data.outcome)][data$State == state & data[[data.outcome]] != "Not Available",])
  hospitals[[data.outcome]] <- as.double(hospitals[[data.outcome]])
  best.hospital <- hospitals[order(hospitals[, 2], hospitals[, 1]),]
  resIndex <- num
  
  if (num == "best") {
    resIndex = 1
  }
  else if (num == "worst") {
    resIndex = nrow(best.hospital)
  }
  else if (num > nrow(best.hospital)) {
    return(NA)
  }
  #print(resIndex)
  #View(best.hospital)
  best.hospital[resIndex, 1]
  #best.hospital
}

#rankhospital("TX", "heart failure", 4)
#> rankhospital("MD", "heart attack", "worst")