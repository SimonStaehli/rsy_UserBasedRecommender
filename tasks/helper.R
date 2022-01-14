sample_movie_lens <- function(size, path="./data/ml_extract.rds", return_df=FALSE){
  data("MovieLense")
  movie_lens <- sample(x=MovieLense, size=size)
  write_rds(movie_lens, path)
  
  if (return_df == TRUE){
    return(movie_lens)
  }
}

read_movie_lens <- function(path="./data/ml_extract.rds") {
  data <- read_rds(path)
  return(data)
}