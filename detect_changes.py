import subprocess

# Get the list of changed files in the last commit
result = subprocess.run('git diff --name-only HEAD^ HEAD', shell=True, stdout=subprocess.PIPE, text=True)
changed_files = result.stdout.split('\n')

# Filter out only the .swift files
swift_files = [file for file in changed_files if file.endswith('.swift')]

# Create a report of changed .swift files
report = f'Changed Swift Files:\n{"\n".join(swift_files)}'

# Write the report to a file
with open('path/to/changes-report.txt', 'w') as report_file:
    report_file.write(report)

print(report)
