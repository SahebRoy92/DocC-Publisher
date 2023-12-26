import os
from git import Repo

# Path to the local git repository
repo_path = "/path/to/your/repo"

# Path to the main branch
branch_name = "main"

# Open the repository
repo = Repo(repo_path)

# Fetch changes from the remote repository
repo.remotes.origin.fetch()

# Get the main branch
main_branch = repo.branches[branch_name]

# Get the commit at the tip of the main branch
head_commit = main_branch.commit

# Get the commit at the tip of the main branch on the remote repository
remote_commit = repo.remotes.origin.refs[branch_name].commit

# Get the changes between the local and remote main branches
changed_files = repo.git.diff(remote_commit, head_commit, name_only=True).splitlines()

# Print the changed files
print("Changed Files:")
for file in changed_files:
    print(file)
