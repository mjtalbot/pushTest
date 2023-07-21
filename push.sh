git config --global user.email "you@example.com"
git config --global user.name "Your Name"
echo "foo\nboo" > README.md
BRANCH="conflict_$(uuidgen)"
git checkout -b $BRANCH 
git add * 
git commit -m 'merge conflicts...'
git push --set-upstream origin $BRANCH
gh pr create --fill --title "oh no, got merge conflicts" --body "many conflicts"