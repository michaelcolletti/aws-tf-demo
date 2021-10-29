resource "aws_codecommit_repository" "staging" {
  repository_name = "Staging Repository"
  description     = "This is the repo for a sample Staging repository"
}
