vector <- c(-1, 3, 6, 2, 0, -13, -3, 3, 64)
sort <- function(vector) {
  new_vector <- c()
  for (i in 1:length(vector)) {
    min <- vector[1]
    
    min_pos <- 1
    for (j in 1:length(vector)) {
      if (vector[j] < min) {
        min <- vector[j]
        min_pos <- j
      }
    }
    new_vector[i] <- min
    vector <- vector[-min_pos] #�������� �������� � �������� min_pos �� �������
    
  }
  return(new_vector)
  
}	

print(sort(vector))