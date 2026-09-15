@echo off
for /f "tokens=*" %%i in ('git branch --show-current') do (set BRANCH_NAME=%%i)
echo reset %BRANCH_NAME% to master

rem sync master
git checkout master
git pull

rem reset branch and force push
git checkout %BRANCH_NAME%
git reset --hard master
git push --force origin %BRANCH_NAME%
