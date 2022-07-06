library(readxl)
Book <- read_excel("Book.xlsx")
View(Book)
summary(Book)
complete.cases(Book)
na_vec <- which(complete.cases(Book))
na_vec
na_vec <- which(!complete.cases(Book))
na_vec
Book_na_omit <- na.omit(Book)
Book_na_omit
summary(Book_na_omit)
duplicated(Book_na_omit)
which(duplicated(Book_na_omit))
summary(Book_na_omit)
