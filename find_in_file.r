library(dplyr)

# Create some nonsense test data
# master is the ID numbers I want to find and "cols" will be the column indices I want to extract
master <- data.frame(id = c(1,3,15))
example <- data.frame(id = 1:100, 
                      v1 = sample(letters, 100, replace = TRUE), 
                      v2 = rep(n = 20, c("apples", "bananas", "pears", "watermelons")),
                      v3 = sample(5:8, 100, replace = T),
                      v4 = sample(month.abb, 100, replace = TRUE))

cols <- c(3,5)    # these are the columns I want to match on
result <- data.frame()

for(i in 1:nrow(master)){
   vals <- example[example$id == master$id[i], cols]
   # temp <- filter(example, v2 == vals$v2)
   result <- rbind(result, filter(example, v2 == vals$v2, v4 == vals$v4))
}

