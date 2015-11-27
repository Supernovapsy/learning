- git add .
Stages all files.
- git push -u origin <branch name>
This adds an upstream tracking reference. If git push were to be executed again, it would push to the same branch.
- git pull updates local repository with remote repository.
However, this does not delete branches which have been deleted remotely.
- git branch --merged shows all branches whose tips are reachable from the current checked-out branch, so that if the
checked-out branch is the trunk, shows which branches are safe to be deleted.
- git diff compares the working directory and the staged area.
- git diff --staged compares the staged area and the last commit.
- git diff HEAD compares the HEAD versions of the files with both staged and unstaged changes in the directory.
- git checkout <branch> will switch the current working branch to the specified branch, and both create a branch from
the current head and switch to it if the specified branch does not exist.
