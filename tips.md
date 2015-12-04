#Git Tips

***Personal understanding of the fundamentals of git.

The two-stage commit workflow, i.e. the staging and commit steps, is designed
to match a style of coding which commits changes into the codebase in discrete
units. Each of these units provides a meaningful change to the codebase and
so can be thought of at a higher level. This abstraction helps to organize
the understanding of code and reduces overhead in the project development
process.

This idea of discrete units of changes is supported through the branching,
pull request, and merging workflow, which treats changes in discrete units.
All of this is in contrast to file-specific management systems like Perforce.

***Acronyms

VCS == version control system
PR == pull request

***General Tips

- [markdown-basics](https://help.github.com/articles/markdown-basics/)
- [commit-keywords](https://help.github.com/articles/closing-issues-via-commit-messages/)

Branches have to be deleted separately on both Github and locally in git.

***Command Cheat Sheet
- git add .
Stages all files.
- git push -u origin <branch name>
This adds an upstream tracking reference. If git push were to be executed again, it would push to the same branch.
- git pull updates local repository with remote repository.
However, this does not delete branches which have been deleted remotely.
- git branch --merged shows all branches whose tips are reachable from the current checked-out branch, so that if the
checked-out branch is the trunk, shows which branches are safe to be deleted.
- git diff compares the working directory and the staged area.
- git diff --staged/--cached compares the staged area and the last commit.
- git diff HEAD compares the HEAD versions of the files with both staged and unstaged changes in the directory.
- git checkout <branch> will switch the current working branch to the specified branch, and both create a branch from
the current head and switch to it if the specified branch does not exist.
- git merge <branch> merges the specified branch into the currently checkout out branch.
- git revert <first several characters in the SHA hash of the commit to be reverted>. Reverts a commit.
- git commit --amend takes the repository to the time just before the last commit, then adds the files currently in
    the staging area as the implicit amendment, before allowing you to change the commit message with the amendment.
- git reset HEAD <filename> unstages a file.

git reset resets the repository to a specific commit.
Assuming a clean working directory where there are no uncomitted changes,
- git reset --soft <branch> <other-commit>      : This command moves <branch> to the position of <other-commit>, and stages
                                                all file differences. Useful for regrouping small commits together as a larger commit.
- git reset <--mixed> <branch> <other-commit>   : Takes branch and staging area to other-commit snapshot, but does not change
                                                working directory. Useful for changing how you want to commit the changes between
                                                the other commit and what was the current snapshot of the project.
- git reset --hard <branch> <other-commit>      : Takes branch, staging area, AND working directory to other-commit snapshot.
                                                This completely undos the changes up until that commit.

- git checkout -- <filename> discards all unstaged changes to a file in the current working directory.
                            Note that this is dangerous.
- git rm and git mv removes and renames files, and then puts them in the staging area.

git log # see git commit history
git log --oneline # see terse commit history
git log --oneline --graph # see visualized commit history
git log --oneline --graph --decorate # see information about HEAD and other information
git log --oneline --graph --decorate --all # see unmerged branches.
git log --stat # See which files were changed in each commit.
git log --patch # See actual changes for each commit.

- git config --global alias.<alias name> "alias command" sets an alias for a git command which can be called by "git <alias name>"
- [git configurations](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
