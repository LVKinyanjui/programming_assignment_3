is_in <- function(outcome_value, state, hosp_rank) {
      col_state <- as.numeric(outcome[ , outcome_value])[outcome$State == state]
      print(sorted <- sort(col_state))
      
      if(is.numeric(hosp_rank)) {
            print(sorted[hosp_rank])
      }
      if(hosp_rank == "last") {
            print(sorted[length(sorted)])
      }
      
      
      for (i in outcome$Hospital.Name[outcome$State == state]) {
            #outcome value for each hospital iteration i
            out_cv <- outcome[ ,outcome_value][outcome[ , "Hospital.Name"] == i]
            
            if (as.numeric(out_cv) == sorted) {
                  #hospital name
                  print(i)
                  break
            }
            
      }
      

      
      
}