#' ---
#' title: usethis
#' author: mauricio vancine
#' date: 2020-05-05
#' ---

# package
library(usethis)

# git configuration -------------------------------------------------------
# git config
usethis::use_git_config(user.name = "mauriciovancine", 
                        user.email = "mauricio.vancine@gmail.com")

# config github and rstudio
usethis::browse_github_token()

# open .Renviron file
usethis::edit_r_environ() # add line GITHUB_PAT=SEU_TOKEN and restart r session (crl + shift + f10)

# repositories in rstudio -------------------------------------------------
## 1. clone a repository from github
# repository from github
# file > new project > version control > git
# Repository URL: link from repository
# Project directory name: fill automatically
# Create project as subdirectory of: directory
# rstudio will clone the repostitory and create a RProj

## 2. create repository from rstudio
# create a rproj
usethis::create_project(path = "/home/mude/data/github/r-spatial")

# initiate git
usethis::use_git() # 2 and 2

# create a github repository
usethis::use_github() # 2 and 2

# create a readme.md file
usethis::use_readme_md()

## 3. fork and clone
usethis::create_from_github(repo_spec = "rstudio/bookdown-demo",
                            destdir = "/home/mude/data/github", 
                            fork = TRUE)

# end ---------------------------------------------------------------------