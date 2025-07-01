@echo off
cd /d C:\DailyUtils
git pull origin main --rebase
echo Hello >> activity_log.txt
git add .
git commit -m "Auto commit on %date%"
git push origin main
