provider "github" {
    token = "token"
}


resource "github_repository" "Myfirst_github_repository" {
  name        = "Terraform-repository"
  description = "This is my first repository created using Terraform"
  visibility = "private"
  auto_init = true
  gitignore_template = "Terraform"
}

resource "github_repository_file" "gitignore" {
  repository          = github_repository.Myfirst_github_repository.name
  branch              = "main"
  file                = ".gitignore"
  content             = "**/*.tfstate"
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "mayanky975@gmail.com"
  overwrite_on_create = true
}