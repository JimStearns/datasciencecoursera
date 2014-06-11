datasciencecoursera
===================

Repo for Coursera Data Science Course presented by Johns Hopkins - on GitHub

### Git commands to establish local repo and link to remote repo on GitHub

```
# Override global default of jamesmstearns@gmail.com (used with FogBugz Kiln)
# (I registered with Coursera using jimstearns@pobox.com, so I need to be consistent
# and use the same email login at Coursera and at the remote Github repo for the course)
git config user.email "jimstearns@pobox.com"
git init
git remote add origin https://github.com/JimStearns/datasciencecourera.git

```

```
git status
On branch master
nothing to commit, working directory clean
```

```
# Sync remote repo (at this point, grabs README.md)
Jims-MacBook-Pro:RepoDataScienceCoursera jimstearns$ git pull origin master
remote: Counting objects: 4, done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (4/4), done.
From https://github.com/JimStearns/datasciencecoursera
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> origin/master
```

```
# Only file at this point: a default README markdown file.
Jims-MacBook-Pro:RepoDataScienceCoursera jimstearns$ ls
README.md
```
