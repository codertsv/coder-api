library(plumber)

pickwinner <- function(l) {
  # l = "A,B,C"
  people <- strsplit(l, ',')[[1]]
  people %>% sample(1)
} 

#* @apiTitle CodeR PickWinner API

#* Pick a winner 
#* @param l A comma separated list of items to pick from e.g. A,B,C
#* @get /pickwinner
function(res, l = NULL) {
  if (is.null(l)) {
    msg <- "Missing required parameter 'l'"
    res$status <- 400 # Bad request
    return(list(error=msg))
  }
  winner <- pickwinner(l)
  list(winner = pickwinner(l))
}