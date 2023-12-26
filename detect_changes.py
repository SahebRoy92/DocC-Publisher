import subprocess

# Get the list of changed files in the last commit
changed_files = (
    subprocess.check_output('git diff --name-only HEAD~1 --', shell=True)
    .decode('utf-8')
    .split('\n')
    .filter(None)
)

# Debugging output
print('Changed Files:', changed_files)

# Filter out only the .swift files
swift_files = [file for file in changed_files if file.endswith('.swift')]

# Debugging output
print('Swift Files:', swift_files)

# Create a report of changed .swift files
report = f'Changed Swift Files:\n{"\n".join(swift_files)}'

# Print the report to standard output
print(report)
