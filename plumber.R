library(plumber)

pickwinner <- function(l) {
  # l = "A,B,C"
  people <- strsplit(l, ',')[[1]]
  people %>% sample(1)
} 

#* @apiTitle CodeR API

#* Pick a winner 
#* @param l list of CodeRs to pick from (A,B,C)
#* @get /pickwinner
function(l = "") {
    list(winner = (pickwinner(l)))
}