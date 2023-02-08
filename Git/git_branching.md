Git branching is a feature in Git version control system that allows users to create multiple parallel versions (branches) of a project, each with its own separate code changes and history. It enables development of multiple features or bug fixes in a single repository without affecting the main codebase. This allows teams to work on multiple features simultaneously, while still having a stable and consistent main codebase. 
* To create a new branch in Git, use the command "git branch `branch-name`" and to switch between branches, use the command "git checkout `branch-name`". Merging branches can be done with the command "git merge `branch-name`".
* Git by default create a branch which is called as master
* Branch will point to a latest commit done in it.
* To create a new branch from existing branch `git branch <branch-name>`
* `git branch -d <branch name>` to delete branch
* `git branch -D <branch name>` Shortcut for `--delete --force`
*  [refer here](https://git-scm.com/docs/git-branch) for more branch commands
* To see remote branches `git branch -r`