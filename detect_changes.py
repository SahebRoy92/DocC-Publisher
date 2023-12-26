import os
from git import Repo

# Open the repository
repo = Repo(os.getcwd())  # Using os.getcwd() to get the current working directory

# Fetch changes from the remote repository
repo.remotes.origin.fetch()

# Get the main branch
main_branch = repo.branches['main']  # Using the branch name directly

# Get the commit at the tip of the main branch
head_commit = main_branch.commit

# Get the commit at the tip of the main branch on the remote repository
remote_commit = repo.remotes.origin.refs['main'].commit  # Using the branch name directly

# Get the changes between the local and remote main branches
changed_files = repo.git.diff(remote_commit, head_commit, name_only=True).splitlines()

# Print the changed files
print("Changed Files:")
for file in changed_files:
    print(file)
