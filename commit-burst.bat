@echo off
setlocal EnableDelayedExpansion

set FILES=data_cleaner.py web_scraper.py utils\logger.py
set COUNT=10

for /L %%i in (1,1,%COUNT%) do (
    for %%f in (%FILES%) do (
        echo # Auto edit %%f >> %%f
        git add %%f
        git commit -m "Update %%f - Auto commit %%i"
    )
)

git push origin main
