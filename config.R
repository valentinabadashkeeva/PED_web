library(git2r)
getwd()
repo = repository("C:/Users/Zendoor/Documents/PED_web")
config(repo, user.name = "xprem003", user.email = "zendoor@seznam.cz")


#library(git2r)
#repo = repository('/home/hanel/PED/PED_web/')
#repo = repository('C:/Users/Zendoor/Documents/PED_web')
#if (!"upstream" %in% remotes(repo)) remote_add(repo, 'upstream', 'https://github.com/hanel/PED_web.git')
#fetch(repo, 'upstream')
#merge('master', 'upstream')
