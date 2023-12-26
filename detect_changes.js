const { execSync } = require('child_process');
const fs = require('fs');

// Get the list of changed files in the last commit
const changedFiles = execSync('git diff --name-only HEAD^ HEAD')
  .toString()
  .split('\n')
  .filter(Boolean);

// Filter out only the .swift files
const swiftFiles = changedFiles.filter(file => file.endsWith('.swift'));

// Create a report of changed .swift files
const report = `Changed Swift Files:\n${swiftFiles.join('\n')}`;

// Write the report to a file
fs.writeFileSync('path/to/changes-report.txt', report);

console.log(report);
