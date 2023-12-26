import os
from git import Repo

def get_changed_files():
    repo = Repo(os.getcwd())
    repo.remotes.origin.fetch()

    main_branch = repo.branches['main']
    head_commit = main_branch.commit
    remote_commit = repo.remotes.origin.refs['main'].commit

    changed_files = repo.git.diff(f"{remote_commit}..{head_commit}", name_only=True).splitlines()
    return changed_files

def create_slack_message(changed_files):
    if not changed_files:
        return "No new changes detected."

    message = "New changes detected in main branch:\n"
    for file in changed_files:
        message += f"- {file}\n"

    return message

if __name__ == "__main__":
    changed_files = get_changed_files()
    slack_message = create_slack_message(changed_files)
    print(slack_message)
