


# Method: 1
---
>## How to Contribute to Someone Else's Repository By Fork

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

---
# Method: 2

>## Contribute directly to the owner's repository without forking.


*If you want to contribute directly to the owner's repository without forking, follow these steps:*

1. **Clone the Repository:**
   - Open the GitHub repository you want to contribute to.
   - Click the "Code" button and copy the repository URL.
   - Open your terminal or Git Bash and run the following command:
     ```bash
     git clone <repository_url>
     cd <repository_directory>
     ```

2. **Create a Branch:**
   - Create a new branch for your changes. This keeps your changes isolated from the main branch.
     ```bash
     git checkout -b <branch_name>
     ```

3. **Make Changes:**
   - Make the necessary changes in your local repository.

4. **Commit Changes:**
   - After making changes, commit them to your local branch.
     ```bash
     git add .
     git commit -m "Your commit message"
     ```

5. **Push Changes:**
   - Push your changes to the repository on GitHub.
     ```bash
     git push origin <branch_name>
     ```

6. **Create a Pull Request (PR):**
   - Go to the GitHub repository.
   - Click the "Pull Requests" tab.
   - Click the "New pull request" button.
   - Set the base repository and branch to the owner's repository and the main branch, respectively.
   - Set the head repository and branch to your repository and the branch you created, respectively.
   - Click the "Create pull request" button.
   - Provide a title and description for your pull request.

7. **Submit the Pull Request:**
   - Once satisfied with your changes and the description, click "Create pull request."

8. **Wait for Review:**
   - The owner of the repository will review your pull request and decide whether to merge your changes.

This method allows you to contribute directly to the owner's repository without forking. Keep in mind that the owner might have different contribution preferences, and some repositories might prefer contributors to fork and create pull requests.
