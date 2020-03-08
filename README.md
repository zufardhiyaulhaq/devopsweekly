# DevOpwWeekly
Get data from statuscode.com and send to telegram via bot.

### Rubyweekly Scrapper
```
export GITHUB_TOKEN=YOURTOKEN
export REPOSITORY=USERNAME/REPOSITORY

make run-scrapper
```

### DevOps Telegram Bot
```
export GITHUB_TOKEN=YOURTOKEN
export REPOSITORY=USERNAME/REPOSITORY
export TELEGRAM_TOKEN=TOKEN
export TELEGRAM_CHATID=CHATID

cd lib/dispatcher
ruby main.rb
```

