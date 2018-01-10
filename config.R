library(git2r)
a = getwd()

repo = repository(a)
config(repo, user.name = "valentinabadashkeeva", user.email = "valentina94badashkeeva@gmail.com")
