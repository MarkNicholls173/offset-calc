## libraries

# none yet
library(lubridate)

# main function

offset_calc <- function(initial = 0, regular = 0, start = NULL) {
  # find out how many periods
  if (is.null(start)) {start <-  "01/12/2020"}
  months <- (interval(dmy(start), today())) %/% months(1)
  initial + (regular * months) 
}



