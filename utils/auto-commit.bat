@echo off
cd /d C:\DailyUtils

for /L %%i in (1,1,40) do (
    echo Commit number %%i on %date% %time% >> activity_log.txt
    git add activity_log.txt
    git commit -m "Auto commit %%i on %date%"
)

git push origin main
