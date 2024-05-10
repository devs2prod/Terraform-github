resource "github_branch" "newbranch" {
  repository = github_repository.Myfirst_github_repository.name
  branch     = "newbranch"
  source_branch = "main"
}

resource "github_repository_file" "textfile" {
  repository          = github_repository.Myfirst_github_repository.name
  branch              = "newbranch"
  file                = "textfile.txt"
  content             = "this is testing text file"
  commit_message      = "Managed by Mayank Yadav"
  commit_author       = "Personal User"
  commit_email        = "mayanky975@gmail.com"
  overwrite_on_create = true
}