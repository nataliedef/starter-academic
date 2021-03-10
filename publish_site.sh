#!/bin/bash
## Push website changes to github, and publish to website

### ---------- Usage ----------------
# ./publish_site.sh 
# must be in directory that has website

echo "Enter commit message:"
read message

message="\"$message\""
echo Pushing changes to website repository...
git add .
git commit -m "$message"
git push -u origin main

echo Publishing website...
hugo
cd public
git add .
git commit -m "Build website"
git push origin main

