echo "foo\nboo" > README.md
BRANCH="conflict_$(uuidgen -r)"
git checkout -b $BRANCH 
git add * 
git commit -m 'merge conflicts...'
git push --set-upstream origin $BRANCH
gh pr create --fill --title "oh no, got merge conflicts" --body "many conflicts"