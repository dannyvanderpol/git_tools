@echo off

if "%~1"=="" (
    echo Usage: %~nx0 branch_name
    exit /b 1
)

set BRANCH=%1

rem sync master
git checkout master
git pull

rem reset branch and force push
git checkout %BRANCH%
git reset --hard master
git push --force origin %BRANCH%
