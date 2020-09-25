best <- function(state, outcome) {
  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  data.outcome <- NULL
  state.unique <- unique(data$State)
  check.state <- FALSE
  
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
  
  hospital <- as.data.frame(data[, c("Hospital.Name", data.outcome)][data$State == state & data[[data.outcome]] != "Not Available",])
  hospital[[data.outcome]] <- as.double(hospital[[data.outcome]])
  minDeath <- min(hospital[[data.outcome]])
  hospitals.with.minDeath <- hospital[hospital[[data.outcome]] == minDeath,]
  best.hospital <- hospitals.with.minDeath[order(hospitals.with.minDeath[, 1]),]
  best.hospital[1, 1]
  }

# > best("TX", "heart attack")
# [1] "CYPRESS FAIRBANKS MEDICAL CENTER"
# > best("TX", "heart failure")
# [1] "FORT DUNCAN MEDICAL CENTER"
# > best("MD", "heart attack")
# [1] "JOHNS HOPKINS HOSPITAL, THE"
# > best("MD", "pneumonia")
# [1] "GREATER BALTIMORE MEDICAL CENTER"
# > best("BB", "heart attack")
# Error in best("BB", "heart attack") : invalid state
# > best("NY", "hert attack")
# Error in best("NY", "hert attack") : invalid outcome
# >