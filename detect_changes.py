import os
from git import Repo

def get_changed_files():
    repo = Repo(os.getcwd())

    # Fetch changes from the remote repository
    repo.remotes.origin.fetch()

    # Get the commit hash of the most recent commit on the remote main branch
    remote_main_commit = repo.remotes.origin.refs['main'].commit.hexsha

    # Get the changed files between the local and remote main branches
    changed_files = [item.a_path for item in repo.index.diff(None, remote_main_commit)]
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
