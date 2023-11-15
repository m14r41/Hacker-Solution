## How to Contribute to Someone Else's Repository

1. **Fork the Repository:**
   - Go to the GitHub repository you want to contribute to.
   - Click the "Fork" button in the top right corner. This creates a copy (fork) of the repository in your GitHub account.

2. **Clone Your Fork:**
   - Open your forked repository on GitHub.
   - Click the "Code" button and copy the repository URL.
   - Open your terminal or Git Bash and run the following command:
     ```bash
     git clone <repository_url>
     cd <repository_directory>
     ```

3. **Create a Branch:**
   - Create a new branch for your changes. This keeps your changes isolated from the main branch.
     ```bash
     git checkout -b <branch_name>
     ```

4. **Make Changes:**
   - Make the necessary changes in your local repository.

5. **Commit Changes:**
   - After making changes, commit them to your local branch.
     ```bash
     git add .
     git commit -m "Your commit message"
     ```

6. **Push Changes:**
   - Push your changes to your fork on GitHub.
     ```bash
     git push origin <branch_name>
     ```

7. **Create a Pull Request:**
   - Visit your fork on GitHub.
   - You should see a "Compare & pull request" button. Click it.

8. **Open a Pull Request:**
   - You'll be taken to a page where you can review your changes.
   - Click the "Create pull request" button.
   - Provide a title and description for your pull request.

9. **Submit the Pull Request:**
   - Once satisfied with your changes and the description, click "Create pull request."

These steps are similar to contributing to your repository, but with the added step of forking the original repository. The pull request will be submitted to the owner of the original repository, and they will review and decide whether to merge your changes.
