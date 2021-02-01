library(plumber)

pickwinner <- function(l) {
  # l = "A,B,C"
  people <- strsplit(l, ',')[[1]]
  people %>% sample(1)
} 

#* @apiTitle CodeR API

#* Pick a winner 
#* @param l Comma separated list of items to pick from e.g. A,B,C
#* @get /pickwinner
function(l = NULL) {
  if (is.null(l)) {
    stop("Missing required param 'l'")
  }
  list(winner = (pickwinner(l)))
}