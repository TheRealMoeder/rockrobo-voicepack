#!/bin/bash

setup_git() {
  cd
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
  git clone --depth=20 --branch master https://${GITHUB_TOKEN}@github.com/TheRealMoeder/TheRealMoeder.github.io.git build/TheRealMoeder/TheRealMoeder.github.io > /dev/null 2>&1
  cd build/TheRealMoeder/TheRealMoeder.github.io/
}

commit_website_files() {
  cp ../rockrobo-voicepack/*.pkg .
  ../rockrobo-voicepack/create_index.sh
  git add index.md
  git add *.zip
  git add *.pkg
  git commit -m "Created build ID $BUILD_ID from rockrobo voicepacker"
  git remote add origin https://${GITHUB_TOKEN}@github.com/TheRealMoeder/TheRealMoeder.github.io.git
  git push -u --force origin master
}

upload_files() {
  git push --quiet
}

remove_old_files() {
  for ((i=1; i<$BUILD_ID-20; i++)); do find $i-voice*.pkg -delete; done
  rm -rf .git
  git init
  git add .
}

echo "Setting up git..."
setup_git
echo "Removing old files and cleaning out repository..."
remove_old_files
echo "Committing files..."
commit_website_files
echo "Pushing to remote..."
upload_files
