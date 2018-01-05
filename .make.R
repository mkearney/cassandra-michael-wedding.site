

foo <- function(...) {
  system(as.character(substitute(...)))
}

foo('ls -la')

system("rm -rf docs")
system("git add .")
system("git commit -m \"rewrite docs\"")
system("hugo")
cat("cassandra-michael-wedding.site", file = "docs/CNAME")
system("cp favicon.ico docs/.")
system("git add .")
system("git commit -m \"docs written\"")
system("git push")

require
