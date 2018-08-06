setwd("c:/Users/acer/Desktop/¦ö©¾")
WCST <- read.csv("WCST.csv", header = FALSE)
WCST_Ans <- read.csv("WCST_coding.csv", header = FALSE)

WCST_Ans[] <- lapply(WCST_Ans, as.character)

for (i in 1:64){
  ifelse(WCST[i,1] == 1, WCST[i,1] <- WCST_Ans[i,1],
         ifelse(WCST[i,1] == 2, WCST[i,1] <- WCST_Ans[i,2],
                ifelse(WCST[i,1] == 3, WCST[i,1] <- WCST_Ans[i,3],
                       ifelse(WCST[i,1] == 4, WCST[i,1] <- WCST_Ans[i,4], FALSE)
                )
         )
  )
}

write.csv(WCST,file = "WCST_convert.csv")
