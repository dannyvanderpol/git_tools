@echo off
for /f "tokens=*" %%i in ('git branch --show-current') do (set BRANCH_NAME=%%i)
echo Merge master into %BRANCH_NAME%

echo.
echo Switch to master
git fetch --prune
git pull
git checkout master

echo.
echo Update master
git fetch --prune
git pull
git gc

echo.
echo Switch to %BRANCH_NAME%
git checkout %BRANCH_NAME%

echo.
echo Merge master into %BRANCH_NAME%
git merge master
