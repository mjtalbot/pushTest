set -e 

cd downstream/pushTest2


git remote remove origin 
git remote add origin https://github.com/mjtalbot/pushTest2.git 

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

echo "foo\nboo" > README.md
BRANCH="conflict_$(uuidgen)"
git fetch origin
git checkout -b $BRANCH 
git add * 
git commit -m 'merge conflicts...'
git push --set-upstream origin $BRANCH
gh pr create --fill --title "oh no, got merge conflicts" --body "many conflicts"