 best <- function(state, outcome) {
        
        ## TO-DO!!!!!!!
        ## Filter out the non numeric data from the outcome columns and test if 
        ## the min function works (test against spreadsheet)
         
        ## Introduction
        ## The outcome can be one of:
                ## "heart attack" (column 11), 
                ## "heart failure" (column 17)
                ## "pneumonia" (column 23)
        ## The function reads the outcome-of-care-measures.csv file and returns a character vector
        ## with the name of the hospital that has the best (i.e. lowest) 30-day mortality for the 
        ## specified out come in that state.
        
        ## Read outcome data
        # outcomeInput <- "pneumonia"
        # stateInput <- "TX"
        
        outcomeData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        ## Define the outcome£ column number
        if (outcomeInput ==  "heart attack"){
                columnNo <- 11   
        
        } else if (outcomeInput ==  "heart failure") {
                        columnNo <- 17
        
        } else if (outcomeInput ==  "pneumonia") {
                        columnNo <- 23
                        
        } else print("Outcome invalid.") 
            
        reqOutcomeSubset <- outcomeData[outcomeData$State  == stateInput,]
        
        min(reqOutcomeSubset[,columnNo])
        ## Check that state and outcome are valid
        ## Return hospital name in that state with lowest 30-day death
        ## rate
 }