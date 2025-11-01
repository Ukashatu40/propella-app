# Contents of command.sh:

# REPO_URL https://github.com/Ukashatu40/propella-app

# Step 1: Create React App
npx create-react-app propella-app

# Step 2a: Navigate into the directory
cd propella-app

# Step 2b: Create GitHub repo using GitHub CLI and push initial code
# Note: --public ensures it's a public repository
gh repo create propella-app --public --source=. --remote=origin

# Step 3: Switch branch to “update_logo”
git switch -c update_logo

# Step 4 & 5: (Manual steps performed here: replace logo file and edit App.js link)

# Step 6a: Commit the code (staging changes)
git add .

# Step 6b: Commit the code (creating commit)
git commit -m "feat: replace logo and update link to Propeller Aero"

# Step 6c: Push the code
git push --set-upstream origin update_logo

# Fix for "No commits between main and update_logo" error:
git commit --allow-empty -m "Fix: Force re-evaluation of branch history for PR creation"
git push

# Step 7: Create PR from “update_logo” to “main” branch using GitHub CLI
gh pr create --base main --head update_logo --title "Update logo and link for Propeller Aero" --body "Replaces the default React logo and updates the link as per requirements."

# Step 8: Merge the PR using GitHub CLI
gh pr merge update_logo --auto --squash