a <- c(10:20)
b <- letters[c(4:13)]
f <- c(1,1,1,0,0,0,0,0)
ff <- factor(f, levels = c(1, 0), labels = c("NO", "YES"))
table(ff)
help("objects")
.Ob <- 1
ls(pattern = "O")
ls(pattern= "O", all.names = TRUE)    # also shows ".[foo]"
