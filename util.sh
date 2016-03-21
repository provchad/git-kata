resetRepoWithOutput() {
  git reset 829ceefc19d4e19e5cfff808d362ae1a14180674
  git add .
  git commit --amend -m "Git Katas"
  git config push.default simple
  rm -rf src
  mkdir src
  touch src/app.js
  git add ./src
  git commit --amend -m "Add app.js"
  git push -f
}

resetRepo() {
  echo "Resetting state"
  resetRepoWithOutput > /dev/null 2>&1
  clear
}

setupJohnnyWithOutput() {
  rm -rf .johnny
  mkdir .johnny
  cp -r .git .johnny
  cd .johnny
  git config user.name Johnny
  git config user.email johnny@who.com
  git config push.default simple
  git reset --hard
  cd ..
}

setupJohnny() {
  setupJohnnyWithOutput > /dev/null 2>&1
}

commitWithJohnnyWithOutput() {
  cd .johnny
  echo "$2" > "$1"
  git add .
  git commit -m "$3"
  git push
  cd ..
}

commitWithJohnny() {
  commitWithJohnnyWithOutput "$1" "$2" "$3"> /dev/null 2>&1
}

appendToFile() {
  echo "$2" >> "$1"
}

editFile() {
  echo "$2" > "$1"
}

commitChangeWithOutput() {
  appendToFile "$1" "$2"
  git add "$1"
  git commit -m "$3"
}

commitChange() {
  commitChangeWithOutput "$1" "$2" "$3" > /dev/null 2>&1
}

pushChangesWithOutput() {
  git push
}

pushChanges() {
  pushChangesWithOutput > /dev/null 2>&1
}

resetRepo
setupJohnny
