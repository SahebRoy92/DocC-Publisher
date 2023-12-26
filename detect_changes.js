const { execSync } = require('child_process');

// Get the list of changed files in the last commit
const changedFiles = execSync('git diff --name-only HEAD~1 --')
  .toString()
  .split('\n')
  .filter(Boolean);

// Debugging output
console.log('Changed Files:');

// Separate files into added, edited, and removed
const addedFiles = [];
const editedFiles = [];
const removedFiles = [];

changedFiles.forEach(file => {
  if (file.endsWith('.swift')) {
    const changeType = execSync(`git diff --name-status HEAD~1 -- ${file}`)
      .toString()
      .charAt(0);

    switch (changeType) {
      case 'A':
        addedFiles.push(file);
        break;
      case 'M':
        editedFiles.push(file);
        break;
      case 'D':
        removedFiles.push(file);
        break;
    }
  }
});

// Function to format files with emojis
const formatFiles = (emoji, files) =>
  files.map(file => `${emoji} ${file}`).join('\n');

// Print the edited section
if (editedFiles.length > 0) {
  console.log('\nEdited:\n' + formatFiles(':raised_back_of_hand:', editedFiles));
}

// Print the added section
if (addedFiles.length > 0) {
  console.log('\nAdded:\n' + formatFiles(':new:', addedFiles));
}

// Print the removed section
if (removedFiles.length > 0) {
  console.log('\nRemoved:\n' + formatFiles(':fire:', removedFiles));
}
