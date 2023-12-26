const { execSync } = require('child_process');

// Get the list of changed files in the last commit
const changedFiles = execSync('git diff --name-only HEAD~1 --')
  .toString()
  .split('\n')
  .filter(Boolean);

// Debugging output
console.log('Changed Files:', changedFiles);

// Filter out only the .swift files
const swiftFiles = changedFiles.filter(file => file.endsWith('.swift'));

// Debugging output
console.log('Swift Files:', swiftFiles);

// Create a report of changed .swift files
const report = `Changed Swift Files:\n${swiftFiles.join('\n')}`;

// Print the report to standard output
console.log(report);
