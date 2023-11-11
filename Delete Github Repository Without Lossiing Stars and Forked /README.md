

1. **Remove Existing Git Repository:**
   - Deletes the entire `.git` directory, erasing all version control information and commit history.

2. **Add Files to Staging Area:**
   - Adds all files in the current directory to the Git staging area, preparing them for the next commit.

3. **Commit Changes:**
   - Commits the changes with the message "Initial commit," creating the initial snapshot of the project.

4. **Create and Switch to "main" Branch:**
   - Creates a new branch named "main" and switches to it. This is often done to follow modern conventions.

5. **Display Branches:**
   - Displays a list of branches to confirm that the "main" branch has been successfully created.

6. **Forcefully Push to Remote Repository:**
   - Forcefully pushes the "main" branch to the remote repository on GitHub, overwriting existing history if necessary.



```bash
# Remove the existing Git repository information (including commit history).
rm -rf .git
```

```bash
# Add all files in the current directory to the staging area.
git add .
```
```bash
# Commit the changes with the message "Initial commit."
git commit -m "Initial commit"
```

```bash
# Create and switch to a new branch named "main."
git checkout -b main
```
```bash
# Display a list of branches to confirm that the "main" branch was created.
git branch
```

```bash
# Forcefully push the "main" branch to the remote repository (GitHub in this case).
git push -u --force origin main
```
